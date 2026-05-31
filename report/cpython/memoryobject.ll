inline.NumInlined: 188
inline.NumDeleted: 69
begin_hunk_0
@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [14 x i8] c"managedbuffer\00", align 1
@_PyManagedBuffer_Type = hidden global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str, i64 112, i64 0, ptr @mbuf_dealloc, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 16384, ptr null, ptr @mbuf_traverse, ptr @mbuf_clear, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"PyMemoryView_FromBuffer(): info->buf must not be NULL\00", align 1
@PyExc_BufferError = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"underlying buffer is not writable\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"writable contiguous buffer requested for a non-contiguous object.\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"PyBuffer_ToContiguous: len != view->len\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"memory_iterator\00", align 1
@_PyMemoryIter_Type = hidden global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.5, i64 48, i64 0, ptr @memoryiter_dealloc, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 16384, ptr null, ptr @memoryiter_traverse, ptr null, ptr null, i64 0, ptr @PyObject_SelfIter, ptr @memoryiter_next, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"memoryview\00", align 1
@memory_as_sequence = internal global %struct.PySequenceMethods { ptr @memory_length, ptr null, ptr null, ptr @memory_item, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@memory_as_mapping = internal global %struct.PyMappingMethods { ptr @memory_length, ptr @memory_subscript, ptr @memory_ass_sub }, align 8
@memory_as_buffer = internal global %struct.PyBufferProcs { ptr @memory_getbuf, ptr @memory_releasebuf }, align 8
@memoryview__doc__ = internal constant [89 x i8] c"memoryview(object)\0A--\0A\0ACreate a new memoryview object which references the given object.\00", align 16
@memory_getsetlist = internal global [13 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.128, ptr @memory_obj_get, ptr null, ptr @memory_obj_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.129, ptr @memory_nbytes_get, ptr null, ptr @memory_nbytes_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.130, ptr @memory_readonly_get, ptr null, ptr @memory_readonly_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.131, ptr @memory_itemsize_get, ptr null, ptr @memory_itemsize_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.72, ptr @memory_format_get, ptr null, ptr @memory_format_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.132, ptr @memory_ndim_get, ptr null, ptr @memory_ndim_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.73, ptr @memory_shape_get, ptr null, ptr @memory_shape_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.133, ptr @memory_strides_get, ptr null, ptr @memory_strides_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.134, ptr @memory_suboffsets_get, ptr null, ptr @memory_suboffsets_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.135, ptr @memory_c_contiguous, ptr null, ptr @memory_c_contiguous_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.136, ptr @memory_f_contiguous, ptr null, ptr @memory_f_contiguous_doc, ptr null }, %struct.PyGetSetDef { ptr @.str.137, ptr @memory_contiguous, ptr null, ptr @memory_contiguous_doc, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyMemoryView_Type = dso_local global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.6, i64 144, i64 8, ptr @memory_dealloc, i64 0, ptr null, ptr null, ptr null, ptr @memory_repr, ptr null, ptr @memory_as_sequence, ptr @memory_as_mapping, ptr @memory_hash, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr @memory_as_buffer, i64 16416, ptr @memoryview__doc__, ptr @memory_traverse, ptr @memory_clear, ptr @memory_richcompare, i64 136, ptr @memory_iter, ptr null, ptr @memory_methods, ptr null, ptr @memory_getsetlist, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @memoryview, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [52 x i8] c"memoryview: number of dimensions must not exceed 64\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"operation forbidden on released memoryview object\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"cannot create new view on restricted memoryview\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [58 x i8] c"memoryview: a bytes-like object is required, not '%.200s'\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"memoryview assignment: lvalue and rvalue have different structures\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@PyExc_NotImplementedError = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [36 x i8] c"memoryview: format %s not supported\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"<released memory at %p>\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"<memory at %p>\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"0-dim memory has no length\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"invalid indexing of 0-dim memory\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"multi-dimensional sub-views are not implemented\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"memoryview: unsupported format %s\00", align 1
@PyExc_IndexError = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [36 x i8] c"index out of bounds on dimension %d\00", align 1
@_Py_EllipsisObject = external global %struct._object, align 8
@PySlice_Type = external global %struct._typeobject, align 8
@.str.21 = private unnamed_addr constant [45 x i8] c"multi-dimensional slicing is not implemented\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"memoryview: invalid slice key\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"sub-views are not implemented\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"cannot index %zd-dimension view with %zd-element tuple\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"cannot modify read-only memory\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"cannot delete memory\00", align 1
@.str.27 = private unnamed_addr constant [66 x i8] c"memoryview slice assignments are currently restricted to ndim = 1\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"memoryview: invalid type for format '%s'\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"memoryview: invalid value for format '%s'\00", align 1
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [39 x i8] c"cannot hash writable memoryview object\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"memoryview: hashing is restricted to formats 'B', 'b' or 'c'\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"memoryview: underlying buffer is not writable\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"memoryview: underlying buffer is not C-contiguous\00", align 1
@.str.34 = private unnamed_addr constant [56 x i8] c"memoryview: underlying buffer is not Fortran contiguous\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"memoryview: underlying buffer is not contiguous\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"memoryview: underlying buffer requires suboffsets\00", align 1
@.str.37 = private unnamed_addr constant [72 x i8] c"memoryview: cannot cast to unsigned bytes if the format flag is present\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"bBchHiIlLnNqQ?\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Struct\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"unpack_from\00", align 1
@PyExc_ImportError = external local_unnamed_addr global ptr, align 8
@PyExc_MemoryError = external local_unnamed_addr global ptr, align 8
@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [42 x i8] c"memoryview: internal error in richcompare\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"../Objects/memoryobject.c\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@memoryview_release__doc__ = internal constant [86 x i8] c"release($self, /)\0A--\0A\0ARelease the underlying buffer exposed by the memoryview object.\00", align 16
@.str.45 = private unnamed_addr constant [8 x i8] c"tobytes\00", align 1
@memoryview_tobytes__doc__ = internal constant [427 x i8] c"tobytes($self, /, order='C')\0A--\0A\0AReturn the data in the buffer as a byte string.\0A\0AOrder can be {'C', 'F', 'A'}. When order is 'C' or 'F', the data of the\0Aoriginal array is converted to C or Fortran order. For contiguous views,\0A'A' returns an exact copy of the physical memory. In particular, in-memory\0AFortran order is preserved. For non-contiguous views, the data is converted\0Ato C first. order=None is the same as order='C'.\00", align 16
@.str.46 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@memoryview_hex__doc__ = internal constant [497 x i8] c"hex($self, /, sep=<unrepresentable>, bytes_per_sep=1)\0A--\0A\0AReturn the data in the buffer as a str of hexadecimal numbers.\0A\0A  sep\0A    An optional single character or byte to separate hex bytes.\0A  bytes_per_sep\0A    How many bytes between separators.  Positive values count from the\0A    right, negative values count from the left.\0A\0AExample:\0A>>> value = memoryview(b'\\xb9\\x01\\xef')\0A>>> value.hex()\0A'b901ef'\0A>>> value.hex(':')\0A'b9:01:ef'\0A>>> value.hex(':', 2)\0A'b9:01ef'\0A>>> value.hex(':', -2)\0A'b901:ef'\00", align 16
@.str.47 = private unnamed_addr constant [7 x i8] c"tolist\00", align 1
@memoryview_tolist__doc__ = internal constant [74 x i8] c"tolist($self, /)\0A--\0A\0AReturn the data in the buffer as a list of elements.\00", align 16
@.str.48 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@memoryview_cast__doc__ = internal constant [96 x i8] c"cast($self, /, format, shape=<unrepresentable>)\0A--\0A\0ACast a memoryview to a new format or shape.\00", align 16
@.str.49 = private unnamed_addr constant [11 x i8] c"toreadonly\00", align 1
@memoryview_toreadonly__doc__ = internal constant [70 x i8] c"toreadonly($self, /)\0A--\0A\0AReturn a readonly version of the memoryview.\00", align 16
@.str.50 = private unnamed_addr constant [12 x i8] c"_from_flags\00", align 1
@memoryview__from_flags__doc__ = internal constant [107 x i8] c"_from_flags($type, /, object, flags)\0A--\0A\0ACreate a new memoryview object which references the given object.\00", align 16
@.str.51 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@memoryview_count__doc__ = internal constant [71 x i8] c"count($self, value, /)\0A--\0A\0ACount the number of occurrences of a value.\00", align 16
@.str.52 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@memoryview_index__doc__ = internal constant [155 x i8] c"index($self, value, start=0, stop=sys.maxsize, /)\0A--\0A\0AReturn the index of the first occurrence of a value.\0A\0ARaises ValueError if the value is not present.\00", align 16
@.str.53 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@memory_exit_doc = internal constant [98 x i8] c"__exit__($self, /, *exc_info)\0A--\0A\0ARelease the underlying buffer exposed by the memoryview object.\00", align 16
@.str.55 = private unnamed_addr constant [18 x i8] c"__class_getitem__\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"See PEP 585\00", align 1
@memory_methods = internal global [13 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.44, ptr @memoryview_release, i32 4, [4 x i8] zeroinitializer, ptr @memoryview_release__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.45, ptr @memoryview_tobytes, i32 130, [4 x i8] zeroinitializer, ptr @memoryview_tobytes__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.46, ptr @memoryview_hex, i32 130, [4 x i8] zeroinitializer, ptr @memoryview_hex__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.47, ptr @memoryview_tolist, i32 4, [4 x i8] zeroinitializer, ptr @memoryview_tolist__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.48, ptr @memoryview_cast, i32 130, [4 x i8] zeroinitializer, ptr @memoryview_cast__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.49, ptr @memoryview_toreadonly, i32 4, [4 x i8] zeroinitializer, ptr @memoryview_toreadonly__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.50, ptr @memoryview__from_flags, i32 146, [4 x i8] zeroinitializer, ptr @memoryview__from_flags__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.51, ptr @memoryview_count, i32 8, [4 x i8] zeroinitializer, ptr @memoryview_count__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.52, ptr @memoryview_index, i32 128, [4 x i8] zeroinitializer, ptr @memoryview_index__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.53, ptr @memory_enter, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.54, ptr @memory_exit, i32 1, [4 x i8] zeroinitializer, ptr @memory_exit_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.55, ptr @Py_GenericAlias, i32 24, [4 x i8] zeroinitializer, ptr @.str.56 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@_Py_NoneStruct = external global %struct._object, align 8
@.str.58 = private unnamed_addr constant [37 x i8] c"memoryview has %zd exported buffer%s\00", align 1
@.str.59 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@PyExc_SystemError = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [34 x i8] c"memoryview: negative export count\00", align 1
@memoryview_tobytes._kwtuple = internal global %struct.anon.6 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 1 }, i64 -1, [1 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 94520)] }, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@_PyRuntime = external global %struct.pyruntimestate, align 8
@memoryview_tobytes._keywords = internal constant [2 x ptr] [ptr @.str.62, ptr null], align 16
@.str.62 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@memoryview_tobytes._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @memoryview_tobytes._keywords, ptr @.str.45, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @memoryview_tobytes._kwtuple, i64 16), ptr null }, align 8
@.str.63 = private unnamed_addr constant [24 x i8] c"embedded null character\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"argument 'order'\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"str or None\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"order must be 'C', 'F' or 'A'\00", align 1
@memoryview_hex._kwtuple = internal global %struct.anon.915 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 2 }, i64 -1, [2 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 98952), ptr getelementptr (i8, ptr @_PyRuntime, i64 76456)] }, align 8
@memoryview_hex._keywords = internal constant [3 x ptr] [ptr @.str.70, ptr @.str.71, ptr null], align 16
@.str.70 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"bytes_per_sep\00", align 1
@memoryview_hex._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @memoryview_hex._keywords, ptr @.str.46, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @memoryview_hex._kwtuple, i64 16), ptr null }, align 8
@memoryview_cast._kwtuple = internal global %struct.anon.916 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 2 }, i64 -1, [2 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 84664), ptr getelementptr (i8, ptr @_PyRuntime, i64 99488)] }, align 8
@memoryview_cast._keywords = internal constant [3 x ptr] [ptr @.str.72, ptr @.str.73, ptr null], align 16
@.str.72 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@memoryview_cast._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @memoryview_cast._keywords, ptr @.str.48, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @memoryview_cast._kwtuple, i64 16), ptr null }, align 8
@.str.74 = private unnamed_addr constant [18 x i8] c"argument 'format'\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.76 = private unnamed_addr constant [55 x i8] c"memoryview: casts are restricted to C-contiguous views\00", align 1
@.str.77 = private unnamed_addr constant [60 x i8] c"memoryview: cannot cast view with zeros in shape or strides\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"shape must be a list or a tuple\00", align 1
@.str.79 = private unnamed_addr constant [46 x i8] c"memoryview: cast must be 1D -> ND or ND -> 1D\00", align 1
@.str.80 = private unnamed_addr constant [102 x i8] c"memoryview: destination format must be a native single character format prefixed with an optional '@'\00", align 1
@.str.81 = private unnamed_addr constant [53 x i8] c"memoryview: cannot cast between two non-byte formats\00", align 1
@.str.82 = private unnamed_addr constant [49 x i8] c"memoryview: length is not a multiple of itemsize\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"memoryview: internal error\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"@c\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"@b\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"@B\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"@h\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"@H\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"@i\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"@I\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"@l\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"@L\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"@q\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"@Q\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"@n\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"@N\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"@f\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"@d\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"@e\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"@?\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"@P\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.119 = private unnamed_addr constant [53 x i8] c"memoryview: product(shape) * itemsize != buffer size\00", align 1
@.str.120 = private unnamed_addr constant [54 x i8] c"memoryview.cast(): elements of shape must be integers\00", align 1
@.str.121 = private unnamed_addr constant [58 x i8] c"memoryview.cast(): elements of shape must be integers > 0\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"memoryview.cast(): product(shape) > SSIZE_MAX\00", align 1
@memoryview__from_flags._kwtuple = internal global %struct.anon.917 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 2 }, i64 -1, [2 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 93680), ptr getelementptr (i8, ptr @_PyRuntime, i64 84408)] }, align 8
@memoryview__from_flags._keywords = internal constant [3 x ptr] [ptr @.str.123, ptr @.str.124, ptr null], align 16
@.str.123 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@memoryview__from_flags._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @memoryview__from_flags._keywords, ptr @.str.50, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @memoryview__from_flags._kwtuple, i64 16), ptr null }, align 8
@.str.125 = private unnamed_addr constant [31 x i8] c"invalid lookup on 0-dim memory\00", align 1
@.str.126 = private unnamed_addr constant [33 x i8] c"memoryview.index(x): x not found\00", align 1
@.str.127 = private unnamed_addr constant [44 x i8] c"multi-dimensional lookup is not implemented\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@memory_obj_doc = internal constant [41 x i8] c"The underlying object of the memoryview.\00", align 16
@.str.129 = private unnamed_addr constant [7 x i8] c"nbytes\00", align 1
@memory_nbytes_doc = internal constant [87 x i8] c"The amount of space in bytes that the array would use in\0A a contiguous representation.\00", align 16
@.str.130 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@memory_readonly_doc = internal constant [51 x i8] c"A bool indicating whether the memory is read only.\00", align 16
@.str.131 = private unnamed_addr constant [9 x i8] c"itemsize\00", align 1
@memory_itemsize_doc = internal constant [53 x i8] c"The size in bytes of each element of the memoryview.\00", align 16
@memory_format_doc = internal constant [87 x i8] c"A string containing the format (in struct module style)\0A for each element in the view.\00", align 16
@.str.132 = private unnamed_addr constant [5 x i8] c"ndim\00", align 1
@memory_ndim_doc = internal constant [95 x i8] c"An integer indicating how many dimensions of a multi-dimensional\0A array the memory represents.\00", align 16
@memory_shape_doc = internal constant [84 x i8] c"A tuple of ndim integers giving the shape of the memory\0A as an N-dimensional array.\00", align 16
@.str.133 = private unnamed_addr constant [8 x i8] c"strides\00", align 1
@memory_strides_doc = internal constant [107 x i8] c"A tuple of ndim integers giving the size in bytes to access\0A each element for each dimension of the array.\00", align 16
@.str.134 = private unnamed_addr constant [11 x i8] c"suboffsets\00", align 1
@memory_suboffsets_doc = internal constant [58 x i8] c"A tuple of integers used internally for PIL-style arrays.\00", align 16
@.str.135 = private unnamed_addr constant [13 x i8] c"c_contiguous\00", align 1
@memory_c_contiguous_doc = internal constant [54 x i8] c"A bool indicating whether the memory is C contiguous.\00", align 16
@.str.136 = private unnamed_addr constant [13 x i8] c"f_contiguous\00", align 1
@memory_f_contiguous_doc = internal constant [60 x i8] c"A bool indicating whether the memory is Fortran contiguous.\00", align 16
@.str.137 = private unnamed_addr constant [11 x i8] c"contiguous\00", align 1
@memory_contiguous_doc = internal constant [52 x i8] c"A bool indicating whether the memory is contiguous.\00", align 16
@memoryview._kwtuple = internal global %struct.anon.918 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 1 }, i64 -1, [1 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 93680)] }, align 8
@memoryview._keywords = internal constant [2 x ptr] [ptr @.str.123, ptr null], align 16
@memoryview._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @memoryview._keywords, ptr @.str.6, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @memoryview._kwtuple, i64 16), ptr null }, align 8

