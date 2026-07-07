inline.NumInlined: 135
inline.NumDeleted: 39
begin_hunk_0
%struct.anon.906 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.907 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.908 = type { %struct.PyASCIIObject, [14 x i8] }
%struct.anon.909 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.910 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.911 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.912 = type { %struct.PyASCIIObject, [2 x i8] }
%struct.anon.913 = type { %struct.PyCompactUnicodeObject, [2 x i8] }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, ptr }
%struct.PyTupleObject = type { %struct.PyVarObject, i64, [1 x ptr] }
%struct.PyGC_Head = type { i64, i64 }
%struct.PyHamtNode_Bitmap = type { %struct.PyVarObject, i32, [1 x ptr] }
%struct._PyContextTokenMissing = type { %struct._object }
%struct._is = type { %struct._ceval_state, ptr, i64, i64, i32, i64, i32, i32, i32, i64, %struct.pythreads, ptr, ptr, i64, %struct._gc_runtime_state, ptr, ptr, %struct._import_state, %struct._gil_runtime_state, i64, %struct.codecs_state, %struct.PyConfig, i64, ptr, ptr, ptr, ptr, [8 x ptr], i8, i64, [255 x ptr], %struct._PyXI_state_t, ptr, ptr, ptr, %struct._warnings_runtime_state, %struct.atexit_state, %struct._stoptheworld_state, %struct._qsbr_shared, %struct.llist_node, %struct.PyMutex, ptr, ptr, [8 x ptr], [8 x ptr], [8 x ptr], i8, i8, %struct._py_object_state, %struct._Py_unicode_state, %struct._Py_long_state, %struct._dtoa_state, %struct._py_func_state, %struct._py_code_state, %struct._Py_dict_state, %struct._Py_exc_state, %struct._Py_mem_interp_free_queue, %struct.ast_state, %struct.types_state, %struct.callable_cache, [7 x ptr], i8, i8, %struct._PyOptimizationConfig, ptr, ptr, ptr, ptr, i64, %struct._rare_events, ptr, %struct._Py_GlobalMonitors, %struct._PyOnceFlag, %struct._PyOnceFlag, i64, i64, [8 x [19 x ptr]], [8 x ptr], [8 x i64], %struct._Py_interp_cached_objects, %struct._Py_interp_static_objects, i64, %struct._PyThreadStateImpl }
%struct._ceval_state = type { i64, i32, ptr, i32, %struct._pending_calls }
%struct.pythreads = type { i64, ptr, ptr, ptr, i64, i64 }
%struct._gc_runtime_state = type { i32, i32, %struct.gc_generation, [2 x %struct.gc_generation], %struct.gc_generation, [3 x %struct.gc_generation_stats], i32, ptr, ptr, ptr, i64, i64, i32, i32 }
%struct.gc_generation = type { %struct.PyGC_Head, i32, i32 }
%struct.gc_generation_stats = type { i64, i64, i64, i64, double }
%struct._import_state = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, %struct._PyRecursiveMutex, %struct.anon.1 }
%struct._PyRecursiveMutex = type { %struct.PyMutex, i64, i64 }
%struct.anon.1 = type { i32, i64, i32 }
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
%struct.types_state = type { i32, %struct.type_cache, %struct.anon.3, %struct.anon.4, %struct.PyMutex, [4096 x ptr] }
%struct.type_cache = type { [4096 x %struct.type_cache_entry] }
%struct.type_cache_entry = type { i32, ptr, ptr }
%struct.anon.3 = type { i64, [202 x %struct.managed_static_type_state] }
%struct.managed_static_type_state = type { ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.4 = type { i64, i64, [10 x %struct.managed_static_type_state] }
%struct.callable_cache = type { ptr, ptr, ptr, ptr }
%struct._PyOptimizationConfig = type { i16, i16, i16, i16, i8, i8 }
%struct._rare_events = type { i8, i8, i8, i8, i8 }
%struct._Py_GlobalMonitors = type { [16 x i8] }
%struct._PyOnceFlag = type { i8 }
%struct._Py_interp_cached_objects = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Py_interp_static_objects = type { %struct.anon.5 }
%struct.anon.5 = type { i32, %struct.PyGC_Head, %struct.PyHamtObject, %struct.PyBaseExceptionObject }
%struct.PyHamtObject = type { %struct._object, ptr, ptr, i64 }
%struct.PyBaseExceptionObject = type { %struct._object, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._PyThreadStateImpl = type { %struct._ts, %struct._PyInterpreterFrame, i64, i64, i64, i64, i64, i64, ptr, ptr, i32, %struct.llist_node, ptr, %struct.llist_node }
%struct._ts = type { ptr, ptr, ptr, i64, %struct.anon.0, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, ptr, i64, i32, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, %struct._err_stackitem, ptr, ptr, i64, ptr, ptr, %struct._PyRemoteDebuggerSupport }
%struct.anon.0 = type { i32 }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyRemoteDebuggerSupport = type { i32, [512 x i8] }
%struct._PyInterpreterFrame = type { %union._PyStackRef, ptr, %union._PyStackRef, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, [1 x %union._PyStackRef] }
%union._PyStackRef = type { i64 }
%struct.anon.914 = type { %struct.PyGC_Head, %struct.PyVarObject, i64, [2 x ptr] }
%struct.Py_complex = type { double, double }
%struct._PyUnicodeWriter = type { ptr, ptr, i32, i32, i64, i64, i64, i32, i8, i8 }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@complex_as_number = internal global %struct.PyNumberMethods { ptr @complex_add, ptr @complex_sub, ptr @complex_mul, ptr null, ptr null, ptr @complex_pow, ptr @complex_neg, ptr @complex_pos, ptr @complex_abs, ptr @complex_bool, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @complex_div, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@complex_new__doc__ = internal constant [311 x i8] c"complex(real=0, imag=0)\0A--\0A\0ACreate a complex number from a string or numbers.\0A\0AIf a string is given, parse it as a complex number.\0AIf a single number is given, convert it to a complex number.\0AIf the 'real' or 'imag' arguments are given, create a complex number\0Awith the specified real and imaginary components.\00", align 16
@PyComplex_Type = dso_local global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str, i64 32, i64 0, ptr @complex_dealloc, i64 0, ptr null, ptr null, ptr null, ptr @complex_repr, ptr @complex_as_number, ptr null, ptr null, ptr @complex_hash, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 1024, ptr @complex_new__doc__, ptr null, ptr null, ptr @complex_richcompare, i64 0, ptr null, ptr null, ptr @complex_methods, ptr @complex_members, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr @PyType_GenericAlloc, ptr @actual_complex_new, ptr @PyObject_Free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 11, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@_PyRuntime = external global %struct.pyruntimestate, align 8
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"%T.__complex__() must return a complex, not %T\00", align 1
@PyExc_DeprecationWarning = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [180 x i8] c"%T.__complex__() must return a complex, not %T.  The ability to return an instance of a strict subclass of complex is deprecated, and may be removed in a future version of Python.\00", align 1
@_Py_tss_tstate = external thread_local local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s%s%sj%s\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@PyExc_ZeroDivisionError = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"complex modulo\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"zero to a negative or complex power\00", align 1
@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"complex exponentiation\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"absolute value too large\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"from_number\00", align 1
@complex_from_number__doc__ = internal constant [85 x i8] c"from_number($type, number, /)\0A--\0A\0AConvert number to a complex floating-point number.\00", align 16
@.str.14 = private unnamed_addr constant [10 x i8] c"conjugate\00", align 1
@complex_conjugate__doc__ = internal constant [98 x i8] c"conjugate($self, /)\0A--\0A\0AReturn the complex conjugate of its argument. (3-4j).conjugate() == 3+4j.\00", align 16
@.str.15 = private unnamed_addr constant [12 x i8] c"__complex__\00", align 1
@complex___complex____doc__ = internal constant [68 x i8] c"__complex__($self, /)\0A--\0A\0AConvert this value to exact type complex.\00", align 16
@.str.16 = private unnamed_addr constant [15 x i8] c"__getnewargs__\00", align 1
@complex___getnewargs____doc__ = internal constant [30 x i8] c"__getnewargs__($self, /)\0A--\0A\0A\00", align 16
@.str.17 = private unnamed_addr constant [11 x i8] c"__format__\00", align 1
@complex___format____doc__ = internal constant [84 x i8] c"__format__($self, format_spec, /)\0A--\0A\0AConvert to a string according to format_spec.\00", align 16
@complex_methods = internal global [6 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.13, ptr @complex_from_number, i32 24, [4 x i8] zeroinitializer, ptr @complex_from_number__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.14, ptr @complex_conjugate, i32 4, [4 x i8] zeroinitializer, ptr @complex_conjugate__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.15, ptr @complex___complex__, i32 4, [4 x i8] zeroinitializer, ptr @complex___complex____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.16, ptr @complex___getnewargs__, i32 4, [4 x i8] zeroinitializer, ptr @complex___getnewargs____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.17, ptr @complex___format__, i32 8, [4 x i8] zeroinitializer, ptr @complex___format____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"(dd)\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"the real part of a complex number\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"the imaginary part of a complex number\00", align 1
@complex_members = internal global [3 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.22, i32 4, [4 x i8] zeroinitializer, i64 16, i32 1, [4 x i8] zeroinitializer, ptr @.str.23 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.24, i32 4, [4 x i8] zeroinitializer, i64 24, i32 1, [4 x i8] zeroinitializer, ptr @.str.25 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [56 x i8] c"complex() argument must be a string or a number, not %T\00", align 1
@complex_new._kwtuple = internal global %struct.anon.914 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 2 }, i64 -1, [2 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 97224), ptr getelementptr (i8, ptr @_PyRuntime, i64 86736)] }, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@complex_new._keywords = internal constant [3 x ptr] [ptr @.str.22, ptr @.str.24, ptr null], align 16
@complex_new._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @complex_new._keywords, ptr @.str, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @complex_new._kwtuple, i64 16), ptr null }, align 8
@.str.28 = private unnamed_addr constant [56 x i8] c"complex() argument 'real' must be a real number, not %T\00", align 1
@.str.29 = private unnamed_addr constant [56 x i8] c"complex() argument 'imag' must be a real number, not %T\00", align 1
@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@.str.30 = private unnamed_addr constant [36 x i8] c"complex() arg is a malformed string\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_c_sum(double %0, double %1, double %2, double %3) local_unnamed_addr #0 {
bb.a:
  %i.a = fadd double %0, %2
  %i.b = fadd double %1, %3
  %.fca.0.insert = insertvalue { double, double } poison, double %i.a, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.b, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_cr_sum(double %0, double %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fadd double %0, %2
  %.fca.0.insert = insertvalue { double, double } poison, double %i.a, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_c_diff(double %0, double %1, double %2, double %3) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double %0, %2
  %i.b = fsub double %1, %3
  %.fca.0.insert = insertvalue { double, double } poison, double %i.a, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.b, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_cr_diff(double %0, double %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double %0, %2
  %.fca.0.insert = insertvalue { double, double } poison, double %i.a, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_rc_diff(double noundef %0, double %1, double %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double %0, %1
  %i.b = fneg double %2
  %.fca.0.insert = insertvalue { double, double } poison, double %i.a, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.b, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_c_neg(double %0, double %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fneg double %0
  %i.b = fneg double %1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.a, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.b, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_c_prod(double %0, double %1, double %2, double %3) local_unnamed_addr #0 {
bb.a:
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = insertelement <2 x double> %4, double %0, i64 1 ; 4 uses
  %6 = insertelement <2 x double> poison, double %2, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x double> %5, %7                   ; 3 uses
  %9 = insertelement <2 x double> poison, double %3, i64 0 ; 3 uses
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x double> %5, %10                 ; 2 uses
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %13 = fadd <2 x double> %8, %12                 ; 2 uses
  %14 = fsub <2 x double> %8, %12                 ; 2 uses
  %15 = shufflevector <2 x double> %13, <2 x double> %14, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.a = extractelement <2 x double> %14, i64 1
  %16 = fcmp uno double %i.a, 0.000000e+00
  %17 = extractelement <2 x double> %13, i64 0
  %i.b = fcmp uno double %17, 0.000000e+00
  %or.cond = and i1 %16, %i.b
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @llvm.fabs.f64(double %0) #12
  %i.d = fcmp oeq double %i.c, +inf
  %.pre = tail call double @llvm.fabs.f64(double %1) #12 ; 2 uses
  br i1 %i.d, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %.pre, +inf
  %i.f = insertelement <2 x double> %9, double %2, i64 1
  br i1 %i.e, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.g = phi double [ 0.000000e+00, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.h = fcmp oeq double %.pre, +inf
  %i.i = select i1 %i.h, double 1.000000e+00, double 0.000000e+00
  %i.j = insertelement <2 x double> poison, double %i.i, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.g, i64 1
  %i.l = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %i.k, <2 x double> %5)
  %18 = insertelement <2 x double> %9, double %2, i64 1 ; 3 uses
  %19 = fcmp uno <2 x double> %18, zeroinitializer
  %20 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %18)
  %21 = select <2 x i1> %19, <2 x double> %20, <2 x double> %18
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.not = phi i1 [ false, %._crit_edge ], [ true, %bb.c ]
  %22 = phi <2 x double> [ %21, %._crit_edge ], [ %i.f, %bb.c ] ; 7 uses
  %23 = phi <2 x double> [ %i.l, %._crit_edge ], [ %5, %bb.c ] ; 7 uses
  %24 = extractelement <2 x double> %22, i64 1
  %i.m = tail call double @llvm.fabs.f64(double %24) #12
  %i.n = fcmp oeq double %i.m, +inf
  %25 = extractelement <2 x double> %22, i64 0
  %.pre87 = tail call double @llvm.fabs.f64(double %25) #12 ; 2 uses
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = fcmp oeq double %.pre87, +inf
  br i1 %i.o, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d, %bb.e
  %i.p = phi double [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ]
  %i.q = fcmp oeq double %.pre87, +inf
  %i.r = select i1 %i.q, double 1.000000e+00, double 0.000000e+00
  %26 = insertelement <2 x double> poison, double %i.r, i64 0
  %27 = insertelement <2 x double> %26, double %i.p, i64 1
  %28 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %27, <2 x double> %22)
  %i.s = fcmp uno <2 x double> %23, zeroinitializer
  %i.t = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %23)
  %i.u = select <2 x i1> %i.s, <2 x double> %i.t, <2 x double> %23
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %29 = shufflevector <2 x double> %8, <2 x double> %11, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.v = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %29)
  %i.w = fcmp oeq <4 x double> %i.v, splat (double +inf)
  %i.x = bitcast <4 x i1> %i.w to i4
  %.not92 = icmp eq i4 %i.x, 0
  br i1 %.not92, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = fcmp uno <2 x double> %23, zeroinitializer
  %i.z = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %23)
  %i.aa = select <2 x i1> %i.y, <2 x double> %i.z, <2 x double> %23
  %30 = fcmp uno <2 x double> %22, zeroinitializer
  %31 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %22)
  %32 = select <2 x i1> %30, <2 x double> %31, <2 x double> %22
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.f, %bb.h
  %i.ab = phi <2 x double> [ %22, %bb.f ], [ %32, %bb.h ], [ %28, %.thread ] ; 3 uses
  %33 = phi <2 x double> [ %23, %bb.f ], [ %i.aa, %bb.h ], [ %i.u, %.thread ] ; 2 uses
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = fneg <2 x double> %i.ab
  %36 = shufflevector <2 x double> %i.ab, <2 x double> %35, <2 x i32> <i32 1, i32 2>
  %37 = fmul <2 x double> %34, %36
  %38 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %i.ab, <2 x double> %37)
  %40 = fmul <2 x double> %39, splat (double +inf)
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.g, %bb.a
  %41 = phi <2 x double> [ %15, %bb.a ], [ %40, %bb.i ], [ %15, %bb.g ] ; 2 uses
  %42 = extractelement <2 x double> %41, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %42, 0
  %43 = extractelement <2 x double> %41, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %43, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { double, double } @_Py_cr_prod(double %0, double %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = fmul double %0, %2
  %i.b = fmul double %1, %2
  %.fca.0.insert = insertvalue { double, double } poison, double %i.a, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.b, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_c_quot(double %0, double %1, double %2, double %3) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp olt double %2, 0.000000e+00
  %i.b = fneg double %2
  %i.c = select i1 %i.a, double %i.b, double %2   ; 2 uses
  %i.d = fcmp olt double %3, 0.000000e+00
  %i.e = fneg double %3                           ; 2 uses
  %i.f = select i1 %i.d, double %i.e, double %3   ; 2 uses
  %i.g = fcmp ult double %i.c, %i.f
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp oeq double %2, 0.000000e+00
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.i, align 4, !tbaa !7
  br label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = fdiv double %3, %2                       ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %3, double %i.j, double %2)
  %4 = fneg double %0
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %6 = insertelement <2 x double> %5, double %1, i64 1
  %7 = insertelement <2 x double> poison, double %i.j, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x double> poison, double %1, i64 0
  %10 = insertelement <2 x double> %9, double %0, i64 1
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %8, <2 x double> %10)
  %12 = insertelement <2 x double> poison, double %i.k, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fdiv <2 x double> %11, %13
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = fcmp ult double %i.f, %i.c
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fdiv double %2, %3                       ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %2, double %i.m, double %3)
  %15 = fneg double %0
  %16 = insertelement <2 x double> poison, double %1, i64 0
  %17 = insertelement <2 x double> %16, double %0, i64 1
  %18 = insertelement <2 x double> poison, double %i.m, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x double> poison, double %15, i64 0
  %21 = insertelement <2 x double> %20, double %1, i64 1
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %19, <2 x double> %21)
  %23 = insertelement <2 x double> poison, double %i.n, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = fdiv <2 x double> %22, %24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %26 = phi <2 x double> [ splat (double +qnan), %bb.d ], [ %14, %bb.c ], [ %25, %bb.e ] ; 4 uses
  %27 = extractelement <2 x double> %26, i64 1
  %i.o = fcmp uno double %27, 0.000000e+00
  %28 = extractelement <2 x double> %26, i64 0
  %i.p = fcmp uno double %28, 0.000000e+00
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %29 = insertelement <2 x double> poison, double %1, i64 0
  %30 = insertelement <2 x double> %29, double %0, i64 1 ; 4 uses
  %31 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %30) ; 3 uses
  %32 = fcmp une <2 x double> %31, splat (double +inf) ; 3 uses
  %33 = extractelement <2 x i1> %32, i64 0
  %34 = extractelement <2 x i1> %32, i64 1
  %or.cond69.not84 = select i1 %34, i1 %33, i1 false
  %i.q = tail call double @llvm.fabs.f64(double %2) ; 2 uses
  %i.r = fcmp ueq double %i.q, +inf
  %or.cond71 = or i1 %or.cond69.not84, %i.r
  %i.s = tail call double @llvm.fabs.f64(double %3) ; 2 uses
  %i.t = fcmp ueq double %i.s, +inf
  %or.cond73 = or i1 %or.cond71, %i.t
  br i1 %or.cond73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %35 = select <2 x i1> %32, <2 x double> zeroinitializer, <2 x double> splat (double 1.000000e+00)
  %36 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %35, <2 x double> %30) ; 2 uses
  %37 = insertelement <2 x double> poison, double %3, i64 0
  %38 = insertelement <2 x double> %37, double %i.e, i64 1
  %39 = fmul nnan <2 x double> %36, %38
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %41 = insertelement <2 x double> poison, double %2, i64 0
  %42 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %42, <2 x double> %40)
  %44 = fmul <2 x double> %43, splat (double +inf)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.u = fcmp une double %i.q, +inf               ; 2 uses
  %i.v = fcmp une double %i.s, +inf               ; 2 uses
  %or.cond75.not86 = and i1 %i.u, %i.v
  %45 = extractelement <2 x double> %31, i64 1
  %i.w = fcmp ueq double %45, +inf
  %or.cond77 = or i1 %i.w, %or.cond75.not86
  %46 = extractelement <2 x double> %31, i64 0
  %i.x = fcmp ueq double %46, +inf
  %or.cond79 = select i1 %or.cond77, i1 true, i1 %i.x
  br i1 %or.cond79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = select i1 %i.u, double 0.000000e+00, double 1.000000e+00
  %i.z = tail call double @llvm.copysign.f64(double %i.y, double %2)
  %i.aa = select i1 %i.v, double 0.000000e+00, double 1.000000e+00
  %i.ab = tail call double @llvm.copysign.f64(double %i.aa, double %3) ; 2 uses
  %47 = fneg double %i.ab
  %48 = insertelement <2 x double> poison, double %i.ab, i64 0
  %49 = insertelement <2 x double> %48, double %47, i64 1
  %50 = fmul nnan <2 x double> %30, %49
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %52 = insertelement <2 x double> poison, double %i.z, i64 0
  %53 = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %53, <2 x double> %51)
  %55 = fmul <2 x double> %54, zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.h, %bb.j, %bb.f
  %56 = phi <2 x double> [ %44, %bb.h ], [ %55, %bb.j ], [ %26, %bb.i ], [ %26, %bb.f ], [ zeroinitializer, %.thread ] ; 2 uses
  %57 = extractelement <2 x double> %56, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %57, 0
  %58 = extractelement <2 x double> %56, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %58, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_cr_quot(double %0, double %1, double noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp une double %2, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %3 = insertelement <2 x double> poison, double %0, i64 0
  %4 = insertelement <2 x double> %3, double %1, i64 1
  %5 = insertelement <2 x double> poison, double %2, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x double> %4, %6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.b, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %8 = phi <2 x double> [ %7, %bb.b ], [ zeroinitializer, %bb.c ] ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %9, 0
  %10 = extractelement <2 x double> %8, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %10, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_rc_quot(double noundef %0, double %1, double %2) local_unnamed_addr #3 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fneg double %1
  %i.c = select i1 %i.a, double %i.b, double %1   ; 2 uses
  %i.d = fcmp olt double %2, 0.000000e+00
  %i.e = fneg double %2
  %i.f = select i1 %i.d, double %i.e, double %2   ; 2 uses
  %i.g = fcmp ult double %i.c, %i.f
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = fcmp oeq double %1, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.i, align 4, !tbaa !7
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = fdiv double %2, %1                       ; 2 uses
  %i.k = tail call double @llvm.fmuladd.f64(double %2, double %i.j, double %1)
  %i.l = fneg double %0
  %i.m = fmul double %i.j, %i.l
  %3 = insertelement <2 x double> poison, double %0, i64 0
  %4 = insertelement <2 x double> %3, double %i.m, i64 1
  %5 = insertelement <2 x double> poison, double %i.k, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x double> %4, %6
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.n = fcmp ult double %i.f, %i.c
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fdiv double %1, %2                       ; 2 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %1, double %i.o, double %2)
  %i.q = fmul double %0, %i.o
  %8 = fneg double %0
  %9 = insertelement <2 x double> poison, double %i.q, i64 0
  %10 = insertelement <2 x double> %9, double %8, i64 1
  %11 = insertelement <2 x double> poison, double %i.p, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fdiv <2 x double> %10, %12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %14 = phi <2 x double> [ zeroinitializer, %bb.c ], [ %7, %bb.d ], [ %13, %bb.f ], [ splat (double +qnan), %bb.e ] ; 4 uses
  %15 = extractelement <2 x double> %14, i64 0
  %i.r = fcmp ord double %15, 0.000000e+00
  %16 = extractelement <2 x double> %14, i64 1
  %i.s = fcmp ord double %16, 0.000000e+00
  %or.cond.not47 = or i1 %i.r, %i.s
  %i.t = tail call double @llvm.fabs.f64(double %0)
  %i.u = fcmp ueq double %i.t, +inf
  %or.cond43 = or i1 %i.u, %or.cond.not47
  br i1 %or.cond43, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %17 = insertelement <2 x double> poison, double %1, i64 0
  %18 = insertelement <2 x double> %17, double %2, i64 1 ; 2 uses
  %19 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %18)
  %20 = fcmp oeq <2 x double> %19, splat (double +inf) ; 2 uses
  %21 = bitcast <2 x i1> %20 to i2
  %or.cond45.not = icmp eq i2 %21, 0
  br i1 %or.cond45.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %22 = select <2 x i1> %20, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %23 = fneg double %0
  %24 = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %22, <2 x double> %18)
  %25 = insertelement <2 x double> poison, double %0, i64 0
  %26 = insertelement <2 x double> %25, double %23, i64 1
  %27 = fmul nnan <2 x double> %24, %26
  %28 = fmul <2 x double> %27, zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %29 = phi <2 x double> [ %28, %bb.i ], [ %14, %bb.h ], [ %14, %bb.g ] ; 2 uses
  %30 = extractelement <2 x double> %29, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %30, 0
  %31 = extractelement <2 x double> %29, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %31, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_Py_c_pow(double %0, double %1, double %2, double %3) local_unnamed_addr #5 {
