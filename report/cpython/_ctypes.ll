inline.NumInlined: 552
inline.NumDeleted: 93
begin_hunk_0
@.str.98 = private unnamed_addr constant [9 x i8] c"set_type\00", align 1
@PyCPointerType_set_type__doc__ = internal constant [30 x i8] c"set_type($self, type, /)\0A--\0A\0A\00", align 16
@PyCPointerType_methods = internal global [7 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.62, ptr @CDataType_from_address, i32 642, [4 x i8] zeroinitializer, ptr @CDataType_from_address__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.63, ptr @CDataType_from_buffer, i32 642, [4 x i8] zeroinitializer, ptr @CDataType_from_buffer__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.64, ptr @CDataType_from_buffer_copy, i32 642, [4 x i8] zeroinitializer, ptr @CDataType_from_buffer_copy__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.65, ptr @CDataType_in_dll, i32 642, [4 x i8] zeroinitializer, ptr @CDataType_in_dll__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.61, ptr @PyCPointerType_from_param, i32 642, [4 x i8] zeroinitializer, ptr @PyCPointerType_from_param__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.98, ptr @PyCPointerType_set_type, i32 642, [4 x i8] zeroinitializer, ptr @PyCPointerType_set_type__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@PyCPointerType_from_param._keywords = internal constant [2 x ptr] [ptr @.str.67, ptr null], align 16
@PyCPointerType_from_param._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @PyCPointerType_from_param._keywords, ptr @.str.61, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.100 = private unnamed_addr constant [56 x i8] c"cannot convert argument: POINTER _type_ type is not set\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"expected CData instance\00", align 1
@ffi_type_pointer = external global %struct._ffi_type, align 8
@PyCPointerType_set_type._keywords = internal constant [2 x ptr] [ptr @.str.67, ptr null], align 16
@PyCPointerType_set_type._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @PyCPointerType_set_type._keywords, ptr @.str.98, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.102 = private unnamed_addr constant [22 x i8] c"_type_ must be a type\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"%zd,\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"%zd)\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"_ctypes.PyCArrayType\00", align 1
@pycarray_type_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.108, i32 0, i32 0, i32 1280, [4 x i8] zeroinitializer, ptr @pycarray_type_slots }, align 8
@.str.110 = private unnamed_addr constant [31 x i8] c"metatype for the Array Objects\00", align 1
@pycarray_type_slots = internal global [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.110 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @CDataType_methods }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @PyCArrayType_init }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.112 = private unnamed_addr constant [41 x i8] c"class must define a '_length_' attribute\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"The '_length_' attribute must be an integer\00", align 1
@.str.114 = private unnamed_addr constant [46 x i8] c"The '_length_' attribute must not be negative\00", align 1
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.115 = private unnamed_addr constant [38 x i8] c"The '_length_' attribute is too large\00", align 1
@.str.116 = private unnamed_addr constant [39 x i8] c"class must define a '_type_' attribute\00", align 1
@.str.117 = private unnamed_addr constant [30 x i8] c"_type_ must have storage info\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"array too large\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@CharArray_getsets = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.121, ptr @_ctypes_PyCArrayType_Type_raw_get, ptr @_ctypes_PyCArrayType_Type_raw_set, ptr null, ptr null }, %struct.PyGetSetDef { ptr @.str.122, ptr @_ctypes_PyCArrayType_Type_value_get, ptr @_ctypes_PyCArrayType_Type_value_set, ptr null, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.120 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@WCharArray_getsets = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.122, ptr @WCharArray_get_value, ptr @WCharArray_set_value, ptr @.str.127, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.121 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.123 = private unnamed_addr constant [24 x i8] c"cannot delete attribute\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"byte string too long\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"can't delete attribute\00", align 1
@.str.126 = private unnamed_addr constant [38 x i8] c"bytes expected instead of %s instance\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"string value\00", align 1
@.str.128 = private unnamed_addr constant [47 x i8] c"unicode string expected instead of %s instance\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"string too long\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"_ctypes.PyCSimpleType\00", align 1
@pycsimple_type_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.130, i32 0, i32 0, i32 1280, [4 x i8] zeroinitializer, ptr @pycsimple_type_slots }, align 8
@.str.132 = private unnamed_addr constant [39 x i8] c"metatype for the PyCSimpleType Objects\00", align 1
@pycsimple_type_slots = internal global [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.132 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @PyCSimpleType_methods }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @PyCSimpleType_init }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@PyCSimpleType_from_param__doc__ = internal constant [88 x i8] c"from_param($self, value, /)\0A--\0A\0AConvert a Python object into a function call parameter.\00", align 16
@PyCSimpleType_methods = internal global [6 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.61, ptr @PyCSimpleType_from_param, i32 642, [4 x i8] zeroinitializer, ptr @PyCSimpleType_from_param__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.62, ptr @CDataType_from_address, i32 642, [4 x i8] zeroinitializer, ptr @CDataType_from_address__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.63, ptr @CDataType_from_buffer, i32 642, [4 x i8] zeroinitializer, ptr @CDataType_from_buffer__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.64, ptr @CDataType_from_buffer_copy, i32 642, [4 x i8] zeroinitializer, ptr @CDataType_from_buffer_copy__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.65, ptr @CDataType_in_dll, i32 642, [4 x i8] zeroinitializer, ptr @CDataType_in_dll__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@PyCSimpleType_from_param._keywords = internal constant [2 x ptr] [ptr @.str.67, ptr null], align 16
@PyCSimpleType_from_param._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @PyCSimpleType_from_param._keywords, ptr @.str.61, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.135 = private unnamed_addr constant [11 x i8] c"wrong type\00", align 1
@.str.136 = private unnamed_addr constant [46 x i8] c"class must define a '_type_' string attribute\00", align 1
@.str.137 = private unnamed_addr constant [74 x i8] c"class must define a '_type_' attribute which must be a string of length 1\00", align 1
@.str.138 = private unnamed_addr constant [124 x i8] c"class must define a '_type_' attribute which must be\0Aa single character string containing one of the\0Asupported types: '%s'.\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"__ctype_be__\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"__ctype_le__\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c">\00", align 1
@c_char_p_from_param__doc__ = internal constant [33 x i8] c"from_param($self, value, /)\0A--\0A\0A\00", align 16
@c_char_p_methods = internal global [2 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.61, ptr @c_char_p_from_param, i32 642, [4 x i8] zeroinitializer, ptr @c_char_p_from_param__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@c_char_p_from_param._keywords = internal constant [2 x ptr] [ptr @.str.67, ptr null], align 16
@c_char_p_from_param._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @c_char_p_from_param._keywords, ptr @.str.61, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.143 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.144 = private unnamed_addr constant [57 x i8] c"'%.200s' object cannot be interpreted as ctypes.c_char_p\00", align 1
@c_wchar_p_from_param__doc__ = internal constant [33 x i8] c"from_param($self, value, /)\0A--\0A\0A\00", align 16
@c_wchar_p_methods = internal global [2 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.61, ptr @c_wchar_p_from_param, i32 642, [4 x i8] zeroinitializer, ptr @c_wchar_p_from_param__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@c_wchar_p_from_param._keywords = internal constant [2 x ptr] [ptr @.str.67, ptr null], align 16
@c_wchar_p_from_param._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @c_wchar_p_from_param._keywords, ptr @.str.61, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.146 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.147 = private unnamed_addr constant [58 x i8] c"'%.200s' object cannot be interpreted as ctypes.c_wchar_p\00", align 1
@c_void_p_from_param__doc__ = internal constant [33 x i8] c"from_param($self, value, /)\0A--\0A\0A\00", align 16
@c_void_p_methods = internal global [2 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.61, ptr @c_void_p_from_param, i32 642, [4 x i8] zeroinitializer, ptr @c_void_p_from_param__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@c_void_p_from_param._keywords = internal constant [2 x ptr] [ptr @.str.67, ptr null], align 16
@c_void_p_from_param._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @c_void_p_from_param._keywords, ptr @.str.61, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.149 = private unnamed_addr constant [57 x i8] c"'%.200s' object cannot be interpreted as ctypes.c_void_p\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"_ctypes.PyCFuncPtrType\00", align 1
@pycfuncptr_type_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.150, i32 0, i32 0, i32 1280, [4 x i8] zeroinitializer, ptr @pycfuncptr_type_slots }, align 8
@.str.152 = private unnamed_addr constant [33 x i8] c"metatype for C function pointers\00", align 1
@pycfuncptr_type_slots = internal global [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.152 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @CDataType_methods }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @PyCFuncPtrType_init }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.155 = private unnamed_addr constant [51 x i8] c"class must define _flags_ which must be an integer\00", align 1
@.str.156 = private unnamed_addr constant [46 x i8] c"_restype_ must be a type, a callable, or None\00", align 1
@.str.157 = private unnamed_addr constant [39 x i8] c"_argtypes_ must be a sequence of types\00", align 1
@.str.158 = private unnamed_addr constant [55 x i8] c"_argtypes_ has too many arguments (%zi), maximum is %i\00", align 1
@.str.159 = private unnamed_addr constant [48 x i8] c"item %zd in _argtypes_ has no from_param method\00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"_ctypes.Structure\00", align 1
@pycstruct_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.160, i32 0, i32 0, i32 1280, [4 x i8] zeroinitializer, ptr @pycstruct_slots }, align 8
@.str.162 = private unnamed_addr constant [21 x i8] c"Structure base class\00", align 1
@pycstruct_slots = internal global [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.162 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @Struct_init }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @GenericPyCData_new }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @PyCData_NewGetBuffer }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.164 = private unnamed_addr constant [18 x i8] c"args not a tuple?\00", align 1
@.str.165 = private unnamed_addr constant [22 x i8] c"too many initializers\00", align 1
@.str.166 = private unnamed_addr constant [30 x i8] c"duplicate values for field %R\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"_ctypes.Union\00", align 1
@pycunion_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.167, i32 0, i32 0, i32 1280, [4 x i8] zeroinitializer, ptr @pycunion_slots }, align 8
@.str.169 = private unnamed_addr constant [17 x i8] c"Union base class\00", align 1
@pycunion_slots = internal global [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.169 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @Struct_init }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @GenericPyCData_new }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @PyCData_NewGetBuffer }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.171 = private unnamed_addr constant [17 x i8] c"_ctypes._Pointer\00", align 1
@pycpointer_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.171, i32 0, i32 0, i32 1280, [4 x i8] zeroinitializer, ptr @pycpointer_slots }, align 8
@Pointer_getsets = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.174, ptr @Pointer_get_contents, ptr @Pointer_set_contents, ptr @.str.175, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@pycpointer_slots = internal global [10 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.35 }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @Pointer_getsets }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @Pointer_init }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @Pointer_new }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @PyCData_NewGetBuffer }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @Pointer_bool }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @Pointer_subscript }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @Pointer_item }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @Pointer_ass_item }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.174 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@.str.175 = private unnamed_addr constant [47 x i8] c"the object this pointer points to (read-write)\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"NULL pointer access\00", align 1
@.str.177 = private unnamed_addr constant [39 x i8] c"Pointer does not support item deletion\00", align 1
@.str.178 = private unnamed_addr constant [26 x i8] c"expected %s instead of %s\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"POINTER\00", align 1
@.str.180 = private unnamed_addr constant [38 x i8] c"Cannot create instance: has no _type_\00", align 1
@PyExc_IndexError = external local_unnamed_addr global ptr, align 8
@PySlice_Type = external global %struct._typeobject, align 8
@.str.181 = private unnamed_addr constant [26 x i8] c"slice step cannot be zero\00", align 1
@.str.182 = private unnamed_addr constant [37 x i8] c"slice start is required for step < 0\00", align 1
@.str.183 = private unnamed_addr constant [23 x i8] c"slice stop is required\00", align 1
@.str.184 = private unnamed_addr constant [32 x i8] c"Pointer indices must be integer\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"_ctypes.Array\00", align 1
@pycarray_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.185, i32 0, i32 0, i32 1280, [4 x i8] zeroinitializer, ptr @pycarray_slots }, align 8
@array_doc = internal constant [387 x i8] c"Abstract base class for arrays.\0A\0AThe recommended way to create concrete array types is by multiplying any\0Actypes data type with a non-negative integer. Alternatively, you can subclass\0Athis type and define _length_ and _type_ class variables. Array elements can\0Abe read and written using standard subscript and slice accesses for slice\0Areads, the resulting object is not itself an Array.\00", align 16
@pycarray_slots = internal global [12 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @array_doc }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @Array_methods }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @Array_init }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @GenericPyCData_new }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @PyCData_NewGetBuffer }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @Array_length }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @Array_item }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @Array_ass_item }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @Array_length }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @Array_subscript }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @Array_ass_subscript }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.188 = private unnamed_addr constant [18 x i8] c"__class_getitem__\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"See PEP 585\00", align 1
@Array_methods = internal global [2 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.188, ptr @Py_GenericAlias, i32 24, [4 x i8] zeroinitializer, ptr @.str.189 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.191 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.192 = private unnamed_addr constant [37 x i8] c"Array does not support item deletion\00", align 1
@.str.193 = private unnamed_addr constant [25 x i8] c"indices must be integers\00", align 1
@.str.194 = private unnamed_addr constant [38 x i8] c"Can only assign sequence of same size\00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"indices must be integer\00", align 1
@.str.196 = private unnamed_addr constant [21 x i8] c"_ctypes._SimpleCData\00", align 1
@pycsimple_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.196, i32 0, i32 0, i32 1280, [4 x i8] zeroinitializer, ptr @pycsimple_slots }, align 8
@Simple_getsets = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.122, ptr @_ctypes_Simple_value_get, ptr @_ctypes_Simple_value_set, ptr null, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@pycsimple_slots = internal global [9 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @Simple_repr }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.35 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @Simple_methods }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @Simple_getsets }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @Simple_init }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @GenericPyCData_new }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @PyCData_NewGetBuffer }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @Simple_bool }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.199 = private unnamed_addr constant [18 x i8] c"<%s object at %p>\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"%s(%R)\00", align 1
@Simple_from_outparm__doc__ = internal constant [40 x i8] c"__ctypes_from_outparam__($self, /)\0A--\0A\0A\00", align 16
@Simple_methods = internal global [2 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.38, ptr @Simple_from_outparm, i32 642, [4 x i8] zeroinitializer, ptr @Simple_from_outparm__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.202 = private unnamed_addr constant [46 x i8] c"__ctypes_from_outparam__() takes no arguments\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"__init__\00", align 1
@.str.204 = private unnamed_addr constant [17 x i8] zeroinitializer, align 1
@.str.205 = private unnamed_addr constant [17 x i8] c"_ctypes.CFuncPtr\00", align 1
@pycfuncptr_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.205, i32 160, i32 0, i32 17664, [4 x i8] zeroinitializer, ptr @pycfuncptr_slots }, align 8
@.str.207 = private unnamed_addr constant [17 x i8] c"Function Pointer\00", align 1
@PyCFuncPtr_getsets = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.218, ptr @_ctypes_CFuncPtr_errcheck_get, ptr @_ctypes_CFuncPtr_errcheck_set, ptr @_ctypes_CFuncPtr_errcheck__doc__, ptr null }, %struct.PyGetSetDef { ptr @.str.219, ptr @_ctypes_CFuncPtr_restype_get, ptr @_ctypes_CFuncPtr_restype_set, ptr @_ctypes_CFuncPtr_restype__doc__, ptr null }, %struct.PyGetSetDef { ptr @.str.220, ptr @_ctypes_CFuncPtr_argtypes_get, ptr @_ctypes_CFuncPtr_argtypes_set, ptr @_ctypes_CFuncPtr_argtypes__doc__, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@pycfuncptr_slots = internal global [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @PyCFuncPtr_dealloc }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @PyCFuncPtr_repr }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @PyCFuncPtr_call }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.207 }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @PyCFuncPtr_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @PyCFuncPtr_clear }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @PyCFuncPtr_getsets }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @PyCFuncPtr_new }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @PyCData_NewGetBuffer }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @PyCFuncPtr_bool }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.209 = private unnamed_addr constant [54 x i8] c"this function takes at least %d argument%s (%d given)\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.211 = private unnamed_addr constant [45 x i8] c"this function takes %d argument%s (%d given)\00", align 1
@.str.212 = private unnamed_addr constant [24 x i8] c"NULL stginfo unexpected\00", align 1
@.str.213 = private unnamed_addr constant [51 x i8] c"%s 'out' parameter must be passed as default value\00", align 1
@.str.214 = private unnamed_addr constant [33 x i8] c"paramflag %u not yet implemented\00", align 1
@.str.215 = private unnamed_addr constant [44 x i8] c"call takes exactly %d arguments (%zd given)\00", align 1
@.str.216 = private unnamed_addr constant [31 x i8] c"required argument '%S' missing\00", align 1
@.str.217 = private unnamed_addr constant [21 x i8] c"not enough arguments\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"errcheck\00", align 1
@_ctypes_CFuncPtr_errcheck__doc__ = internal constant [31 x i8] c"a function to check for errors\00", align 16
@.str.219 = private unnamed_addr constant [8 x i8] c"restype\00", align 1
@_ctypes_CFuncPtr_restype__doc__ = internal constant [24 x i8] c"specify the result type\00", align 16
@.str.220 = private unnamed_addr constant [9 x i8] c"argtypes\00", align 1
@_ctypes_CFuncPtr_argtypes__doc__ = internal constant [27 x i8] c"specify the argument types\00", align 16
@.str.221 = private unnamed_addr constant [40 x i8] c"the errcheck attribute must be callable\00", align 1
@.str.222 = private unnamed_addr constant [44 x i8] c"restype must be a type, a callable, or None\00", align 1
@.str.223 = private unnamed_addr constant [35 x i8] c"paramflags must be a tuple or None\00", align 1
@.str.224 = private unnamed_addr constant [49 x i8] c"paramflags must have the same length as argtypes\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"i|OO\00", align 1
@.str.226 = private unnamed_addr constant [65 x i8] c"paramflags must be a sequence of (int [,string [,value]]) tuples\00", align 1
@.str.227 = private unnamed_addr constant [33 x i8] c"paramflag value %d not supported\00", align 1
@.str.228 = private unnamed_addr constant [4 x i8] c"PzZ\00", align 1
@.str.229 = private unnamed_addr constant [50 x i8] c"'out' parameter %d must be a pointer type, not %s\00", align 1
@.str.230 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.231 = private unnamed_addr constant [54 x i8] c"argument must be callable or integer function address\00", align 1
@.str.232 = private unnamed_addr constant [53 x i8] c"cannot construct instance of this class: no argtypes\00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"O|O\00", align 1
@.str.234 = private unnamed_addr constant [31 x i8] c"O&O;illegal func_spec argument\00", align 1
@.str.235 = private unnamed_addr constant [24 x i8] c"function '%s' not found\00", align 1
@.str.236 = private unnamed_addr constant [54 x i8] c"function name must be string, bytes object or integer\00", align 1
@.str.237 = private unnamed_addr constant [20 x i8] c"_ctypes.DictRemover\00", align 1
@dictremover_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.237, i32 32, i32 0, i32 16640, [4 x i8] zeroinitializer, ptr @dictremover_slots }, align 8
@dictremover_doc = internal constant [32 x i8] c"deletes a key from a dictionary\00", align 16
@dictremover_slots = internal global [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @_DictRemover_dealloc }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @_DictRemover_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @_DictRemover_clear }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @_DictRemover_call }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @dictremover_doc }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.240 = private unnamed_addr constant [52 x i8] c"Exception ignored while calling _ctypes.DictRemover\00", align 1
@.str.241 = private unnamed_addr constant [25 x i8] c"_ctypes.StructParam_Type\00", align 1
@structparam_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.241, i32 32, i32 0, i32 16768, [4 x i8] zeroinitializer, ptr @structparam_slots }, align 8
@structparam_slots = internal global [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @StructParam_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @StructParam_clear }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @StructParam_dealloc }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.244 = private unnamed_addr constant [15 x i8] c"FUNCFLAG_CDECL\00", align 1
@.str.245 = private unnamed_addr constant [19 x i8] c"FUNCFLAG_USE_ERRNO\00", align 1
@.str.246 = private unnamed_addr constant [23 x i8] c"FUNCFLAG_USE_LASTERROR\00", align 1
@.str.247 = private unnamed_addr constant [19 x i8] c"FUNCFLAG_PYTHONAPI\00", align 1
@.str.248 = private unnamed_addr constant [14 x i8] c"_memmove_addr\00", align 1
@.str.249 = private unnamed_addr constant [13 x i8] c"_memset_addr\00", align 1
@.str.250 = private unnamed_addr constant [16 x i8] c"_string_at_addr\00", align 1
@.str.251 = private unnamed_addr constant [11 x i8] c"_cast_addr\00", align 1
@.str.252 = private unnamed_addr constant [17 x i8] c"_wstring_at_addr\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"_memoryview_at_addr\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"RTLD_LOCAL\00", align 1
@.str.255 = private unnamed_addr constant [12 x i8] c"RTLD_GLOBAL\00", align 1
@.str.256 = private unnamed_addr constant [20 x i8] c"CTYPES_MAX_ARGCOUNT\00", align 1
@.str.257 = private unnamed_addr constant [14 x i8] c"ArgumentError\00", align 1
@.str.258 = private unnamed_addr constant [14 x i8] c"SIZEOF_TIME_T\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c"ctypes.string_at\00", align 1
@.str.260 = private unnamed_addr constant [3 x i8] c"ni\00", align 1
@.str.261 = private unnamed_addr constant [41 x i8] c"cast() argument 2 must be a pointer type\00", align 1
@.str.262 = private unnamed_addr constant [8 x i8] c"sPzUZXO\00", align 1
@.str.263 = private unnamed_addr constant [49 x i8] c"cast() argument 2 must be a pointer type, not %s\00", align 1
@.str.264 = private unnamed_addr constant [18 x i8] c"ctypes.wstring_at\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"nn\00", align 1
@.str.266 = private unnamed_addr constant [21 x i8] c"ctypes.memoryview_at\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"nni\00", align 1
@.str.268 = private unnamed_addr constant [53 x i8] c"memoryview_at: size is negative (or overflowed): %zd\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @PyDict_SetItemProxy(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 5 uses
  %i.b = tail call ptr @_PyThreadState_GetCurrent() #17 ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  %i.d = getelementptr i8, ptr %.val.i.i.i, i64 168
  %.val6.i.i.i = load i64, ptr %i.d, align 8, !tbaa !17
  %i.e = and i64 %.val6.i.i.i, 2048
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %_PyVectorcall_FunctionInline.exit.i.i

