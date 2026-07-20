inline.NumInlined: 80
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%struct.gc_generation = type { %struct.PyGC_Head, i32, i32 }
%struct.gc_generation_stats = type { i64, i64, i64, i64, double }
%struct._import_state = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, %struct._PyRecursiveMutex, %struct.anon.909 }
%struct._PyRecursiveMutex = type { %struct.PyMutex, i64, i64 }
%struct.anon.909 = type { i32, i64, i32 }
%struct._gil_runtime_state = type { i64, ptr, i32, i64, %union.pthread_cond_t, %union.pthread_mutex_t, %union.pthread_cond_t, %union.pthread_mutex_t }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.codecs_state = type { ptr, ptr, ptr, i32 }
%struct.PyConfig = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.PyWideStringList, %struct.PyWideStringList, %struct.PyWideStringList, %struct.PyWideStringList, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.PyWideStringList, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct._PyXI_state_t = type { %struct._xid_lookup_state, %struct.xi_exceptions }
%struct.xi_exceptions = type { ptr, ptr, ptr }
%struct._warnings_runtime_state = type { ptr, ptr, ptr, %struct._PyRecursiveMutex, i64, ptr }
%struct.atexit_state = type { ptr, ptr }
%struct._qsbr_shared = type { i64, i64, ptr, ptr, i64, %struct.PyMutex, ptr }
%struct._py_object_state = type { %struct._Py_freelists, i32 }
%struct._Py_freelists = type { %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, [20 x %struct._Py_freelist], %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist, %struct._Py_freelist }
%struct._Py_freelist = type { ptr, i64 }
%struct._Py_unicode_state = type { %struct._Py_unicode_fs_codec, ptr, %struct._Py_unicode_ids }
%struct._Py_unicode_fs_codec = type { ptr, i32, ptr, i32 }
%struct._Py_unicode_ids = type { i64, ptr }
%struct._Py_long_state = type { i32 }
%struct._dtoa_state = type { [8 x ptr], [8 x ptr], [288 x double], ptr }
%struct._py_func_state = type { i32, [4096 x %struct._func_version_cache_item] }
%struct._func_version_cache_item = type { ptr, ptr }
%struct._py_code_state = type { %struct.PyMutex, ptr }
%struct._Py_dict_state = type { i32, [8 x ptr] }
%struct._Py_exc_state = type { ptr, ptr, i32, ptr }
%struct._Py_mem_interp_free_queue = type { i32, %struct.PyMutex, %struct.llist_node }
%struct.ast_state = type { %struct._PyOnceFlag, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.types_state = type { i32, %struct.type_cache, %struct.anon.911, %struct.anon.912, %struct.PyMutex, [4096 x ptr] }
%struct.type_cache = type { [4096 x %struct.type_cache_entry] }
%struct.type_cache_entry = type { i32, ptr, ptr }
%struct.anon.911 = type { i64, [202 x %struct.managed_static_type_state] }
%struct.managed_static_type_state = type { ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.912 = type { i64, i64, [10 x %struct.managed_static_type_state] }
%struct.callable_cache = type { ptr, ptr, ptr, ptr }
%struct._PyOptimizationConfig = type { i16, i16, i16, i16, i8, i8 }
%struct._rare_events = type { i8, i8, i8, i8, i8 }
%struct._Py_GlobalMonitors = type { [16 x i8] }
%struct._PyOnceFlag = type { i8 }
%struct._Py_interp_cached_objects = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Py_interp_static_objects = type { %struct.anon.913 }
%struct.anon.913 = type { i32, %struct.PyGC_Head, %struct.PyHamtObject, %struct.PyBaseExceptionObject }
%struct.PyHamtObject = type { %struct._object, ptr, ptr, i64 }
%struct.PyBaseExceptionObject = type { %struct._object, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._PyThreadStateImpl = type { %struct._ts, %struct._PyInterpreterFrame, i64, i64, i64, i64, i64, i64, ptr, ptr, i32, %struct.llist_node, ptr, %struct.llist_node }
%struct._ts = type { ptr, ptr, ptr, i64, %struct.anon.914, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, ptr, i64, i32, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, %struct._err_stackitem, ptr, ptr, i64, ptr, ptr, %struct._PyRemoteDebuggerSupport }
%struct.anon.914 = type { i32 }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyRemoteDebuggerSupport = type { i32, [512 x i8] }
%struct._PyInterpreterFrame = type { %union._PyStackRef, ptr, %union._PyStackRef, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, [1 x %union._PyStackRef] }
%union._PyStackRef = type { i64 }
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i16 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ffi_cif = type { i32, i32, ptr, ptr, i32, i32 }

@PyExc_RuntimeError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"cannot get thread state\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"_ctypes pymem\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ctypes.error_object is an invalid capsule\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"_ctypes.CArgObject\00", align 1
@carg_spec = hidden local_unnamed_addr global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.3, i32 80, i32 0, i32 16768, [4 x i8] zeroinitializer, ptr @carg_slots }, align 8
@ffi_type_sint32 = external global %struct._ffi_type, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ctypes.call_function\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"kO\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"too many arguments (%zi), maximum is %i\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"argument %zd: \00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@ffi_type_void = external global %struct._ffi_type, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"__getattr__\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"get_errno\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"set_errno\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"_unpickle\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"buffer_info\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Return buffer interface information\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@_ctypes_resize__doc__ = internal constant [35 x i8] c"resize($module, obj, size, /)\0A--\0A\0A\00", align 16
@.str.17 = private unnamed_addr constant [7 x i8] c"dlopen\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"dlopen(name, flag={RTLD_GLOBAL|RTLD_LOCAL}) open a shared library\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"dlclose\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"dlclose a library\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"dlsym\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"find symbol in shared library\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@alignment_doc = internal constant [112 x i8] c"alignment(C type) -> integer\0Aalignment(C instance) -> integer\0AReturn the alignment requirements of a C instance\00", align 16
@.str.24 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@_ctypes_sizeof__doc__ = internal constant [70 x i8] c"sizeof($module, obj, /)\0A--\0A\0AReturn the size in bytes of a C instance.\00", align 16
@.str.25 = private unnamed_addr constant [6 x i8] c"byref\00", align 1
@_ctypes_byref__doc__ = internal constant [115 x i8] c"byref($module, obj, offset=0, /)\0A--\0A\0AReturn a pointer lookalike to a C instance, only usable as function argument.\00", align 16
@.str.26 = private unnamed_addr constant [10 x i8] c"addressof\00", align 1
@_ctypes_addressof__doc__ = internal constant [84 x i8] c"addressof($module, obj, /)\0A--\0A\0AReturn the address of the C instance internal buffer\00", align 16
@.str.27 = private unnamed_addr constant [14 x i8] c"call_function\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"call_cdeclfunction\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"PyObj_FromPtr\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Py_INCREF\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Py_DECREF\00", align 1
@_ctypes_module_methods = hidden local_unnamed_addr global [19 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.10, ptr @_ctypes_getattr, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.11, ptr @get_errno, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.12, ptr @set_errno, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.13, ptr @unpickle, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.14, ptr @buffer_info, i32 8, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.16, ptr @_ctypes_resize, i32 128, [4 x i8] zeroinitializer, ptr @_ctypes_resize__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.17, ptr @py_dl_open, i32 1, [4 x i8] zeroinitializer, ptr @.str.18 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.19, ptr @py_dl_close, i32 1, [4 x i8] zeroinitializer, ptr @.str.20 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.21, ptr @py_dl_sym, i32 1, [4 x i8] zeroinitializer, ptr @.str.22 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.23, ptr @align_func, i32 8, [4 x i8] zeroinitializer, ptr @alignment_doc }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.24, ptr @_ctypes_sizeof, i32 8, [4 x i8] zeroinitializer, ptr @_ctypes_sizeof__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.25, ptr @_ctypes_byref, i32 128, [4 x i8] zeroinitializer, ptr @_ctypes_byref__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.26, ptr @_ctypes_addressof, i32 8, [4 x i8] zeroinitializer, ptr @_ctypes_addressof__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.27, ptr @call_function, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.28, ptr @call_cdeclfunction, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.29, ptr @My_PyObj_FromPtr, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.30, ptr @My_Py_INCREF, i32 8, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.31, ptr @My_Py_DECREF, i32 8, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@carg_slots = internal global [6 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @PyCArg_dealloc }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @PyCArg_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @PyCArg_clear }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @PyCArg_repr }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @PyCArgType_members }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [19 x i8] c"<cparam '%c' (%d)>\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"<cparam '%c' (%ld)>\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"<cparam '%c' (%lld)>\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"<cparam '%c' (%R)>\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"<cparam '%c' ('%c')>\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"<cparam '%c' ('\\x%02x')>\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"<cparam '%c' (%p)>\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"<cparam '%c' at %p>\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"<cparam 0x%02x at %p>\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"_obj\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"the wrapped object\00", align 1
@PyCArgType_members = internal global [2 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.42, i32 6, [4 x i8] zeroinitializer, i64 64, i32 1, [4 x i8] zeroinitializer, ptr @.str.43 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@ffi_type_pointer = external global %struct._ffi_type, align 8
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [24 x i8] c"int too long to convert\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [39 x i8] c"Don't know how to convert parameter %d\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"ffi_prep_cif_var failed\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"ffi_prep_cif failed\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"GetResult\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"_ctypes/callproc.c\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"__version__\00", align 1
@PyExc_DeprecationWarning = external local_unnamed_addr global ptr, align 8
@.str.55 = private unnamed_addr constant [66 x i8] c"'__version__' is deprecated and slated for removal in Python 3.20\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"1.1.0\00", align 1
@PyExc_AttributeError = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [37 x i8] c"module '_ctypes' has no attribute %R\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"ctypes.get_errno\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"ctypes.set_errno\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"OO!\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.61 = private unnamed_addr constant [28 x i8] c"not a ctypes type or object\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"siN\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"argument 1\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"expected ctypes instance\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.65 = private unnamed_addr constant [20 x i8] c"minimum size is %zd\00", align 1
@.str.66 = private unnamed_addr constant [60 x i8] c"Memory cannot be resized because this object doesn't own it\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"O|i:dlopen\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"ctypes.dlopen\00", align 1
@PyExc_OSError = external local_unnamed_addr global ptr, align 8
@.str.69 = private unnamed_addr constant [15 x i8] c"dlopen() error\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"O&:dlclose\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"dlclose() error\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"O&s:dlsym\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"ctypes.dlsym/handle\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"symbol '%s' not found\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"no alignment info\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"this type has no size\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"ctypes.addressof\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"(O)\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"O&O!\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"O&:PyObj_FromPtr\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"ctypes.PyObj_FromPtr\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @_ctypes_get_errobj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = tail call ptr @PyThreadState_GetDict() #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str) #10
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = call i32 @PyDict_GetItemRef(ptr noundef nonnull %i.b, ptr noundef %i.f, ptr noundef nonnull %i.a) #10
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @PyCapsule_IsValid(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.1) #10
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.2) #10
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %.not.i15 = icmp slt i32 %i.m, 0
  br i1 %.not.i15, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !16
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.l) #10
  br label %.critedge