bb.a:
  %i.a = fcmp oeq double %2, 0.000000e+00
  %i.b = fcmp oeq double %3, 0.000000e+00
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %_Py_ADJUST_ERANGE2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %0, 0.000000e+00
  %i.d = fcmp oeq double %1, 0.000000e+00
  %or.cond5 = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp une double %3, 0.000000e+00
  %i.f = fcmp olt double %2, 0.000000e+00
  %or.cond8 = or i1 %i.f, %i.e
  br i1 %or.cond8, label %bb.d, label %_Py_ADJUST_ERANGE2.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.g, align 4, !tbaa !7
  br label %_Py_ADJUST_ERANGE2.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call double @hypot(double noundef %0, double noundef %1) #14, !tbaa !7 ; 2 uses
  %i.i = tail call double @pow(double noundef %i.h, double noundef %2) #14, !tbaa !7 ; 2 uses
  %i.j = tail call double @atan2(double noundef %1, double noundef %0) #14, !tbaa !7 ; 2 uses
  %i.k = fmul double %2, %i.j                     ; 2 uses
  %i.l = fcmp une double %3, 0.000000e+00
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = fneg double %i.j
  %i.n = fmul double %3, %i.m
  %i.o = tail call double @exp(double noundef %i.n) #14, !tbaa !7
  %i.p = fmul double %i.i, %i.o
  %i.q = tail call double @log(double noundef %i.h) #14, !tbaa !7
  %i.r = tail call double @llvm.fmuladd.f64(double %3, double %i.q, double %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.032 = phi double [ %i.p, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %.0 = phi double [ %i.r, %bb.f ], [ %i.k, %bb.e ] ; 2 uses
  %i.s = tail call double @cos(double noundef %.0) #14, !tbaa !7
  %i.t = fmul double %.032, %i.s                  ; 4 uses
  %i.u = tail call double @sin(double noundef %.0) #14, !tbaa !7
  %i.v = fmul double %.032, %i.u                  ; 4 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.t)
  %or.cond.i = fcmp oeq double %i.w, +inf
  %i.x = tail call double @llvm.fabs.f64(double %i.v)
  %i.y = fcmp oeq double %i.x, +inf
  %or.cond5.i = or i1 %or.cond.i, %i.y
  %i.z = tail call ptr @__errno_location() #13    ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7   ; 2 uses
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.sink.split.i, label %_Py_ADJUST_ERANGE2.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i32 %i.aa, 34
  br i1 %i.ac, label %.sink.split.i, label %_Py_ADJUST_ERANGE2.exit

.sink.split.i:                                    ; preds = %bb.i, %bb.h
  %.sink.i = phi i32 [ 34, %bb.h ], [ 0, %bb.i ]
  store i32 %.sink.i, ptr %i.z, align 4, !tbaa !7
  br label %_Py_ADJUST_ERANGE2.exit

_Py_ADJUST_ERANGE2.exit:                          ; preds = %.sink.split.i, %bb.i, %bb.h, %bb.d, %bb.c, %bb.a
  %.sroa.030.0 = phi double [ 0.000000e+00, %bb.d ], [ 1.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %.sink.split.i ]
  %.sroa.531.0 = phi double [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ], [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.v, %.sink.split.i ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.030.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.531.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @_Py_c_abs(double %0, double %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.b = fcmp ueq double %i.a, +inf
  %i.c = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.d = fcmp ueq double %i.c, +inf
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %i.a, +inf
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #13
  store i32 0, ptr %i.f, align 4, !tbaa !7
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.g = fcmp oeq double %i.c, +inf
  br i1 %i.g, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__errno_location() #13
  store i32 0, ptr %i.h, align 4, !tbaa !7
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.i = tail call double @hypot(double noundef %0, double noundef %1) #14, !tbaa !7 ; 3 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fcmp ueq double %i.j, +inf
  %i.l = tail call ptr @__errno_location() #13    ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 34, ptr %i.l, align 4, !tbaa !7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.c
  %.0 = phi double [ +qnan, %bb.d ], [ +inf, %bb.c ], [ +inf, %bb.e ], [ %i.i, %bb.h ], [ %i.i, %bb.g ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyComplex_FromCComplex(double %0, double %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 11184    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_PyFreeList_Pop.exit

_PyFreeList_Pop.exit:                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  store ptr %i.e, ptr %i.c, align 8, !tbaa !14
  %i.f = getelementptr i8, ptr %i.b, i64 11192    ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !18
  br label %_PyObject_Init.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyObject_Malloc(i64 noundef 32) #14 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @PyErr_NoMemory() #14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 8
  store ptr @PyComplex_Type, ptr %i.l, align 8, !tbaa !19
  %i.m = load i32, ptr @PyComplex_Type, align 8, !tbaa !22 ; 2 uses
  %i.n = icmp ugt i32 %i.m, -1073741825
  br i1 %i.n, label %_PyObject_Init.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr @PyComplex_Type, align 8, !tbaa !22
  br label %_PyObject_Init.exit

_PyObject_Init.exit:                              ; preds = %bb.e, %bb.d, %_PyFreeList_Pop.exit
  %.sink = phi ptr [ %i.d, %_PyFreeList_Pop.exit ], [ %i.i, %bb.d ], [ %i.i, %bb.e ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink) #14
  %i.p = getelementptr i8, ptr %.sink, i64 16
  store double %0, ptr %i.p, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %.sink, i64 24
  store double %1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !23
  br label %bb.f

end_hunk_0
begin_hunk_1_@complex_neg:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  store ptr %i.h, ptr %i.f, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %i.e, i64 11192    ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @PyObject_Malloc(i64 noundef 32) #14, !inline_history !25 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @PyErr_NoMemory() #14, !inline_history !25
  br label %PyComplex_FromCComplex.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.l, i64 8
  store ptr @PyComplex_Type, ptr %i.o, align 8, !tbaa !19
  %i.p = load i32, ptr @PyComplex_Type, align 8, !tbaa !22 ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %_PyObject_Init.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i32 %i.p, 1
  store i32 %i.r, ptr @PyComplex_Type, align 8, !tbaa !22
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.e, %bb.d, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.g, %_PyFreeList_Pop.exit.i ], [ %i.l, %bb.d ], [ %i.l, %bb.e ] ; 3 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #14, !inline_history !25
  %i.s = getelementptr i8, ptr %.sink.i, i64 16
  store <2 x double> %i.c, ptr %i.s, align 8, !tbaa !23
  br label %PyComplex_FromCComplex.exit

PyComplex_FromCComplex.exit:                      ; preds = %bb.c, %_PyObject_Init.exit.i
  %.06.i = phi ptr [ %i.n, %bb.c ], [ %.sink.i, %_PyObject_Init.exit.i ]
  ret ptr %.06.i
}

; Function Attrs: nounwind uwtable
define internal ptr @complex_pos(ptr nofree noundef captures(ret: address, provenance) %0) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq ptr %.val, @PyComplex_Type
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !22
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load <2 x double>, ptr %i.e, align 8
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 11184    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  store ptr %i.k, ptr %i.i, align 8, !tbaa !14
  %i.l = getelementptr i8, ptr %i.h, i64 11192    ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @PyObject_Malloc(i64 noundef 32) #14, !inline_history !25 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @PyErr_NoMemory() #14, !inline_history !25
  br label %_Py_NewRef.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.o, i64 8
  store ptr @PyComplex_Type, ptr %i.r, align 8, !tbaa !19
  %i.s = load i32, ptr @PyComplex_Type, align 8, !tbaa !22 ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr @PyComplex_Type, align 8, !tbaa !22
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.j, %_PyFreeList_Pop.exit.i ], [ %i.o, %bb.g ], [ %i.o, %bb.h ] ; 3 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #14, !inline_history !25
  %i.v = getelementptr i8, ptr %.sink.i, i64 16
  store <2 x double> %i.f, ptr %i.v, align 8, !tbaa !23
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %_PyObject_Init.exit.i, %bb.f, %bb.c, %bb.b
  %.0 = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ %i.q, %bb.f ], [ %.sink.i, %_PyObject_Init.exit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @complex_abs(ptr nofree noundef readonly captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load double, ptr %i.c, align 8           ; 2 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.b) ; 2 uses
  %i.f = fcmp ueq double %i.e, +inf
  %i.g = tail call double @llvm.fabs.f64(double %i.d) ; 2 uses
  %i.h = fcmp ueq double %i.g, +inf
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp oeq double %i.e, +inf
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__errno_location() #13
  br label %_Py_c_abs.exit.thread.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = fcmp oeq double %i.g, +inf
  %i.l = tail call ptr @__errno_location() #13    ; 2 uses
  br i1 %i.k, label %_Py_c_abs.exit.thread.sink.split, label %_Py_c_abs.exit

bb.e:                                             ; preds = %bb.a
  %i.m = tail call double @hypot(double noundef %i.b, double noundef %i.d) #14, !tbaa !7 ; 2 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp ueq double %i.n, +inf
  %i.p = tail call ptr @__errno_location() #13    ; 2 uses
  br i1 %i.o, label %_Py_c_abs.exit.thread7, label %_Py_c_abs.exit.thread.sink.split

_Py_c_abs.exit.thread7:                           ; preds = %bb.e
  store i32 34, ptr %i.p, align 4, !tbaa !7
  br label %bb.f

_Py_c_abs.exit:                                   ; preds = %bb.d
  %.pr = load i32, ptr %i.l, align 4, !tbaa !7
  %i.q = icmp eq i32 %.pr, 34
  br i1 %i.q, label %bb.f, label %_Py_c_abs.exit.thread

bb.f:                                             ; preds = %_Py_c_abs.exit.thread7, %_Py_c_abs.exit
  %i.r = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !42
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.12) #14
  br label %bb.g

_Py_c_abs.exit.thread.sink.split:                 ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ %i.p, %bb.e ]
  %.0.i6.ph = phi double [ +inf, %bb.d ], [ +inf, %bb.c ], [ %i.m, %bb.e ]
  store i32 0, ptr %.sink, align 4, !tbaa !7
  br label %_Py_c_abs.exit.thread