_PyVectorcall_FunctionInline.exit.i.i:            ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val.i.i.i, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %.0.copyload.i.i.i = load ptr, ptr %i.h, align 1 ; 2 uses
  %i.i = icmp eq ptr %.0.copyload.i.i.i, null
  br i1 %i.i, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %bb.b

_PyVectorcall_FunctionInline.exit.thread.i.i:     ; preds = %_PyVectorcall_FunctionInline.exit.i.i, %bb.a
  %i.j = tail call ptr @_PyObject_MakeTpCall(ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, ptr noundef null) #17
  br label %_PyObject_CallNoArgs.exit

bb.b:                                             ; preds = %_PyVectorcall_FunctionInline.exit.i.i
  %i.k = tail call ptr %.0.copyload.i.i.i(ptr noundef nonnull %i.a, ptr noundef null, i64 noundef 0, ptr noundef null) #17, !inline_history !27
  %i.l = tail call ptr @_Py_CheckFunctionResult(ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef %i.k, ptr noundef null) #17
  br label %_PyObject_CallNoArgs.exit

_PyObject_CallNoArgs.exit:                        ; preds = %_PyVectorcall_FunctionInline.exit.thread.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.j, %_PyVectorcall_FunctionInline.exit.thread.i.i ], [ %i.l, %bb.b ] ; 7 uses
  %i.m = icmp eq ptr %.0.i.i, null
  br i1 %i.m, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %_PyObject_CallNoArgs.exit
  %i.n = load i32, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %2, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.d
  %i.q = getelementptr i8, ptr %.0.i.i, i64 16
  store ptr %2, ptr %i.q, align 8, !tbaa !29
  %i.r = load i32, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_Py_NewRef.exit21, label %bb.e