; Function Attrs: nounwind uwtable
define internal void @mbuf_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mbuf_release.exit

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i32 %i.b, 1
  store i32 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %.val.i.i = load i64, ptr %i.f, align 8, !tbaa !21
  %i.g = and i64 %.val.i.i, -4                    ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %.val12.i.i = load i64, ptr %i.e, align 8, !tbaa !23
  %i.i = and i64 %.val12.i.i, -4                  ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.h, align 8, !tbaa !23
  %i.l = and i64 %i.k, 3
  %i.m = or disjoint i64 %i.l, %i.i
  store i64 %i.m, ptr %i.h, align 8, !tbaa !23
  %i.n = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = and i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, %i.g
  store i64 %i.q, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.e, align 8, !tbaa !23
  %i.r = load i64, ptr %i.f, align 8, !tbaa !21
  %i.s = and i64 %i.r, 1
  store i64 %i.s, ptr %i.f, align 8, !tbaa !21
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 7428     ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %_PyObject_GC_UNTRACK.exit.i

bb.c:                                             ; preds = %bb.b
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !26
  br label %_PyObject_GC_UNTRACK.exit.i

_PyObject_GC_UNTRACK.exit.i:                      ; preds = %bb.c, %bb.b
  %i.z = getelementptr i8, ptr %i.u, i64 7656     ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !30
  %i.ac = getelementptr i8, ptr %0, i64 32
  tail call void @PyBuffer_Release(ptr noundef %i.ac) #15
  %.pre = load i32, ptr %i.a, align 8, !tbaa !11
  br label %mbuf_release.exit