bb.i:                                             ; preds = %bb.d
  %i.p = call ptr @PyMem_Calloc(i64 noundef 2, i64 noundef 4) #10 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call ptr @PyCapsule_New(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.1, ptr noundef nonnull @pymem_destructor) #10 ; 3 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !10
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @PyMem_Free(ptr noundef nonnull %i.p) #10
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.u = call i32 @PyDict_SetItem(ptr noundef nonnull %i.b, ptr noundef %i.t, ptr noundef nonnull %i.r) #10
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp slt i32 %i.x, 0
  br i1 %.not.i, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !16
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.w) #10
  br label %.critedge

bb.p:                                             ; preds = %bb.l, %bb.e
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ab = call ptr @PyCapsule_GetPointer(ptr noundef %i.aa, ptr noundef nonnull @.str.1) #10
  store ptr %i.ab, ptr %1, align 8, !tbaa !17
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.n, %bb.m, %bb.h, %bb.g, %bb.f, %bb.i, %bb.k, %bb.c, %bb.p, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.ac, %bb.p ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.k ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @PyThreadState_GetDict() local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyCapsule_IsValid(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyCapsule_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @pymem_destructor(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef nonnull @.str.1) #10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMem_Free(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @PyCapsule_GetPointer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @PyCArgObject_new(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = tail call ptr @_PyObject_GC_New(ptr noundef %i.b) #10 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 16
  store ptr null, ptr %i.e, align 16, !tbaa !20
  %i.f = getelementptr i8, ptr %i.c, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr i8, ptr %i.c, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.c) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @_ctypes_get_ffi_type(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %1, ptr noundef %i.c) #10
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %PyStgInfo_FromType.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.f = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %1, ptr noundef %i.e) #10 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %.not8.i.i = icmp eq i32 %i.g, 0
  %spec.select = select i1 %.not8.i.i, ptr null, ptr %i.f
  br label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.c, %bb.b
  %.06 = phi ptr [ null, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.h = icmp eq ptr %.06, null
  %i.i = getelementptr i8, ptr %.06, i64 32
  %.0 = select i1 %i.h, ptr @ffi_type_sint32, ptr %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %PyStgInfo_FromType.exit
  %.1 = phi ptr [ %.0, %PyStgInfo_FromType.exit ], [ @ffi_type_sint32, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @_ctypes_extend_error(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call ptr @PyUnicode_FromFormatV(ptr noundef %1, ptr noundef nonnull %2) #10 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !10
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_XDECREF.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @PyErr_GetRaisedException() #10 ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.f = call ptr @PyType_GetName(ptr noundef %.val) #10 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @PyUnicode_AppendAndDel(ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #10
  %i.g = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.4) #10
  call void @PyUnicode_AppendAndDel(ptr noundef nonnull %i.a, ptr noundef %i.g) #10
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @PyErr_Clear() #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = call ptr @PyObject_Str(ptr noundef nonnull %i.d) #10 ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @PyErr_Clear() #10
  %i.k = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.5) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi ptr [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  call void @PyUnicode_AppendAndDel(ptr noundef nonnull %i.a, ptr noundef %.sink) #10
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @PyErr_SetObject(ptr noundef %0, ptr noundef nonnull %i.l) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c, %bb.g
  %i.n = load i32, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp slt i32 %i.n, 0
  br i1 %.not.i.i, label %Py_XDECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.d, align 8, !tbaa !16
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.j
  call void @_Py_Dealloc(ptr noundef nonnull %i.d) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.i, %bb.j, %bb.k
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %.not.i12 = icmp eq ptr %i.q, null
  br i1 %.not.i12, label %Py_XDECREF.exit14, label %bb.l

bb.l:                                             ; preds = %Py_XDECREF.exit
  %i.r = load i32, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.not.i.i13 = icmp slt i32 %i.r, 0
  br i1 %.not.i.i13, label %Py_XDECREF.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !16
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.n, label %Py_XDECREF.exit14

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #10
  br label %Py_XDECREF.exit14

Py_XDECREF.exit14:                                ; preds = %bb.n, %bb.m, %bb.l, %Py_XDECREF.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

declare ptr @PyUnicode_FromFormatV(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

declare ptr @PyErr_GetRaisedException() local_unnamed_addr #2

declare ptr @PyType_GetName(ptr noundef) local_unnamed_addr #2

declare void @PyUnicode_AppendAndDel(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #2

declare void @PyErr_Clear() local_unnamed_addr #2

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #2

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @_ctypes_callproc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %struct.ffi_cif, align 8            ; 7 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef %i.b, ptr noundef %2) #10
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 16
  %.val110 = load i64, ptr %i.e, align 8, !tbaa !36 ; 14 uses
  %i.f = icmp sgt i64 %.val110, 1024
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.8, i64 noundef %.val110, i32 noundef 1024) #10 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = mul i64 %.val110, 48                     ; 2 uses
  %i.k = alloca i8, i64 %i.j, align 16            ; 7 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.k, i8 0, i64 %i.j, i1 false)
  %.not.not = icmp eq ptr %4, null
  br i1 %.not.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = icmp sgt i64 %.val110, 0
  br i1 %i.l, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.d
  %i.m = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.m, align 8, !tbaa !36  ; 3 uses
  %i.n = icmp sgt i64 %.val110, 0
  br i1 %i.n, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.o = getelementptr i8, ptr %2, i64 32
  %i.p = getelementptr i8, ptr %4, i64 32
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.e
  %i.q = getelementptr i8, ptr %2, i64 32
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.f
  %.095139.us = phi i64 [ %i.t, %bb.f ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.096138.us = phi ptr [ %i.w, %bb.f ], [ %i.k, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %.095139.us
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.t = add nuw nsw i64 %.095139.us, 1           ; 4 uses
  %i.u = call fastcc i32 @ConvParam(ptr noundef %0, ptr noundef %i.s, i64 noundef %i.t, ptr noundef %.096138.us)
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %.lr.ph144.preheader.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.w = getelementptr i8, ptr %.096138.us, i64 48
  %exitcond153.not = icmp eq i64 %i.t, %.val110
  br i1 %exitcond153.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !39

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.n
  %.095139 = phi i64 [ %.pre-phi, %bb.n ], [ 0, %.lr.ph.split.preheader ] ; 6 uses
  %.096138 = phi ptr [ %i.au, %bb.n ], [ %i.k, %.lr.ph.split.preheader ] ; 3 uses
  %i.x = getelementptr [8 x i8], ptr %i.o, i64 %.095139
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10   ; 2 uses
  %i.z = icmp sgt i64 %.val, %.095139
  br i1 %i.z, label %bb.g, label %bb.m

bb.g:                                             ; preds = %.lr.ph.split
  %i.aa = getelementptr [8 x i8], ptr %i.p, i64 %.095139
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ac = tail call ptr @PyObject_CallOneArg(ptr noundef %i.ab, ptr noundef %i.y) #10 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ag = add nuw nsw i64 %.095139, 1
  tail call void (ptr, ptr, ...) @_ctypes_extend_error(ptr noundef %i.af, ptr noundef nonnull @.str.9, i64 noundef %i.ag)
  br label %.lr.ph144.preheader

bb.i:                                             ; preds = %bb.g
  %i.ah = add nuw nsw i64 %.095139, 1             ; 3 uses
  %i.ai = call fastcc i32 @ConvParam(ptr noundef %0, ptr noundef nonnull %i.ac, i64 noundef %i.ah, ptr noundef %.096138)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp slt i32 %i.aj, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !16
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.j, %bb.k
  %i.am = icmp eq i32 %i.ai, -1
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %Py_DECREF.exit
  %i.an = getelementptr i8, ptr %0, i64 176
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_ctypes_extend_error(ptr noundef %i.ao, ptr noundef nonnull @.str.9, i64 noundef %i.ah)
  br label %.lr.ph144.preheader

bb.m:                                             ; preds = %.lr.ph.split
  %i.ap = add nuw nsw i64 %.095139, 1             ; 3 uses
  %i.aq = call fastcc i32 @ConvParam(ptr noundef %0, ptr noundef %i.y, i64 noundef %i.ap, ptr noundef %.096138)
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %.split.us, label %bb.n

.split.us:                                        ; preds = %bb.m
  %i.as = getelementptr i8, ptr %0, i64 176
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_ctypes_extend_error(ptr noundef %i.at, ptr noundef nonnull @.str.9, i64 noundef %i.ap)
  br label %.lr.ph144.preheader

bb.n:                                             ; preds = %Py_DECREF.exit, %bb.m
  %.pre-phi = phi i64 [ %i.ah, %Py_DECREF.exit ], [ %i.ap, %bb.m ] ; 2 uses
  %i.au = getelementptr i8, ptr %.096138, i64 48
  %exitcond.not = icmp eq i64 %.pre-phi, %.val110
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.n, %bb.f, %.thread, %bb.e
  %i.av = phi i1 [ false, %.thread ], [ true, %bb.f ], [ false, %bb.e ], [ true, %bb.n ] ; 6 uses
  %i.aw = phi i64 [ %.val, %.thread ], [ 0, %bb.f ], [ 0, %bb.e ], [ %.val, %bb.n ]
  %i.ax = icmp eq ptr %5, @_Py_NoneStruct         ; 2 uses
  br i1 %i.ax, label %_ctypes_get_ffi_type.exit.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ay = icmp eq ptr %5, null
  br i1 %i.ay, label %_ctypes_get_ffi_type.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bb = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %5, ptr noundef %i.ba) #10
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %_ctypes_get_ffi_type.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bd = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %5, ptr noundef %i.bc) #10 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !27
  %.not8.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not8.i.i.i, label %_ctypes_get_ffi_type.exit.thread, label %_ctypes_get_ffi_type.exit

_ctypes_get_ffi_type.exit:                        ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %i.bd, i64 32     ; 2 uses
  %.not108 = icmp eq ptr %i.bf, null
  br i1 %.not108, label %GetResult.exit, label %_ctypes_get_ffi_type.exit.thread

_ctypes_get_ffi_type.exit.thread:                 ; preds = %bb.q, %bb.p, %bb.o, %._crit_edge, %_ctypes_get_ffi_type.exit
  %.0100130 = phi ptr [ %i.bf, %_ctypes_get_ffi_type.exit ], [ @ffi_type_void, %._crit_edge ], [ @ffi_type_sint32, %bb.o ], [ @ffi_type_sint32, %bb.p ], [ @ffi_type_sint32, %bb.q ] ; 3 uses
  %i.bg = load i64, ptr %.0100130, align 8, !tbaa !41
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 8)
  %i.bh = alloca i8, i64 %spec.select, align 16   ; 6 uses
  %i.bi = shl i64 %.val110, 3                     ; 2 uses
  %i.bj = alloca i8, i64 %i.bi, align 16          ; 5 uses
  %i.bk = alloca i8, i64 %i.bi, align 16          ; 5 uses
  br i1 %i.av, label %.lr.ph141.preheader, label %._crit_edge142

