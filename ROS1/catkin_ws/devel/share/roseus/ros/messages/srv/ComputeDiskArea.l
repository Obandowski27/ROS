;; Auto-generated. Do not edit!


(when (boundp 'messages::ComputeDiskArea)
  (if (not (find-package "MESSAGES"))
    (make-package "MESSAGES"))
  (shadow 'ComputeDiskArea (find-package "MESSAGES")))
(unless (find-package "MESSAGES::COMPUTEDISKAREA")
  (make-package "MESSAGES::COMPUTEDISKAREA"))
(unless (find-package "MESSAGES::COMPUTEDISKAREAREQUEST")
  (make-package "MESSAGES::COMPUTEDISKAREAREQUEST"))
(unless (find-package "MESSAGES::COMPUTEDISKAREARESPONSE")
  (make-package "MESSAGES::COMPUTEDISKAREARESPONSE"))

(in-package "ROS")





(defclass messages::ComputeDiskAreaRequest
  :super ros::object
  :slots (_radius ))

(defmethod messages::ComputeDiskAreaRequest
  (:init
   (&key
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _radius (float __radius))
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass messages::ComputeDiskAreaResponse
  :super ros::object
  :slots (_area ))

(defmethod messages::ComputeDiskAreaResponse
  (:init
   (&key
    ((:area __area) 0.0)
    )
   (send-super :init)
   (setq _area (float __area))
   self)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; float64 _area
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _area
       (sys::poke _area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _area
     (setq _area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass messages::ComputeDiskArea
  :super ros::object
  :slots ())

(setf (get messages::ComputeDiskArea :md5sum-) "c314357897f85c5c2498418b07dbcead")
(setf (get messages::ComputeDiskArea :datatype-) "messages/ComputeDiskArea")
(setf (get messages::ComputeDiskArea :request) messages::ComputeDiskAreaRequest)
(setf (get messages::ComputeDiskArea :response) messages::ComputeDiskAreaResponse)

(defmethod messages::ComputeDiskAreaRequest
  (:response () (instance messages::ComputeDiskAreaResponse :init)))

(setf (get messages::ComputeDiskAreaRequest :md5sum-) "c314357897f85c5c2498418b07dbcead")
(setf (get messages::ComputeDiskAreaRequest :datatype-) "messages/ComputeDiskAreaRequest")
(setf (get messages::ComputeDiskAreaRequest :definition-)
      "float64 radius
---
float64 area
")

(setf (get messages::ComputeDiskAreaResponse :md5sum-) "c314357897f85c5c2498418b07dbcead")
(setf (get messages::ComputeDiskAreaResponse :datatype-) "messages/ComputeDiskAreaResponse")
(setf (get messages::ComputeDiskAreaResponse :definition-)
      "float64 radius
---
float64 area
")



(provide :messages/ComputeDiskArea "c314357897f85c5c2498418b07dbcead")


