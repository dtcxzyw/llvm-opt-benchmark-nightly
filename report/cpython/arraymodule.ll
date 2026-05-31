inline.NumInlined: 332
inline.NumDeleted: 59
begin_hunk_0
%struct.PyVarObject = type { %struct._object, i64 }
%struct.PyGetSetDef = type { ptr, ptr, ptr, ptr, ptr }
%struct._longobject = type { %struct._object, %struct._PyLongValue }
%struct._PyLongValue = type { i64, [1 x i32] }
%struct._PyOnceFlag = type { i8 }
%struct.Py_buffer = type { ptr, ptr, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr }

@arraymodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str, ptr @module_doc, i64 56, ptr @a_methods, ptr @arrayslots, ptr @array_traverse, ptr @array_clear, ptr @array_free }, align 8
@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@module_doc = internal constant [263 x i8] c"This module defines an object type which can efficiently represent\0Aan array of basic values: characters, integers, floating-point\0Anumbers.  Arrays are sequence types and behave very much like lists,\0Aexcept that the type of objects stored in them is constrained.\0A\00", align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"_array_reconstructor\00", align 1
@array__array_reconstructor__doc__ = internal constant [137 x i8] c"_array_reconstructor($module, arraytype, typecode, mformat_code, items,\0A                     /)\0A--\0A\0AInternal. Used for pickling support.\00", align 16
@a_methods = internal global [2 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.1, ptr @array__array_reconstructor, i32 128, [4 x i8] zeroinitializer, ptr @array__array_reconstructor__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"argument 2\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"a unicode character\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [91 x i8] c"_array_reconstructor(): argument 2 must be a unicode character, not a string of length %zd\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"first argument must be a type object, not %.200s\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%.200s is not a subtype of %.200s\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"second argument must be a valid type code\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"third argument must be a valid machine format code.\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"fourth argument should be bytes, not %.200s\00", align 1
@mformat_descriptors = internal unnamed_addr constant [22 x %struct.mformatdescr] [%struct.mformatdescr { i64 1, i32 0, i32 0 }, %struct.mformatdescr { i64 1, i32 1, i32 0 }, %struct.mformatdescr { i64 2, i32 0, i32 0 }, %struct.mformatdescr { i64 2, i32 0, i32 1 }, %struct.mformatdescr { i64 2, i32 1, i32 0 }, %struct.mformatdescr { i64 2, i32 1, i32 1 }, %struct.mformatdescr { i64 4, i32 0, i32 0 }, %struct.mformatdescr { i64 4, i32 0, i32 1 }, %struct.mformatdescr { i64 4, i32 1, i32 0 }, %struct.mformatdescr { i64 4, i32 1, i32 1 }, %struct.mformatdescr { i64 8, i32 0, i32 0 }, %struct.mformatdescr { i64 8, i32 0, i32 1 }, %struct.mformatdescr { i64 8, i32 1, i32 0 }, %struct.mformatdescr { i64 8, i32 1, i32 1 }, %struct.mformatdescr { i64 4, i32 0, i32 0 }, %struct.mformatdescr { i64 4, i32 0, i32 1 }, %struct.mformatdescr { i64 8, i32 0, i32 0 }, %struct.mformatdescr { i64 8, i32 0, i32 1 }, %struct.mformatdescr { i64 4, i32 0, i32 0 }, %struct.mformatdescr { i64 4, i32 0, i32 1 }, %struct.mformatdescr { i64 8, i32 0, i32 0 }, %struct.mformatdescr { i64 8, i32 0, i32 1 }], align 16
@.str.11 = private unnamed_addr constant [42 x i8] c"string length not a multiple of item size\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@descriptors = internal constant [15 x { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 }] [{ i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 98, [3 x i8] zeroinitializer, i32 1, ptr @b_getitem, ptr @b_setitem, ptr @b_compareitems, ptr @.str.13, i32 1, i32 1 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 66, [3 x i8] zeroinitializer, i32 1, ptr @BB_getitem, ptr @BB_setitem, ptr @BB_compareitems, ptr @.str.14, i32 1, i32 0 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 117, [3 x i8] zeroinitializer, i32 4, ptr @u_getitem, ptr @u_setitem, ptr @u_compareitems, ptr @.str.15, i32 0, i32 0 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 119, [3 x i8] zeroinitializer, i32 4, ptr @w_getitem, ptr @w_setitem, ptr @w_compareitems, ptr @.str.16, i32 0, i32 0 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 104, [3 x i8] zeroinitializer, i32 2, ptr @h_getitem, ptr @h_setitem, ptr @h_compareitems, ptr @.str.17, i32 1, i32 1 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 72, [3 x i8] zeroinitializer, i32 2, ptr @HH_getitem, ptr @HH_setitem, ptr @HH_compareitems, ptr @.str.18, i32 1, i32 0 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 105, [3 x i8] zeroinitializer, i32 4, ptr @i_getitem, ptr @i_setitem, ptr @i_compareitems, ptr @.str.19, i32 1, i32 1 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 73, [3 x i8] zeroinitializer, i32 4, ptr @II_getitem, ptr @II_setitem, ptr @II_compareitems, ptr @.str.20, i32 1, i32 0 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 108, [3 x i8] zeroinitializer, i32 8, ptr @l_getitem, ptr @l_setitem, ptr @l_compareitems, ptr @.str.21, i32 1, i32 1 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 76, [3 x i8] zeroinitializer, i32 8, ptr @LL_getitem, ptr @LL_setitem, ptr @LL_compareitems, ptr @.str.22, i32 1, i32 0 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 113, [3 x i8] zeroinitializer, i32 8, ptr @q_getitem, ptr @q_setitem, ptr @q_compareitems, ptr @.str.23, i32 1, i32 1 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 81, [3 x i8] zeroinitializer, i32 8, ptr @QQ_getitem, ptr @QQ_setitem, ptr @QQ_compareitems, ptr @.str.24, i32 1, i32 0 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 102, [3 x i8] zeroinitializer, i32 4, ptr @f_getitem, ptr @f_setitem, ptr null, ptr @.str.25, i32 0, i32 0 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } { i8 100, [3 x i8] zeroinitializer, i32 8, ptr @d_getitem, ptr @d_setitem, ptr null, ptr @.str.26, i32 0, i32 0 }, { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, i32, i32 } zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [29 x i8] c"h;array item must be integer\00", align 1
@PyExc_IndexError = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [36 x i8] c"array assignment index out of range\00", align 1
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [33 x i8] c"signed char is less than minimum\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"signed char is greater than maximum\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"b;array item must be integer\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"array item must be a unicode character, not %T\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"array item must be a unicode character, not a string of length %zd\00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"string %A cannot be converted to a single wchar_t character\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"i;array item must be integer\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"unsigned short is less than minimum\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"unsigned short is greater than maximum\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"unsigned int is greater than maximum\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"l;array item must be integer\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"L;array item must be integer\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"f;array item must be float\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"d;array item must be float\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"array.array\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"C|O:array\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"array.__new__\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"CO\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_DeprecationWarning = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [67 x i8] c"The 'u' type code is deprecated and will be removed in Python 3.16\00", align 1
@.str.53 = private unnamed_addr constant [59 x i8] c"cannot use a str to initialize an array with typecode '%c'\00", align 1
@.str.54 = private unnamed_addr constant [69 x i8] c"cannot use a unicode array to initialize an array with typecode '%c'\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.55 = private unnamed_addr constant [66 x i8] c"bad typecode (must be b, B, u, w, h, H, i, I, l, L, q, Q, f or d)\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"../Modules/arraymodule.c\00", align 1
@PyExc_BufferError = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [49 x i8] c"cannot resize an array that is exporting buffers\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"a bytes-like object is required\00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c"bytes length not a multiple of item size\00", align 1
@arrayslots = internal global [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @array_modexec }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr inttoptr (i64 2 to ptr) }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr) }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.61 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.65 = private unnamed_addr constant [10 x i8] c"ArrayType\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"collections.abc\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"MutableSequence\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"typecodes\00", align 1
@array_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.48, i32 64, i32 0, i32 17696, [4 x i8] zeroinitializer, ptr @array_slots }, align 8
@arraytype_doc = internal constant [2341 x i8] c"array(typecode [, initializer]) -> array\0A\0AReturn a new array whose items are restricted by typecode, and\0Ainitialized from the optional initializer value, which must be a list,\0Astring or iterable over elements of the appropriate type.\0A\0AArrays represent basic values and behave very much like lists, except\0Athe type of objects stored in them is constrained. The type is specified\0Aat object creation time by using a type code, which is a single character.\0AThe following type codes are defined:\0A\0A    Type code   C Type             Minimum size in bytes\0A    'b'         signed integer     1\0A    'B'         unsigned integer   1\0A    'u'         Unicode character  2 (see note)\0A    'h'         signed integer     2\0A    'H'         unsigned integer   2\0A    'i'         signed integer     2\0A    'I'         unsigned integer   2\0A    'l'         signed integer     4\0A    'L'         unsigned integer   4\0A    'q'         signed integer     8 (see note)\0A    'Q'         unsigned integer   8 (see note)\0A    'f'         floating-point     4\0A    'd'         floating-point     8\0A\0ANOTE: The 'u' typecode corresponds to Python's unicode character. On\0Anarrow builds this is 2-bytes on wide builds this is 4-bytes.\0A\0ANOTE: The 'q' and 'Q' type codes are only available if the platform\0AC compiler used to build Python supports 'long long', or, on Windows,\0A'__int64'.\0A\0AMethods:\0A\0Aappend() -- append a new item to the end of the array\0Abuffer_info() -- return information giving the current memory info\0Abyteswap() -- byteswap all the items of the array\0Acount() -- return number of occurrences of an object\0Aextend() -- extend array by appending multiple elements from an iterable\0Afromfile() -- read items from a file object\0Afromlist() -- append items from the list\0Afrombytes() -- append items from the string\0Aindex() -- return index of first occurrence of an object\0Ainsert() -- insert a new item into the array at a provided position\0Apop() -- remove and return item (default last)\0Aremove() -- remove first occurrence of an object\0Areverse() -- reverse the order of the items in the array\0Atofile() -- write all items to a file object\0Atolist() -- return the array converted to an ordinary list\0Atobytes() -- return the array converted to a string\0A\0AAttributes:\0A\0Atypecode -- the typecode character used to create the array\0Aitemsize -- the length in bytes of one array item\0A\00", align 16
@array_getsets = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.123, ptr @array_get_typecode, ptr null, ptr @.str.124, ptr null }, %struct.PyGetSetDef { ptr @.str.125, ptr @array_get_itemsize, ptr null, ptr @.str.126, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@array_slots = internal global [26 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @array_dealloc }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @array_repr }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @PyObject_GenericGetAttr }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @arraytype_doc }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @array_richcompare }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @array_iter }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @array_methods }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @array_members }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @array_getsets }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @PyType_GenericAlloc }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @array_new }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @_PyObject_VisitType }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @array_length }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @array_concat }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @array_repeat }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @array_item }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @array_ass_item }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @array_contains }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @array_inplace_concat }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @array_inplace_repeat }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @array_length }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @array_subscr }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @array_ass_subscr }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @array_buffer_getbuf }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @array_buffer_relbuf }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.73 = private unnamed_addr constant [9 x i8] c"%s('%c')\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"%s('%c', %R)\00", align 1
@.str.75 = private unnamed_addr constant [67 x i8] c"tounicode() may only be called on unicode type arrays ('u' or 'w')\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.76 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@array_array_append__doc__ = internal constant [68 x i8] c"append($self, v, /)\0A--\0A\0AAppend new value v to the end of the array.\00", align 16
@.str.77 = private unnamed_addr constant [12 x i8] c"buffer_info\00", align 1
@array_array_buffer_info__doc__ = internal constant [262 x i8] c"buffer_info($self, /)\0A--\0A\0AReturn a tuple (address, length) giving the current memory address and the length in items of the buffer used to hold array's contents.\0A\0AThe length should be multiplied by the itemsize attribute to calculate\0Athe buffer length in bytes.\00", align 16
@.str.78 = private unnamed_addr constant [9 x i8] c"byteswap\00", align 1
@array_array_byteswap__doc__ = internal constant [144 x i8] c"byteswap($self, /)\0A--\0A\0AByteswap all items of the array.\0A\0AIf the items in the array are not 1, 2, 4, or 8 bytes in size, RuntimeError is\0Araised.\00", align 16
@.str.79 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@array_array_clear__doc__ = internal constant [53 x i8] c"clear($self, /)\0A--\0A\0ARemove all items from the array.\00", align 16
@.str.80 = private unnamed_addr constant [9 x i8] c"__copy__\00", align 1
@array_array___copy____doc__ = internal constant [51 x i8] c"__copy__($self, /)\0A--\0A\0AReturn a copy of the array.\00", align 16
@.str.81 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@array_array_count__doc__ = internal constant [71 x i8] c"count($self, v, /)\0A--\0A\0AReturn number of occurrences of v in the array.\00", align 16
@.str.82 = private unnamed_addr constant [13 x i8] c"__deepcopy__\00", align 1
@array_array___deepcopy____doc__ = internal constant [63 x i8] c"__deepcopy__($self, unused, /)\0A--\0A\0AReturn a copy of the array.\00", align 16
@.str.83 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@array_array_extend__doc__ = internal constant [63 x i8] c"extend($self, bb, /)\0A--\0A\0AAppend items to the end of the array.\00", align 16
@.str.84 = private unnamed_addr constant [9 x i8] c"fromfile\00", align 1
@array_array_fromfile__doc__ = internal constant [108 x i8] c"fromfile($self, f, n, /)\0A--\0A\0ARead n objects from the file object f and append them to the end of the array.\00", align 16
@.str.85 = private unnamed_addr constant [9 x i8] c"fromlist\00", align 1
@array_array_fromlist__doc__ = internal constant [62 x i8] c"fromlist($self, list, /)\0A--\0A\0AAppend items to array from list.\00", align 16
@.str.86 = private unnamed_addr constant [10 x i8] c"frombytes\00", align 1
@array_array_frombytes__doc__ = internal constant [174 x i8] c"frombytes($self, buffer, /)\0A--\0A\0AAppends items from the string, interpreting it as an array of machine values, as if it had been read from a file using the fromfile() method.\00", align 16
@.str.87 = private unnamed_addr constant [12 x i8] c"fromunicode\00", align 1
@array_array_fromunicode__doc__ = internal constant [259 x i8] c"fromunicode($self, ustr, /)\0A--\0A\0AExtends this array with data from the unicode string ustr.\0A\0AThe array must be a unicode type array; otherwise a ValueError is raised.\0AUse array.frombytes(ustr.encode(...)) to append Unicode data to an array of\0Asome other type.\00", align 16
@.str.88 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@array_array_index__doc__ = internal constant [149 x i8] c"index($self, v, start=0, stop=sys.maxsize, /)\0A--\0A\0AReturn index of first occurrence of v in the array.\0A\0ARaise ValueError if the value is not present.\00", align 16
@.str.89 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@array_array_insert__doc__ = internal constant [81 x i8] c"insert($self, i, v, /)\0A--\0A\0AInsert a new item v into the array before position i.\00", align 16
@.str.90 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@array_array_pop__doc__ = internal constant [97 x i8] c"pop($self, i=-1, /)\0A--\0A\0AReturn the i-th element and delete it from the array.\0A\0Ai defaults to -1.\00", align 16
@.str.91 = private unnamed_addr constant [14 x i8] c"__reduce_ex__\00", align 1
@array_array___reduce_ex____doc__ = internal constant [74 x i8] c"__reduce_ex__($self, value, /)\0A--\0A\0AReturn state information for pickling.\00", align 16
@.str.92 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@array_array_remove__doc__ = internal constant [71 x i8] c"remove($self, v, /)\0A--\0A\0ARemove the first occurrence of v in the array.\00", align 16
@.str.93 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@array_array_reverse__doc__ = internal constant [67 x i8] c"reverse($self, /)\0A--\0A\0AReverse the order of the items in the array.\00", align 16
@.str.94 = private unnamed_addr constant [7 x i8] c"tofile\00", align 1
@array_array_tofile__doc__ = internal constant [82 x i8] c"tofile($self, f, /)\0A--\0A\0AWrite all items (as machine values) to the file object f.\00", align 16
@.str.95 = private unnamed_addr constant [7 x i8] c"tolist\00", align 1
@array_array_tolist__doc__ = internal constant [76 x i8] c"tolist($self, /)\0A--\0A\0AConvert array to an ordinary list with the same items.\00", align 16
@.str.96 = private unnamed_addr constant [8 x i8] c"tobytes\00", align 1
@array_array_tobytes__doc__ = internal constant [107 x i8] c"tobytes($self, /)\0A--\0A\0AConvert the array to an array of machine values and return the bytes representation.\00", align 16
@.str.97 = private unnamed_addr constant [10 x i8] c"tounicode\00", align 1
@array_array_tounicode__doc__ = internal constant [289 x i8] c"tounicode($self, /)\0A--\0A\0AExtends this array with data from the unicode string ustr.\0A\0AConvert the array to a unicode string.  The array must be a unicode type array;\0Aotherwise a ValueError is raised.  Use array.tobytes().decode() to obtain a\0Aunicode string from an array of some other type.\00", align 16
@.str.98 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@array_array___sizeof____doc__ = internal constant [64 x i8] c"__sizeof__($self, /)\0A--\0A\0ASize of the array in memory, in bytes.\00", align 16
@.str.99 = private unnamed_addr constant [18 x i8] c"__class_getitem__\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"See PEP 585\00", align 1
@array_methods = internal global [25 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.76, ptr @array_array_append, i32 8, [4 x i8] zeroinitializer, ptr @array_array_append__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.77, ptr @array_array_buffer_info, i32 4, [4 x i8] zeroinitializer, ptr @array_array_buffer_info__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.78, ptr @array_array_byteswap, i32 4, [4 x i8] zeroinitializer, ptr @array_array_byteswap__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.79, ptr @array_array_clear, i32 4, [4 x i8] zeroinitializer, ptr @array_array_clear__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.80, ptr @array_array___copy__, i32 4, [4 x i8] zeroinitializer, ptr @array_array___copy____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.81, ptr @array_array_count, i32 8, [4 x i8] zeroinitializer, ptr @array_array_count__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.82, ptr @array_array___deepcopy__, i32 8, [4 x i8] zeroinitializer, ptr @array_array___deepcopy____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.83, ptr @array_array_extend, i32 642, [4 x i8] zeroinitializer, ptr @array_array_extend__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.84, ptr @array_array_fromfile, i32 642, [4 x i8] zeroinitializer, ptr @array_array_fromfile__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.85, ptr @array_array_fromlist, i32 8, [4 x i8] zeroinitializer, ptr @array_array_fromlist__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.86, ptr @array_array_frombytes, i32 8, [4 x i8] zeroinitializer, ptr @array_array_frombytes__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.87, ptr @array_array_fromunicode, i32 8, [4 x i8] zeroinitializer, ptr @array_array_fromunicode__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.88, ptr @array_array_index, i32 128, [4 x i8] zeroinitializer, ptr @array_array_index__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.89, ptr @array_array_insert, i32 128, [4 x i8] zeroinitializer, ptr @array_array_insert__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.90, ptr @array_array_pop, i32 128, [4 x i8] zeroinitializer, ptr @array_array_pop__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.91, ptr @array_array___reduce_ex__, i32 642, [4 x i8] zeroinitializer, ptr @array_array___reduce_ex____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.92, ptr @array_array_remove, i32 8, [4 x i8] zeroinitializer, ptr @array_array_remove__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.93, ptr @array_array_reverse, i32 4, [4 x i8] zeroinitializer, ptr @array_array_reverse__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.94, ptr @array_array_tofile, i32 642, [4 x i8] zeroinitializer, ptr @array_array_tofile__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.95, ptr @array_array_tolist, i32 4, [4 x i8] zeroinitializer, ptr @array_array_tolist__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.96, ptr @array_array_tobytes, i32 4, [4 x i8] zeroinitializer, ptr @array_array_tobytes__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.97, ptr @array_array_tounicode, i32 4, [4 x i8] zeroinitializer, ptr @array_array_tounicode__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.98, ptr @array_array___sizeof__, i32 4, [4 x i8] zeroinitializer, ptr @array_array___sizeof____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.99, ptr @Py_GenericAlias, i32 24, [4 x i8] zeroinitializer, ptr @.str.100 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str.102 = private unnamed_addr constant [43 x i8] c"don't know how to byteswap this array type\00", align 1
@array_array_extend._keywords = internal constant [2 x ptr] [ptr @.str.103, ptr null], align 16
@.str.103 = private constant [1 x i8] zeroinitializer, align 16
@array_array_extend._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @array_array_extend._keywords, ptr @.str.83, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.104 = private unnamed_addr constant [40 x i8] c"can only extend with array of same kind\00", align 1
@array_array_fromfile._keywords = internal constant [3 x ptr] [ptr @.str.103, ptr @.str.103, ptr null], align 16
@array_array_fromfile._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @array_array_fromfile._keywords, ptr @.str.84, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.105 = private unnamed_addr constant [21 x i8] c"n cannot be negative\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"read() didn't return bytes\00", align 1
@PyExc_EOFError = external local_unnamed_addr global ptr, align 8
@.str.108 = private unnamed_addr constant [34 x i8] c"read() didn't return enough bytes\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"arg must be list\00", align 1
@.str.110 = private unnamed_addr constant [35 x i8] c"list changed size during iteration\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.113 = private unnamed_addr constant [69 x i8] c"fromunicode() may only be called on unicode type arrays ('u' or 'w')\00", align 1
@.str.114 = private unnamed_addr constant [31 x i8] c"array.index(x): x not in array\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"pop from empty array\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"pop index out of range\00", align 1
@array_array___reduce_ex__._keywords = internal constant [2 x ptr] [ptr @.str.103, ptr null], align 16
@array_array___reduce_ex__._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @array_array___reduce_ex__._keywords, ptr @.str.91, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.117 = private unnamed_addr constant [44 x i8] c"__reduce_ex__ argument should be an integer\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"O(CO)O\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"O(OCiN)O\00", align 1
@.str.120 = private unnamed_addr constant [32 x i8] c"array.remove(x): x not in array\00", align 1
@array_array_tofile._keywords = internal constant [2 x ptr] [ptr @.str.103, ptr null], align 16
@array_array_tofile._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @array_array_tofile._keywords, ptr @.str.94, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.121 = private unnamed_addr constant [19 x i8] c"__weaklistoffset__\00", align 1
@array_members = internal global [2 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.121, i32 19, [4 x i8] zeroinitializer, i64 48, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.123 = private unnamed_addr constant [9 x i8] c"typecode\00", align 1
@.str.124 = private unnamed_addr constant [48 x i8] c"the typecode character used to create the array\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"itemsize\00", align 1
@.str.126 = private unnamed_addr constant [38 x i8] c"the size, in bytes, of one array item\00", align 1
@.str.127 = private unnamed_addr constant [46 x i8] c"can only append array (not \22%.200s\22) to array\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"array index out of range\00", align 1
@.str.129 = private unnamed_addr constant [48 x i8] c"can only extend array with array (not \22%.200s\22)\00", align 1
@PySlice_Type = external global %struct._typeobject, align 8
@.str.130 = private unnamed_addr constant [31 x i8] c"array indices must be integers\00", align 1
@.str.131 = private unnamed_addr constant [52 x i8] c"can only assign array (not \22%.200s\22) to array slice\00", align 1
@.str.132 = private unnamed_addr constant [66 x i8] c"attempt to assign array of size %zd to extended slice of size %zd\00", align 1
@.str.133 = private unnamed_addr constant [53 x i8] c"array_buffer_getbuf: view==NULL argument is obsolete\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"array.arrayiterator\00", align 1
@arrayiter_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.134, i32 40, i32 0, i32 16768, [4 x i8] zeroinitializer, ptr @arrayiter_slots }, align 8
@arrayiter_slots = internal global [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @arrayiter_dealloc }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @PyObject_GenericGetAttr }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @arrayiter_traverse }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @PyObject_SelfIter }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @arrayiter_next }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @arrayiter_methods }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.137 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@array_arrayiterator___reduce____doc__ = internal constant [64 x i8] c"__reduce__($self, /)\0A--\0A\0AReturn state information for pickling.\00", align 16
@.str.138 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@array_arrayiterator___setstate____doc__ = internal constant [72 x i8] c"__setstate__($self, state, /)\0A--\0A\0ASet state information for unpickling.\00", align 16
@arrayiter_methods = internal global [3 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.137, ptr @array_arrayiterator___reduce__, i32 642, [4 x i8] zeroinitializer, ptr @array_arrayiterator___reduce____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.138, ptr @array_arrayiterator___setstate__, i32 8, [4 x i8] zeroinitializer, ptr @array_arrayiterator___setstate____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.140 = private unnamed_addr constant [32 x i8] c"__reduce__() takes no arguments\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"N(())\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"N(O)n\00", align 1

; Function Attrs: nounwind uwtable
define ptr @PyInit_array() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @arraymodule) #12
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @array_traverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !18  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #12 ; 2 uses
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not32 = icmp eq ptr %i.e, null
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #12 ; 2 uses
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %.val, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #12 ; 2 uses
  %.not35 = icmp eq i32 %i.i, 0
  br i1 %.not35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.5 = phi i32 [ 0, %bb.g ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @array_clear(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !10  ; 8 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !22  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit59, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %.val, align 8, !tbaa !22
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i58 = icmp sgt i32 %i.c, -1
  br i1 %.not.i58, label %bb.c, label %Py_DECREF.exit59

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit59

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #12
  br label %Py_DECREF.exit59

Py_DECREF.exit59:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 8       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 4 uses
  %.not42 = icmp eq ptr %i.g, null
  br i1 %.not42, label %Py_DECREF.exit57, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit59
  store ptr null, ptr %i.f, align 8, !tbaa !22
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.not.i56 = icmp sgt i32 %i.h, -1
  br i1 %.not.i56, label %bb.f, label %Py_DECREF.exit57

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit57

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #12
  br label %Py_DECREF.exit57

Py_DECREF.exit57:                                 ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit59
  %i.k = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 4 uses
  %.not43 = icmp eq ptr %i.l, null
  br i1 %.not43, label %Py_DECREF.exit55, label %bb.h

bb.h:                                             ; preds = %Py_DECREF.exit57
  store ptr null, ptr %i.k, align 8, !tbaa !24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.not.i54 = icmp sgt i32 %i.m, -1
  br i1 %.not.i54, label %bb.i, label %Py_DECREF.exit55

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !23
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit55

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #12
  br label %Py_DECREF.exit55

Py_DECREF.exit55:                                 ; preds = %bb.j, %bb.i, %bb.h, %Py_DECREF.exit57
  %i.p = getelementptr i8, ptr %.val, i64 24      ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 4 uses
  %.not44 = icmp eq ptr %i.q, null
  br i1 %.not44, label %Py_DECREF.exit53, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit55
  store ptr null, ptr %i.p, align 8, !tbaa !24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %.not.i52 = icmp sgt i32 %i.r, -1
  br i1 %.not.i52, label %bb.l, label %Py_DECREF.exit53

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !23
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit53

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #12
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.m, %bb.l, %bb.k, %Py_DECREF.exit55
  %i.u = getelementptr i8, ptr %.val, i64 32      ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 4 uses
  %.not45 = icmp eq ptr %i.v, null
  br i1 %.not45, label %Py_DECREF.exit51, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit53
  store ptr null, ptr %i.u, align 8, !tbaa !24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !23   ; 2 uses
  %.not.i50 = icmp sgt i32 %i.w, -1
  br i1 %.not.i50, label %bb.o, label %Py_DECREF.exit51

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !23
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.p, label %Py_DECREF.exit51

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.v) #12
  br label %Py_DECREF.exit51

Py_DECREF.exit51:                                 ; preds = %bb.p, %bb.o, %bb.n, %Py_DECREF.exit53
  %i.z = getelementptr i8, ptr %.val, i64 40      ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !24  ; 4 uses
  %.not46 = icmp eq ptr %i.aa, null
  br i1 %.not46, label %Py_DECREF.exit49, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit51
  store ptr null, ptr %i.z, align 8, !tbaa !24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %.not.i48 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i48, label %bb.r, label %Py_DECREF.exit49

bb.r:                                             ; preds = %bb.q
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !23
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %Py_DECREF.exit49

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #12
  br label %Py_DECREF.exit49

Py_DECREF.exit49:                                 ; preds = %bb.s, %bb.r, %bb.q, %Py_DECREF.exit51
  %i.ae = getelementptr i8, ptr %.val, i64 48     ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 4 uses
  %.not47 = icmp eq ptr %i.af, null
  br i1 %.not47, label %Py_DECREF.exit, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit49
  store ptr null, ptr %i.ae, align 8, !tbaa !24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i, label %bb.u, label %Py_DECREF.exit
end_hunk_0
begin_hunk_1_@array__array_reconstructor_impl:bb.a
  br i1 %.not.i159, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.cb, align 8, !tbaa !23
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #12
  br label %.critedge

bb.ag:                                            ; preds = %bb.ac
  %.val178 = load ptr, ptr %i.ce, align 8, !tbaa !47
  %i.cm = getelementptr [8 x i8], ptr %.val178, i64 %.012910
  store ptr %i.ci, ptr %i.cm, align 8, !tbaa !24
  %i.cn = add nuw nsw i64 %.012910, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, %i.bz
  br i1 %exitcond.not, label %.loopexit, label %bb.ac, !llvm.loop !52

bb.ah:                                            ; preds = %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.co = icmp eq i32 %2, 18
  %i.cp = select i1 %i.co, i32 -1, i32 1
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !6
  %i.cq = getelementptr i8, ptr %3, i64 32
  %i.cr = call ptr @PyUnicode_DecodeUTF16(ptr noundef %i.cq, i64 noundef %.val171, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not148 = icmp eq ptr %i.cr, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not148, label %.critedge, label %.loopexit

bb.ai:                                            ; preds = %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cs = icmp eq i32 %2, 20
  %i.ct = select i1 %i.cs, i32 -1, i32 1
  store i32 %i.ct, ptr %i.b, align 4, !tbaa !6
  %i.cu = getelementptr i8, ptr %3, i64 32
  %i.cv = call ptr @PyUnicode_DecodeUTF32(ptr noundef %i.cu, i64 noundef %.val171, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not147 = icmp eq ptr %i.cv, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not147, label %.critedge, label %.loopexit

bb.aj:                                            ; preds = %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !6
  %i.cw = icmp samesign ult i32 %2, 2
  br i1 %i.cw, label %.thread69, label %bb.ak

.thread69:                                        ; preds = %bb.aj
  %.not52 = icmp eq i32 %2, 1
  %spec.select.1 = select i1 %.not52, i32 98, i32 66
  br label %.thread71

bb.ak:                                            ; preds = %bb.aj
  %i.cx = icmp slt i32 %2, 6
  br i1 %i.cx, label %bb.al, label %.thread71

bb.al:                                            ; preds = %bb.ak
  %i.cy = shl nuw nsw i64 1, %i.ba
  %i.cz = and i64 %i.cy, 50
  %.not53 = icmp eq i64 %i.cz, 0
  %spec.select.4 = select i1 %.not53, i32 %1, i32 104
  %i.da = shl nuw nsw i64 1, %i.ba
  %i.db = and i64 %i.da, 204
  %.not54 = icmp eq i64 %i.db, 0
  %spec.select.5 = select i1 %.not54, i32 %spec.select.4, i32 72
  br label %.thread71

.thread71:                                        ; preds = %.thread69, %bb.ak, %bb.al
  %.1115.5 = phi i32 [ %spec.select.5, %bb.al ], [ %spec.select.1, %.thread69 ], [ %1, %bb.ak ]
  %i.dc = shl nuw nsw i64 1, %i.ba
  %i.dd = and i64 %i.dc, 836544
  %.not55 = icmp eq i64 %i.dd, 0
  %i.de = shl nuw nsw i64 1, %i.ba
  %i.df = and i64 %i.de, 13106
  %.not56 = icmp eq i64 %i.df, 0
  %i.dg = select i1 %.not55, i1 true, i1 %.not56
  %.1115.6 = select i1 %i.dg, i32 %.1115.5, i32 105
  %i.dh = shl nuw nsw i64 1, %i.ba
  %i.di = and i64 %i.dh, 836544
  %.not57 = icmp eq i64 %i.di, 0
  %i.dj = shl nuw nsw i64 1, %i.ba
  %i.dk = and i64 %i.dj, 4181197
  %.not58 = icmp eq i64 %i.dk, 0
  %i.dl = select i1 %.not57, i1 true, i1 %.not58
  %.1115.7 = select i1 %i.dl, i32 %.1115.6, i32 73
  %i.dm = shl nuw nsw i64 1, %i.ba
  %i.dn = and i64 %i.dm, 3357696
  %.not59 = icmp eq i64 %i.dn, 0
  %i.do = shl nuw nsw i64 1, %i.ba
  %i.dp = and i64 %i.do, 13106
  %.not60 = icmp eq i64 %i.dp, 0
  %i.dq = select i1 %.not59, i1 true, i1 %.not60
  %.1115.8 = select i1 %i.dq, i32 %.1115.7, i32 108
  %i.dr = shl nuw nsw i64 1, %i.ba
  %i.ds = and i64 %i.dr, 3357696
  %.not61 = icmp eq i64 %i.ds, 0
  %i.dt = shl nuw nsw i64 1, %i.ba
  %i.du = and i64 %i.dt, 4181197
  %.not62 = icmp eq i64 %i.du, 0
  %i.dv = select i1 %.not61, i1 true, i1 %.not62
  %.1115.9 = select i1 %i.dv, i32 %.1115.8, i32 76
  %i.dw = shl nuw nsw i64 1, %i.ba
  %i.dx = and i64 %i.dw, 3357696
  %.not63 = icmp eq i64 %i.dx, 0
  %i.dy = shl nuw nsw i64 1, %i.ba
  %i.dz = and i64 %i.dy, 13106
  %.not64 = icmp eq i64 %i.dz, 0
  %i.ea = select i1 %.not63, i1 true, i1 %.not64
  %.1115.10 = select i1 %i.ea, i32 %.1115.9, i32 113
  %i.eb = shl nuw nsw i64 1, %i.ba
  %i.ec = and i64 %i.eb, 3357696
  %.not65 = icmp eq i64 %i.ec, 0
  %i.ed = shl nuw nsw i64 1, %i.ba
  %i.ee = and i64 %i.ed, 4181197
  %.not66 = icmp eq i64 %i.ee, 0
  %i.ef = select i1 %.not65, i1 true, i1 %.not66
  %.1115.11 = select i1 %i.ef, i32 %.1115.10, i32 81 ; 2 uses
  %i.eg = getelementptr i8, ptr %3, i64 32
  %i.eh = tail call ptr @PyList_New(i64 noundef %i.be) #12 ; 7 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %.critedge, label %.preheader4

.preheader4:                                      ; preds = %.thread71
  %i.ej = icmp sgt i64 %i.be, 0
  br i1 %i.ej, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader4
  %.not144 = lshr i32 1398103, %2
  %i.ek = and i32 %.not144, 1
  %i.el = getelementptr i8, ptr %i.eh, i64 24
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %bb.aq
  %.01289 = phi i64 [ 0, %.lr.ph ], [ %i.et, %bb.aq ] ; 3 uses
  %i.em = mul i64 %.01289, %i.bc
  %i.en = getelementptr i8, ptr %i.eg, i64 %i.em
  %i.eo = tail call ptr @_PyLong_FromByteArray(ptr noundef %i.en, i64 noundef %i.bc, i32 noundef %i.ek, i32 noundef %.sroa.7.0.copyload) #12 ; 2 uses
  %.not145 = icmp eq ptr %i.eo, null
  br i1 %.not145, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ep = load i32, ptr %i.eh, align 8, !tbaa !23 ; 2 uses
  %.not.i157 = icmp sgt i32 %i.ep, -1
  br i1 %.not.i157, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.eh, align 8, !tbaa !23
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.eh) #12
  br label %.critedge

bb.aq:                                            ; preds = %bb.am
  %.val177 = load ptr, ptr %i.el, align 8, !tbaa !47
  %i.es = getelementptr [8 x i8], ptr %.val177, i64 %.01289
  store ptr %i.eo, ptr %i.es, align 8, !tbaa !24
  %i.et = add nuw nsw i64 %.01289, 1              ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.be
  br i1 %i.eu, label %bb.am, label %.loopexit, !llvm.loop !53

default.unreachable51:                            ; preds = %bb.u
  unreachable

.loopexit:                                        ; preds = %bb.aq, %bb.ag, %bb.aa, %.preheader4, %.preheader2, %.preheader, %bb.ah, %bb.ai
  %.0117 = phi ptr [ %i.cb, %.preheader2 ], [ %i.bk, %.preheader ], [ %i.cr, %bb.ah ], [ %i.cv, %bb.ai ], [ %i.eh, %.preheader4 ], [ %i.cb, %bb.ag ], [ %i.bk, %bb.aa ], [ %i.eh, %bb.aq ] ; 4 uses
  %.2116 = phi i32 [ %1, %.preheader2 ], [ %1, %.preheader ], [ %1, %bb.ah ], [ %1, %bb.ai ], [ %.1115.11, %.preheader4 ], [ %1, %bb.ag ], [ %1, %bb.aa ], [ %.1115.11, %bb.aq ]
  %i.ev = trunc i32 %.2116 to i8
  %i.ew = call fastcc ptr @make_array(ptr noundef nonnull %0, i8 noundef signext %i.ev, ptr noundef nonnull %.0117) ; 3 uses
  %i.ex = load i32, ptr %.0117, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp sgt i32 %i.ex, -1
  br i1 %.not.i, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %.loopexit
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %.0117, align 8, !tbaa !23
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.as, label %.critedge

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %.0117) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.an, %bb.ao, %bb.ap, %bb.ad, %bb.ae, %bb.af, %bb.x, %bb.y, %bb.z, %bb.as, %bb.ar, %.loopexit, %Py_DECREF.exit17.sink.split.i, %bb.r, %_Py_NewRef.exit.i, %bb.o, %bb.n, %bb.l, %.thread71, %bb.ab, %bb.v, %bb.ah, %bb.ai, %bb.t, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.11 = phi ptr [ null, %bb.f ], [ null, %bb.h ], [ null, %.thread71 ], [ null, %bb.t ], [ null, %bb.b ], [ %.0.ph.i, %Py_DECREF.exit17.sink.split.i ], [ null, %bb.d ], [ null, %bb.v ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.ab ], [ null, %bb.j ], [ %i.ew, %bb.as ], [ null, %bb.x ], [ null, %bb.ad ], [ null, %bb.l ], [ %i.av, %bb.r ], [ null, %bb.n ], [ null, %bb.o ], [ %i.av, %_Py_NewRef.exit.i ], [ %i.ew, %.loopexit ], [ %i.ew, %bb.ar ], [ null, %bb.z ], [ null, %bb.y ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %bb.ap ], [ null, %bb.ao ], [ null, %bb.an ]
  ret ptr %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -1, 21) i32 @typecode_to_mformat_code(i8 noundef signext %0) unnamed_addr #3 {
  switch i8 %0, label %9 [
    i8 98, label %bb.c
    i8 66, label %2
    i8 117, label %3
    i8 119, label %3
    i8 102, label %4
    i8 100, label %5
    i8 104, label %10
    i8 72, label %6
    i8 105, label %bb.a
    i8 73, label %7
    i8 108, label %bb.b
    i8 76, label %8
    i8 113, label %bb.b
    i8 81, label %8
  ]

