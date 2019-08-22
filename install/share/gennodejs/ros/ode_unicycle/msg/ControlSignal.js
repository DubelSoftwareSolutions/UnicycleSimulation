// Auto-generated. Do not edit!

// (in-package ode_unicycle.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControlSignal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u1 = null;
      this.u2 = null;
    }
    else {
      if (initObj.hasOwnProperty('u1')) {
        this.u1 = initObj.u1
      }
      else {
        this.u1 = 0.0;
      }
      if (initObj.hasOwnProperty('u2')) {
        this.u2 = initObj.u2
      }
      else {
        this.u2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlSignal
    // Serialize message field [u1]
    bufferOffset = _serializer.float32(obj.u1, buffer, bufferOffset);
    // Serialize message field [u2]
    bufferOffset = _serializer.float32(obj.u2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlSignal
    let len;
    let data = new ControlSignal(null);
    // Deserialize message field [u1]
    data.u1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u2]
    data.u2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ode_unicycle/ControlSignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '405a7fcffea8dd5460f53b4f52d56f53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 u1
    float32 u2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlSignal(null);
    if (msg.u1 !== undefined) {
      resolved.u1 = msg.u1;
    }
    else {
      resolved.u1 = 0.0
    }

    if (msg.u2 !== undefined) {
      resolved.u2 = msg.u2;
    }
    else {
      resolved.u2 = 0.0
    }

    return resolved;
    }
};

module.exports = ControlSignal;