bb.e:                                             ; preds = %_Py_NewRef.exit
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %1, align 8, !tbaa !28
  br label %_Py_NewRef.exit21

_Py_NewRef.exit21:                                ; preds = %_Py_NewRef.exit, %bb.e
  %i.u = getelementptr i8, ptr %.0.i.i, i64 24
  store ptr %1, ptr %i.u, align 8, !tbaa !31
  %i.v = tail call ptr @PyWeakref_NewProxy(ptr noundef %3, ptr noundef nonnull %.0.i.i) #17 ; 5 uses
  %i.w = load i32, ptr %.0.i.i, align 8, !tbaa !28 ; 2 uses
  %.not.i18 = icmp sgt i32 %i.w, -1
  br i1 %.not.i18, label %bb.f, label %Py_DECREF.exit19

bb.f:                                             ; preds = %_Py_NewRef.exit21
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %.0.i.i, align 8, !tbaa !28
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %Py_DECREF.exit19

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i.i) #17
  br label %Py_DECREF.exit19

Py_DECREF.exit19:                                 ; preds = %_Py_NewRef.exit21, %bb.f, %bb.g
  %i.z = icmp eq ptr %i.v, null
  br i1 %i.z, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit19
  %i.aa = tail call i32 @PyDict_SetItem(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.v) #17 ; 3 uses
  %i.ab = load i32, ptr %i.v, align 8, !tbaa !28  ; 2 uses
  %.not.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.v, align 8, !tbaa !28
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit19, %_PyObject_CallNoArgs.exit
  %.0 = phi i32 [ -1, %Py_DECREF.exit19 ], [ -1, %_PyObject_CallNoArgs.exit ], [ %i.aa, %bb.h ], [ %i.aa, %bb.i ], [ %i.aa, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @PyWeakref_NewProxy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @ctype_clear_stginfo(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not.i57 = icmp sgt i32 %i.c, -1
  br i1 %.not.i57, label %bb.c, label %Py_DECREF.exit58

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !28
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit58

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #17
  br label %Py_DECREF.exit58

Py_DECREF.exit58:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 4 uses
  %.not41 = icmp eq ptr %i.g, null
  br i1 %.not41, label %Py_DECREF.exit56, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit58
  store ptr null, ptr %i.f, align 8, !tbaa !32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %.not.i55 = icmp sgt i32 %i.h, -1
  br i1 %.not.i55, label %bb.f, label %Py_DECREF.exit56

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !28
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit56

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #17
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit58
  %i.k = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 4 uses
  %.not42 = icmp eq ptr %i.l, null
  br i1 %.not42, label %Py_DECREF.exit54, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit56
  store ptr null, ptr %i.k, align 8, !tbaa !32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i53 = icmp sgt i32 %i.m, -1
  br i1 %.not.i53, label %bb.i, label %Py_DECREF.exit54

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !28
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit54

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #17
  br label %Py_DECREF.exit54

Py_DECREF.exit54:                                 ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit56
  %i.p = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 4 uses
  %.not43 = icmp eq ptr %i.q, null
  br i1 %.not43, label %Py_DECREF.exit52, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit54
  store ptr null, ptr %i.p, align 8, !tbaa !32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %.not.i51 = icmp sgt i32 %i.r, -1
  br i1 %.not.i51, label %bb.l, label %Py_DECREF.exit52

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit52

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #17
  br label %Py_DECREF.exit52
end_hunk_0
begin_hunk_1_@PyCSimpleType_from_param:bb.a
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @PyCSimpleType_from_param._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #17 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = call fastcc ptr @PyCSimpleType_from_param_impl(ptr noundef %0, ptr noundef %1, ptr noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.0 = phi ptr [ %i.h, %.thread ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @PyCSimpleType_from_param_impl(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call i32 @PyObject_IsInstance(ptr noundef %2, ptr noundef %0) #17
  switch i32 %i.b, label %bb.b [
    i32 -1, label %_Py_NewRef.exit
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %2, align 8, !tbaa !28
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.g = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !72 ; 2 uses
  %i.h = getelementptr i8, ptr %.val.val, i64 40  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = tail call i32 @PyObject_IsInstance(ptr noundef %0, ptr noundef %i.i) #17
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.l = tail call ptr @PyObject_GetTypeData(ptr noundef %0, ptr noundef %i.k) #17 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  %.not8.i.i = icmp eq i32 %i.m, 0
  br i1 %.not8.i.i, label %bb.f, label %PyStgInfo_FromType.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  tail call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.1) #17
  br label %_Py_NewRef.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.l, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = tail call ptr @PyUnicode_AsUTF8(ptr noundef %i.p) #17 ; 2 uses
  %i.r = tail call ptr @_ctypes_get_fielddesc(ptr noundef %i.q) #17 ; 2 uses
  %i.s = tail call ptr @PyCArgObject_new(ptr noundef nonnull %.val.val) #17 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %PyStgInfo_FromType.exit
  %i.u = load i8, ptr %i.q, align 1, !tbaa !28
  %i.v = getelementptr i8, ptr %i.s, i64 24
  store i8 %i.u, ptr %i.v, align 8, !tbaa !169
  %i.w = getelementptr i8, ptr %i.r, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !172
  %i.y = getelementptr i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.y, align 16, !tbaa !170
  %i.z = getelementptr i8, ptr %i.r, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.ab = getelementptr i8, ptr %i.s, i64 32
  %i.ac = getelementptr i8, ptr %i.l, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.ae = tail call ptr %i.aa(ptr noundef %i.ab, ptr noundef %2, i64 noundef %i.ad) #17 ; 2 uses
  %i.af = getelementptr i8, ptr %i.s, i64 64
  store ptr %i.ae, ptr %i.af, align 16, !tbaa !143
  %.not36 = icmp eq ptr %i.ae, null
  br i1 %.not36, label %bb.h, label %_Py_NewRef.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call ptr @PyErr_GetRaisedException() #17 ; 5 uses
  %i.ah = load i32, ptr %i.s, align 16, !tbaa !28 ; 2 uses
  %.not.i42 = icmp sgt i32 %i.ah, -1
  br i1 %.not.i42, label %bb.i, label %Py_DECREF.exit43

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %i.s, align 16, !tbaa !28
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %Py_DECREF.exit43

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #17
  br label %Py_DECREF.exit43

Py_DECREF.exit43:                                 ; preds = %bb.h, %bb.i, %bb.j
  %i.ak = call i32 @PyObject_GetOptionalAttr(ptr noundef %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71744), ptr noundef nonnull %i.a) #17
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit43
  call fastcc void @Py_XDECREF(ptr noundef %i.ag)
  br label %_Py_NewRef.exit

bb.l:                                             ; preds = %Py_DECREF.exit43
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !32
  %.not37 = icmp eq ptr %i.am, null
  br i1 %.not37, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = call fastcc i32 @_Py_EnterRecursiveCall()
  %.not39 = icmp eq i32 %i.an, 0
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !32  ; 4 uses
  br i1 %.not39, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %.not.i40 = icmp sgt i32 %i.ap, -1
  br i1 %.not.i40, label %bb.o, label %Py_DECREF.exit41

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !28
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.p, label %Py_DECREF.exit41

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ao) #17
  br label %Py_DECREF.exit41