2:                                                ; preds = %1
  br label %bb.c

3:                                                ; preds = %1, %1
  br label %bb.c

4:                                                ; preds = %1
  br label %bb.c

5:                                                ; preds = %1
  br label %bb.c

6:                                                ; preds = %1
  br label %bb.c

7:                                                ; preds = %1
  br label %bb.c

8:                                                ; preds = %1, %1
  br label %bb.c

9:                                                ; preds = %1
  br label %bb.c

10:                                               ; preds = %1
  br label %bb.c

bb.a:                                             ; preds = %1
  br label %bb.c

bb.b:                                             ; preds = %1, %1
  br label %bb.c

bb.c:                                             ; preds = %8, %7, %6, %5, %4, %1, %bb.b, %bb.a, %10, %9, %3, %2
  %.2 = phi i32 [ -1, %9 ], [ 8, %bb.a ], [ 0, %2 ], [ 20, %3 ], [ 1, %1 ], [ 16, %5 ], [ 4, %10 ], [ 14, %4 ], [ 2, %6 ], [ 6, %7 ], [ 10, %8 ], [ 12, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_array(ptr noundef %0, i8 noundef signext %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = sext i8 %1 to i32
  %i.b = tail call ptr @PyUnicode_FromOrdinal(i32 noundef %i.a) #12 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyTuple_New(i64 noundef 2) #12 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i16 = icmp sgt i32 %i.f, -1
  br i1 %.not.i16, label %bb.d, label %Py_DECREF.exit17

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !23
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %Py_DECREF.exit17.sink.split, label %Py_DECREF.exit17

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 32
  store ptr %i.b, ptr %i.i, align 8, !tbaa !24
  %i.j = load i32, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.k = icmp ugt i32 %i.j, -1073741825
  br i1 %i.k, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %2, align 8, !tbaa !23
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.f
  %i.m = getelementptr i8, ptr %i.d, i64 40
  store ptr %2, ptr %i.m, align 8, !tbaa !24
  %i.n = tail call ptr @array_new(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef null) ; 3 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit17

bb.g:                                             ; preds = %_Py_NewRef.exit
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !23
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit17.sink.split, label %Py_DECREF.exit17

Py_DECREF.exit17.sink.split:                      ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.b, %bb.d ], [ %i.d, %bb.g ]
  %.0.ph = phi ptr [ null, %bb.d ], [ %i.n, %bb.g ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #12
  br label %Py_DECREF.exit17

Py_DECREF.exit17:                                 ; preds = %Py_DECREF.exit17.sink.split, %bb.g, %_Py_NewRef.exit, %bb.d, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.n, %bb.g ], [ null, %bb.c ], [ null, %bb.d ], [ %i.n, %_Py_NewRef.exit ], [ %.0.ph, %Py_DECREF.exit17.sink.split ]
  ret ptr %.0
}

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #1

