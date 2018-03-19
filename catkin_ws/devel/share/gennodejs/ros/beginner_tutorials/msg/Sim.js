// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Sim {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.prob = null;
      this.x = null;
      this.y = null;
      this.gl = null;
      this.rb = null;
      this.lb = null;
      this.bb = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('gl')) {
        this.gl = initObj.gl
      }
      else {
        this.gl = false;
      }
      if (initObj.hasOwnProperty('rb')) {
        this.rb = initObj.rb
      }
      else {
        this.rb = false;
      }
      if (initObj.hasOwnProperty('lb')) {
        this.lb = initObj.lb
      }
      else {
        this.lb = false;
      }
      if (initObj.hasOwnProperty('bb')) {
        this.bb = initObj.bb
      }
      else {
        this.bb = false;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sim
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int16(obj.id, buffer, bufferOffset);
    // Serialize message field [prob]
    bufferOffset = _serializer.float64(obj.prob, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [gl]
    bufferOffset = _serializer.bool(obj.gl, buffer, bufferOffset);
    // Serialize message field [rb]
    bufferOffset = _serializer.bool(obj.rb, buffer, bufferOffset);
    // Serialize message field [lb]
    bufferOffset = _serializer.bool(obj.lb, buffer, bufferOffset);
    // Serialize message field [bb]
    bufferOffset = _serializer.bool(obj.bb, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sim
    let len;
    let data = new Sim(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [prob]
    data.prob = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gl]
    data.gl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rb]
    data.rb = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lb]
    data.lb = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bb]
    data.bb = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/Sim';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcaa2b3604268669fe424b85bea488e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int16 id 	#ROOmba's id
    
    float64 prob #Roomba's probability
    
    float64 x 	#Roomba's origin x
    float64 y 	#Roomba's origin y
    
    bool gl
    bool rb
    bool lb
    bool bb
    #Above variables are for boundary detection
    
    float64 time
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sim(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.gl !== undefined) {
      resolved.gl = msg.gl;
    }
    else {
      resolved.gl = false
    }

    if (msg.rb !== undefined) {
      resolved.rb = msg.rb;
    }
    else {
      resolved.rb = false
    }

    if (msg.lb !== undefined) {
      resolved.lb = msg.lb;
    }
    else {
      resolved.lb = false
    }

    if (msg.bb !== undefined) {
      resolved.bb = msg.bb;
    }
    else {
      resolved.bb = false
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

module.exports = Sim;