_Py_c_abs.exit.thread:                            ; preds = %_Py_c_abs.exit.thread.sink.split, %_Py_c_abs.exit
  %.0.i6 = phi double [ +qnan, %_Py_c_abs.exit ], [ %.0.i6.ph, %_Py_c_abs.exit.thread.sink.split ]
  %i.s = tail call ptr @PyFloat_FromDouble(double noundef %.0.i6) #14
  br label %bb.g

bb.g:                                             ; preds = %_Py_c_abs.exit.thread, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ %i.s, %_Py_c_abs.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @complex_bool(ptr nofree noundef readonly captures(none) %0) #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !26
  %i.c = fcmp une double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !43
  %i.f = fcmp une double %i.e, 0.000000e+00
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 1, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal ptr @complex_div(ptr noundef %0, ptr noundef %1) #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.Py_complex, align 16        ; 12 uses
  %i.c = alloca double, align 8                   ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !42
  store ptr %1, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.d = tail call ptr @__errno_location() #13    ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val15 = load ptr, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %.val15, @PyComplex_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val15, ptr noundef nonnull @PyComplex_Type) #14
  %.not39 = icmp eq i32 %i.f, 0
  br i1 %.not39, label %bb.m, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !23 ; 11 uses
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val14 = load ptr, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %.not.i16 = icmp eq ptr %.val14, @PyComplex_Type
  br i1 %.not.i16, label %PyObject_TypeCheck.exit17.thread, label %PyObject_TypeCheck.exit17