declare double @PyFloat_Unpack4(ptr noundef, i32 noundef) local_unnamed_addr #1

declare double @PyFloat_Unpack8(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_DecodeUTF16(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_DecodeUTF32(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @_PyLong_FromByteArray(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyErr_BadArgument() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @b_getitem(ptr noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr i8, ptr %i.b, i64 %1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23
  %i.e = sext i8 %i.d to i64
  %i.f = tail call ptr @PyLong_FromLong(i64 noundef %i.e) #12
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @b_setitem(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call i32 (ptr, ptr, ...) @PyArg_Parse(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a) #12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %1, -1                      ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !44
  %.not10 = icmp slt i64 %1, %.val
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.29) #12
  br label %bb.l

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.i = load i16, ptr %i.a, align 2, !tbaa !37   ; 3 uses
  %i.j = icmp slt i16 %i.i, -128
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.30) #12
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.l = icmp sgt i16 %i.i, 127
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.31) #12
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %i.c, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.n = trunc nsw i16 %i.i to i8
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr i8, ptr %i.p, i64 %1
  store i8 %i.n, ptr %i.q, align 1, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a, %bb.i, %bb.g, %bb.e
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.a ], [ 0, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @b_compareitems(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %.not1820 = icmp sgt i64 %2, 0
  br i1 %.not1820, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.a = add nuw nsw i64 %.01421, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.a, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !57

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01421 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.01421
  %i.c = load i8, ptr %i.b, align 1, !tbaa !23    ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %.01421
  %i.e = load i8, ptr %i.d, align 1, !tbaa !23    ; 2 uses
  %.not = icmp eq i8 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = icmp slt i8 %i.c, %i.e
  %i.g = select i1 %i.f, i32 -1, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %spec.select = phi i32 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define internal ptr @BB_getitem(ptr noundef readonly captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr i8, ptr %i.b, i64 %1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !23
  %i.e = zext i8 %i.d to i64
  %i.f = tail call ptr @PyLong_FromLong(i64 noundef %i.e) #12
end_hunk_1
begin_hunk_2_@PyUnicode_AsWideChar

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #1

declare i64 @PyLong_AsUnsignedLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromLongLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLongLong(i64 noundef) local_unnamed_addr #1

declare i64 @PyLong_AsUnsignedLongLong(ptr noundef) local_unnamed_addr #1

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @array_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = tail call ptr @PyType_GetModuleByDef(ptr noundef %0, ptr noundef nonnull @arraymodule) #12
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %.val = load ptr, ptr %i.e, align 8, !tbaa !10  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !24
  %i.f = load ptr, ptr %.val, align 8, !tbaa !18  ; 2 uses
  %i.g = icmp eq ptr %0, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.j = getelementptr i8, ptr %i.f, i64 296
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = icmp ne ptr %i.i, %i.k
  %i.m = icmp eq ptr %2, null
  %or.cond = or i1 %i.m, %i.l
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.old6 = icmp eq ptr %2, null
  br i1 %.old6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = tail call i32 @_PyArg_NoKeywords(ptr noundef nonnull @.str.48, ptr noundef nonnull %2) #12
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.critedge148, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.o = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %.not119 = icmp eq i32 %i.o, 0
  br i1 %.not119, label %.critedge148, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.a, align 4, !tbaa !6
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not120 = icmp eq ptr %i.q, null
  %i.r = select i1 %.not120, ptr @_Py_NoneStruct, ptr %i.q
  %i.s = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %i.p, ptr noundef nonnull %i.r) #12
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.critedge148, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.v = icmp eq i32 %i.u, 117
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !24
  %i.x = call i32 @PyErr_WarnEx(ptr noundef %i.w, ptr noundef nonnull @.str.52, i64 noundef 1) #12
  %.not121 = icmp eq i32 %i.x, 0
  br i1 %.not121, label %._crit_edge, label %.critedge148

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %i.a, align 4, !tbaa !6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.y = phi i32 [ %.pre, %._crit_edge ], [ %i.u, %bb.g ] ; 2 uses
  %i.z = and i32 %i.y, -3
  %i.aa = icmp eq i32 %i.z, 117                   ; 2 uses
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !24  ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  %or.cond9 = select i1 %i.ac, i1 true, i1 %i.aa
  br i1 %or.cond9, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val189 = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 3 uses
  %i.ae = getelementptr i8, ptr %.val189, i64 168
  %.val198 = load i64, ptr %i.ae, align 8, !tbaa !26
  %i.af = and i64 %.val198, 268435456
  %.not122 = icmp eq i64 %i.af, 0
  br i1 %.not122, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.ah = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ag, ptr noundef nonnull @.str.53, i32 noundef %i.y) #12 ; 0 uses
  br label %.critedge148

bb.l:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %.val, align 8, !tbaa !18 ; 2 uses
  %.not.i208 = icmp eq ptr %.val189, %i.ai
  br i1 %.not.i208, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.l
  %i.aj = call i32 @PyType_IsSubtype(ptr noundef nonnull %.val189, ptr noundef %i.ai) #12
  %.not236 = icmp eq i32 %i.aj, 0
  %.pr.pre = load ptr, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  br i1 %.not236, label %.critedge, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %PyObject_TypeCheck.exit, %bb.l
  %i.ak = phi ptr [ %i.ab, %bb.l ], [ %.pr.pre, %PyObject_TypeCheck.exit ] ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !77
  %i.an = load i8, ptr %i.am, align 8, !tbaa !39
  %i.ao = and i8 %i.an, -3
  %or.cond12.not = icmp eq i8 %i.ao, 117
  br i1 %or.cond12.not, label %bb.m, label %.critedge.thread

bb.m:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.ap = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !24
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !6
  %i.ar = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ap, ptr noundef nonnull @.str.54, i32 noundef %i.aq) #12 ; 0 uses
  br label %.critedge148

.critedge:                                        ; preds = %PyObject_TypeCheck.exit, %bb.i
  %i.as = phi ptr [ %i.ab, %bb.i ], [ %.pr.pre, %PyObject_TypeCheck.exit ] ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %PyObject_TypeCheck.exit210.thread, label %.critedge.thread

.critedge.thread:                                 ; preds = %PyObject_TypeCheck.exit.thread, %.critedge
  %i.au = phi ptr [ %i.as, %.critedge ], [ %i.ak, %PyObject_TypeCheck.exit.thread ]
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val188 = load ptr, ptr %i.av, align 8, !tbaa !25 ; 3 uses
  %i.aw = getelementptr i8, ptr %.val188, i64 168
  %.val197 = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.ax = and i64 %.val197, 33554432
  %.not124 = icmp ne i64 %i.ax, 0
  %.not.i209 = icmp eq ptr %.val188, @PyByteArray_Type
  %or.cond235 = or i1 %.not.i209, %.not124
  br i1 %or.cond235, label %PyObject_TypeCheck.exit210.thread, label %PyObject_TypeCheck.exit210

PyObject_TypeCheck.exit210:                       ; preds = %.critedge.thread
  %i.ay = call i32 @PyType_IsSubtype(ptr noundef %.val188, ptr noundef nonnull @PyByteArray_Type) #12
  %.not237 = icmp eq i32 %i.ay, 0
  br i1 %.not237, label %bb.n, label %PyObject_TypeCheck.exit210.thread

bb.n:                                             ; preds = %PyObject_TypeCheck.exit210
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val187 = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 3 uses
  %i.bb = getelementptr i8, ptr %.val187, i64 168
  %.val196 = load i64, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %i.bc = and i64 %.val196, 201326592
  %or.cond242 = icmp eq i64 %i.bc, 0
  br i1 %or.cond242, label %bb.o, label %PyObject_TypeCheck.exit210.thread

bb.o:                                             ; preds = %bb.n
  %i.bd = and i64 %.val196, 268435456
  %.not128 = icmp ne i64 %i.bd, 0
  %or.cond244.not = and i1 %.not128, %i.aa
  br i1 %or.cond244.not, label %PyObject_TypeCheck.exit210.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %.val, align 8, !tbaa !18 ; 2 uses
  %.not.i211 = icmp eq ptr %.val187, %i.be
  br i1 %.not.i211, label %PyObject_TypeCheck.exit212.thread, label %PyObject_TypeCheck.exit212

PyObject_TypeCheck.exit212:                       ; preds = %bb.p
  %i.bf = call i32 @PyType_IsSubtype(ptr noundef nonnull %.val187, ptr noundef %i.be) #12
  %.not238 = icmp eq i32 %i.bf, 0
  %.pre258 = load ptr, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  br i1 %.not238, label %bb.q, label %PyObject_TypeCheck.exit212.thread

PyObject_TypeCheck.exit212.thread:                ; preds = %PyObject_TypeCheck.exit212, %bb.p
  %i.bg = phi ptr [ %i.az, %bb.p ], [ %.pre258, %PyObject_TypeCheck.exit212 ] ; 2 uses
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !6
  %i.bi = getelementptr i8, ptr %i.bg, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !77
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !39
  %i.bl = sext i8 %i.bk to i32
  %i.bm = icmp eq i32 %i.bh, %i.bl
  br i1 %i.bm, label %PyObject_TypeCheck.exit210.thread, label %bb.q

bb.q:                                             ; preds = %PyObject_TypeCheck.exit212.thread, %PyObject_TypeCheck.exit212
  %i.bn = phi ptr [ %i.bg, %PyObject_TypeCheck.exit212.thread ], [ %.pre258, %PyObject_TypeCheck.exit212 ]
  %i.bo = call ptr @PyObject_GetIter(ptr noundef %i.bn) #12 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.critedge148, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.b, align 8, !tbaa !24
  br label %PyObject_TypeCheck.exit210.thread

PyObject_TypeCheck.exit210.thread:                ; preds = %bb.o, %bb.r, %PyObject_TypeCheck.exit212.thread, %bb.n, %PyObject_TypeCheck.exit210, %.critedge.thread, %.critedge
  %.095 = phi ptr [ null, %.critedge ], [ null, %.critedge.thread ], [ null, %PyObject_TypeCheck.exit210 ], [ null, %bb.n ], [ %i.bo, %bb.r ], [ null, %bb.o ], [ null, %PyObject_TypeCheck.exit212.thread ] ; 7 uses
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !6
  switch i32 %i.bq, label %bb.bq [
    i32 98, label %bb.s
    i32 66, label %.fold.split
    i32 117, label %.fold.split296
    i32 119, label %.fold.split297
    i32 104, label %.fold.split298
    i32 72, label %.fold.split299
    i32 105, label %.fold.split300
    i32 73, label %.fold.split301
    i32 108, label %.fold.split302
    i32 76, label %.fold.split303
    i32 113, label %.fold.split304
    i32 81, label %.fold.split305
    i32 102, label %.fold.split306
    i32 100, label %.fold.split307
  ]

.fold.split:                                      ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split296:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split297:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split298:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split299:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split300:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split301:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split302:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split303:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split304:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split305:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split306:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

.fold.split307:                                   ; preds = %PyObject_TypeCheck.exit210.thread
  br label %bb.s

bb.s:                                             ; preds = %PyObject_TypeCheck.exit210.thread, %.fold.split307, %.fold.split306, %.fold.split305, %.fold.split304, %.fold.split303, %.fold.split302, %.fold.split301, %.fold.split300, %.fold.split299, %.fold.split298, %.fold.split297, %.fold.split296, %.fold.split
  %.096248.lcssa = phi ptr [ @descriptors, %PyObject_TypeCheck.exit210.thread ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 576), %.fold.split306 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 48), %.fold.split ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 96), %.fold.split296 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 144), %.fold.split297 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 192), %.fold.split298 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 240), %.fold.split299 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 288), %.fold.split300 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 336), %.fold.split301 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 384), %.fold.split302 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 432), %.fold.split303 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 480), %.fold.split304 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 528), %.fold.split305 ], [ getelementptr inbounds nuw (i8, ptr @descriptors, i64 624), %.fold.split307 ]
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !24  ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  %.val184 = load ptr, ptr %i.bt, align 8, !tbaa !25 ; 3 uses
  %i.bu = getelementptr i8, ptr %.val184, i64 168
  %.val193 = load i64, ptr %i.bu, align 8, !tbaa !26
  %i.bv = and i64 %.val193, 100663296
  %or.cond308 = icmp eq i64 %i.bv, 0
  br i1 %or.cond308, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr %.val, align 8, !tbaa !18 ; 2 uses
  %.not.i213 = icmp eq ptr %.val184, %i.bw
  br i1 %.not.i213, label %.sink.split, label %PyObject_TypeCheck.exit214

