// Auto-generated. Do not edit!

// (in-package ode_unicycle.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetInitialStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x0 = null;
      this.y0 = null;
      this.fi0 = null;
    }
    else {
      if (initObj.hasOwnProperty('x0')) {
        this.x0 = initObj.x0
      }
      else {
        this.x0 = 0.0;
      }
      if (initObj.hasOwnProperty('y0')) {
        this.y0 = initObj.y0
      }
      else {
        this.y0 = 0.0;
      }
      if (initObj.hasOwnProperty('fi0')) {
        this.fi0 = initObj.fi0
      }
      else {
        this.fi0 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetInitialStateRequest
    // Serialize message field [x0]
    bufferOffset = _serializer.float32(obj.x0, buffer, bufferOffset);
    // Serialize message field [y0]
    bufferOffset = _serializer.float32(obj.y0, buffer, bufferOffset);
    // Serialize message field [fi0]
    bufferOffset = _serializer.float32(obj.fi0, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetInitialStateRequest
    let len;
    let data = new SetInitialStateRequest(null);
    // Deserialize message field [x0]
    data.x0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y0]
    data.y0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fi0]
    data.fi0 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ode_unicycle/SetInitialStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '882f4d1394f3968dd666deaf6cd7c8e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x0
    float32 y0
    float32 fi0
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetInitialStateRequest(null);
    if (msg.x0 !== undefined) {
      resolved.x0 = msg.x0;
    }
    else {
      resolved.x0 = 0.0
    }

    if (msg.y0 !== undefined) {
      resolved.y0 = msg.y0;
    }
    else {
      resolved.y0 = 0.0
    }

    if (msg.fi0 !== undefined) {
      resolved.fi0 = msg.fi0;
    }
    else {
      resolved.fi0 = 0.0
    }

    return resolved;
    }
};

class SetInitialStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x0 = null;
      this.y0 = null;
      this.fi0 = null;
    }
    else {
      if (initObj.hasOwnProperty('x0')) {
        this.x0 = initObj.x0
      }
      else {
        this.x0 = 0.0;
      }
      if (initObj.hasOwnProperty('y0')) {
        this.y0 = initObj.y0
      }
      else {
        this.y0 = 0.0;
      }
      if (initObj.hasOwnProperty('fi0')) {
        this.fi0 = initObj.fi0
      }
      else {
        this.fi0 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetInitialStateResponse
    // Serialize message field [x0]
    bufferOffset = _serializer.float32(obj.x0, buffer, bufferOffset);
    // Serialize message field [y0]
    bufferOffset = _serializer.float32(obj.y0, buffer, bufferOffset);
    // Serialize message field [fi0]
    bufferOffset = _serializer.float32(obj.fi0, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetInitialStateResponse
    let len;
    let data = new SetInitialStateResponse(null);
    // Deserialize message field [x0]
    data.x0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y0]
    data.y0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fi0]
    data.fi0 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ode_unicycle/SetInitialStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '882f4d1394f3968dd666deaf6cd7c8e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x0
    float32 y0
    float32 fi0
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetInitialStateResponse(null);
    if (msg.x0 !== undefined) {
      resolved.x0 = msg.x0;
    }
    else {
      resolved.x0 = 0.0
    }

    if (msg.y0 !== undefined) {
      resolved.y0 = msg.y0;
    }
    else {
      resolved.y0 = 0.0
    }

    if (msg.fi0 !== undefined) {
      resolved.fi0 = msg.fi0;
    }
    else {
      resolved.fi0 = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetInitialStateRequest,
  Response: SetInitialStateResponse,
  md5sum() { return '2cc2c97b3de99a518d38b7026be75633'; },
  datatype() { return 'ode_unicycle/SetInitialState'; }
};