Py_DECREF.exit41:                                 ; preds = %bb.n, %bb.o, %bb.p
  call fastcc void @Py_XDECREF(ptr noundef %i.ag)
  br label %_Py_NewRef.exit

bb.q:                                             ; preds = %bb.m
  %i.as = call fastcc ptr @PyCSimpleType_from_param_impl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.ao)
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !28 ; 2 uses
  %.not.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.at, align 8, !tbaa !28
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.r, %bb.s
  call fastcc void @Py_XDECREF(ptr noundef %i.ag)
  br label %_Py_NewRef.exit

bb.t:                                             ; preds = %bb.l
  %.not38 = icmp eq ptr %i.ag, null
  br i1 %.not38, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @PyErr_SetRaisedException(ptr noundef nonnull %i.ag) #17
  br label %_Py_NewRef.exit

bb.v:                                             ; preds = %bb.t
  %i.ax = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !32
  call void @PyErr_SetString(ptr noundef %i.ax, ptr noundef nonnull @.str.135) #17
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.f, %PyStgInfo_FromType.exit, %bb.g, %bb.u, %bb.v, %Py_DECREF.exit, %Py_DECREF.exit41, %bb.k, %bb.c, %bb.b, %bb.a
  %.2 = phi ptr [ %2, %bb.c ], [ null, %bb.a ], [ %2, %bb.b ], [ null, %bb.f ], [ %i.s, %bb.g ], [ null, %PyStgInfo_FromType.exit ], [ null, %bb.k ], [ null, %Py_DECREF.exit41 ], [ %i.as, %Py_DECREF.exit ], [ null, %bb.v ], [ null, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.2
}

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #2