PyObject_TypeCheck.exit17:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.j = tail call i32 @PyType_IsSubtype(ptr noundef %.val14, ptr noundef nonnull @PyComplex_Type) #14
  %.not40 = icmp eq i32 %i.j, 0
  br i1 %.not40, label %bb.b, label %PyObject_TypeCheck.exit17.thread

PyObject_TypeCheck.exit17.thread:                 ; preds = %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit17
  %i.k = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !45
  %i.l = load double, ptr %2, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load double, ptr %i.m, align 8
  %3 = extractelement <2 x double> %i.h, i64 0
  %4 = extractelement <2 x double> %i.h, i64 1
  %i.o = tail call { double, double } @_Py_c_quot(double %i.l, double %i.n, double %3, double %4) ; 2 uses
  %i.p = extractvalue { double, double } %i.o, 0  ; 2 uses
  %i.q = extractvalue { double, double } %i.o, 1  ; 2 uses
  store double %i.p, ptr %2, align 16, !tbaa !23
  store double %i.q, ptr %i.m, align 8, !tbaa !23
  %5 = insertelement <2 x double> poison, double %i.p, i64 0
  %6 = insertelement <2 x double> %5, double %i.q, i64 1
  br label %.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit17
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, @PyFloat_Type
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.b
  %i.r = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyFloat_Type) #14
  %.not8.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i, label %bb.c, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.b
  %i.s = getelementptr i8, ptr %0, i64 16
  br label %real_to_double.exit

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.t = call i32 @_Py_convert_int_to_double(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #14
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %real_to_double.exit

real_to_double.exit:                              ; preds = %bb.c, %PyObject_TypeCheck.exit.thread.i
  %.in46 = phi ptr [ %i.s, %PyObject_TypeCheck.exit.thread.i ], [ %2, %bb.c ]
  %i.v = load double, ptr %.in46, align 8, !tbaa !23 ; 7 uses
  %i.w = fcmp olt <2 x double> %i.h, zeroinitializer
  %i.x = fneg <2 x double> %i.h
  %i.y = select <2 x i1> %i.w, <2 x double> %i.x, <2 x double> %i.h ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0  ; 2 uses
  %i.aa = extractelement <2 x double> %i.y, i64 1 ; 2 uses
  %i.ab = fcmp ult double %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.d

bb.d:                                             ; preds = %real_to_double.exit
  %7 = extractelement <2 x double> %i.h, i64 0    ; 3 uses
  %i.ac = fcmp oeq double %7, 0.000000e+00
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 33, ptr %i.d, align 4, !tbaa !7
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %8 = extractelement <2 x double> %i.h, i64 1    ; 2 uses
  %9 = fdiv double %8, %7                         ; 2 uses
  %10 = call double @llvm.fmuladd.f64(double %8, double %9, double %7)
  %i.ad = fneg double %i.v
  %i.ae = fmul double %9, %i.ad
  %11 = insertelement <2 x double> poison, double %i.v, i64 0
  %12 = insertelement <2 x double> %11, double %i.ae, i64 1
  %13 = insertelement <2 x double> poison, double %10, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x double> %12, %14
  br label %bb.i

bb.g:                                             ; preds = %real_to_double.exit
  %i.af = fcmp ult double %i.aa, %i.z
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %16 = extractelement <2 x double> %i.h, i64 0   ; 2 uses
  %17 = extractelement <2 x double> %i.h, i64 1   ; 2 uses
  %i.ag = fdiv double %16, %17                    ; 2 uses
  %i.ah = call double @llvm.fmuladd.f64(double %16, double %i.ag, double %17)
  %i.ai = fmul double %i.ag, %i.v
  %18 = fneg double %i.v
  %19 = insertelement <2 x double> poison, double %i.ai, i64 0
  %20 = insertelement <2 x double> %19, double %18, i64 1
  %21 = insertelement <2 x double> poison, double %i.ah, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = fdiv <2 x double> %20, %22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %24 = phi <2 x double> [ zeroinitializer, %bb.e ], [ %15, %bb.f ], [ %23, %bb.h ], [ splat (double +qnan), %bb.g ] ; 4 uses
  %25 = extractelement <2 x double> %24, i64 0
  %i.aj = fcmp ord double %25, 0.000000e+00
  %26 = extractelement <2 x double> %24, i64 1
  %i.ak = fcmp ord double %26, 0.000000e+00
  %or.cond.not47.i = or i1 %i.aj, %i.ak
  %i.al = call double @llvm.fabs.f64(double %i.v)
  %i.am = fcmp ueq double %i.al, +inf
  %or.cond43.i = or i1 %i.am, %or.cond.not47.i
  br i1 %or.cond43.i, label %_Py_rc_quot.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %27 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.h)
  %28 = fcmp oeq <2 x double> %27, splat (double +inf) ; 2 uses
  %29 = bitcast <2 x i1> %28 to i2
  %or.cond45.i.not = icmp eq i2 %29, 0
  br i1 %or.cond45.i.not, label %_Py_rc_quot.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %30 = select <2 x i1> %28, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %31 = fneg double %i.v
  %32 = call <2 x double> @llvm.copysign.v2f64(<2 x double> %30, <2 x double> %i.h)
  %33 = insertelement <2 x double> poison, double %i.v, i64 0
  %34 = insertelement <2 x double> %33, double %31, i64 1
  %35 = fmul nnan <2 x double> %32, %34
  %36 = fmul <2 x double> %35, zeroinitializer
  br label %_Py_rc_quot.exit