.lr.ph141.preheader:                              ; preds = %_ctypes_get_ffi_type.exit.thread
  %i.bl = icmp eq i64 %.val110, 1
  br i1 %i.bl, label %.lr.ph141.epil.preheader, label %.lr.ph141.preheader.new

.lr.ph141.preheader.new:                          ; preds = %.lr.ph141.preheader
  %unroll_iter = and i64 %.val110, -2
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.t, %.lr.ph141.preheader.new
  %.1140 = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %i.cf, %bb.t ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %niter.next.1, %bb.t ]
  %i.bm = getelementptr [48 x i8], ptr %i.k, i64 %.1140 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !42 ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bk, i64 %.1140
  store ptr %i.bn, ptr %i.bo, align 16, !tbaa !44
  %i.bp = getelementptr i8, ptr %i.bn, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !45
  %i.br = icmp eq i16 %i.bq, 13
  %i.bs = getelementptr i8, ptr %i.bm, i64 16     ; 2 uses
  br i1 %i.br, label %bb.r, label %.lr.ph141.1

bb.r:                                             ; preds = %.lr.ph141
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !16
  br label %.lr.ph141.1

.lr.ph141.1:                                      ; preds = %.lr.ph141, %bb.r
  %.sink = phi ptr [ %i.bt, %bb.r ], [ %i.bs, %.lr.ph141 ]
  %i.bu = getelementptr [8 x i8], ptr %i.bj, i64 %.1140
  store ptr %.sink, ptr %i.bu, align 16, !tbaa !46
  %i.bv = or disjoint i64 %.1140, 1               ; 3 uses
  %i.bw = getelementptr [48 x i8], ptr %i.k, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 16, !tbaa !42 ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.bk, i64 %i.bv
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !44
  %i.bz = getelementptr i8, ptr %i.bx, i64 10
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !45
  %i.cb = icmp eq i16 %i.ca, 13
  %i.cc = getelementptr i8, ptr %i.bw, i64 16     ; 2 uses
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph141.1
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph141.1
  %.sink.1 = phi ptr [ %i.cd, %bb.s ], [ %i.cc, %.lr.ph141.1 ]
  %i.ce = getelementptr [8 x i8], ptr %i.bj, i64 %i.bv
  store ptr %.sink.1, ptr %i.ce, align 8, !tbaa !46
  %i.cf = add nuw nsw i64 %.1140, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge142.loopexit.unr-lcssa, label %.lr.ph141, !llvm.loop !47

._crit_edge142.loopexit.unr-lcssa:                ; preds = %bb.t
  %lcmp.mod.not = trunc nuw i64 %.val110 to i1
  br i1 %lcmp.mod.not, label %.lr.ph141.epil.preheader, label %._crit_edge142

.lr.ph141.epil.preheader:                         ; preds = %._crit_edge142.loopexit.unr-lcssa, %.lr.ph141.preheader
  %.1140.epil.init = phi i64 [ 0, %.lr.ph141.preheader ], [ %i.cf, %._crit_edge142.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod198 = trunc nuw i64 %.val110 to i1
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.cg = getelementptr [48 x i8], ptr %i.k, i64 %.1140.epil.init ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !42 ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.bk, i64 %.1140.epil.init
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !44
  %i.cj = getelementptr i8, ptr %i.ch, i64 10
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !45
  %i.cl = icmp eq i16 %i.ck, 13
  %i.cm = getelementptr i8, ptr %i.cg, i64 16     ; 2 uses
  br i1 %i.cl, label %bb.u, label %._crit_edge142.loopexit.epilog-lcssa

bb.u:                                             ; preds = %.lr.ph141.epil.preheader
  %i.cn = load ptr, ptr %i.cm, align 16, !tbaa !16
  br label %._crit_edge142.loopexit.epilog-lcssa

._crit_edge142.loopexit.epilog-lcssa:             ; preds = %bb.u, %.lr.ph141.epil.preheader
  %.sink.epil = phi ptr [ %i.cn, %bb.u ], [ %i.cm, %.lr.ph141.epil.preheader ]
  %i.co = getelementptr [8 x i8], ptr %i.bj, i64 %.1140.epil.init
  store ptr %.sink.epil, ptr %i.co, align 8, !tbaa !46
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit.epilog-lcssa, %._crit_edge142.loopexit.unr-lcssa, %_ctypes_get_ffi_type.exit.thread
  %i.cp = trunc i64 %.val110 to i32               ; 3 uses
  %i.cq = trunc i64 %i.aw to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = icmp sgt i32 %i.cp, %i.cq
  %i.ct = and i1 %i.cr, %i.cs
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge142
  %i.cu = call i32 @ffi_prep_cif_var(ptr noundef nonnull %7, i32 noundef 2, i32 noundef %i.cq, i32 noundef %i.cp, ptr noundef nonnull %.0100130, ptr noundef nonnull %i.bk) #10
  %.not35.i = icmp eq i32 %i.cu, 0
  br i1 %.not35.i, label %bb.x, label %_call_function_pointer.exit.thread.sink.split

bb.w:                                             ; preds = %._crit_edge142
  %i.cv = call i32 @ffi_prep_cif(ptr noundef nonnull %7, i32 noundef 2, i32 noundef %i.cp, ptr noundef nonnull %.0100130, ptr noundef nonnull %i.bk) #10
  %.not.i111 = icmp eq i32 %i.cv, 0
  br i1 %.not.i111, label %bb.x, label %_call_function_pointer.exit.thread.sink.split

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cw = and i32 %3, 24
  %.not36.i = icmp eq i32 %i.cw, 0
  br i1 %.not36.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = call ptr @_ctypes_get_errobj(ptr noundef readonly %0, ptr noundef nonnull %i.a) ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_call_function_pointer.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.030.i = phi ptr [ %i.cx, %bb.y ], [ null, %bb.x ] ; 4 uses
  %i.cz = and i32 %3, 4
  %i.da = icmp eq i32 %i.cz, 0                    ; 3 uses
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = call ptr @PyEval_SaveThread() #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.029.i = phi ptr [ %i.db, %bb.aa ], [ null, %bb.z ]
  %i.dc = and i32 %3, 8
  %.not37.i = icmp eq i32 %i.dc, 0
  br i1 %.not37.i, label %.critedge.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !6
  %i.df = tail call ptr @__errno_location() #11   ; 4 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !6
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !6
  store i32 %i.de, ptr %i.df, align 4, !tbaa !6
  call void @ffi_call(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bj) #10
  %i.dh = load i32, ptr %i.dd, align 4, !tbaa !6
  %i.di = load i32, ptr %i.df, align 4, !tbaa !6
  store i32 %i.di, ptr %i.dd, align 4, !tbaa !6
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !6
  br label %bb.ad

.critedge.i:                                      ; preds = %bb.ab
  call void @ffi_call(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bj) #10
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge.i, %bb.ac
  br i1 %i.da, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @PyEval_RestoreThread(ptr noundef %.029.i) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not.i.i = icmp eq ptr %.030.i, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = load i32, ptr %.030.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i113 = icmp slt i32 %i.dj, 0
  br i1 %.not.i.i.i113, label %Py_XDECREF.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %.030.i, align 8, !tbaa !16
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ai, label %Py_XDECREF.exit.i

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %.030.i) #10
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  br i1 %i.da, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %Py_XDECREF.exit.i
  %i.dm = call ptr @PyErr_Occurred() #10
  %.not39.i = icmp eq ptr %i.dm, null
  br i1 %.not39.i, label %bb.ak, label %_call_function_pointer.exit.thread

_call_function_pointer.exit.thread.sink.split:    ; preds = %bb.w, %bb.v
  %.str.48.sink = phi ptr [ @.str.48, %bb.v ], [ @.str.49, %bb.w ]
  %i.dn = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.dn, ptr noundef nonnull %.str.48.sink) #10
  br label %_call_function_pointer.exit.thread

_call_function_pointer.exit.thread:               ; preds = %_call_function_pointer.exit.thread.sink.split, %bb.y, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.av, label %.lr.ph144.preheader, label %.loopexit