PyObject_TypeCheck.exit214:                       ; preds = %bb.u
  %i.bx = call i32 @PyType_IsSubtype(ptr noundef nonnull %.val184, ptr noundef %i.bw) #12
  %.not239 = icmp eq i32 %i.bx, 0
  br i1 %.not239, label %bb.v, label %PyObject_TypeCheck.exit214.PyObject_TypeCheck.exit214.thread_crit_edge

PyObject_TypeCheck.exit214.PyObject_TypeCheck.exit214.thread_crit_edge: ; preds = %PyObject_TypeCheck.exit214
  %.pre259 = load ptr, ptr %i.b, align 8, !tbaa !24
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %PyObject_TypeCheck.exit214.PyObject_TypeCheck.exit214.thread_crit_edge, %bb.t
  %.sink295 = phi ptr [ %i.br, %bb.t ], [ %.pre259, %PyObject_TypeCheck.exit214.PyObject_TypeCheck.exit214.thread_crit_edge ], [ %i.br, %bb.u ]
  %i.by = getelementptr i8, ptr %.sink295, i64 16
  %.val207 = load i64, ptr %i.by, align 8, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %PyObject_TypeCheck.exit214, %bb.s
  %.0103 = phi i64 [ 0, %bb.s ], [ 0, %PyObject_TypeCheck.exit214 ], [ %.val207, %.sink.split ] ; 4 uses
  %i.bz = call fastcc ptr @newarrayobject(ptr noundef %0, i64 noundef %.0103, ptr noundef nonnull %.096248.lcssa) ; 35 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.critedge148, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = icmp sgt i64 %.0103, 0                  ; 3 uses
  br i1 %i.cb, label %bb.x, label %PyObject_TypeCheck.exit216.thread