declare void @PyErr_SetRaisedException(ptr noundef) local_unnamed_addr #2

declare ptr @_ctypes_get_simple_type_chars() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_ctypes_alloc_format_string_for_type(i8 noundef signext %0) unnamed_addr #0 {
bb.a:
  switch i8 %0, label %bb.d [
    i8 108, label %bb.b
    i8 76, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i8 [ 113, %bb.b ], [ 81, %bb.c ], [ %0, %bb.a ]
  %i.a = tail call ptr @PyMem_Malloc(i64 noundef 3) #17 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = tail call ptr @PyErr_NoMemory() #17      ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i8 60, ptr %i.a, align 1, !tbaa !28
  %i.d = getelementptr i8, ptr %i.a, i64 1
  store i8 %.0, ptr %i.d, align 1, !tbaa !28
  %i.e = getelementptr i8, ptr %i.a, i64 2
  store i8 0, ptr %i.e, align 1, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @PyCSimpleType_paramfunc(ptr noundef %0, ptr noundef %1) #0 {
PyStgInfo_FromObject.exit:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = tail call i32 @PyObject_IsInstance(ptr noundef %.val, ptr noundef %i.c) #17 ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.f = tail call ptr @PyObject_GetTypeData(ptr noundef %.val, ptr noundef %i.e) #17
  %i.g = getelementptr i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = tail call ptr @PyUnicode_AsUTF8(ptr noundef %i.h) #17 ; 2 uses
  %i.j = tail call ptr @_ctypes_get_fielddesc(ptr noundef %i.i) #17
  %i.k = tail call ptr @PyCArgObject_new(ptr noundef nonnull %0) #17 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.a

bb.a:                                             ; preds = %PyStgInfo_FromObject.exit
  %i.m = load i8, ptr %i.i, align 1, !tbaa !28
  %i.n = getelementptr i8, ptr %i.k, i64 24
  store i8 %i.m, ptr %i.n, align 8, !tbaa !169
  %i.o = getelementptr i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  %i.q = getelementptr i8, ptr %i.k, i64 16
  store ptr %i.p, ptr %i.q, align 16, !tbaa !170
  %i.r = load i32, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %1, align 8, !tbaa !28
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  %i.u = getelementptr i8, ptr %i.k, i64 64
  store ptr %1, ptr %i.u, align 16, !tbaa !143
  %i.v = getelementptr i8, ptr %i.k, i64 32
  %i.w = getelementptr i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !51
  %i.y = getelementptr i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.v, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %PyStgInfo_FromObject.exit, %_Py_NewRef.exit
  ret ptr %i.k
}