bb.ak:                                            ; preds = %bb.aj, %Py_XDECREF.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.do = icmp eq ptr %5, null
  br i1 %i.do, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dp = load i32, ptr %i.bh, align 16, !tbaa !6
  %i.dq = sext i32 %i.dp to i64
  %i.dr = call ptr @PyLong_FromLong(i64 noundef %i.dq) #10 ; 2 uses
  br i1 %i.av, label %.lr.ph144.preheader, label %.loopexit

bb.am:                                            ; preds = %bb.ak
  br i1 %i.ax, label %GetResult.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !26
  %i.du = call i32 @PyObject_IsInstance(ptr noundef nonnull %5, ptr noundef %i.dt) #10
  %.not.i.i.i114 = icmp eq i32 %i.du, 0
  br i1 %.not.i.i.i114, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !26
  %i.dw = call ptr @PyObject_GetTypeData(ptr noundef nonnull %5, ptr noundef %i.dv) #10 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !27
  %.not8.i.i.i115 = icmp eq i32 %i.dx, 0
  br i1 %.not8.i.i.i115, label %bb.ap, label %PyStgInfo_FromType.exit.i116

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dy = load i32, ptr %i.bh, align 16, !tbaa !6
  %i.dz = call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %5, ptr noundef nonnull @.str.50, i32 noundef %i.dy) #10 ; 2 uses
  br i1 %i.av, label %.lr.ph144.preheader, label %.loopexit

PyStgInfo_FromType.exit.i116:                     ; preds = %bb.ao
  %i.ea = getelementptr i8, ptr %i.dw, i64 72     ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !48
  %.not.i117 = icmp eq ptr %i.eb, null
  br i1 %.not.i117, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %PyStgInfo_FromType.exit.i116
  %i.ec = call i32 @_ctypes_simple_instance(ptr noundef nonnull %0, ptr noundef nonnull %5) #10
  %.not28.i = icmp eq i32 %i.ec, 0
  br i1 %.not28.i, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !48
  %i.ee = getelementptr i8, ptr %i.dw, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !49
  %i.eg = call ptr %i.ed(ptr noundef nonnull %i.bh, i64 noundef %i.ef) #10, !inline_history !50 ; 8 uses
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !48
  %i.ei = call ptr @_ctypes_get_fielddesc(ptr noundef nonnull @.str.51) #10
  %i.ej = getelementptr i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !51
  %i.el = icmp eq ptr %i.eh, %i.ek
  br i1 %i.el, label %bb.as, label %Py_XDECREF.exit.i118

bb.as:                                            ; preds = %bb.ar
  %.not.i29.i = icmp eq ptr %i.eg, null
  br i1 %.not.i29.i, label %GetResult.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.em = load i32, ptr %i.eg, align 8, !tbaa !16 ; 2 uses
  %.not.i.i30.i = icmp slt i32 %i.em, 0
  br i1 %.not.i.i30.i, label %Py_XDECREF.exit.i118, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.eg, align 8, !tbaa !16
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.av, label %Py_XDECREF.exit.i118

bb.av:                                            ; preds = %bb.au
  call void @_Py_Dealloc(ptr noundef nonnull %i.eg) #10
  br label %Py_XDECREF.exit.i118

bb.aw:                                            ; preds = %bb.aq, %PyStgInfo_FromType.exit.i116
  %i.ep = call ptr @PyCData_FromBaseObj(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.bh) #10
  br label %Py_XDECREF.exit.i118

Py_XDECREF.exit.i118:                             ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ar
  %.024.i = phi ptr [ %i.ep, %bb.aw ], [ %i.eg, %bb.ar ], [ %i.eg, %bb.av ], [ %i.eg, %bb.at ], [ %i.eg, %bb.au ] ; 6 uses
  %i.eq = icmp ne ptr %6, null
  %i.er = icmp ne ptr %.024.i, null
  %or.cond.i = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond.i, label %bb.ax, label %GetResult.exit

bb.ax:                                            ; preds = %Py_XDECREF.exit.i118
  %i.es = call ptr @PyObject_CallOneArg(ptr noundef nonnull %6, ptr noundef nonnull %.024.i) #10 ; 5 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @_PyTraceback_Add(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 1028) #10
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.eu = load i32, ptr %.024.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i120 = icmp slt i32 %i.eu, 0
  br i1 %.not.i.i120, label %GetResult.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %.024.i, align 8, !tbaa !16
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.bb, label %GetResult.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %.024.i) #10
  br i1 %i.av, label %.lr.ph144.preheader, label %.loopexit

GetResult.exit:                                   ; preds = %bb.ba, %bb.az, %Py_XDECREF.exit.i118, %bb.as, %bb.am, %_ctypes_get_ffi_type.exit
  %.099 = phi ptr [ null, %_ctypes_get_ffi_type.exit ], [ %i.es, %bb.ba ], [ %i.es, %bb.az ], [ null, %bb.as ], [ %.024.i, %Py_XDECREF.exit.i118 ], [ @_Py_NoneStruct, %bb.am ] ; 2 uses
  br i1 %i.av, label %.lr.ph144.preheader, label %.loopexit

.lr.ph144.preheader.critedge:                     ; preds = %.lr.ph.split.us
  %i.ex = getelementptr i8, ptr %0, i64 176
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_ctypes_extend_error(ptr noundef %i.ey, ptr noundef nonnull @.str.9, i64 noundef %i.t)
  br label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %bb.h, %bb.l, %.split.us, %.lr.ph144.preheader.critedge, %bb.ap, %bb.bb, %bb.al, %_call_function_pointer.exit.thread, %GetResult.exit
  %.099174 = phi ptr [ null, %_call_function_pointer.exit.thread ], [ %.099, %GetResult.exit ], [ null, %bb.l ], [ null, %bb.h ], [ null, %.split.us ], [ %i.dr, %bb.al ], [ %i.es, %bb.bb ], [ %i.dz, %bb.ap ], [ null, %.lr.ph144.preheader.critedge ]
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %Py_XDECREF.exit
  %.2143 = phi i64 [ %i.ff, %Py_XDECREF.exit ], [ 0, %.lr.ph144.preheader ] ; 2 uses
  %i.ez = getelementptr [48 x i8], ptr %i.k, i64 %.2143
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !53 ; 4 uses
  %.not.i121 = icmp eq ptr %i.fb, null
  br i1 %.not.i121, label %Py_XDECREF.exit, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph144
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !16 ; 2 uses
  %.not.i.i122 = icmp slt i32 %i.fc, 0
  br i1 %.not.i.i122, label %Py_XDECREF.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fd = add nsw i32 %i.fc, -1                   ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !16
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.be, label %Py_XDECREF.exit

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %i.fb) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.lr.ph144, %bb.bc, %bb.bd, %bb.be
  %i.ff = add nuw nsw i64 %.2143, 1               ; 2 uses
  %exitcond155.not = icmp eq i64 %i.ff, %.val110
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph144, !llvm.loop !54

.loopexit:                                        ; preds = %Py_XDECREF.exit, %bb.ap, %bb.bb, %bb.al, %_call_function_pointer.exit.thread, %GetResult.exit, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.099, %GetResult.exit ], [ %i.dz, %bb.ap ], [ null, %_call_function_pointer.exit.thread ], [ %i.es, %bb.bb ], [ %i.dr, %bb.al ], [ %.099174, %Py_XDECREF.exit ]
  ret ptr %.0
}

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @ConvParam(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 -9223372036854775807, 1025) %2, ptr nofree noundef captures(none) initializes((8, 16)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %3, i64 8          ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val69 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = tail call i32 @PyObject_IsInstance(ptr noundef %.val69, ptr noundef %i.e) #10
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.h = tail call ptr @PyObject_GetTypeData(ptr noundef %.val69, ptr noundef %i.g) #10 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  %.not8.i.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i.i, label %bb.d, label %PyStgInfo_FromObject.exit

PyStgInfo_FromObject.exit:                        ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = tail call ptr %i.k(ptr noundef nonnull %0, ptr noundef nonnull %1) #10 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %PyStgInfo_FromObject.exit
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !20
  store ptr %i.o, ptr %3, align 16, !tbaa !42
  %i.p = getelementptr i8, ptr %3, i64 16
  %i.q = getelementptr i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.p, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  store ptr %i.l, ptr %i.b, align 8, !tbaa !53
  br label %bb.ab

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.r = getelementptr i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %.val70 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  %.not.a = icmp eq ptr %.val70, %i.s
  br i1 %.not.a, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !20
  store ptr %i.u, ptr %3, align 16, !tbaa !42
  %i.v = load i32, ptr %1, align 16, !tbaa !16    ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %_Py_NewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %1, align 16, !tbaa !16
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.e, %bb.f
  store ptr %1, ptr %i.b, align 8, !tbaa !53
  %i.y = getelementptr i8, ptr %3, i64 16
  %i.z = getelementptr i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.y, ptr noundef nonnull align 16 dereferenceable(32) %i.z, i64 32, i1 false)
  br label %bb.ab

bb.g:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %1, @_Py_NoneStruct
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @ffi_type_pointer, ptr %3, align 16, !tbaa !42
  %i.ab = getelementptr i8, ptr %3, i64 16
  store ptr null, ptr %i.ab, align 16, !tbaa !16
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %.val70, i64 168
  %.val73 = load i64, ptr %i.ac, align 8, !tbaa !56 ; 3 uses
  %i.ad = and i64 %.val73, 16777216
  %.not60 = icmp eq i64 %i.ad, 0
  br i1 %.not60, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @ffi_type_sint32, ptr %3, align 16, !tbaa !42
  %i.ae = tail call i64 @PyLong_AsUnsignedLong(ptr noundef %1) #10
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = getelementptr i8, ptr %3, i64 16        ; 2 uses
  store i32 %i.af, ptr %i.ag, align 16, !tbaa !16
  %i.ah = icmp eq i32 %i.af, -1
  br i1 %i.ah, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr @PyErr_Occurred() #10
  %.not65 = icmp eq ptr %i.ai, null
  br i1 %.not65, label %bb.ab, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @PyErr_Clear() #10
  %i.aj = tail call i64 @PyLong_AsLong(ptr noundef %1) #10
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  store i32 %i.ak, ptr %i.ag, align 16, !tbaa !16
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.am = tail call ptr @PyErr_Occurred() #10
  %.not66 = icmp eq ptr %i.am, null
  br i1 %.not66, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.an, ptr noundef nonnull @.str.45) #10
  br label %bb.ab