bb.x:                                             ; preds = %bb.w
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.cd = load ptr, ptr %.val, align 8, !tbaa !18 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  %.val202 = load ptr, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  %.not.i215 = icmp eq ptr %.val202, %i.cd
  br i1 %.not.i215, label %PyObject_TypeCheck.exit216.thread.thread, label %PyObject_TypeCheck.exit216

PyObject_TypeCheck.exit216:                       ; preds = %bb.x
  %i.cf = call i32 @PyType_IsSubtype(ptr noundef %.val202, ptr noundef %i.cd) #12
  %.not240 = icmp eq i32 %i.cf, 0
  br i1 %.not240, label %.lr.ph, label %PyObject_TypeCheck.exit216.thread

.lr.ph:                                           ; preds = %PyObject_TypeCheck.exit216
  %i.cg = getelementptr i8, ptr %i.bz, i64 16
  %i.ch = getelementptr i8, ptr %i.bz, i64 40
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %Py_DECREF.exit163
  %.0104250 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %Py_DECREF.exit163 ] ; 4 uses
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.cj = call ptr @PySequence_GetItem(ptr noundef %i.ci, i64 noundef %.0104250) #12 ; 8 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cl = load i32, ptr %i.bz, align 8, !tbaa !23 ; 2 uses
  %.not.i168 = icmp sgt i32 %i.cl, -1
  br i1 %.not.i168, label %bb.aa, label %.critedge148

