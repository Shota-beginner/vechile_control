;; Auto-generated. Do not edit!


(when (boundp 'wit_node::ImuGpsRaw)
  (if (not (find-package "WIT_NODE"))
    (make-package "WIT_NODE"))
  (shadow 'ImuGpsRaw (find-package "WIT_NODE")))
(unless (find-package "WIT_NODE::IMUGPSRAW")
  (make-package "WIT_NODE::IMUGPSRAW"))

(in-package "ROS")
;;//! \htmlinclude ImuGpsRaw.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass wit_node::ImuGpsRaw
  :super ros::object
  :slots (_header _time _acc _gyro _rpy _mag _ps _temperature _altitude _ap _latitude _longtitude _gpsh _gpsy _gpsv _quarternion _sn _dop ))

(defmethod wit_node::ImuGpsRaw
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:acc __acc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gyro __gyro) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rpy __rpy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mag __mag) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ps __ps) (make-array 0 :initial-element 0 :element-type :integer))
    ((:temperature __temperature) 0.0)
    ((:altitude __altitude) 0.0)
    ((:ap __ap) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longtitude __longtitude) 0.0)
    ((:gpsh __gpsh) 0.0)
    ((:gpsy __gpsy) 0.0)
    ((:gpsv __gpsv) 0.0)
    ((:quarternion __quarternion) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sn __sn) 0)
    ((:dop __dop) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (float __time))
   (setq _acc __acc)
   (setq _gyro __gyro)
   (setq _rpy __rpy)
   (setq _mag __mag)
   (setq _ps __ps)
   (setq _temperature (float __temperature))
   (setq _altitude (float __altitude))
   (setq _ap (float __ap))
   (setq _latitude (float __latitude))
   (setq _longtitude (float __longtitude))
   (setq _gpsh (float __gpsh))
   (setq _gpsy (float __gpsy))
   (setq _gpsv (float __gpsv))
   (setq _quarternion __quarternion)
   (setq _sn (round __sn))
   (setq _dop __dop)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:gyro
   (&optional __gyro)
   (if __gyro (setq _gyro __gyro)) _gyro)
  (:rpy
   (&optional __rpy)
   (if __rpy (setq _rpy __rpy)) _rpy)
  (:mag
   (&optional __mag)
   (if __mag (setq _mag __mag)) _mag)
  (:ps
   (&optional __ps)
   (if __ps (setq _ps __ps)) _ps)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:ap
   (&optional __ap)
   (if __ap (setq _ap __ap)) _ap)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longtitude
   (&optional __longtitude)
   (if __longtitude (setq _longtitude __longtitude)) _longtitude)
  (:gpsh
   (&optional __gpsh)
   (if __gpsh (setq _gpsh __gpsh)) _gpsh)
  (:gpsy
   (&optional __gpsy)
   (if __gpsy (setq _gpsy __gpsy)) _gpsy)
  (:gpsv
   (&optional __gpsv)
   (if __gpsv (setq _gpsv __gpsv)) _gpsv)
  (:quarternion
   (&optional __quarternion)
   (if __quarternion (setq _quarternion __quarternion)) _quarternion)
  (:sn
   (&optional __sn)
   (if __sn (setq _sn __sn)) _sn)
  (:dop
   (&optional __dop)
   (if __dop (setq _dop __dop)) _dop)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _time
    8
    ;; float64[] _acc
    (* 8    (length _acc)) 4
    ;; float64[] _gyro
    (* 8    (length _gyro)) 4
    ;; float64[] _rpy
    (* 8    (length _rpy)) 4
    ;; float64[] _mag
    (* 8    (length _mag)) 4
    ;; uint16[] _ps
    (* 2    (length _ps)) 4
    ;; float64 _temperature
    8
    ;; float64 _altitude
    8
    ;; float64 _ap
    8
    ;; float64 _latitude
    8
    ;; float64 _longtitude
    8
    ;; float64 _gpsh
    8
    ;; float64 _gpsy
    8
    ;; float64 _gpsv
    8
    ;; float64[] _quarternion
    (* 8    (length _quarternion)) 4
    ;; uint8 _sn
    1
    ;; float64[] _dop
    (* 8    (length _dop)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _acc
     (write-long (length _acc) s)
     (dotimes (i (length _acc))
       (sys::poke (elt _acc i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _gyro
     (write-long (length _gyro) s)
     (dotimes (i (length _gyro))
       (sys::poke (elt _gyro i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _rpy
     (write-long (length _rpy) s)
     (dotimes (i (length _rpy))
       (sys::poke (elt _rpy i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _mag
     (write-long (length _mag) s)
     (dotimes (i (length _mag))
       (sys::poke (elt _mag i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint16[] _ps
     (write-long (length _ps) s)
     (dotimes (i (length _ps))
       (write-word (elt _ps i) s)
       )
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ap
       (sys::poke _ap (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longtitude
       (sys::poke _longtitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gpsh
       (sys::poke _gpsh (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gpsy
       (sys::poke _gpsy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gpsv
       (sys::poke _gpsv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _quarternion
     (write-long (length _quarternion) s)
     (dotimes (i (length _quarternion))
       (sys::poke (elt _quarternion i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _sn
       (write-byte _sn s)
     ;; float64[] _dop
     (write-long (length _dop) s)
     (dotimes (i (length _dop))
       (sys::poke (elt _dop i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _acc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _gyro
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gyro (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gyro i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _rpy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rpy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rpy i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _mag
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mag (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mag i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint16[] _ps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ps (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ps i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ap
     (setq _ap (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longtitude
     (setq _longtitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gpsh
     (setq _gpsh (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gpsy
     (setq _gpsy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gpsv
     (setq _gpsv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _quarternion
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _quarternion (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _quarternion i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8 _sn
     (setq _sn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _dop
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dop (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dop i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get wit_node::ImuGpsRaw :md5sum-) "ec87fc8ac189ad006ecd7f01525e10f2")
(setf (get wit_node::ImuGpsRaw :datatype-) "wit_node/ImuGpsRaw")
(setf (get wit_node::ImuGpsRaw :definition-)
      "Header header
float64 time
float64[] acc
float64[] gyro
float64[] rpy
float64[] mag
uint16[]  ps #port state
float64   temperature
float64   altitude
float64   ap #atmosphere pressure
float64   latitude
float64   longtitude
float64   gpsh #gps height
float64   gpsy #gps yaw
float64   gpsv #gps velocity
float64[] quarternion
uint8     sn #satelites number
float64[] dop



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :wit_node/ImuGpsRaw "ec87fc8ac189ad006ecd7f01525e10f2")


