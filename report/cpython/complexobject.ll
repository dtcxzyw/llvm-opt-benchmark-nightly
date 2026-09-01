Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/complexobject?download=true
inline.NumInlined: 135
inline.NumDeleted: 39
begin_hunk_0
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
  %i.a = insertelement <2 x double> poison, double %1, i64 0
  %i.b = insertelement <2 x double> %i.a, double %0, i64 1 ; 4 uses
  %i.c = insertelement <2 x double> poison, double %2, i64 0
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> zeroinitializer
  %i.e = fmul <2 x double> %i.b, %i.d             ; 3 uses
  %i.f = insertelement <2 x double> poison, double %3, i64 0 ; 3 uses
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x double> %i.b, %i.g             ; 2 uses
  %4 = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.i = fadd <2 x double> %i.e, %4               ; 2 uses
  %i.j = fsub <2 x double> %i.e, %4               ; 2 uses
  %i.k = shufflevector <2 x double> %i.i, <2 x double> %i.j, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.l = extractelement <2 x double> %i.j, i64 1
  %i.m = fcmp uno double %i.l, 0.000000e+00
  %i.n = extractelement <2 x double> %i.i, i64 0
  %i.o = fcmp uno double %i.n, 0.000000e+00
  %or.cond = and i1 %i.m, %i.o
  br i1 %or.cond, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.p = tail call double @llvm.fabs.f64(double %0) #12
  %i.q = fcmp oeq double %i.p, +inf
  %.pre = tail call double @llvm.fabs.f64(double %1) #12 ; 2 uses
  br i1 %i.q, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = fcmp oeq double %.pre, +inf
  %i.s = insertelement <2 x double> %i.f, double %2, i64 1
  br i1 %i.r, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.t = phi double [ 0.000000e+00, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.u = fcmp oeq double %.pre, +inf
  %i.v = select i1 %i.u, double 1.000000e+00, double 0.000000e+00
  %i.w = insertelement <2 x double> poison, double %i.v, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.t, i64 1
  %i.y = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %i.x, <2 x double> %i.b)
  %i.z = insertelement <2 x double> %i.f, double %2, i64 1 ; 3 uses
  %i.aa = fcmp uno <2 x double> %i.z, zeroinitializer
  %i.ab = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %i.z)
  %i.ac = select <2 x i1> %i.aa, <2 x double> %i.ab, <2 x double> %i.z
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.not = phi i1 [ false, %._crit_edge ], [ true, %bb.c ]
  %i.ad = phi <2 x double> [ %i.ac, %._crit_edge ], [ %i.s, %bb.c ] ; 7 uses
  %i.ae = phi <2 x double> [ %i.y, %._crit_edge ], [ %i.b, %bb.c ] ; 7 uses
  %i.af = extractelement <2 x double> %i.ad, i64 1
  %i.ag = tail call double @llvm.fabs.f64(double %i.af) #12
  %i.ah = fcmp oeq double %i.ag, +inf
  %i.ai = extractelement <2 x double> %i.ad, i64 0
  %.pre87 = tail call double @llvm.fabs.f64(double %i.ai) #12 ; 2 uses
  br i1 %i.ah, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = fcmp oeq double %.pre87, +inf
  br i1 %i.aj, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d, %bb.e
  %i.ak = phi double [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.d ]
  %i.al = fcmp oeq double %.pre87, +inf
  %i.am = select i1 %i.al, double 1.000000e+00, double 0.000000e+00
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.ak, i64 1
  %i.ap = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %i.ao, <2 x double> %i.ad)
  %i.aq = fcmp uno <2 x double> %i.ae, zeroinitializer
  %i.ar = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %i.ae)
  %i.as = select <2 x i1> %i.aq, <2 x double> %i.ar, <2 x double> %i.ae
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %5 = shufflevector <2 x double> %i.e, <2 x double> %i.h, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.at = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %5)
  %i.au = fcmp oeq <4 x double> %i.at, splat (double +inf)
  %i.av = bitcast <4 x i1> %i.au to i4
  %.not92 = icmp eq i4 %i.av, 0
  br i1 %.not92, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = fcmp uno <2 x double> %i.ae, zeroinitializer
  %i.ax = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %i.ae)
  %i.ay = select <2 x i1> %i.aw, <2 x double> %i.ax, <2 x double> %i.ae
  %i.az = fcmp uno <2 x double> %i.ad, zeroinitializer
  %i.ba = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> zeroinitializer, <2 x double> %i.ad)
  %i.bb = select <2 x i1> %i.az, <2 x double> %i.ba, <2 x double> %i.ad
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.f, %bb.h
  %i.bc = phi <2 x double> [ %i.ad, %bb.f ], [ %i.bb, %bb.h ], [ %i.ap, %.thread ] ; 3 uses
  %i.bd = phi <2 x double> [ %i.ae, %bb.f ], [ %i.ay, %bb.h ], [ %i.as, %.thread ] ; 2 uses
  %6 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fneg <2 x double> %i.bc
  %i.bf = shufflevector <2 x double> %i.bc, <2 x double> %i.be, <2 x i32> <i32 1, i32 2>
  %i.bg = fmul <2 x double> %6, %i.bf
  %7 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %i.bc, <2 x double> %i.bg)
  %i.bi = fmul <2 x double> %i.bh, splat (double +inf)
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.g, %bb.a
  %i.bj = phi <2 x double> [ %i.k, %bb.a ], [ %i.bi, %bb.i ], [ %i.k, %bb.g ] ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.bk, 0
  %i.bl = extractelement <2 x double> %i.bj, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.bl, 1
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
  %i.l = fneg double %0
  %i.m = insertelement <2 x double> poison, double %i.l, i64 0
  %i.n = insertelement <2 x double> %i.m, double %1, i64 1
  %i.o = insertelement <2 x double> poison, double %i.j, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = insertelement <2 x double> poison, double %1, i64 0
  %i.r = insertelement <2 x double> %i.q, double %0, i64 1
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.p, <2 x double> %i.r)
  %i.t = insertelement <2 x double> poison, double %i.k, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fdiv <2 x double> %i.s, %i.u
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.w = fcmp ult double %i.f, %i.c
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = fdiv double %2, %3                       ; 2 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %2, double %i.x, double %3)
  %i.z = fneg double %0
  %i.aa = insertelement <2 x double> poison, double %1, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %0, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x double> poison, double %i.z, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %1, i64 1
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ad, <2 x double> %i.af)
  %i.ah = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv <2 x double> %i.ag, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.ak = phi <2 x double> [ splat (double +qnan), %bb.d ], [ %i.v, %bb.c ], [ %i.aj, %bb.e ] ; 4 uses
  %i.al = extractelement <2 x double> %i.ak, i64 1
  %i.am = fcmp uno double %i.al, 0.000000e+00
  %i.an = extractelement <2 x double> %i.ak, i64 0
  %i.ao = fcmp uno double %i.an, 0.000000e+00
  %or.cond = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ap = insertelement <2 x double> poison, double %1, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %0, i64 1 ; 4 uses
  %i.ar = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aq) ; 3 uses
  %i.as = fcmp une <2 x double> %i.ar, splat (double +inf) ; 3 uses
  %i.at = extractelement <2 x i1> %i.as, i64 0
  %i.au = extractelement <2 x i1> %i.as, i64 1
  %or.cond69.not84 = select i1 %i.au, i1 %i.at, i1 false
  %i.av = tail call double @llvm.fabs.f64(double %2) ; 2 uses
  %i.aw = fcmp ueq double %i.av, +inf
  %or.cond71 = or i1 %or.cond69.not84, %i.aw
  %i.ax = tail call double @llvm.fabs.f64(double %3) ; 2 uses
  %i.ay = fcmp ueq double %i.ax, +inf
  %or.cond73 = or i1 %or.cond71, %i.ay
  br i1 %or.cond73, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = select <2 x i1> %i.as, <2 x double> zeroinitializer, <2 x double> splat (double 1.000000e+00)
  %i.ba = tail call <2 x double> @llvm.copysign.v2f64(<2 x double> %i.az, <2 x double> %i.aq) ; 2 uses
  %i.bb = insertelement <2 x double> poison, double %3, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.e, i64 1
  %i.bd = fmul nnan <2 x double> %i.ba, %i.bc
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = insertelement <2 x double> poison, double %2, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bg, <2 x double> %i.be)
  %i.bi = fmul <2 x double> %i.bh, splat (double +inf)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bj = fcmp une double %i.av, +inf             ; 2 uses
  %i.bk = fcmp une double %i.ax, +inf             ; 2 uses
  %or.cond75.not86 = and i1 %i.bj, %i.bk
  %i.bl = extractelement <2 x double> %i.ar, i64 1
  %i.bm = fcmp ueq double %i.bl, +inf
  %or.cond77 = or i1 %i.bm, %or.cond75.not86
  %i.bn = extractelement <2 x double> %i.ar, i64 0
  %i.bo = fcmp ueq double %i.bn, +inf
  %or.cond79 = select i1 %or.cond77, i1 true, i1 %i.bo
  br i1 %or.cond79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = select i1 %i.bj, double 0.000000e+00, double 1.000000e+00
  %i.bq = tail call double @llvm.copysign.f64(double %i.bp, double %2)
  %i.br = select i1 %i.bk, double 0.000000e+00, double 1.000000e+00
  %i.bs = tail call double @llvm.copysign.f64(double %i.br, double %3) ; 2 uses
  %i.bt = fneg double %i.bs
  %i.bu = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bt, i64 1
  %i.bw = fmul nnan <2 x double> %i.aq, %i.bv
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.by = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.bz, <2 x double> %i.bx)
  %i.cb = fmul <2 x double> %i.ca, zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.h, %bb.j, %bb.f
  %i.cc = phi <2 x double> [ %i.bi, %bb.h ], [ %i.cb, %bb.j ], [ %i.ak, %bb.i ], [ %i.ak, %bb.f ], [ zeroinitializer, %.thread ] ; 2 uses
  %i.cd = extractelement <2 x double> %i.cc, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cd, 0
  %i.ce = extractelement <2 x double> %i.cc, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ce, 1
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
  %i.b = insertelement <2 x double> poison, double %0, i64 0
  %i.c = insertelement <2 x double> %i.b, double %1, i64 1
  %i.d = insertelement <2 x double> poison, double %2, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fdiv <2 x double> %i.c, %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #13
  store i32 33, ptr %i.g, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi <2 x double> [ %i.f, %bb.b ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.i, 0
  %i.j = extractelement <2 x double> %i.h, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.j, 1
  ret { double, double } %.fca.1.insert
}

end_hunk_0
