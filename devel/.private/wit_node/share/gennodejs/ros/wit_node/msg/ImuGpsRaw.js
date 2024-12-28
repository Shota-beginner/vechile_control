// Auto-generated. Do not edit!

// (in-package wit_node.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImuGpsRaw {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.acc = null;
      this.gyro = null;
      this.rpy = null;
      this.mag = null;
      this.ps = null;
      this.temperature = null;
      this.altitude = null;
      this.ap = null;
      this.latitude = null;
      this.longtitude = null;
      this.gpsh = null;
      this.gpsy = null;
      this.gpsv = null;
      this.quarternion = null;
      this.sn = null;
      this.dop = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = [];
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = [];
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = [];
      }
      if (initObj.hasOwnProperty('mag')) {
        this.mag = initObj.mag
      }
      else {
        this.mag = [];
      }
      if (initObj.hasOwnProperty('ps')) {
        this.ps = initObj.ps
      }
      else {
        this.ps = [];
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('ap')) {
        this.ap = initObj.ap
      }
      else {
        this.ap = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longtitude')) {
        this.longtitude = initObj.longtitude
      }
      else {
        this.longtitude = 0.0;
      }
      if (initObj.hasOwnProperty('gpsh')) {
        this.gpsh = initObj.gpsh
      }
      else {
        this.gpsh = 0.0;
      }
      if (initObj.hasOwnProperty('gpsy')) {
        this.gpsy = initObj.gpsy
      }
      else {
        this.gpsy = 0.0;
      }
      if (initObj.hasOwnProperty('gpsv')) {
        this.gpsv = initObj.gpsv
      }
      else {
        this.gpsv = 0.0;
      }
      if (initObj.hasOwnProperty('quarternion')) {
        this.quarternion = initObj.quarternion
      }
      else {
        this.quarternion = [];
      }
      if (initObj.hasOwnProperty('sn')) {
        this.sn = initObj.sn
      }
      else {
        this.sn = 0;
      }
      if (initObj.hasOwnProperty('dop')) {
        this.dop = initObj.dop
      }
      else {
        this.dop = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImuGpsRaw
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _arraySerializer.float64(obj.acc, buffer, bufferOffset, null);
    // Serialize message field [gyro]
    bufferOffset = _arraySerializer.float64(obj.gyro, buffer, bufferOffset, null);
    // Serialize message field [rpy]
    bufferOffset = _arraySerializer.float64(obj.rpy, buffer, bufferOffset, null);
    // Serialize message field [mag]
    bufferOffset = _arraySerializer.float64(obj.mag, buffer, bufferOffset, null);
    // Serialize message field [ps]
    bufferOffset = _arraySerializer.uint16(obj.ps, buffer, bufferOffset, null);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float64(obj.temperature, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [ap]
    bufferOffset = _serializer.float64(obj.ap, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longtitude]
    bufferOffset = _serializer.float64(obj.longtitude, buffer, bufferOffset);
    // Serialize message field [gpsh]
    bufferOffset = _serializer.float64(obj.gpsh, buffer, bufferOffset);
    // Serialize message field [gpsy]
    bufferOffset = _serializer.float64(obj.gpsy, buffer, bufferOffset);
    // Serialize message field [gpsv]
    bufferOffset = _serializer.float64(obj.gpsv, buffer, bufferOffset);
    // Serialize message field [quarternion]
    bufferOffset = _arraySerializer.float64(obj.quarternion, buffer, bufferOffset, null);
    // Serialize message field [sn]
    bufferOffset = _serializer.uint8(obj.sn, buffer, bufferOffset);
    // Serialize message field [dop]
    bufferOffset = _arraySerializer.float64(obj.dop, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImuGpsRaw
    let len;
    let data = new ImuGpsRaw(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [gyro]
    data.gyro = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [rpy]
    data.rpy = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [mag]
    data.mag = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ps]
    data.ps = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ap]
    data.ap = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longtitude]
    data.longtitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gpsh]
    data.gpsh = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gpsy]
    data.gpsy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gpsv]
    data.gpsv = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [quarternion]
    data.quarternion = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sn]
    data.sn = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dop]
    data.dop = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.acc.length;
    length += 8 * object.gyro.length;
    length += 8 * object.rpy.length;
    length += 8 * object.mag.length;
    length += 2 * object.ps.length;
    length += 8 * object.quarternion.length;
    length += 8 * object.dop.length;
    return length + 101;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wit_node/ImuGpsRaw';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec87fc8ac189ad006ecd7f01525e10f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImuGpsRaw(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = []
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = msg.gyro;
    }
    else {
      resolved.gyro = []
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = msg.rpy;
    }
    else {
      resolved.rpy = []
    }

    if (msg.mag !== undefined) {
      resolved.mag = msg.mag;
    }
    else {
      resolved.mag = []
    }

    if (msg.ps !== undefined) {
      resolved.ps = msg.ps;
    }
    else {
      resolved.ps = []
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.ap !== undefined) {
      resolved.ap = msg.ap;
    }
    else {
      resolved.ap = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longtitude !== undefined) {
      resolved.longtitude = msg.longtitude;
    }
    else {
      resolved.longtitude = 0.0
    }

    if (msg.gpsh !== undefined) {
      resolved.gpsh = msg.gpsh;
    }
    else {
      resolved.gpsh = 0.0
    }

    if (msg.gpsy !== undefined) {
      resolved.gpsy = msg.gpsy;
    }
    else {
      resolved.gpsy = 0.0
    }

    if (msg.gpsv !== undefined) {
      resolved.gpsv = msg.gpsv;
    }
    else {
      resolved.gpsv = 0.0
    }

    if (msg.quarternion !== undefined) {
      resolved.quarternion = msg.quarternion;
    }
    else {
      resolved.quarternion = []
    }

    if (msg.sn !== undefined) {
      resolved.sn = msg.sn;
    }
    else {
      resolved.sn = 0
    }

    if (msg.dop !== undefined) {
      resolved.dop = msg.dop;
    }
    else {
      resolved.dop = []
    }

    return resolved;
    }
};

module.exports = ImuGpsRaw;
