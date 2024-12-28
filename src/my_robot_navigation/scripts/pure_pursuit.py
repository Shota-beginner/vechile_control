#!/usr/bin/env python3
import numpy as np
from geometry_msgs.msg import Twist, Pose2D
import rospy
from nav_msgs.msg import Odometry

class PurePursuit:
    def __init__(self):
        rospy.loginfo("Initializing Pure Pursuit Node...")
        self.cmd_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        rospy.Subscriber('/odom', Odometry, self.odom_callback)
        self.current_pose = Pose2D()

    def odom_callback(self, msg):
        # オドメトリデータを受信し、現在位置を更新
        self.current_pose.x = msg.pose.pose.position.x
        self.current_pose.y = msg.pose.pose.position.y
        self.current_pose.theta = 0  # 必要なら回転を処理

    def follow_path(self, path_x, path_y, look_ahead_distance=0.5):
        # NumPy配列に変換
        path_x = np.array(path_x)
        path_y = np.array(path_y)
        
        # 最も近いポイントを計算
        distances = np.sqrt((path_x - self.current_pose.x)**2 + (path_y - self.current_pose.y)**2)
        closest_idx = np.argmin(distances)

        # ログ出力（デバッグ用）
        rospy.loginfo(f"Closest path index: {closest_idx}, Distance: {distances[closest_idx]:.2f}")

        # 次の目標点を計算（Look-ahead距離を考慮）
        goal_idx = closest_idx
        for i in range(closest_idx, len(path_x)):
            if distances[i] >= look_ahead_distance:
                goal_idx = i
                break

        goal_x, goal_y = path_x[goal_idx], path_y[goal_idx]
        angle_to_goal = np.arctan2(goal_y - self.current_pose.y, goal_x - self.current_pose.x)

        # コマンド生成
        cmd = Twist()
        cmd.linear.x = 0.5  # 前進速度
        cmd.angular.z = 2.0 * (angle_to_goal - self.current_pose.theta)  # 目標角度との差分を修正
        self.cmd_pub.publish(cmd)

if __name__ == "__main__":
    rospy.init_node('pure_pursuit')
    path_x = [0, 1, 2, 3, 4, 5]
    path_y = [0, 1, 1.5, 2, 2.5, 3]
    controller = PurePursuit()
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        controller.follow_path(path_x, path_y)
        rate.sleep()