bb.aa:                                            ; preds = %bb.z
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.bz, align 8, !tbaa !23
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.ab, label %.critedge148

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %i.bz) #12
  br label %.critedge148

bb.ac:                                            ; preds = %bb.y
  %.val.i.i = load i64, ptr %i.cg, align 8, !tbaa !44
  %.not.i.i = icmp slt i64 %.0104250, %.val.i.i
  br i1 %.not.i.i, label %setarrayitem.exit, label %setarrayitem.exit.thread

setarrayitem.exit.thread:                         ; preds = %bb.ac
  %i.co = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.co, ptr noundef nonnull @.str.29) #12
  br label %.loopexit

setarrayitem.exit:                                ; preds = %bb.ac
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !77
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78
  %i.cs = call i32 %i.cr(ptr noundef nonnull %i.bz, i64 noundef range(i64 -9223372036854775808, 9223372036854775807) %.0104250, ptr noundef nonnull %i.cj) #12, !inline_history !79
  %.not135 = icmp eq i32 %i.cs, 0
  br i1 %.not135, label %bb.ah, label %.loopexit

.loopexit:                                        ; preds = %setarrayitem.exit, %setarrayitem.exit.thread
  %i.ct = load i32, ptr %i.cj, align 8, !tbaa !23 ; 2 uses
  %.not.i166 = icmp sgt i32 %i.ct, -1
  br i1 %.not.i166, label %bb.ad, label %Py_DECREF.exit167

