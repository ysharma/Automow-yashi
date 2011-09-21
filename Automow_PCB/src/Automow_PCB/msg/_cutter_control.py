"""autogenerated by genmsg_py from cutter_control.msg. Do not edit."""
import roslib.message
import struct


class cutter_control(roslib.message.Message):
  _md5sum = "ef29873a12820d5fe3a8c2cccd3531f1"
  _type = "Automow_PCB/cutter_control"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool cutter_left
bool cutter_right

"""
  __slots__ = ['cutter_left','cutter_right']
  _slot_types = ['bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       cutter_left,cutter_right
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(cutter_control, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.cutter_left is None:
        self.cutter_left = False
      if self.cutter_right is None:
        self.cutter_right = False
    else:
      self.cutter_left = False
      self.cutter_right = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      _x = self
      buff.write(_struct_2B.pack(_x.cutter_left, _x.cutter_right))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      end = 0
      _x = self
      start = end
      end += 2
      (_x.cutter_left, _x.cutter_right,) = _struct_2B.unpack(str[start:end])
      self.cutter_left = bool(self.cutter_left)
      self.cutter_right = bool(self.cutter_right)
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      _x = self
      buff.write(_struct_2B.pack(_x.cutter_left, _x.cutter_right))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 2
      (_x.cutter_left, _x.cutter_right,) = _struct_2B.unpack(str[start:end])
      self.cutter_left = bool(self.cutter_left)
      self.cutter_right = bool(self.cutter_right)
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_2B = struct.Struct("<2B")