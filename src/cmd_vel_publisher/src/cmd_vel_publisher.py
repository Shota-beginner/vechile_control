#!/usr/bin/env python3
import time
import rospy
from geometry_msgs.msg import Twist

def publish_velocity():
    # ノードを初期化
    rospy.init_node('cmd_vel_publisher', anonymous=True)
    
    # /cmd_velトピックのパブリッシャを作成
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    
    # Twistメッセージの初期化
    msg = Twist()
    msg.linear.x = 0.01  # 直線速度を0.1 m/sに設定
    msg.angular.z = 1.0 # 角速度は0に設定

    # 10Hzでループ
    rate = rospy.Rate(10)

    last_log_time = time.time()


    while not rospy.is_shutdown():
        pub.publish(msg)

        # 1秒ごとにログを出力
        if time.time() - last_log_time >= 1:
            rospy.logdebug("Publishing cmd_vel: linear.x = %f, angular.z = %f", msg.linear.x, msg.angular.z)
            last_log_time = time.time()

        rate.sleep()

if __name__ == '__main__':
    try:
        publish_velocity()
    except rospy.ROSInterruptException:
        pass