bb.ad:                                            ; preds = %.loopexit
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cj, align 8, !tbaa !23
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ae, label %Py_DECREF.exit167

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %i.cj) #12
  br label %Py_DECREF.exit167

Py_DECREF.exit167:                                ; preds = %.loopexit, %bb.ad, %bb.ae
  %i.cw = load i32, ptr %i.bz, align 8, !tbaa !23 ; 2 uses
  %.not.i164 = icmp sgt i32 %i.cw, -1
  br i1 %.not.i164, label %bb.af, label %.critedge148

bb.af:                                            ; preds = %Py_DECREF.exit167
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.bz, align 8, !tbaa !23
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ag, label %.critedge148

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %i.bz) #12
  br label %.critedge148

bb.ah:                                            ; preds = %setarrayitem.exit
  %i.cz = load i32, ptr %i.cj, align 8, !tbaa !23 ; 2 uses
  %.not.i162 = icmp sgt i32 %i.cz, -1
  br i1 %.not.i162, label %bb.ai, label %Py_DECREF.exit163

bb.ai:                                            ; preds = %bb.ah
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.cj, align 8, !tbaa !23
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.aj, label %Py_DECREF.exit163

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.cj) #12
  br label %Py_DECREF.exit163

Py_DECREF.exit163:                                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.dc = add nuw nsw i64 %.0104250, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dc, %.0103
  br i1 %exitcond.not, label %.critedge149, label %bb.y, !llvm.loop !80

