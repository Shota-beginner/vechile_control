#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Pose2D

def generate_path(start, goal, num_points=50):
    import numpy as np
    from scipy.interpolate import CubicSpline

    x = [start.x, (start.x + goal.x) / 2, goal.x]
    y = [start.y, (start.y + goal.y) / 2, goal.y]
    cs = CubicSpline(x, y)
    path_x = np.linspace(start.x, goal.x, num_points)
    path_y = cs(path_x)
    return path_x, path_y

if __name__ == "__main__":
    rospy.init_node('path_generator')
    rospy.loginfo("Path Generator Node Running")
    # テスト用にスタートとゴールを設定
    start = Pose2D(0, 0, 0)
    goal = Pose2D(5, 5, 0)
    path_x, path_y = generate_path(start, goal)
    rospy.loginfo("Generated path: x: %s, y: %s" % (path_x, path_y))