mbuf_release.exit:                                ; preds = %bb.a, %_PyObject_GC_UNTRACK.exit.i
  %i.ad = phi i32 [ %i.b, %bb.a ], [ %.pre, %_PyObject_GC_UNTRACK.exit.i ]
  %i.ae = and i32 %i.ad, 2
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %mbuf_release.exit
  %i.af = getelementptr i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  tail call void @PyMem_Free(ptr noundef %i.ag) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mbuf_release.exit
  tail call void @PyObject_GC_Del(ptr noundef nonnull %0) #15
  ret void
}

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @mbuf_traverse(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #15 ; 2 uses
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mbuf_clear(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mbuf_release.exit

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i32 %i.b, 1
  store i32 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %.val.i.i = load i64, ptr %i.f, align 8, !tbaa !21
  %i.g = and i64 %.val.i.i, -4                    ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %.val12.i.i = load i64, ptr %i.e, align 8, !tbaa !23
  %i.i = and i64 %.val12.i.i, -4                  ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.h, align 8, !tbaa !23
  %i.l = and i64 %i.k, 3
  %i.m = or disjoint i64 %i.l, %i.i
  store i64 %i.m, ptr %i.h, align 8, !tbaa !23
  %i.n = getelementptr i8, ptr %i.j, i64 8        ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = and i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, %i.g
  store i64 %i.q, ptr %i.n, align 8, !tbaa !21
  store i64 0, ptr %i.e, align 8, !tbaa !23
  %i.r = load i64, ptr %i.f, align 8, !tbaa !21
  %i.s = and i64 %i.r, 1
  store i64 %i.s, ptr %i.f, align 8, !tbaa !21
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 7428     ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %_PyObject_GC_UNTRACK.exit.i

bb.c:                                             ; preds = %bb.b
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !26
  br label %_PyObject_GC_UNTRACK.exit.i

_PyObject_GC_UNTRACK.exit.i:                      ; preds = %bb.c, %bb.b
  %i.z = getelementptr i8, ptr %i.u, i64 7656     ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !30
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !30
  %i.ac = getelementptr i8, ptr %0, i64 32
  tail call void @PyBuffer_Release(ptr noundef %i.ac) #15
  br label %mbuf_release.exit

mbuf_release.exit:                                ; preds = %bb.a, %_PyObject_GC_UNTRACK.exit.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMemoryView_FromMemory(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyManagedBuffer_Type) #15 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %mbuf_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr i8, ptr %i.a, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr i8, ptr %i.a, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr i8, ptr %i.a, i64 -16      ; 2 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 7 uses
  %i.i = getelementptr i8, ptr %i.h, i64 7408
  %i.j = getelementptr i8, ptr %i.h, i64 7416     ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !23
  %i.o = and i64 %i.n, 3
  %i.p = or i64 %i.o, %i.m
  store i64 %i.p, ptr %i.l, align 8, !tbaa !23
  %i.q = getelementptr i8, ptr %i.a, i64 -8       ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21
  %i.s = and i64 %i.r, 3
  %i.t = or i64 %i.s, %i.k
  store i64 %i.t, ptr %i.q, align 8, !tbaa !21
  %i.u = getelementptr i8, ptr %i.h, i64 7672
  %i.v = load i32, ptr %i.u, align 8, !tbaa !34
  %i.w = xor i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %i.f, align 8, !tbaa !23
  store i64 %i.m, ptr %i.j, align 8, !tbaa !21
  %i.aa = getelementptr i8, ptr %i.h, i64 7428    ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !26
  %i.ad = getelementptr i8, ptr %i.h, i64 7656    ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !30
  %i.af = add i64 %i.ae, 1
end_hunk_0
begin_hunk_1_@PyBytesWriter_GetSize

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tolist_base(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(address_is_null) %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !52
  %i.b = tail call ptr @PyList_New(i64 noundef %i.a) #15 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !52
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %Py_DECREF.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq ptr %4, null
  %i.f = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.02331.us = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %.02430.us = phi ptr [ %i.j, %bb.b ], [ %1, %.lr.ph ] ; 2 uses
  %i.g = tail call fastcc ptr @unpack_single(ptr noundef %0, ptr noundef %.02430.us, ptr noundef nonnull %5) ; 2 uses
  %.not29.us = icmp eq ptr %i.g, null
  br i1 %.not29.us, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %.val.us = load ptr, ptr %i.f, align 8, !tbaa !138
  %i.h = getelementptr [8 x i8], ptr %.val.us, i64 %.02331.us
  store ptr %i.g, ptr %i.h, align 8, !tbaa !38
  %i.i = load i64, ptr %3, align 8, !tbaa !52
  %i.j = getelementptr i8, ptr %.02430.us, i64 %i.i
  %i.k = add nuw nsw i64 %.02331.us, 1            ; 2 uses
  %i.l = load i64, ptr %2, align 8, !tbaa !52
  %i.m = icmp slt i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.split.us, label %Py_DECREF.exit.thread, !llvm.loop !142

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %.02331 = phi i64 [ %i.z, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.02430 = phi ptr [ %i.y, %bb.g ], [ %1, %.lr.ph ] ; 3 uses
  %i.n = load i64, ptr %4, align 8, !tbaa !52     ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.p = load ptr, ptr %.02430, align 8, !tbaa !69
  %i.q = getelementptr i8, ptr %i.p, i64 %i.n
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ %.02430, %.lr.ph.split ]
  %i.s = tail call fastcc ptr @unpack_single(ptr noundef %0, ptr noundef %i.r, ptr noundef nonnull %5) ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %.split.us, label %bb.g

.split.us:                                        ; preds = %bb.d, %.lr.ph.split.us
  %i.t = load i32, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit.thread

bb.e:                                             ; preds = %.split.us
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.b, align 8, !tbaa !36
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %Py_DECREF.exit.thread

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #15
  br label %Py_DECREF.exit.thread

bb.g:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.f, align 8, !tbaa !138
  %i.w = getelementptr [8 x i8], ptr %.val, i64 %.02331
  store ptr %i.s, ptr %i.w, align 8, !tbaa !38
  %i.x = load i64, ptr %3, align 8, !tbaa !52
  %i.y = getelementptr i8, ptr %.02430, i64 %i.x
  %i.z = add nuw nsw i64 %.02331, 1               ; 2 uses
  %i.aa = load i64, ptr %2, align 8, !tbaa !52
  %i.ab = icmp slt i64 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.split, label %Py_DECREF.exit.thread, !llvm.loop !142

Py_DECREF.exit.thread:                            ; preds = %bb.g, %bb.b, %.preheader, %.split.us, %bb.e, %bb.f, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %.split.us ], [ null, %bb.f ], [ null, %bb.e ], [ %i.b, %.preheader ], [ %i.b, %bb.b ], [ %i.b, %bb.g ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @tolist_rec(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef readonly captures(address_is_null) %5, ptr noundef nonnull %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @tolist_base(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %Py_DECREF.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !52
  %i.d = tail call ptr @PyList_New(i64 noundef %i.c) #15 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Py_DECREF.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = load i64, ptr %3, align 8, !tbaa !52
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %Py_DECREF.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %.not = icmp eq ptr %5, null                    ; 2 uses
  %i.h = add i64 %2, -1                           ; 2 uses
  %i.i = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.j = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %i.k = getelementptr i8, ptr %5, i64 8          ; 2 uses
  %i.l = select i1 %.not, ptr null, ptr %i.k
  %i.m = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.03544.us = phi i64 [ %i.r, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %.03643.us = phi ptr [ %i.q, %bb.d ], [ %1, %.lr.ph ] ; 2 uses
  %i.n = tail call fastcc ptr @tolist_rec(ptr noundef %0, ptr noundef %.03643.us, i64 noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %6) ; 2 uses
  %.not42.us = icmp eq ptr %i.n, null
  br i1 %.not42.us, label %.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us
  %.val.us = load ptr, ptr %i.m, align 8, !tbaa !138
  %i.o = getelementptr [8 x i8], ptr %.val.us, i64 %.03544.us
  store ptr %i.n, ptr %i.o, align 8, !tbaa !38
  %i.p = load i64, ptr %4, align 8, !tbaa !52
  %i.q = getelementptr i8, ptr %.03643.us, i64 %i.p
  %i.r = add nuw nsw i64 %.03544.us, 1            ; 2 uses
  %i.s = load i64, ptr %3, align 8, !tbaa !52
  %i.t = icmp slt i64 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.split.us, label %Py_DECREF.exit.thread, !llvm.loop !143

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.03544 = phi i64 [ %i.ag, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %.03643 = phi ptr [ %i.af, %bb.i ], [ %1, %.lr.ph ] ; 3 uses
  %i.u = load i64, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split
  %i.w = load ptr, ptr %.03643, align 8, !tbaa !69
  %i.x = getelementptr i8, ptr %i.w, i64 %i.u
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %bb.e
  %i.y = phi ptr [ %i.x, %bb.e ], [ %.03643, %.lr.ph.split ]
  %i.z = tail call fastcc ptr @tolist_rec(ptr noundef %0, ptr noundef %i.y, i64 noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %6) ; 2 uses
  %.not42 = icmp eq ptr %i.z, null
  br i1 %.not42, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.f, %.lr.ph.split.us
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit.thread

bb.g:                                             ; preds = %.split.us
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.d, align 8, !tbaa !36
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %Py_DECREF.exit.thread

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #15
  br label %Py_DECREF.exit.thread

bb.i:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.m, align 8, !tbaa !138
  %i.ad = getelementptr [8 x i8], ptr %.val, i64 %.03544
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !38
  %i.ae = load i64, ptr %4, align 8, !tbaa !52
  %i.af = getelementptr i8, ptr %.03643, i64 %i.ae
  %i.ag = add nuw nsw i64 %.03544, 1              ; 2 uses
  %i.ah = load i64, ptr %3, align 8, !tbaa !52
  %i.ai = icmp slt i64 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.split, label %Py_DECREF.exit.thread, !llvm.loop !143

Py_DECREF.exit.thread:                            ; preds = %bb.i, %bb.d, %.preheader, %.split.us, %bb.g, %bb.h, %bb.c, %bb.b
  %.2 = phi ptr [ %i.b, %bb.b ], [ null, %bb.c ], [ null, %.split.us ], [ null, %bb.h ], [ null, %bb.g ], [ %i.d, %.preheader ], [ %i.d, %bb.d ], [ %i.d, %bb.i ]
  ret ptr %.2
}

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cast_to_1D(ptr noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_AsASCIIString(ptr noundef %1) #15 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !36
  %i.e = icmp eq i8 %i.d, 64                      ; 19 uses
  %spec.select.idx.i = zext i1 %i.e to i64
  %spec.select.i = getelementptr i8, ptr %i.c, i64 %spec.select.idx.i ; 2 uses
  %i.f = load i8, ptr %spec.select.i, align 1, !tbaa !36 ; 5 uses
  switch i8 %i.f, label %bb.e [
    i8 99, label %bb.d
    i8 98, label %bb.d
    i8 66, label %bb.d
    i8 104, label %2
    i8 72, label %2
    i8 105, label %3
    i8 73, label %3
    i8 108, label %bb.c
    i8 76, label %bb.c
    i8 113, label %bb.c
    i8 81, label %bb.c
    i8 110, label %bb.c
    i8 78, label %bb.c
    i8 102, label %3
    i8 100, label %bb.c
    i8 101, label %2
    i8 63, label %bb.d
    i8 80, label %bb.c
  ]

2:                                                ; preds = %bb.b, %bb.b, %bb.b
  br label %bb.d

3:                                                ; preds = %bb.b, %bb.b, %bb.b
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %3, %2, %bb.b, %bb.b, %bb.b, %bb.b
  %.0.ph.i = phi i64 [ 8, %bb.c ], [ 4, %3 ], [ 2, %2 ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ] ; 3 uses
  %i.g = getelementptr i8, ptr %spec.select.i, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !36
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %get_native_fmtchar.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.80) #15
  br label %bb.af

get_native_fmtchar.exit:                          ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !36
  %i.n = icmp eq i8 %i.m, 64
  %spec.select.idx.i39 = zext i1 %i.n to i64
  %spec.select.i40 = getelementptr i8, ptr %i.l, i64 %spec.select.idx.i39 ; 2 uses
  %i.o = load i8, ptr %spec.select.i40, align 1, !tbaa !36 ; 2 uses
  switch i8 %i.o, label %bb.g [
    i8 99, label %bb.f
    i8 98, label %bb.f
    i8 66, label %bb.f
    i8 104, label %bb.f
    i8 72, label %bb.f
    i8 105, label %bb.f
    i8 73, label %bb.f
    i8 108, label %bb.f
    i8 76, label %bb.f
    i8 113, label %bb.f
    i8 81, label %bb.f
    i8 110, label %bb.f
    i8 78, label %bb.f
    i8 102, label %bb.f
    i8 100, label %bb.f
    i8 101, label %bb.f
    i8 63, label %bb.f
    i8 80, label %bb.f
  ]

bb.f:                                             ; preds = %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit, %get_native_fmtchar.exit
  %i.p = getelementptr i8, ptr %spec.select.i40, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %get_native_fmtchar.exit43, label %bb.g

get_native_fmtchar.exit43:                        ; preds = %bb.f
  %i.s = icmp eq i8 %i.f, 98
  br i1 %i.s, label %bb.j, label %switch.early.test

switch.early.test:                                ; preds = %get_native_fmtchar.exit43
  switch i8 %i.o, label %bb.h [
    i8 99, label %bb.j
    i8 98, label %bb.j
    i8 66, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f, %get_native_fmtchar.exit
  switch i8 %i.f, label %bb.i [
    i8 98, label %bb.j
    i8 99, label %bb.j
    i8 66, label %bb.j
  ]

bb.h:                                             ; preds = %switch.early.test
  switch i8 %i.f, label %bb.i [
    i8 99, label %bb.j
    i8 66, label %bb.j
  ]

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.t = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.81) #15
  br label %bb.af

bb.j:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.h, %bb.h, %switch.early.test, %switch.early.test, %switch.early.test, %get_native_fmtchar.exit43
  %i.u = getelementptr i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !79   ; 2 uses
  %i.w = add nsw i64 %.0.ph.i, -1
  %i.x = and i64 %i.v, %i.w
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.y, ptr noundef nonnull @.str.82) #15
  br label %bb.af

bb.l:                                             ; preds = %bb.j
  switch i8 %i.f, label %bb.ae [
    i8 99, label %bb.m
    i8 98, label %bb.n
    i8 66, label %bb.o
    i8 104, label %bb.p
    i8 72, label %bb.q
    i8 105, label %bb.r
    i8 73, label %bb.s
    i8 108, label %bb.t
    i8 76, label %bb.u
    i8 113, label %bb.v
    i8 81, label %bb.w
    i8 110, label %bb.x
    i8 78, label %bb.y
    i8 102, label %bb.z
    i8 100, label %bb.aa
    i8 101, label %bb.ab
    i8 63, label %bb.ac
    i8 80, label %bb.ad
  ]

bb.m:                                             ; preds = %bb.l
  %i.z = select i1 %i.e, ptr @.str.84, ptr @.str.85
  br label %init_flags.exit

bb.n:                                             ; preds = %bb.l
  %i.aa = select i1 %i.e, ptr @.str.86, ptr @.str.87
  br label %init_flags.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = select i1 %i.e, ptr @.str.88, ptr @.str.12
  br label %init_flags.exit

bb.p:                                             ; preds = %bb.l
  %i.ac = select i1 %i.e, ptr @.str.89, ptr @.str.90
  br label %init_flags.exit

bb.q:                                             ; preds = %bb.l
  %i.ad = select i1 %i.e, ptr @.str.91, ptr @.str.92
  br label %init_flags.exit

bb.r:                                             ; preds = %bb.l
  %i.ae = select i1 %i.e, ptr @.str.93, ptr @.str.94
  br label %init_flags.exit

bb.s:                                             ; preds = %bb.l
  %i.af = select i1 %i.e, ptr @.str.95, ptr @.str.96
  br label %init_flags.exit

bb.t:                                             ; preds = %bb.l
  %i.ag = select i1 %i.e, ptr @.str.97, ptr @.str.98
  br label %init_flags.exit

bb.u:                                             ; preds = %bb.l
  %i.ah = select i1 %i.e, ptr @.str.99, ptr @.str.100
  br label %init_flags.exit

bb.v:                                             ; preds = %bb.l
  %i.ai = select i1 %i.e, ptr @.str.101, ptr @.str.102
  br label %init_flags.exit

bb.w:                                             ; preds = %bb.l
  %i.aj = select i1 %i.e, ptr @.str.103, ptr @.str.104
  br label %init_flags.exit

bb.x:                                             ; preds = %bb.l
  %i.ak = select i1 %i.e, ptr @.str.105, ptr @.str.106
  br label %init_flags.exit

bb.y:                                             ; preds = %bb.l
  %i.al = select i1 %i.e, ptr @.str.107, ptr @.str.108
  br label %init_flags.exit

bb.z:                                             ; preds = %bb.l
  %i.am = select i1 %i.e, ptr @.str.109, ptr @.str.110
  br label %init_flags.exit

bb.aa:                                            ; preds = %bb.l
  %i.an = select i1 %i.e, ptr @.str.111, ptr @.str.112
  br label %init_flags.exit

bb.ab:                                            ; preds = %bb.l
  %i.ao = select i1 %i.e, ptr @.str.113, ptr @.str.114
  br label %init_flags.exit

bb.ac:                                            ; preds = %bb.l
  %i.ap = select i1 %i.e, ptr @.str.115, ptr @.str.116
  br label %init_flags.exit

bb.ad:                                            ; preds = %bb.l
  %i.aq = select i1 %i.e, ptr @.str.117, ptr @.str.118
  br label %init_flags.exit

bb.ae:                                            ; preds = %bb.l
  store ptr null, ptr %i.k, align 8, !tbaa !54
  %i.ar = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.83) #15
  br label %bb.af

init_flags.exit:                                  ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.ad
  %.024.i.ph = phi ptr [ %i.ap, %bb.ac ], [ %i.ao, %bb.ab ], [ %i.an, %bb.aa ], [ %i.am, %bb.z ], [ %i.al, %bb.y ], [ %i.ak, %bb.x ], [ %i.aj, %bb.w ], [ %i.ai, %bb.v ], [ %i.ah, %bb.u ], [ %i.ag, %bb.t ], [ %i.af, %bb.s ], [ %i.ae, %bb.r ], [ %i.ad, %bb.q ], [ %i.ac, %bb.p ], [ %i.ab, %bb.o ], [ %i.aa, %bb.n ], [ %i.z, %bb.m ], [ %i.aq, %bb.ad ]
  store ptr %.024.i.ph, ptr %i.k, align 8, !tbaa !54
  %i.as = getelementptr i8, ptr %0, i64 80        ; 2 uses
  store i64 %.0.ph.i, ptr %i.as, align 8, !tbaa !66
  %i.at = getelementptr i8, ptr %0, i64 92
  store i32 1, ptr %i.at, align 4, !tbaa !37
  %i.au = sdiv i64 %i.v, %.0.ph.i
  %i.av = getelementptr i8, ptr %0, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !52
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !66
  %i.ay = getelementptr i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !52
  %i.ba = getelementptr i8, ptr %0, i64 120
  store ptr null, ptr %i.ba, align 8, !tbaa !56
  %i.bb = getelementptr i8, ptr %0, i64 40
  store i32 6, ptr %i.bb, align 8, !tbaa !44
  br label %bb.af

bb.af:                                            ; preds = %init_flags.exit, %bb.ae, %bb.k, %bb.i, %bb.e
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.k ], [ -1, %bb.ae ], [ 0, %init_flags.exit ], [ -1, %bb.i ] ; 3 uses
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i, label %bb.ag, label %Py_DECREF.exit

bb.ag:                                            ; preds = %bb.af
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.a, align 8, !tbaa !36
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ah, label %Py_DECREF.exit

bb.ah:                                            ; preds = %bb.ag
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ah, %bb.ag, %bb.af, %bb.a
  %.036 = phi i32 [ -1, %bb.a ], [ %.0, %bb.af ], [ %.0, %bb.ag ], [ %.0, %bb.ah ]
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cast_to_ND(ptr noundef nonnull initializes((92, 96)) %0, ptr noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 92         ; 2 uses
  store i32 %2, ptr %i.b, align 4, !tbaa !37
  %i.c = icmp eq i32 %2, 0
  %i.d = getelementptr i8, ptr %0, i64 104        ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !66
  br label %init_strides_from_shape.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph.i, label %copy_shape.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = getelementptr i8, ptr %1, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %.lr.ph.i
  %.02337.i = phi i64 [ %i.j, %.lr.ph.i ], [ %i.ag, %bb.m ] ; 2 uses
  %.02536.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %bb.m ] ; 3 uses
  %.val29.i = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.o = getelementptr i8, ptr %.val29.i, i64 168
  %.val31.i = load i64, ptr %i.o, align 8, !tbaa !120
  %i.p = and i64 %.val31.i, 33554432
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !138
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.e ], [ %i.n, %bb.d ]
  %.in.i = getelementptr [8 x i8], ptr %.pn.i, i64 %.02536.i
  %i.r = load ptr, ptr %.in.i, align 8, !tbaa !38 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.t = getelementptr i8, ptr %.val.i, i64 168
  %.val30.i = load i64, ptr %i.t, align 8, !tbaa !120
  %i.u = and i64 %.val30.i, 16777216
  %.not27.i = icmp eq i64 %i.u, 0
  br i1 %.not27.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.120) #15
  br label %copy_shape.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.w = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.r) #15 ; 5 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @PyErr_Occurred() #15
  %.not28.i = icmp eq ptr %i.y, null
  br i1 %.not28.i, label %.thread.i, label %copy_shape.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.z = icmp slt i64 %i.w, 1
  br i1 %i.z, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j, %bb.i
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  %i.ab = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.121) #15 ; 0 uses
  br label %copy_shape.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = sdiv i64 9223372036854775807, %.02337.i
  %i.ad = icmp sgt i64 %i.w, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  %i.af = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ae, ptr noundef nonnull @.str.122) #15 ; 0 uses
  br label %copy_shape.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ag = mul i64 %i.w, %.02337.i                 ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.g, i64 %.02536.i
  store i64 %i.w, ptr %i.ah, align 8, !tbaa !52
  %i.ai = add nuw nsw i64 %.02536.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.h
  br i1 %exitcond.not.i, label %copy_shape.exit, label %bb.d, !llvm.loop !144