PyObject_TypeCheck.exit216.thread:                ; preds = %PyObject_TypeCheck.exit216, %bb.w
  %.pr234 = load ptr, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %.not137 = icmp eq ptr %.pr234, null
  br i1 %.not137, label %.critedge149, label %PyObject_TypeCheck.exit216.thread.thread

PyObject_TypeCheck.exit216.thread.thread:         ; preds = %bb.x, %PyObject_TypeCheck.exit216.thread
  %i.dd = phi ptr [ %.pr234, %PyObject_TypeCheck.exit216.thread ], [ %i.cc, %bb.x ] ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %.val201 = load ptr, ptr %i.de, align 8, !tbaa !25 ; 2 uses
  %.not.i217 = icmp eq ptr %.val201, @PyByteArray_Type
  br i1 %.not.i217, label %PyObject_TypeCheck.exit218.thread, label %PyObject_TypeCheck.exit218

PyObject_TypeCheck.exit218:                       ; preds = %PyObject_TypeCheck.exit216.thread.thread
  %i.df = call i32 @PyType_IsSubtype(ptr noundef %.val201, ptr noundef nonnull @PyByteArray_Type) #12
  %.not241 = icmp eq i32 %i.df, 0
  %.pre260 = load ptr, ptr %i.b, align 8, !tbaa !24 ; 6 uses
  br i1 %.not241, label %bb.ak, label %PyObject_TypeCheck.exit218.thread

bb.ak:                                            ; preds = %PyObject_TypeCheck.exit218
  %i.dg = getelementptr i8, ptr %.pre260, i64 8
  %.val182 = load ptr, ptr %i.dg, align 8, !tbaa !25 ; 3 uses
  %i.dh = getelementptr i8, ptr %.val182, i64 168
  %.val191 = load i64, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %i.di = and i64 %.val191, 134217728
  %.not139 = icmp eq i64 %i.di, 0
  br i1 %.not139, label %bb.ar, label %PyObject_TypeCheck.exit218.thread

PyObject_TypeCheck.exit218.thread:                ; preds = %PyObject_TypeCheck.exit216.thread.thread, %bb.ak, %PyObject_TypeCheck.exit218
  %i.dj = phi ptr [ %i.dd, %PyObject_TypeCheck.exit216.thread.thread ], [ %.pre260, %bb.ak ], [ %.pre260, %PyObject_TypeCheck.exit218 ]
  %i.dk = call ptr @array_array_frombytes(ptr noundef nonnull %i.bz, ptr noundef %i.dj) ; 4 uses
  %.not145 = icmp eq ptr %i.dk, null
  br i1 %.not145, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %PyObject_TypeCheck.exit218.thread
  %i.dl = load i32, ptr %i.bz, align 8, !tbaa !23 ; 2 uses
  %.not.i160 = icmp sgt i32 %i.dl, -1
  br i1 %.not.i160, label %bb.am, label %.critedge148

bb.am:                                            ; preds = %bb.al
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dm, ptr %i.bz, align 8, !tbaa !23
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.an, label %.critedge148

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %i.bz) #12
  br label %.critedge148

bb.ao:                                            ; preds = %PyObject_TypeCheck.exit218.thread
  %i.do = load i32, ptr %i.dk, align 8, !tbaa !23 ; 2 uses
  %.not.i158 = icmp sgt i32 %i.do, -1
  br i1 %.not.i158, label %bb.ap, label %.critedge149

bb.ap:                                            ; preds = %bb.ao
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.dk, align 8, !tbaa !23
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.aq, label %.critedge149

bb.aq:                                            ; preds = %bb.ap
  call void @_Py_Dealloc(ptr noundef nonnull %i.dk) #12
  br label %.critedge149

bb.ar:                                            ; preds = %bb.ak
  %i.dr = and i64 %.val191, 268435456
  %.not141 = icmp eq i64 %i.dr, 0
  br i1 %.not141, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !6
  %i.dt = icmp eq i32 %i.ds, 117
  br i1 %i.dt, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.du = call ptr @PyUnicode_AsWideCharString(ptr noundef nonnull %.pre260, ptr noundef nonnull %i.c) #12 ; 3 uses
  %.not144 = icmp eq ptr %i.du, null
  br i1 %.not144, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.dv = load i32, ptr %i.bz, align 8, !tbaa !23 ; 2 uses
  %.not.i156 = icmp sgt i32 %i.dv, -1
  br i1 %.not.i156, label %bb.av, label %Py_DECREF.exit157.thread

bb.av:                                            ; preds = %bb.au
end_hunk_2