_Py_rc_quot.exit:                                 ; preds = %bb.i, %bb.j, %bb.k
  %37 = phi <2 x double> [ %36, %bb.k ], [ %24, %bb.j ], [ %24, %bb.i ] ; 2 uses
  store <2 x double> %37, ptr %2, align 16, !tbaa !23
  br label %.thread

bb.l:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %PyComplex_FromCComplex.exit

bb.m:                                             ; preds = %PyObject_TypeCheck.exit
  %i.ao = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %.not.i18 = icmp eq ptr %.val, @PyComplex_Type
  br i1 %.not.i18, label %PyObject_TypeCheck.exit19.thread, label %PyObject_TypeCheck.exit19

PyObject_TypeCheck.exit19:                        ; preds = %bb.m
  %i.ap = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef nonnull @PyComplex_Type) #14
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %PyComplex_FromCComplex.exit, label %PyObject_TypeCheck.exit19.thread

PyObject_TypeCheck.exit19.thread:                 ; preds = %bb.m, %PyObject_TypeCheck.exit19
  %i.aq = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.val.i20 = load ptr, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %.not.i.i21 = icmp eq ptr %.val.i20, @PyFloat_Type
  br i1 %.not.i.i21, label %PyObject_TypeCheck.exit.thread.i24, label %PyObject_TypeCheck.exit.i22