copy_shape.exit:                                  ; preds = %bb.m, %bb.c
  %.2.i = phi i64 [ %i.j, %bb.c ], [ %i.ag, %bb.m ] ; 4 uses
  %i.aj = icmp slt i64 %.2.i, 0
  br i1 %i.aj, label %copy_shape.exit.thread, label %bb.n

bb.n:                                             ; preds = %copy_shape.exit
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !66
  %i.al = getelementptr i8, ptr %0, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65 ; 10 uses
  %i.an = load i32, ptr %i.b, align 4, !tbaa !37  ; 5 uses
  %i.ao = add i32 %i.an, -1
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr [8 x i8], ptr %i.am, i64 %i.ap
  store i64 %i.ak, ptr %i.aq, align 8, !tbaa !52
  %i.ar = add i32 %i.an, -2                       ; 3 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %.lr.ph.i19, label %init_strides_from_shape.exit

.lr.ph.i19:                                       ; preds = %bb.n
  %i.at = zext nneg i32 %i.ar to i64              ; 4 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !64  ; 5 uses
  %i.av = shl nuw nsw i64 %i.at, 3
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.aw, i64 8
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %i.ax = add nuw nsw i64 %i.at, 1
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i19, %.prol.preheader
  %store_forwarded.prol = phi i64 [ %i.bb, %.prol.preheader ], [ %load_initial, %.lr.ph.i19 ]
  %.011.i.prol = phi i64 [ %i.bd, %.prol.preheader ], [ %i.at, %.lr.ph.i19 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i19 ]
  %i.ay = getelementptr [8 x i8], ptr %i.au, i64 %.011.i.prol
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !52
  %i.bb = mul i64 %i.ba, %store_forwarded.prol    ; 3 uses
  %i.bc = getelementptr [8 x i8], ptr %i.am, i64 %.011.i.prol
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !52
  %i.bd = add nsw i64 %.011.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !145

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i19
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph.i19 ], [ %i.bb, %.prol.preheader ]
  %.011.i.unr = phi i64 [ %i.at, %.lr.ph.i19 ], [ %i.bd, %.prol.preheader ]
  %i.be = icmp ult i32 %i.ar, 3
  br i1 %i.be, label %init_strides_from_shape.exit, label %.lr.ph.i19.new

.lr.ph.i19.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i19.new
  %store_forwarded = phi i64 [ %i.ca, %.lr.ph.i19.new ], [ %store_forwarded.unr, %.prol.loopexit ]
  %.011.i = phi i64 [ %i.cc, %.lr.ph.i19.new ], [ %.011.i.unr, %.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr [8 x i8], ptr %i.au, i64 %.011.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !52
  %i.bi = mul i64 %i.bh, %store_forwarded         ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.am, i64 %.011.i
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !52
  %i.bk = add nsw i64 %.011.i, -1                 ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.au, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !52
  %i.bo = mul i64 %i.bn, %i.bi                    ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.am, i64 %i.bk
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !52
  %i.bq = add nsw i64 %.011.i, -2                 ; 2 uses
end_hunk_1