bb.o:                                             ; preds = %bb.i
  %i.ao = and i64 %.val73, 134217728
  %.not61 = icmp eq i64 %i.ao, 0
  br i1 %.not61, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr @ffi_type_pointer, ptr %3, align 16, !tbaa !42
  %i.ap = tail call ptr @PyBytes_AsString(ptr noundef %1) #10
  %i.aq = getelementptr i8, ptr %3, i64 16
  store ptr %i.ap, ptr %i.aq, align 16, !tbaa !16
  %i.ar = load i32, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.as = icmp ugt i32 %i.ar, -1073741825
  br i1 %i.as, label %_Py_NewRef.exit74, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = add nuw i32 %i.ar, 1
  store i32 %i.at, ptr %1, align 8, !tbaa !16
  br label %_Py_NewRef.exit74

_Py_NewRef.exit74:                                ; preds = %bb.p, %bb.q
  store ptr %1, ptr %i.b, align 8, !tbaa !53
  br label %bb.ab

bb.r:                                             ; preds = %bb.o
  %i.au = and i64 %.val73, 268435456
  %.not62 = icmp eq i64 %i.au, 0
  br i1 %.not62, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr @ffi_type_pointer, ptr %3, align 16, !tbaa !42
  %i.av = tail call ptr @PyUnicode_AsWideCharString(ptr noundef %1, ptr noundef null) #10 ; 3 uses
  %i.aw = getelementptr i8, ptr %3, i64 16        ; 2 uses
  store ptr %i.av, ptr %i.aw, align 16, !tbaa !16
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call ptr @PyCapsule_New(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.1, ptr noundef nonnull @pymem_destructor) #10 ; 2 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !53
  %.not64 = icmp eq ptr %i.ay, null
  br i1 %.not64, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %i.aw, align 16, !tbaa !16
  tail call void @PyMem_Free(ptr noundef %i.az) #10
  br label %bb.ab

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ba = call i32 @PyObject_GetOptionalAttr(ptr noundef %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71744), ptr noundef nonnull %i.a) #10
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %Py_DECREF.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %.not63 = icmp eq ptr %i.bc, null
  br i1 %.not63, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = call fastcc i32 @ConvParam(ptr noundef nonnull %0, ptr noundef nonnull %i.bc, i64 noundef %2, ptr noundef nonnull %3) ; 3 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp slt i32 %i.bf, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !16
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.z, label %Py_DECREF.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.be) #10
  br label %Py_DECREF.exit

bb.aa:                                            ; preds = %bb.w
  %i.bi = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  %i.bj = trunc i64 %2 to i32
  %i.bk = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bi, ptr noundef nonnull @.str.46, i32 noundef %i.bj) #10 ; 0 uses
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.aa
  %.1 = phi i32 [ -1, %bb.aa ], [ -1, %bb.v ], [ %i.bd, %bb.x ], [ %i.bd, %bb.y ], [ %i.bd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.t, %bb.s, %bb.j, %bb.k, %bb.m, %bb.l, %bb.c, %PyStgInfo_FromObject.exit, %Py_DECREF.exit, %bb.u, %_Py_NewRef.exit74, %bb.n, %bb.h, %_Py_NewRef.exit
  %.2 = phi i32 [ %.1, %Py_DECREF.exit ], [ -1, %bb.u ], [ 0, %_Py_NewRef.exit ], [ 0, %bb.h ], [ -1, %bb.n ], [ -1, %PyStgInfo_FromObject.exit ], [ 0, %_Py_NewRef.exit74 ], [ 0, %bb.j ], [ -1, %bb.s ], [ 0, %bb.c ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.t ]
  ret i32 %.2
}

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_getattr(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 (ptr, ptr, i64, i64, ...) @PyArg_UnpackTuple(ptr noundef %1, ptr noundef nonnull @.str.10, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr i8, ptr %.val, i64 168
  %.val4 = load i64, ptr %i.e, align 8, !tbaa !56
  %i.f = and i64 %.val4, 268435456
  %.not2 = icmp eq i64 %i.f, 0
  br i1 %.not2, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @PyUnicode_EqualToUTF8(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.54) #10
  %.not3 = icmp eq i32 %i.g, 0
  br i1 %.not3, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !10
  %i.i = call i32 @PyErr_WarnEx(ptr noundef %i.h, ptr noundef nonnull @.str.55, i64 noundef 1) #10
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.56) #10
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge, %bb.b
  %i.l = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.b ]
  %i.m = load ptr, ptr @PyExc_AttributeError, align 8, !tbaa !10
  %i.n = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull @.str.57, ptr noundef %i.l) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.f, %bb.e
  %.0 = phi ptr [ null, %bb.a ], [ %i.k, %bb.e ], [ null, %bb.f ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @get_errno(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.58, ptr noundef null) #10
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = call ptr @_ctypes_get_errobj(ptr noundef readonly %.val, ptr noundef nonnull %i.a) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %get_error_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  %i.i = sext i32 %i.h to i64
  %i.j = tail call ptr @PyLong_FromLong(i64 noundef %i.i) #10 ; 3 uses
  %i.k = load i32, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp slt i32 %i.k, 0
  br i1 %.not.i.i, label %get_error_internal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.e, align 8, !tbaa !16
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %get_error_internal.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #10
  br label %get_error_internal.exit

get_error_internal.exit:                          ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %get_error_internal.exit
  %.0 = phi ptr [ %.0.i, %get_error_internal.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @set_errno(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.51, ptr noundef %1) #10
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.e = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a) #10
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %set_error_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.g = call ptr @_ctypes_get_errobj(ptr noundef %.val.i, ptr noundef nonnull %i.b) ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %set_error_internal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !6
  %i.k = load i32, ptr %i.a, align 4, !tbaa !6
  store i32 %i.k, ptr %i.i, align 4, !tbaa !6
  %i.l = load i32, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp slt i32 %i.l, 0
  br i1 %.not.i.i, label %Py_DECREF.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.g, align 8, !tbaa !16
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %Py_DECREF.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #10
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.f, %bb.e, %bb.d
  %i.o = sext i32 %i.j to i64
  %i.p = call ptr @PyLong_FromLong(i64 noundef %i.o) #10
  br label %set_error_internal.exit

set_error_internal.exit:                          ; preds = %bb.b, %bb.c, %Py_DECREF.exit.i
  %.1.i = phi ptr [ null, %bb.b ], [ %i.p, %Py_DECREF.exit.i ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %set_error_internal.exit
  %.0 = phi ptr [ %.1.i, %set_error_internal.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @unpickle(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.b, ptr noundef nonnull @PyTuple_Type, ptr noundef nonnull %i.c) #10
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %Py_DECREF.exit15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %i.e, ptr %i.a, align 16, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !10
  %i.g = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 68016), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #10 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Py_DECREF.exit15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call ptr @PyObject_GetAttr(ptr noundef nonnull %i.g, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 70216)) #10 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.l = call ptr @PyObject_Call(ptr noundef nonnull %i.i, ptr noundef %i.k, ptr noundef null) #10 ; 4 uses
  %i.m = load i32, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %.not.i16 = icmp slt i32 %i.m, 0
  br i1 %.not.i16, label %Py_DECREF.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.i, align 8, !tbaa !16
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %Py_DECREF.exit17

bb.f:                                             ; preds = %bb.e
  call void @_Py_Dealloc(ptr noundef nonnull %i.i) #10
  br label %Py_DECREF.exit17

Py_DECREF.exit17:                                 ; preds = %bb.d, %bb.e, %bb.f
  %i.p = icmp eq ptr %i.l, null
  br i1 %i.p, label %bb.i, label %bb.g

bb.g:                                             ; preds = %Py_DECREF.exit17
  %i.q = load i32, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %.not.i14 = icmp slt i32 %i.q, 0
  br i1 %.not.i14, label %Py_DECREF.exit15, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.l, align 8, !tbaa !16
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %Py_DECREF.exit15.sink.split, label %Py_DECREF.exit15

bb.i:                                             ; preds = %Py_DECREF.exit17, %bb.c
  %i.t = load i32, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp slt i32 %i.t, 0
  br i1 %.not.i, label %Py_DECREF.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.g, align 8, !tbaa !16
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %Py_DECREF.exit15.sink.split, label %Py_DECREF.exit15

Py_DECREF.exit15.sink.split:                      ; preds = %bb.j, %bb.h
  %.sink = phi ptr [ %i.l, %bb.h ], [ %i.g, %bb.j ]
  %.0.ph = phi ptr [ %i.g, %bb.h ], [ null, %bb.j ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #10
  br label %Py_DECREF.exit15

Py_DECREF.exit15:                                 ; preds = %Py_DECREF.exit15.sink.split, %bb.j, %bb.i, %bb.h, %bb.g, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ null, %bb.b ], [ %i.g, %bb.g ], [ %i.g, %bb.h ], [ null, %bb.i ], [ %.0.ph, %Py_DECREF.exit15.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @buffer_info(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val7.i = load ptr, ptr %i.b, align 8, !tbaa !35 ; 3 uses
  %i.c = getelementptr i8, ptr %.val7.i, i64 168
  %.val7.val.i = load i64, ptr %i.c, align 8, !tbaa !56
  %i.d = and i64 %.val7.val.i, 2147483648
  %.not12.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %.val, i64 40      ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  br i1 %.not12.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %1, ptr noundef %i.f) #10
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.i = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %1, ptr noundef %i.h) #10 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %.not8.i.i = icmp eq i32 %i.j, 0
  br i1 %.not8.i.i, label %bb.f, label %PyStgInfo_FromAny.exit

bb.d:                                             ; preds = %bb.a
  %i.k = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %.val7.i, ptr noundef %i.f) #10
  %.not.i8.i = icmp eq i32 %i.k, 0
  br i1 %.not.i8.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.m = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %.val7.i, ptr noundef %i.l) #10 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !27
  %.not8.i9.i = icmp eq i32 %i.n, 0
  br i1 %.not8.i9.i, label %bb.f, label %PyStgInfo_FromAny.exit

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.61) #10
  br label %Py_DECREF.exit