PyObject_TypeCheck.exit.i22:                      ; preds = %PyObject_TypeCheck.exit19.thread
  %i.ar = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i20, ptr noundef nonnull @PyFloat_Type) #14
  %.not8.i23 = icmp eq i32 %i.ar, 0
  br i1 %.not8.i23, label %bb.n, label %PyObject_TypeCheck.exit.thread.i24

PyObject_TypeCheck.exit.thread.i24:               ; preds = %PyObject_TypeCheck.exit.i22, %PyObject_TypeCheck.exit19.thread
  %i.as = getelementptr i8, ptr %1, i64 16
  br label %thread-pre-split

bb.n:                                             ; preds = %PyObject_TypeCheck.exit.i22
  %i.at = call i32 @_Py_convert_int_to_double(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.q, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.n, %PyObject_TypeCheck.exit.thread.i24
  %.in = phi ptr [ %i.as, %PyObject_TypeCheck.exit.thread.i24 ], [ %i.c, %bb.n ]
  %i.av = load double, ptr %.in, align 8, !tbaa !23 ; 2 uses
  %i.aw = fcmp une double %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %thread-pre-split
  %i.ax = load <2 x double>, ptr %2, align 16
  %i.ay = insertelement <2 x double> poison, double %i.av, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x double> %i.ax, %i.az
  br label %.thread37

bb.p:                                             ; preds = %thread-pre-split
  store i32 33, ptr %i.d, align 4, !tbaa !7
  br label %.thread37

.thread37:                                        ; preds = %bb.p, %bb.o
  %i.bb = phi <2 x double> [ %i.ba, %bb.o ], [ zeroinitializer, %bb.p ] ; 2 uses
  store <2 x double> %i.bb, ptr %2, align 16, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %.thread

bb.q:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %PyComplex_FromCComplex.exit

.thread:                                          ; preds = %PyObject_TypeCheck.exit17.thread, %_Py_rc_quot.exit, %.thread37
  %38 = phi <2 x double> [ %6, %PyObject_TypeCheck.exit17.thread ], [ %37, %_Py_rc_quot.exit ], [ %i.bb, %.thread37 ]
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !7
  %i.be = icmp eq i32 %i.bd, 33
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread
  %i.bf = load ptr, ptr @PyExc_ZeroDivisionError, align 8, !tbaa !42
  call void @PyErr_SetString(ptr noundef %i.bf, ptr noundef nonnull @.str.8) #14
  br label %PyComplex_FromCComplex.exit

bb.s:                                             ; preds = %.thread
  %i.bg = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 11184  ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %bb.t, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.s
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !14
  %i.bl = getelementptr i8, ptr %i.bh, i64 11192  ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !18
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bo = call ptr @PyObject_Malloc(i64 noundef 32) #14, !inline_history !25 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bq = call ptr @PyErr_NoMemory() #14, !inline_history !25
  br label %PyComplex_FromCComplex.exit

bb.v:                                             ; preds = %bb.t
  %i.br = getelementptr i8, ptr %i.bo, i64 8
  store ptr @PyComplex_Type, ptr %i.br, align 8, !tbaa !19
  %i.bs = load i32, ptr @PyComplex_Type, align 8, !tbaa !22 ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, -1073741825
  br i1 %i.bt, label %_PyObject_Init.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = add nuw i32 %i.bs, 1
  store i32 %i.bu, ptr @PyComplex_Type, align 8, !tbaa !22
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.w, %bb.v, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.bj, %_PyFreeList_Pop.exit.i ], [ %i.bo, %bb.v ], [ %i.bo, %bb.w ] ; 3 uses
  call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #14, !inline_history !25
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %.sink.i, i64 16
  store <2 x double> %38, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !23
  br label %PyComplex_FromCComplex.exit

