#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

# 障害物検知のしきい値（m単位）
STOP_DISTANCE = 1.0
# 安全確認のための停止信号の有効時間（秒）
STOP_SIGNAL_TIMEOUT = 0.5

# 最後に停止信号をパブリッシュした時間を記録
last_stop_time = None

# コマンド速度のパブリッシャを定義
cmd_vel_pub = None

# 停止指令をパブリッシュする関数
def publish_stop_signal():
    global last_stop_time
    twist = Twist()
    twist.linear.x = 0.0
    cmd_vel_pub.publish(twist)
    last_stop_time = rospy.Time.now()
    rospy.loginfo("Obstacle detected! Stopping robot.")

# LiDARデータのコールバック関数
def scan_callback(data):
    # LiDARデータから0以外の距離のみを取り出し、最小距離を計算
    valid_ranges = [distance for distance in data.ranges if distance > 0]
    
    # 有効な距離データがある場合のみ処理を続行
    if valid_ranges:
        min_distance = min(valid_ranges)
        rospy.loginfo(f"Minimum distance to obstacle (excluding 0s): {min_distance}m")

        # 障害物がしきい値以内にある場合のみ停止指令を送信
        if min_distance < STOP_DISTANCE:
            publish_stop_signal()
        else:
            # しきい値を超えた場合、STOP_SIGNAL_TIMEOUT経過していれば停止指令を解除
            if last_stop_time is not None:
                elapsed_time = (rospy.Time.now() - last_stop_time).to_sec()
                if elapsed_time < STOP_SIGNAL_TIMEOUT:
                    # STOP_SIGNAL_TIMEOUT未満の場合は停止を維持
                    publish_stop_signal()
                else:
                    # STOP_SIGNAL_TIMEOUTを超えた場合は停止指令を出さず他のノードに制御を任せる
                    rospy.loginfo("No obstacle detected. Relinquishing control.")
    else:
        rospy.logwarn("No valid LiDAR data available.")

if __name__ == '__main__':
    # ROSノードの初期化
    rospy.init_node('priority_obstacle_avoidance_node')

    # LiDARデータのサブスクライバを設定
    rospy.Subscriber('/scan', LaserScan, scan_callback)

    # コマンド速度のパブリッシャを設定
    cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

    # ノードのスピン
    rospy.spin()