PyStgInfo_FromAny.exit:                           ; preds = %bb.e, %bb.c
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ %i.m, %bb.e ] ; 3 uses
  %i.p = getelementptr i8, ptr %.sink.i, i64 152  ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !64
  %i.r = sext i32 %i.q to i64
  %i.s = tail call ptr @PyTuple_New(i64 noundef %i.r) #10 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %Py_DECREF.exit, label %.preheader

.preheader:                                       ; preds = %PyStgInfo_FromAny.exit
  %i.u = load i32, ptr %i.p, align 8, !tbaa !64
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr i8, ptr %.sink.i, i64 160
  %i.x = getelementptr i8, ptr %i.s, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.01118 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.g ] ; 3 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !65
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.01118
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !66
  %i.ab = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.aa) #10
  %i.ac = getelementptr [8 x i8], ptr %i.x, i64 %.01118
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !10
  %i.ad = add nuw nsw i64 %.01118, 1              ; 2 uses
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !64
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.ah = tail call ptr @PyErr_Occurred() #10
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ai = load i32, ptr %i.s, align 8, !tbaa !16  ; 2 uses
  %.not.i = icmp slt i32 %i.ai, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.s, align 8, !tbaa !16
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #10
  br label %Py_DECREF.exit

bb.k:                                             ; preds = %._crit_edge
  %i.al = getelementptr i8, ptr %.sink.i, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !68
  %i.an = load i32, ptr %i.p, align 8, !tbaa !64
  %i.ao = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.62, ptr noundef %i.am, i32 noundef %i.an, ptr noundef nonnull %i.s) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.j, %bb.i, %bb.h, %PyStgInfo_FromAny.exit, %bb.k, %bb.f
  %.0 = phi ptr [ %i.ao, %bb.k ], [ null, %bb.f ], [ null, %PyStgInfo_FromAny.exit ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_resize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.16, i64 noundef %2, i64 noundef 2, i64 noundef 2) #10
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ctypes_resize_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val29 = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr i8, ptr %.val29, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %.val30 = load ptr, ptr %i.f, align 8, !tbaa !35 ; 2 uses
  %.not.i32.a = icmp eq ptr %.val30, %i.e
  br i1 %.not.i32.a, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.c
  %i.g = tail call i32 @PyType_IsSubtype(ptr noundef %.val30, ptr noundef %i.e) #10
  %.not42 = icmp eq i32 %i.g, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  br i1 %.not42, label %bb.d, label %PyObject_TypeCheck.exit.thread

bb.d:                                             ; preds = %PyObject_TypeCheck.exit
  %.val = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.h = getelementptr i8, ptr %.val, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.63, ptr noundef %i.k, ptr noundef %.pre) #10
  br label %_ctypes_resize_impl.exit

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.c, %PyObject_TypeCheck.exit
  %i.l = phi ptr [ %i.b, %bb.c ], [ %.pre, %PyObject_TypeCheck.exit ] ; 7 uses
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  %i.o = tail call ptr @_PyNumber_Index(ptr noundef %i.n) #10 ; 5 uses
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %Py_DECREF.exit.thread, label %bb.e

bb.e:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.p = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.o) #10 ; 2 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp slt i32 %i.q, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !16
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.t = icmp eq i64 %i.p, -1
  br i1 %i.t, label %Py_DECREF.exit.thread, label %bb.h

Py_DECREF.exit.thread:                            ; preds = %PyObject_TypeCheck.exit.thread, %Py_DECREF.exit
  %i.u = tail call ptr @PyErr_Occurred() #10
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.h, label %_ctypes_resize_impl.exit

bb.h:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.02136.ph = phi i64 [ %i.p, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 7 uses
  %.val31 = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.v = getelementptr i8, ptr %i.l, i64 8
  %.val.i = load ptr, ptr %i.v, align 8, !tbaa !35 ; 2 uses
  %i.w = getelementptr i8, ptr %.val31, i64 40    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = tail call i32 @PyObject_IsInstance(ptr noundef %.val.i, ptr noundef %i.x) #10
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.aa = tail call ptr @PyObject_GetTypeData(ptr noundef %.val.i, ptr noundef %i.z) #10 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !27
  %.not8.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i.i, label %bb.j, label %PyStgInfo_FromObject.exit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.64) #10
  br label %_ctypes_resize_impl.exit

PyStgInfo_FromObject.exit.i:                      ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !49 ; 2 uses
  %i.af = icmp slt i64 %.02136.ph, %i.ae
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %PyStgInfo_FromObject.exit.i
  %i.ag = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !10
  %i.ah = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ag, ptr noundef nonnull @.str.65, i64 noundef %i.ae) #10 ; 0 uses
  br label %_ctypes_resize_impl.exit

bb.l:                                             ; preds = %PyStgInfo_FromObject.exit.i
  %i.ai = getelementptr i8, ptr %i.l, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !71
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !10
  %i.am = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.al, ptr noundef nonnull @.str.66) #10 ; 0 uses
  br label %_ctypes_resize_impl.exit

bb.n:                                             ; preds = %bb.l
  %i.an = icmp ult i64 %.02136.ph, 17
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %i.l, i64 40
  store i64 %.02136.ph, ptr %i.ao, align 8, !tbaa !74
  br label %_ctypes_resize_impl.exit

bb.p:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.l, i64 16      ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !75 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.l, i64 80
  %.not.i33 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i33, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.as = tail call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef %.02136.ph) #10 ; 3 uses
  %.not38.i = icmp eq ptr %i.as, null
  br i1 %.not38.i, label %.thread.i, label %bb.r

.thread.i:                                        ; preds = %bb.q
  %i.at = tail call ptr @PyErr_NoMemory() #10
  br label %_ctypes_resize_impl.exit

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.ap, align 16, !tbaa !75
  %i.av = getelementptr i8, ptr %i.l, i64 40      ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !74
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.au, i64 %i.aw, i1 false)
  store ptr %i.as, ptr %i.ap, align 16, !tbaa !75
  store i64 %.02136.ph, ptr %i.av, align 8, !tbaa !74
  br label %_ctypes_resize_impl.exit

bb.s:                                             ; preds = %bb.p
  %i.ax = tail call ptr @PyMem_Realloc(ptr noundef %i.aq, i64 noundef %.02136.ph) #10 ; 2 uses
  %.not39.i = icmp eq ptr %i.ax, null
  br i1 %.not39.i, label %.thread4.i, label %bb.t

.thread4.i:                                       ; preds = %bb.s
  %i.ay = tail call ptr @PyErr_NoMemory() #10
  br label %_ctypes_resize_impl.exit

bb.t:                                             ; preds = %bb.s
  store ptr %i.ax, ptr %i.ap, align 16, !tbaa !75
  %i.az = getelementptr i8, ptr %i.l, i64 40
  store i64 %.02136.ph, ptr %i.az, align 8, !tbaa !74
  br label %_ctypes_resize_impl.exit

_ctypes_resize_impl.exit:                         ; preds = %bb.t, %.thread4.i, %bb.r, %.thread.i, %bb.o, %bb.m, %bb.k, %bb.j, %Py_DECREF.exit.thread, %bb.d, %bb.b
  %.023 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ null, %bb.d ], [ %i.at, %.thread.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.m ], [ %i.ay, %.thread4.i ], [ @_Py_NoneStruct, %bb.t ], [ @_Py_NoneStruct, %bb.r ], [ @_Py_NoneStruct, %bb.o ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @py_dl_open(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 2, ptr %i.c, align 4, !tbaa !6
  %i.d = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.67, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #10
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 4, !tbaa !6
  %i.f = or i32 %i.e, 2
  store i32 %i.f, ptr %i.c, align 4, !tbaa !6
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not10 = icmp eq ptr %i.g, @_Py_NoneStruct
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 @PyUnicode_FSConverter(ptr noundef %i.g, ptr noundef nonnull %i.b) #10
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %.pre, %bb.d ], [ @_Py_NoneStruct, %bb.e ]
  %.07 = phi ptr [ %i.k, %bb.d ], [ null, %bb.e ]
  %i.m = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.51, ptr noundef %i.l) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.c, align 4, !tbaa !6
  %i.p = call ptr @dlopen(ptr noundef %.07, i32 noundef %i.o) #10 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !10   ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp slt i32 %i.r, 0
  br i1 %.not.i.i, label %Py_XDECREF.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !16
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %Py_XDECREF.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #10
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.not11 = icmp eq ptr %i.p, null
  br i1 %.not11, label %bb.k, label %bb.n

bb.k:                                             ; preds = %Py_XDECREF.exit
  %i.u = call ptr @dlerror() #10                  ; 2 uses
  %.not12 = icmp eq ptr %i.u, null
  %i.v = load ptr, ptr @PyExc_OSError, align 8, !tbaa !10 ; 2 uses
  br i1 %.not12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_PyErr_SetLocaleString(ptr noundef %i.v, ptr noundef nonnull %i.u) #10
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @PyErr_SetString(ptr noundef %i.v, ptr noundef nonnull @.str.69) #10
  br label %bb.o