PyComplex_FromCComplex.exit:                      ; preds = %_PyObject_Init.exit.i, %bb.u, %bb.q, %bb.l, %PyObject_TypeCheck.exit19, %bb.r
  %.2 = phi ptr [ null, %bb.r ], [ @_Py_NotImplementedStruct, %PyObject_TypeCheck.exit19 ], [ %i.an, %bb.l ], [ %i.bc, %bb.q ], [ %i.bq, %bb.u ], [ %.sink.i, %_PyObject_Init.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret ptr %.2
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @_Py_convert_int_to_double(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @real_to_complex(ptr noundef nonnull %0, ptr noundef nonnull initializes((8, 16)) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !46
  %i.b = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, @PyFloat_Type
  br i1 %.not.i.i, label %PyObject_TypeCheck.exit.thread.i, label %PyObject_TypeCheck.exit.i

PyObject_TypeCheck.exit.i:                        ; preds = %bb.a
  %i.d = tail call i32 @PyType_IsSubtype(ptr noundef %.val.i, ptr noundef nonnull @PyFloat_Type) #14
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %bb.b, label %PyObject_TypeCheck.exit.thread.i

PyObject_TypeCheck.exit.thread.i:                 ; preds = %PyObject_TypeCheck.exit.i, %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %.val6.i = load double, ptr %i.e, align 8, !tbaa !47
  store double %.val6.i, ptr %1, align 8, !tbaa !23
  br label %bb.c

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.i
  %i.f = tail call i32 @_Py_convert_int_to_double(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %real_to_double.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %PyObject_TypeCheck.exit.thread.i
  br label %real_to_double.exit

real_to_double.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0.i
}

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #8

declare i64 @_Py_HashDouble(ptr noundef, double noundef) local_unnamed_addr #8

declare ptr @PyObject_RichCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal ptr @complex_from_number(ptr noundef %0, ptr noundef %1) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.b = icmp eq ptr %.val.i, @PyComplex_Type
  %i.c = icmp eq ptr %0, @PyComplex_Type
  %or.cond.i = and i1 %i.c, %i.b
  br i1 %or.cond.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %complex_from_number_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %1, align 8, !tbaa !22
  br label %complex_from_number_impl.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call { double, double } @PyComplex_AsCComplex(ptr noundef nonnull %1), !inline_history !64 ; 2 uses
  %i.h = extractvalue { double, double } %i.g, 0  ; 2 uses
  %i.i = extractvalue { double, double } %i.g, 1
  %i.j = fcmp oeq double %i.h, -1.000000e+00
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @PyErr_Occurred() #14, !inline_history !64
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.f, label %complex_from_number_impl.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 11184    ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.g, label %_PyFreeList_Pop.exit.i.i

_PyFreeList_Pop.exit.i.i:                         ; preds = %bb.f
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  store ptr %i.p, ptr %i.n, align 8, !tbaa !14
  %i.q = getelementptr i8, ptr %i.m, i64 11192    ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @PyObject_Malloc(i64 noundef 32) #14, !inline_history !65 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr @PyErr_NoMemory() #14, !inline_history !65
  br label %PyComplex_FromCComplex.exit.i

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.t, i64 8
  store ptr @PyComplex_Type, ptr %i.w, align 8, !tbaa !19
  %i.x = load i32, ptr @PyComplex_Type, align 8, !tbaa !22 ; 2 uses
  %i.y = icmp ugt i32 %i.x, -1073741825
  br i1 %i.y, label %_PyObject_Init.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add nuw i32 %i.x, 1
  store i32 %i.z, ptr @PyComplex_Type, align 8, !tbaa !22
  br label %_PyObject_Init.exit.i.i

_PyObject_Init.exit.i.i:                          ; preds = %bb.j, %bb.i, %_PyFreeList_Pop.exit.i.i
  %.sink.i.i = phi ptr [ %i.o, %_PyFreeList_Pop.exit.i.i ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i.i) #14, !inline_history !65
  %i.aa = getelementptr i8, ptr %.sink.i.i, i64 16
  store double %i.h, ptr %i.aa, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %.sink.i.i, i64 24
  store double %i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !23
  br label %PyComplex_FromCComplex.exit.i

PyComplex_FromCComplex.exit.i:                    ; preds = %_PyObject_Init.exit.i.i, %bb.h
  %.06.i.i = phi ptr [ %i.v, %bb.h ], [ %.sink.i.i, %_PyObject_Init.exit.i.i ] ; 6 uses
  %i.ab = icmp ne ptr %0, @PyComplex_Type
  %i.ac = icmp ne ptr %.06.i.i, null
  %or.cond3.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond3.i, label %bb.k, label %complex_from_number_impl.exit

bb.k:                                             ; preds = %PyComplex_FromCComplex.exit.i
  %i.ad = tail call ptr @PyObject_CallOneArg(ptr noundef %0, ptr noundef nonnull %.06.i.i) #14, !inline_history !64 ; 3 uses
  %i.ae = load i32, ptr %.06.i.i, align 8, !tbaa !22 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i, label %bb.l, label %complex_from_number_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %.06.i.i, align 8, !tbaa !22
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %complex_from_number_impl.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %.06.i.i) #14, !inline_history !64
  br label %complex_from_number_impl.exit

complex_from_number_impl.exit:                    ; preds = %bb.b, %bb.c, %bb.e, %PyComplex_FromCComplex.exit.i, %bb.k, %bb.l, %bb.m
  %.1.i = phi ptr [ %.06.i.i, %PyComplex_FromCComplex.exit.i ], [ null, %bb.e ], [ %1, %bb.c ], [ %1, %bb.b ], [ %i.ad, %bb.k ], [ %i.ad, %bb.l ], [ %i.ad, %bb.m ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @complex_conjugate(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load double, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val1 = load double, ptr %i.b, align 8, !tbaa !23
  %i.c = fneg double %.val1
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 11184    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_PyFreeList_Pop.exit.i.i

_PyFreeList_Pop.exit.i.i:                         ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  store ptr %i.h, ptr %i.f, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %i.e, i64 11192    ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !18
  br label %_PyObject_Init.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @PyObject_Malloc(i64 noundef 32) #14, !inline_history !66 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @PyErr_NoMemory() #14, !inline_history !66
  br label %complex_conjugate_impl.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.l, i64 8
  store ptr @PyComplex_Type, ptr %i.o, align 8, !tbaa !19
  %i.p = load i32, ptr @PyComplex_Type, align 8, !tbaa !22 ; 2 uses
  %i.q = icmp ugt i32 %i.p, -1073741825
  br i1 %i.q, label %_PyObject_Init.exit.i.i, label %bb.e

end_hunk_1
begin_hunk_2_@complex_from_string_inner:bb.a
  br i1 %.not58, label %.loopexit72, label %.preheader71, !llvm.loop !74

.loopexit72:                                      ; preds = %.preheader71, %bb.c
  %.2 = phi ptr [ %.047, %bb.c ], [ %.1, %.preheader71 ] ; 5 uses
  %i.m = call double @PyOS_string_to_double(ptr noundef nonnull %.2, ptr noundef nonnull %i.a, ptr noundef null) #14 ; 4 uses
  %i.n = fcmp oeq double %i.m, -1.000000e+00
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.loopexit72
  %i.o = call ptr @PyErr_Occurred() #14
  %.not59 = icmp eq ptr %i.o, null
  br i1 %.not59, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !42
  %i.q = call i32 @PyErr_ExceptionMatches(ptr noundef %i.p) #14
  %.not60 = icmp eq i32 %i.q, 0
  br i1 %.not60, label %complex_subtype_from_doubles.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @PyErr_Clear() #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %.loopexit72
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !75   ; 8 uses
  %.not61 = icmp eq ptr %i.r, %.2
  br i1 %.not61, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.r, align 1, !tbaa !22
  switch i8 %i.s, label %bb.v [
    i8 43, label %bb.i
    i8 45, label %bb.i
    i8 106, label %bb.q
    i8 74, label %bb.q
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.t = call double @PyOS_string_to_double(ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, ptr noundef null) #14 ; 2 uses
  %i.u = fcmp oeq double %i.t, -1.000000e+00
  br i1 %i.u, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.v = call ptr @PyErr_Occurred() #14
  %.not62 = icmp eq ptr %i.v, null
  br i1 %.not62, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !42
  %i.x = call i32 @PyErr_ExceptionMatches(ptr noundef %i.w) #14
  %.not63 = icmp eq i32 %i.x, 0
  br i1 %.not63, label %complex_subtype_from_doubles.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @PyErr_Clear() #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %.not64 = icmp eq ptr %i.y, %i.r
  br i1 %.not64, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = load i8, ptr %i.r, align 1, !tbaa !22
  %i.aa = icmp eq i8 %i.z, 43
  %i.ab = select i1 %i.aa, double 1.000000e+00, double -1.000000e+00
  %i.ac = getelementptr i8, ptr %i.r, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.048 = phi double [ %i.ab, %bb.n ], [ %i.t, %bb.m ]
  %.3 = phi ptr [ %i.ac, %bb.n ], [ %i.y, %bb.m ] ; 2 uses
  %i.ad = load i8, ptr %.3, align 1, !tbaa !22
  switch i8 %i.ad, label %bb.ab [
    i8 106, label %bb.p
    i8 74, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.ae = getelementptr i8, ptr %.3, i64 1
  br label %bb.v

bb.q:                                             ; preds = %bb.h, %bb.h
  %i.af = getelementptr i8, ptr %i.r, i64 1
  br label %bb.v

bb.r:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %.2, align 1, !tbaa !22    ; 3 uses
  switch i8 %i.ag, label %bb.t [
    i8 43, label %bb.s
    i8 45, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.ah = icmp eq i8 %i.ag, 43
  %i.ai = select i1 %i.ah, double 1.000000e+00, double -1.000000e+00
  %i.aj = getelementptr i8, ptr %.2, i64 1        ; 2 uses
  %.pr = load i8, ptr %i.aj, align 1, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ak = phi i8 [ %i.ag, %bb.r ], [ %.pr, %bb.s ]
  %.149 = phi double [ 1.000000e+00, %bb.r ], [ %i.ai, %bb.s ]
  %.4 = phi ptr [ %.2, %bb.r ], [ %i.aj, %bb.s ]
  switch i8 %i.ak, label %bb.ab [
    i8 106, label %bb.u
    i8 74, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.al = getelementptr i8, ptr %.4, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.h, %bb.p, %bb.q, %bb.u
  %.051 = phi double [ %i.m, %bb.p ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.u ], [ %i.m, %bb.h ]
  %.250 = phi double [ %.048, %bb.p ], [ %i.m, %bb.q ], [ %.149, %bb.u ], [ 0.000000e+00, %bb.h ]
  %.5 = phi ptr [ %i.ae, %bb.p ], [ %i.af, %bb.q ], [ %i.al, %bb.u ], [ %i.r, %bb.h ]
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.6 = phi ptr [ %.5, %bb.v ], [ %i.ar, %bb.w ]  ; 4 uses
  %i.am = load i8, ptr %.6, align 1, !tbaa !22    ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = and i32 %i.ap, 8
  %.not65 = icmp eq i32 %i.aq, 0
  %i.ar = getelementptr i8, ptr %.6, i64 1
  br i1 %.not65, label %bb.x, label %bb.w, !llvm.loop !76

bb.x:                                             ; preds = %bb.w
  br i1 %.not67, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %.not68 = icmp eq i8 %i.am, 41
  br i1 %.not68, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.y, %.preheader
  %.6.pn = phi ptr [ %.7, %.preheader ], [ %.6, %bb.y ]
  %.7 = getelementptr i8, ptr %.6.pn, i64 1       ; 3 uses
  %i.as = load i8, ptr %.7, align 1, !tbaa !22
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = and i32 %i.av, 8
  %.not69 = icmp eq i32 %i.aw, 0
  br i1 %.not69, label %.loopexit, label %.preheader, !llvm.loop !77

.loopexit:                                        ; preds = %.preheader, %bb.x
  %.8 = phi ptr [ %.6, %bb.x ], [ %.7, %.preheader ]
  %i.ax = ptrtoint ptr %.8 to i64
  %i.ay = ptrtoint ptr %0 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.not70 = icmp eq i64 %i.az, %1
  br i1 %.not70, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.loopexit
  %i.ba = getelementptr i8, ptr %2, i64 304
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bc = call ptr %i.bb(ptr noundef %2, i64 noundef 0) #14, !inline_history !56 ; 4 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %complex_subtype_from_doubles.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store double %.051, ptr %i.bd, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bc, i64 24
  store double %.250, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !23
  br label %complex_subtype_from_doubles.exit

bb.ab:                                            ; preds = %bb.t, %bb.o, %.loopexit, %bb.y
  %i.be = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !42
  call void @PyErr_SetString(ptr noundef %i.be, ptr noundef nonnull @.str.30) #14
  br label %complex_subtype_from_doubles.exit

complex_subtype_from_doubles.exit:                ; preds = %bb.aa, %bb.z, %bb.k, %bb.e, %bb.ab
  %.0 = phi ptr [ null, %bb.ab ], [ null, %bb.k ], [ null, %bb.e ], [ null, %bb.z ], [ %i.bc, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.0
}

declare double @PyOS_string_to_double(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #8

declare void @PyErr_Clear() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.copysign.v2f64(<2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { memory(none) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS3_is", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"_Py_freelist", !13, i64 0, !16, i64 8}
!16 = !{!"long", !9, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!15, !16, i64 8}
!19 = !{!20, !21, i64 8}
!20 = !{!"_object", !9, i64 0, !21, i64 8}
!21 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !9, i64 0}
!25 = !{ptr @PyComplex_FromCComplex}
!26 = !{!27, !24, i64 16}
!27 = !{!"", !20, i64 0, !28, i64 16}
!28 = !{!"", !24, i64 0, !24, i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS3_ts", !13, i64 0}
!31 = !{!32, !16, i64 168}
!32 = !{!"_typeobject", !33, i64 0, !34, i64 24, !16, i64 32, !16, i64 40, !13, i64 48, !16, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !16, i64 168, !34, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !16, i64 208, !13, i64 216, !13, i64 224, !35, i64 232, !36, i64 240, !37, i64 248, !21, i64 256, !38, i64 264, !13, i64 272, !13, i64 280, !16, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !38, i64 336, !38, i64 344, !38, i64 352, !13, i64 360, !38, i64 368, !13, i64 376, !8, i64 384, !13, i64 392, !13, i64 400, !9, i64 408, !39, i64 410}
!33 = !{!"PyVarObject", !20, i64 0, !16, i64 16}
!34 = !{!"p1 omnipotent char", !13, i64 0}
!35 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!36 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!37 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!38 = !{!"p1 _ZTS7_object", !13, i64 0}
!39 = !{!"short", !9, i64 0}
!40 = !{!32, !16, i64 56}
!41 = distinct !{null, null}
!42 = !{!38, !38, i64 0}
!43 = !{!27, !24, i64 24}
!44 = !{!32, !13, i64 320}
!45 = !{i64 0, i64 8, !23, i64 8, i64 8, !23}
!46 = !{!28, !24, i64 8}
!47 = !{!48, !24, i64 16}
!48 = !{!"", !20, i64 0, !24, i64 16}
!49 = !{!28, !24, i64 0}
!50 = !{!33, !16, i64 16}
!51 = !{!52, !16, i64 16}
!52 = !{!"", !20, i64 0, !16, i64 16, !16, i64 24, !53, i64 32, !54, i64 40}
!53 = !{!"p1 _ZTS15_dictkeysobject", !13, i64 0}
!54 = !{!"p1 _ZTS11_dictvalues", !13, i64 0}
!55 = !{!32, !13, i64 304}
!56 = distinct !{null, null}
!57 = !{!16, !16, i64 0}
!58 = !{!32, !13, i64 96}
!59 = !{!60, !13, i64 144}
!60 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280}
!61 = !{!60, !13, i64 264}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{null}
!65 = distinct !{null, ptr @PyComplex_FromCComplex}
!66 = distinct !{null, ptr @PyComplex_FromCComplex}
!67 = distinct !{null, ptr @PyComplex_FromCComplex}
!68 = !{!69, !16, i64 16}
!69 = !{!"", !20, i64 0, !16, i64 16, !16, i64 24, !70, i64 32}
!70 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!71 = distinct !{null}
!72 = distinct !{null, null, null}
!73 = distinct !{!73, !63}
!74 = distinct !{!74, !63}
!75 = !{!34, !34, i64 0}
!76 = distinct !{!76, !63}
!77 = distinct !{!77, !63}
end_hunk_2