declare ptr @PyDescr_NewClassMethod(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

declare void @PyUnicode_InternInPlace(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @CreateSwappedType(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %.val53 = load i64, ptr %i.c, align 8, !tbaa !102
  %i.d = tail call ptr @PyTuple_New(i64 noundef %.val53) #17 ; 9 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %Py_DECREF.exit50, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = tail call ptr @PyUnicode_Concat(ptr noundef %i.b, ptr noundef %i.f) #17 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i49 = icmp sgt i32 %i.i, -1
  br i1 %.not.i49, label %bb.d, label %Py_DECREF.exit50

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.d, align 8, !tbaa !28
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %Py_DECREF.exit50

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #17
  br label %Py_DECREF.exit50

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  store ptr %i.g, ptr %i.l, align 8, !tbaa !32
  %.val57 = load i64, ptr %i.c, align 8, !tbaa !102 ; 2 uses
  %i.m = icmp sgt i64 %.val57, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %Py_INCREF.exit
  %.val59 = phi i64 [ %.val, %Py_INCREF.exit ], [ %.val57, %bb.f ]
  %.04158 = phi i64 [ %i.t, %Py_INCREF.exit ], [ 1, %bb.f ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.a, i64 %.04158
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %Py_INCREF.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr %i.o, align 8, !tbaa !28
  %.val.pre = load i64, ptr %i.c, align 8, !tbaa !102
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %.lr.ph, %bb.g
  %.val = phi i64 [ %.val59, %.lr.ph ], [ %.val.pre, %bb.g ] ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.l, i64 %.04158
  store ptr %i.o, ptr %i.s, align 8, !tbaa !32
  %i.t = add nuw nsw i64 %.04158, 1               ; 2 uses
  %i.u = icmp slt i64 %i.t, %.val
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !199

._crit_edge:                                      ; preds = %Py_INCREF.exit, %bb.f
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyType_Type, i64 312), align 8, !tbaa !200
  %i.w = tail call ptr %i.v(ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %3) #17 ; 8 uses
  %i.x = load i32, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i47 = icmp sgt i32 %i.x, -1
  br i1 %.not.i47, label %bb.h, label %Py_DECREF.exit48

bb.h:                                             ; preds = %._crit_edge
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.d, align 8, !tbaa !28
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %Py_DECREF.exit48

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #17
  br label %Py_DECREF.exit48

Py_DECREF.exit48:                                 ; preds = %._crit_edge, %bb.h, %bb.i
  %i.aa = icmp eq ptr %i.w, null
  br i1 %i.aa, label %Py_DECREF.exit50, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit48
  %i.ab = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %i.w, ptr noundef %i.ac) #17
  %.not.i54 = icmp eq i32 %i.ad, 0
  br i1 %.not.i54, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.af = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %i.w, ptr noundef %i.ae) #17 ; 10 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !42
  %.not16.i = icmp eq i32 %i.ag, 0
  br i1 %.not16.i, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ai = tail call ptr @PyType_GetModule(ptr noundef %i.ah) #17 ; 4 uses
  %.not17.i = icmp eq ptr %i.ai, null
  br i1 %.not17.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.af, i64 120
  store ptr null, ptr %i.aj, align 8, !tbaa !96
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %i.al = icmp ugt i32 %i.ak, -1073741825
  br i1 %i.al, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = add nuw i32 %i.ak, 1
  store i32 %i.am, ptr %i.ai, align 8, !tbaa !28
  br label %bb.r

.sink.split:                                      ; preds = %bb.k, %bb.j
  %.str.88.sink = phi ptr [ @.str.88, %bb.j ], [ @.str.89, %bb.k ]
  %i.an = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !32
  %i.ao = getelementptr i8, ptr %i.w, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62
  %i.aq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.an, ptr noundef nonnull %.str.88.sink, ptr noundef %i.ap) #17 ; 0 uses
  br label %bb.o

end_hunk_1