bb.n:                                             ; preds = %Py_XDECREF.exit
  %i.w = call ptr @PyLong_FromVoidPtr(ptr noundef nonnull %i.p) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.f, %bb.c, %bb.a, %bb.n
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.w, %bb.n ], [ null, %bb.f ], [ null, %bb.m ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @py_dl_close(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.70, ptr noundef nonnull @_parse_voidp, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.d = call i32 @dlclose(ptr noundef %i.c) #10
  %.not4 = icmp eq i32 %i.d, 0
  br i1 %.not4, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @dlerror() #10                  ; 2 uses
  %.not5 = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr @PyExc_OSError, align 8, !tbaa !10 ; 2 uses
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_PyErr_SetLocaleString(ptr noundef %i.f, ptr noundef nonnull %i.e) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.71) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.e ], [ @_Py_NoneStruct, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @py_dl_sym(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef nonnull @_parse_voidp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.51, ptr noundef %1) #10
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @dlerror() #10                  ; 0 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.i = call ptr @dlsym(ptr noundef %i.g, ptr noundef %i.h) #10 ; 2 uses
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @PyLong_FromVoidPtr(ptr noundef nonnull %i.i) #10
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = call ptr @dlerror() #10                  ; 2 uses
  %.not9 = icmp eq ptr %i.k, null
  %i.l = load ptr, ptr @PyExc_OSError, align 8, !tbaa !10 ; 2 uses
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_PyErr_SetLocaleString(ptr noundef %i.l, ptr noundef nonnull %i.k) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.n = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.l, ptr noundef nonnull @.str.74, ptr noundef %i.m) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.a, %bb.d
  %.1 = phi ptr [ null, %bb.a ], [ %i.j, %bb.d ], [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @align_func(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val7.i = load ptr, ptr %i.b, align 8, !tbaa !35 ; 3 uses
  %i.c = getelementptr i8, ptr %.val7.i, i64 168
  %.val7.val.i = load i64, ptr %i.c, align 8, !tbaa !56
  %i.d = and i64 %.val7.val.i, 2147483648
  %.not12.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %.val, i64 40      ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  br i1 %.not12.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %1, ptr noundef %i.f) #10
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.i = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %1, ptr noundef %i.h) #10 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !27
  %.not8.i.i = icmp eq i32 %i.j, 0
  br i1 %.not8.i.i, label %bb.f, label %PyStgInfo_FromAny.exit

bb.d:                                             ; preds = %bb.a
  %i.k = tail call i32 @PyObject_IsInstance(ptr noundef nonnull %.val7.i, ptr noundef %i.f) #10
  %.not.i8.i = icmp eq i32 %i.k, 0
  br i1 %.not.i8.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.m = tail call ptr @PyObject_GetTypeData(ptr noundef nonnull %.val7.i, ptr noundef %i.l) #10 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !27
  %.not8.i9.i = icmp eq i32 %i.n, 0
  br i1 %.not8.i9.i, label %bb.f, label %PyStgInfo_FromAny.exit

PyStgInfo_FromAny.exit:                           ; preds = %bb.e, %bb.c
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ %i.m, %bb.e ]
  %i.o = getelementptr i8, ptr %.sink.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !77
  %i.q = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.p) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.75) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %PyStgInfo_FromAny.exit
  %.0 = phi ptr [ null, %bb.f ], [ %i.q, %PyStgInfo_FromAny.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_sizeof(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 40      ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = tail call i32 @PyObject_IsInstance(ptr noundef %1, ptr noundef %i.c) #10
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.f = tail call ptr @PyObject_GetTypeData(ptr noundef %1, ptr noundef %i.e) #10 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %.not8.i.i = icmp eq i32 %i.g, 0
  br i1 %.not8.i.i, label %bb.c, label %PyStgInfo_FromType.exit

PyStgInfo_FromType.exit:                          ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !49
  %i.j = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.i) #10
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = getelementptr i8, ptr %.val, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69   ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.m, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp eq ptr %.val10, %i.l
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.c
  %i.n = tail call i32 @PyType_IsSubtype(ptr noundef %.val10, ptr noundef %i.l) #10
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.c, %PyObject_TypeCheck.exit
  %i.o = getelementptr i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !74
  %i.q = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.p) #10
  br label %bb.e

bb.d:                                             ; preds = %PyObject_TypeCheck.exit
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.76) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %PyObject_TypeCheck.exit.thread, %PyStgInfo_FromType.exit
  %.0 = phi ptr [ null, %bb.d ], [ %i.j, %PyStgInfo_FromType.exit ], [ %i.q, %PyObject_TypeCheck.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_byref(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.25, i64 noundef %2, i64 noundef 1, i64 noundef 2) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ctypes_byref_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val30 = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr i8, ptr %.val30, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val31 = load ptr, ptr %i.g, align 8, !tbaa !35 ; 2 uses
  %.not.i33 = icmp eq ptr %.val31, %i.f
  br i1 %.not.i33, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.c
  %i.h = tail call i32 @PyType_IsSubtype(ptr noundef %.val31, ptr noundef %i.f) #10
  %.not40 = icmp eq i32 %i.h, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  br i1 %.not40, label %bb.d, label %PyObject_TypeCheck.exit.thread

bb.d:                                             ; preds = %PyObject_TypeCheck.exit
  %.val = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.i = getelementptr i8, ptr %.val, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.63, ptr noundef %i.l, ptr noundef %.pre) #10
  br label %_ctypes_byref_impl.exit

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.c, %PyObject_TypeCheck.exit
  %i.m = phi ptr [ %i.c, %bb.c ], [ %.pre, %PyObject_TypeCheck.exit ] ; 4 uses
  %i.n = icmp slt i64 %2, 2
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = tail call ptr @_PyNumber_Index(ptr noundef %i.p) #10 ; 5 uses
  %.not27 = icmp eq ptr %i.q, null
  br i1 %.not27, label %Py_DECREF.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.q) #10 ; 2 uses
  %i.s = load i32, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp slt i32 %i.s, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.q, align 8, !tbaa !16
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.q) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f
  %i.v = icmp eq i64 %i.r, -1
  br i1 %i.v, label %Py_DECREF.exit.thread, label %.thread

Py_DECREF.exit.thread:                            ; preds = %bb.e, %Py_DECREF.exit
  %i.w = tail call ptr @PyErr_Occurred() #10
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %.thread, label %_ctypes_byref_impl.exit

.thread:                                          ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %PyObject_TypeCheck.exit.thread
  %.1 = phi i64 [ 0, %PyObject_TypeCheck.exit.thread ], [ %i.r, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ]
  %.val32 = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.x = getelementptr i8, ptr %.val32, i64 8
  %.val32.val = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.y = tail call ptr @_PyObject_GC_New(ptr noundef %.val32.val) #10 ; 7 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ctypes_byref_impl.exit, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.aa = getelementptr i8, ptr %i.y, i64 16      ; 2 uses
  store ptr null, ptr %i.aa, align 16, !tbaa !20
  %i.ab = getelementptr i8, ptr %i.y, i64 24      ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !25
  %i.ac = getelementptr i8, ptr %i.y, i64 32      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.y) #10
  store i8 80, ptr %i.ab, align 8, !tbaa !25
  store ptr @ffi_type_pointer, ptr %i.aa, align 16, !tbaa !20
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !16  ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, -1073741825
  br i1 %i.ae, label %_Py_NewRef.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = add nuw i32 %i.ad, 1
  store i32 %i.af, ptr %i.m, align 8, !tbaa !16
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.j, %bb.i
  %i.ag = getelementptr i8, ptr %i.y, i64 64
  store ptr %i.m, ptr %i.ag, align 16, !tbaa !78
  %i.ah = getelementptr i8, ptr %i.m, i64 16
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !75
  %i.aj = getelementptr i8, ptr %i.ai, i64 %.1
  store ptr %i.aj, ptr %i.ac, align 16, !tbaa !16
  br label %_ctypes_byref_impl.exit

_ctypes_byref_impl.exit:                          ; preds = %_Py_NewRef.exit.i, %.thread, %Py_DECREF.exit.thread, %bb.d, %bb.b
  %.024 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ null, %bb.d ], [ null, %.thread ], [ %i.y, %_Py_NewRef.exit.i ]
  ret ptr %.024
}

; Function Attrs: nounwind uwtable
define internal ptr @_ctypes_addressof(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %.val8, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp eq ptr %.val9, %i.c
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val9, ptr noundef %i.c) #10
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %.val = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.f = getelementptr i8, ptr %.val, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.77, ptr noundef %i.i, ptr noundef nonnull %1) #10
  br label %_ctypes_addressof_impl.exit

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.j = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, ptr noundef nonnull %1) #10
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %_ctypes_addressof_impl.exit, label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !75
  %i.n = tail call ptr @PyLong_FromVoidPtr(ptr noundef %i.m) #10
  br label %_ctypes_addressof_impl.exit

_ctypes_addressof_impl.exit:                      ; preds = %bb.c, %PyObject_TypeCheck.exit.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.n, %bb.c ], [ null, %PyObject_TypeCheck.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @call_function(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.80, ptr noundef nonnull @_parse_voidp, ptr noundef nonnull %i.a, ptr noundef nonnull @PyTuple_Type, ptr noundef nonnull %i.b) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.g = call ptr @_ctypes_callproc(ptr noundef %.val, ptr noundef %i.e, ptr noundef %i.f, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @call_cdeclfunction(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.80, ptr noundef nonnull @_parse_voidp, ptr noundef nonnull %i.a, ptr noundef nonnull @PyTuple_Type, ptr noundef nonnull %i.b) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.g = call ptr @_ctypes_callproc(ptr noundef %.val, ptr noundef %i.e, ptr noundef %i.f, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @My_PyObj_FromPtr(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 (ptr, ptr, ...) @PyArg_ParseTuple(ptr noundef %1, ptr noundef nonnull @.str.81, ptr noundef nonnull @converter, ptr noundef nonnull %i.a) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.79, ptr noundef %i.c) #10
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 8, !tbaa !16
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @My_Py_INCREF(ptr nofree readnone captures(none) %0, ptr nofree noundef returned captures(ret: address, provenance) %1) #5 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !16     ; 4 uses
  %i.b = icmp ugt i32 %i.a, -1073741825
  br i1 %i.b, label %Py_INCREF.exit, label %Py_INCREF.exit3

Py_INCREF.exit3:                                  ; preds = %bb.a
  %i.c = add nuw i32 %i.a, 1
  store i32 %i.c, ptr %1, align 8, !tbaa !16
  %i.d = icmp eq i32 %i.a, -1073741825
  br i1 %i.d, label %Py_INCREF.exit, label %bb.b

bb.b:                                             ; preds = %Py_INCREF.exit3
  %i.e = add nuw i32 %i.a, 2
  store i32 %i.e, ptr %1, align 8, !tbaa !16
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.a, %Py_INCREF.exit3, %bb.b
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @My_Py_DECREF(ptr nofree readnone captures(none) %0, ptr noundef returned %1) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !16     ; 3 uses
  %.not.i = icmp slt i32 %i.a, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %i.a, -1                     ; 3 uses
  store i32 %i.b, ptr %1, align 8, !tbaa !16
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #10
  %.pr = load i32, ptr %1, align 8, !tbaa !16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %i.d = phi i32 [ %i.a, %bb.a ], [ %i.b, %bb.b ], [ %.pr, %bb.c ] ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %Py_INCREF.exit, label %bb.d

bb.d:                                             ; preds = %Py_DECREF.exit
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %1, align 8, !tbaa !16
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %Py_DECREF.exit, %bb.d
  ret ptr %1
}

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @PyCArg_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !35  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #10
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 4 uses
  %.not.i6 = icmp eq ptr %i.c, null
  br i1 %.not.i6, label %PyCArg_clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not.i.i = icmp slt i32 %i.d, 0
  br i1 %.not.i.i, label %PyCArg_clear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !16
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %PyCArg_clear.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #10
  br label %PyCArg_clear.exit

PyCArg_clear.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %.val, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  tail call void %i.h(ptr noundef nonnull %0) #10
  %i.i = load i32, ptr %.val, align 8, !tbaa !16  ; 2 uses
  %.not.i = icmp slt i32 %i.i, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %PyCArg_clear.exit
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %.val, align 8, !tbaa !16
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %PyCArg_clear.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @PyCArg_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val22 = load ptr, ptr %i.a, align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq ptr %.val22, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %1(ptr noundef nonnull %.val22, ptr noundef %2) #10 ; 2 uses
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !78  ; 2 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 %1(ptr noundef nonnull %i.d, ptr noundef %2) #10 ; 2 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PyCArg_clear(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp slt i32 %i.c, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !16
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @PyCArg_repr(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25    ; 11 uses
  switch i8 %i.b, label %bb.q [
    i8 98, label %bb.b
    i8 66, label %bb.b
    i8 104, label %bb.c
    i8 72, label %bb.c
    i8 105, label %bb.d
    i8 73, label %bb.d
    i8 108, label %bb.e
    i8 76, label %bb.e
    i8 113, label %bb.f
    i8 81, label %bb.f
    i8 80, label %bb.p
    i8 90, label %bb.p
    i8 99, label %bb.m
    i8 122, label %bb.p
    i8 102, label %bb.g
    i8 100, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = zext nneg i8 %i.b to i32
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 16, !tbaa !16
  %i.f = sext i8 %i.e to i32
  %i.g = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.33, i32 noundef %i.c, i32 noundef %i.f) #10
  br label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.h = zext nneg i8 %i.b to i32
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load i16, ptr %i.i, align 16, !tbaa !16
  %i.k = sext i16 %i.j to i32
  %i.l = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.33, i32 noundef %i.h, i32 noundef %i.k) #10
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.m = zext nneg i8 %i.b to i32
  %i.n = getelementptr i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 16, !tbaa !16
  %i.p = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.33, i32 noundef %i.m, i32 noundef %i.o) #10
  br label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.q = zext nneg i8 %i.b to i32
  %i.r = getelementptr i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 16, !tbaa !16
  %i.t = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.34, i32 noundef %i.q, i64 noundef %i.s) #10
  br label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.u = zext nneg i8 %i.b to i32
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 16, !tbaa !16
  %i.x = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.35, i32 noundef %i.u, i64 noundef %i.w) #10
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %0, i64 32
  %i.z = load float, ptr %i.y, align 16, !tbaa !16
  %i.aa = fpext float %i.z to double
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %0, i64 32
  %i.ac = load double, ptr %i.ab, align 16, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi double [ %i.aa, %bb.g ], [ %i.ac, %bb.h ]
  %i.ae = tail call ptr @PyFloat_FromDouble(double noundef %i.ad) #10 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %Py_DECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %i.a, align 8, !tbaa !25
  %i.ah = sext i8 %i.ag to i32
  %i.ai = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.36, i32 noundef %i.ah, ptr noundef nonnull %i.ae) #10 ; 3 uses
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp slt i32 %i.aj, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.ae, align 8, !tbaa !16
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #10
  br label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.a
  %i.am = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.an = load i8, ptr %i.am, align 16, !tbaa !16 ; 4 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.n, label %is_literal_char.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = zext nneg i8 %i.an to i32
  %i.aq = tail call i32 @_PyUnicode_IsPrintable(i32 noundef %i.ap) #10
  %.fr = freeze i32 %i.aq
  %i.ar = icmp eq i32 %.fr, 0
  %.pre = load i8, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %.pre47 = load i8, ptr %i.am, align 16, !tbaa !16 ; 4 uses
  br i1 %i.ar, label %is_literal_char.exit.thread, label %switch.early.test

switch.early.test:                                ; preds = %bb.n
  switch i8 %i.an, label %bb.o [
    i8 92, label %is_literal_char.exit.thread
    i8 39, label %is_literal_char.exit.thread
  ]

bb.o:                                             ; preds = %switch.early.test
  %i.as = sext i8 %.pre to i32
  %i.at = sext i8 %.pre47 to i32
  %i.au = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.37, i32 noundef %i.as, i32 noundef %i.at) #10
  br label %Py_DECREF.exit

is_literal_char.exit.thread:                      ; preds = %switch.early.test, %switch.early.test, %bb.n, %bb.m
  %i.av = phi i8 [ %i.an, %bb.m ], [ %.pre47, %switch.early.test ], [ %.pre47, %bb.n ], [ %.pre47, %switch.early.test ]
  %i.aw = phi i8 [ 99, %bb.m ], [ %.pre, %switch.early.test ], [ %.pre, %bb.n ], [ %.pre, %switch.early.test ]
  %i.ax = sext i8 %i.aw to i32
  %i.ay = zext i8 %i.av to i32
  %i.az = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.38, i32 noundef %i.ax, i32 noundef %i.ay) #10
  br label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ba = zext nneg i8 %i.b to i32
  %i.bb = getelementptr i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !16
  %i.bd = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.39, i32 noundef %i.ba, ptr noundef %i.bc) #10
  br label %Py_DECREF.exit

bb.q:                                             ; preds = %bb.a
  %i.be = icmp sgt i8 %i.b, -1
  br i1 %i.be, label %bb.r, label %is_literal_char.exit36.thread

bb.r:                                             ; preds = %bb.q
  %i.bf = zext nneg i8 %i.b to i32
  %i.bg = tail call i32 @_PyUnicode_IsPrintable(i32 noundef %i.bf) #10
  %.fr55 = freeze i32 %i.bg
  %i.bh = icmp eq i32 %.fr55, 0
  %.pre48 = load i8, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  br i1 %i.bh, label %is_literal_char.exit36.thread, label %switch.early.test54

switch.early.test54:                              ; preds = %bb.r
  switch i8 %i.b, label %bb.s [
    i8 92, label %is_literal_char.exit36.thread
    i8 39, label %is_literal_char.exit36.thread
  ]

bb.s:                                             ; preds = %switch.early.test54
  %i.bi = zext i8 %.pre48 to i32
  %i.bj = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.40, i32 noundef %i.bi, ptr noundef nonnull %0) #10
  br label %Py_DECREF.exit

is_literal_char.exit36.thread:                    ; preds = %switch.early.test54, %switch.early.test54, %bb.r, %bb.q
  %i.bk = phi i8 [ %i.b, %bb.q ], [ %.pre48, %switch.early.test54 ], [ %.pre48, %bb.r ], [ %.pre48, %switch.early.test54 ]
  %i.bl = zext i8 %i.bk to i32
  %i.bm = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.41, i32 noundef %i.bl, ptr noundef nonnull %0) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %is_literal_char.exit36.thread, %bb.s, %bb.p, %is_literal_char.exit.thread, %bb.o, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %i.bj, %bb.s ], [ %i.bm, %is_literal_char.exit36.thread ], [ %i.g, %bb.b ], [ %i.l, %bb.c ], [ %i.p, %bb.d ], [ %i.t, %bb.e ], [ %i.x, %bb.f ], [ %i.bd, %bb.p ], [ %i.au, %bb.o ], [ %i.az, %is_literal_char.exit.thread ], [ null, %bb.i ], [ %i.ai, %bb.j ], [ %i.ai, %bb.k ], [ %i.ai, %bb.l ]
  ret ptr %.1
}

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_IsPrintable(i32 noundef) local_unnamed_addr #2

declare i32 @PyObject_IsInstance(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_GetTypeData(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @PyLong_AsUnsignedLong(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #2

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_AsWideCharString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyObject_GetOptionalAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffi_prep_cif_var(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffi_prep_cif(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyEval_SaveThread() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare void @ffi_call(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #2

declare ptr @PyObject_CallFunction(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @_ctypes_simple_instance(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_ctypes_get_fielddesc(ptr noundef) local_unnamed_addr #2

declare ptr @PyCData_FromBaseObj(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_PyTraceback_Add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PyArg_UnpackTuple(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ...) local_unnamed_addr #2

declare i32 @PyUnicode_EqualToUTF8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PyArg_ParseTuple(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_VectorcallMethod(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #2

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #2

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #2

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #2

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PyUnicode_FSConverter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @dlerror() local_unnamed_addr #7

declare void @_PyErr_SetLocaleString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromVoidPtr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_parse_voidp(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyLong_AsVoidPtr(ptr noundef %0) #10 ; 2 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !46
  %i.b = icmp ne ptr %i.a, null
  %. = zext i1 %i.b to i32
  ret i32 %.
}

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #7

declare ptr @PyLong_AsVoidPtr(ptr noundef) local_unnamed_addr #2
end_hunk_0
