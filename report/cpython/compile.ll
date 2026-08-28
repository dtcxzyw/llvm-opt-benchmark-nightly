Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/compile?download=true
inline.NumInlined: 69
inline.NumDeleted: 21
begin_hunk_0
%struct.anon.777 = type { %struct.PyASCIIObject, [15 x i8] }
%struct.anon.778 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.779 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.780 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.781 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.782 = type { %struct.PyASCIIObject, [20 x i8] }
%struct.anon.783 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.784 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.785 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.786 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.787 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.788 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.789 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.790 = type { %struct.PyASCIIObject, [16 x i8] }
%struct.anon.791 = type { %struct.PyASCIIObject, [12 x i8] }
%struct.anon.792 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.793 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.794 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.795 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.796 = type { %struct.PyASCIIObject, [11 x i8] }
%struct.anon.797 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.798 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.799 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.800 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.801 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.802 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.803 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.804 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.805 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.806 = type { %struct.PyASCIIObject, [19 x i8] }
%struct.anon.807 = type { %struct.PyASCIIObject, [26 x i8] }
%struct.anon.808 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.809 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.810 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.811 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.812 = type { %struct.PyASCIIObject, [17 x i8] }
%struct.anon.813 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.814 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.815 = type { %struct.PyASCIIObject, [11 x i8] }
%struct.anon.816 = type { %struct.PyASCIIObject, [13 x i8] }
%struct.anon.817 = type { %struct.PyASCIIObject, [11 x i8] }
%struct.anon.818 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.819 = type { %struct.PyASCIIObject, [14 x i8] }
%struct.anon.820 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.821 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.822 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.823 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.824 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.825 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.826 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.827 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.828 = type { %struct.PyASCIIObject, [11 x i8] }
%struct.anon.829 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.830 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.831 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.832 = type { %struct.PyASCIIObject, [12 x i8] }
%struct.anon.833 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.834 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.835 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.836 = type { %struct.PyASCIIObject, [28 x i8] }
%struct.anon.837 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.838 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.839 = type { %struct.PyASCIIObject, [11 x i8] }
%struct.anon.840 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.841 = type { %struct.PyASCIIObject, [20 x i8] }
%struct.anon.842 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.843 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.844 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.845 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.846 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.847 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.848 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.849 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.850 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.851 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.852 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.853 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.854 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.855 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.856 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.857 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.858 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.859 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.860 = type { %struct.PyASCIIObject, [13 x i8] }
%struct.anon.861 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.862 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.863 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.864 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.865 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.866 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.867 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.868 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.869 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.870 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.871 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.872 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.873 = type { %struct.PyASCIIObject, [12 x i8] }
%struct.anon.874 = type { %struct.PyASCIIObject, [3 x i8] }
%struct.anon.875 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.876 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.877 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.878 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.879 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.880 = type { %struct.PyASCIIObject, [15 x i8] }
%struct.anon.881 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.882 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.883 = type { %struct.PyASCIIObject, [16 x i8] }
%struct.anon.884 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.885 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.886 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.887 = type { %struct.PyASCIIObject, [7 x i8] }
%struct.anon.888 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.889 = type { %struct.PyASCIIObject, [20 x i8] }
%struct.anon.890 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.891 = type { %struct.PyASCIIObject, [12 x i8] }
%struct.anon.892 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.893 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.894 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.895 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.896 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.897 = type { %struct.PyASCIIObject, [4 x i8] }
%struct.anon.898 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.899 = type { %struct.PyASCIIObject, [8 x i8] }
%struct.anon.900 = type { %struct.PyASCIIObject, [9 x i8] }
%struct.anon.901 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.902 = type { %struct.PyASCIIObject, [14 x i8] }
%struct.anon.903 = type { %struct.PyASCIIObject, [5 x i8] }
%struct.anon.904 = type { %struct.PyASCIIObject, [6 x i8] }
%struct.anon.905 = type { %struct.PyASCIIObject, [10 x i8] }
%struct.anon.906 = type { %struct.PyASCIIObject, [2 x i8] }
%struct.anon.907 = type { %struct.PyCompactUnicodeObject, [2 x i8] }
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
%struct._import_state = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, %struct._PyRecursiveMutex, %struct.anon.908 }
%struct._PyRecursiveMutex = type { %struct.PyMutex, i64, i64 }
%struct.anon.908 = type { i32, i64, i32 }
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
%struct.types_state = type { i32, %struct.type_cache, %struct.anon.910, %struct.anon.911, %struct.PyMutex, [4096 x ptr] }
%struct.type_cache = type { [4096 x %struct.type_cache_entry] }
%struct.type_cache_entry = type { i32, ptr, ptr }
%struct.anon.910 = type { i64, [202 x %struct.managed_static_type_state] }
%struct.managed_static_type_state = type { ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.911 = type { i64, i64, [10 x %struct.managed_static_type_state] }
%struct.callable_cache = type { ptr, ptr, ptr, ptr }
%struct._PyOptimizationConfig = type { i16, i16, i16, i16, i8, i8 }
%struct._rare_events = type { i8, i8, i8, i8, i8 }
%struct._Py_GlobalMonitors = type { [16 x i8] }
%struct._PyOnceFlag = type { i8 }
%struct._Py_interp_cached_objects = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Py_interp_static_objects = type { %struct.anon.912 }
%struct.anon.912 = type { i32, %struct.PyGC_Head, %struct.PyHamtObject, %struct.PyBaseExceptionObject }
%struct.PyHamtObject = type { %struct._object, ptr, ptr, i64 }
%struct.PyBaseExceptionObject = type { %struct._object, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._PyThreadStateImpl = type { %struct._ts, %struct._PyInterpreterFrame, i64, i64, i64, i64, i64, i64, ptr, ptr, i32, %struct.llist_node, ptr, %struct.llist_node }
%struct._ts = type { ptr, ptr, ptr, i64, %struct.anon.913, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, ptr, i64, i32, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, %struct._err_stackitem, ptr, ptr, i64, ptr, ptr, %struct._PyRemoteDebuggerSupport }
%struct.anon.913 = type { i32 }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyRemoteDebuggerSupport = type { i32, [512 x i8] }
%struct._PyInterpreterFrame = type { %union._PyStackRef, ptr, %union._PyStackRef, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, [1 x %union._PyStackRef] }
%union._PyStackRef = type { i64 }
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i16 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.instruction_sequence = type { %struct._object, ptr, i32, i32, i32, ptr, i32, ptr, ptr }
%struct._PyFutureFeatures = type { i32, %struct._Py_SourceLocation }
%struct._Py_SourceLocation = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"compile.c compiler unit\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"Exception ignored while removing the last compiler stack item\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"Exception ignored while appending nested instruction sequence\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"too many statically nested blocks\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"__class__\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"__classdict__\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"__conditional_annotations__\00", align 1
@PyExc_SystemError = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [100 x i8] c"_PyST_GetScope(name=%R) failed: unknown scope in unit %S (%R); symbols: %R; locals: %R; globals: %R\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"compiler_lookup_arg(name=%R) with reftype=%d failed in %S; freevars of code %S: %R\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"expandtabs\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [16 x i8] c"expected an AST\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"argcount\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"posonlyargcount\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"kwonlyargcount\00", align 1
@_PyInstructionSequence_Type = external global %struct._typeobject, align 8
@.str.15 = private unnamed_addr constant [33 x i8] c"expected an instruction sequence\00", align 1
@PyExc_KeyError = external local_unnamed_addr global ptr, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@_Py_EllipsisObject = external global %struct._object, align 8
@PyFrozenSet_Type = external global %struct._typeobject, align 8
@.str.16 = private unnamed_addr constant [12 x i8] c"no symtable\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"module kind %d should not be possible\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyCompile_MaybeAddStaticAttributeToClass(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq i32 %i.c, 26
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !11
  %.not20 = icmp eq i32 %i.e, 2
  br i1 %.not20, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.g, ptr noundef nonnull @.str) #11
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %.val = load i64, ptr %i.k, align 8, !tbaa !24
  %.029 = add i64 %.val, -1                       ; 2 uses
  %i.l = icmp sgt i64 %.029, -1
  br i1 %i.l, label %.lr.ph, label %.thread24

bb.e:                                             ; preds = %.lr.ph
  %.0 = add nsw i64 %.030, -1
  %i.m = icmp sgt i64 %.030, 0
  br i1 %i.m, label %.lr.ph, label %.thread24, !llvm.loop !29

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.030 = phi i64 [ %.0, %bb.e ], [ %.029, %bb.d ] ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %.030
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35
  %i.s = tail call ptr @PyCapsule_GetPointer(ptr noundef %i.r, ptr noundef nonnull @.str.1) #11 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !36
  %.not22 = icmp eq i32 %i.u, 1
  br i1 %.not22, label %bb.f, label %bb.e, !llvm.loop !29

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr i8, ptr %i.s, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = getelementptr i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.z = tail call i32 @PySet_Add(ptr noundef %i.w, ptr noundef %i.y) #11
  %.fr = freeze i32 %i.z
  %.not28 = icmp eq i32 %.fr, -1
  br i1 %.not28, label %bb.g, label %.thread24

.thread24:                                        ; preds = %bb.e, %bb.d, %bb.f
  br label %bb.g

bb.g:                                             ; preds = %.thread24, %bb.f, %bb.a, %bb.b, %bb.c
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.thread24 ], [ -1, %bb.f ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @_PyUnicode_EqualToASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyCapsule_GetPointer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PySet_Add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i64 @_PyCompile_DictAddObj(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call i32 @PyDict_GetItemRef(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) #11
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Py_DECREF.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %i.f = call ptr @PyLong_FromSsize_t(i64 noundef %.val) #11 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !35
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %Py_DECREF.exit12, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call i32 @PyDict_SetItem(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.f) #11
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %.not.i11 = icmp sgt i32 %i.j, -1
  br i1 %.not.i11, label %bb.f, label %Py_DECREF.exit12

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !11
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %Py_DECREF.exit12.sink.split, label %Py_DECREF.exit12

bb.g:                                             ; preds = %bb.b
  %i.m = call i64 @PyLong_AsLong(ptr noundef nonnull %i.d) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.0 = phi i64 [ %i.m, %bb.g ], [ %.val, %bb.d ] ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp sgt i32 %i.o, -1
  br i1 %.not.i, label %bb.i, label %Py_DECREF.exit12

bb.i:                                             ; preds = %bb.h
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !11
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit12.sink.split, label %Py_DECREF.exit12

Py_DECREF.exit12.sink.split:                      ; preds = %bb.i, %bb.f
  %.sink = phi ptr [ %i.i, %bb.f ], [ %i.n, %bb.i ]
  %.07.ph = phi i64 [ -1, %bb.f ], [ %.0, %bb.i ]
  call void @_Py_Dealloc(ptr noundef nonnull %.sink) #11
  br label %Py_DECREF.exit12

Py_DECREF.exit12:                                 ; preds = %Py_DECREF.exit12.sink.split, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.a
  %.07 = phi i64 [ -1, %bb.a ], [ %.0, %bb.i ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.f ], [ %.0, %bb.h ], [ %.07.ph, %Py_DECREF.exit12.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.07
}

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #2

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i64 @_PyCompile_AddConst(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call fastcc ptr @const_cache_insert(ptr noundef %i.b, ptr noundef %1, i1 noundef zeroext true) ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
end_hunk_0
begin_hunk_1_@const_cache_insert:bb.a
Py_DECREF.exit114.thread146:                      ; preds = %Py_DECREF.exit114.thread146.sink.split, %bb.ar, %bb.as, %bb.aj, %Py_DECREF.exit112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.critedge

Py_DECREF.exit114:                                ; preds = %bb.av, %bb.au, %bb.at
  %i.ca = getelementptr i8, ptr %i.g, i64 40
  store ptr %i.bq, ptr %i.ca, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.critedge

.critedge:                                        ; preds = %Py_DECREF.exit120, %bb.k, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %Py_DECREF.exit114, %Py_DECREF.exit114.thread146, %bb.m, %bb.n, %bb.o, %Py_DECREF.exit122, %Py_DECREF.exit124
  %.9 = phi ptr [ %i.m, %Py_DECREF.exit124 ], [ %i.g, %bb.y ], [ %i.g, %Py_DECREF.exit122 ], [ null, %Py_DECREF.exit114.thread146 ], [ null, %bb.o ], [ null, %bb.n ], [ null, %bb.m ], [ %i.g, %Py_DECREF.exit114 ], [ %i.g, %bb.z ], [ null, %bb.ad ], [ null, %bb.ac ], [ null, %bb.ab ], [ %i.g, %bb.k ], [ %i.g, %Py_DECREF.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge, %bb.b, %bb.a
  %.11 = phi ptr [ %1, %bb.a ], [ %.9, %.critedge ], [ null, %bb.b ]
  ret ptr %.11
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyCompile_OptimizeAndAssemble(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.instruction_sequence, align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !82
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !52   ; 5 uses
  %i.i = tail call i32 @_PyST_IsFunctionLike(ptr noundef %i.h) #11
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr i8, ptr %i.h, i64 92
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4
  %.pre39.i = and i8 %.pre.i, 3
  br label %compute_code_flags.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.h, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !107
  %.not24.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not24.i, i32 3, i32 19 ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 92
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, 3                           ; 3 uses
  %or.cond.i = icmp eq i8 %i.n, 1
  %i.o = or disjoint i32 %spec.select.i, 32
  %.1.i = select i1 %or.cond.i, i32 %i.o, i32 %spec.select.i ; 2 uses
  %or.cond35.not.i = icmp eq i8 %i.n, 3
  %i.p = or disjoint i32 %.1.i, 512
  %.2.i = select i1 %or.cond35.not.i, i32 %i.p, i32 %.1.i
  %i.q = getelementptr i8, ptr %i.h, i64 100
  %i.r = load i16, ptr %i.q, align 4              ; 2 uses
  %i.s = shl i16 %i.r, 2
  %i.t = and i16 %i.r, 768
  %i.u = zext nneg i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 18
  %.338.i = and i16 %i.s, 12
  %.3.i = zext nneg i16 %.338.i to i32
  %.4.i = or disjoint i32 %i.v, %.3.i
  %spec.select37.i = or disjoint i32 %.4.i, %.2.i
  br label %compute_code_flags.exit

compute_code_flags.exit:                          ; preds = %._crit_edge.i, %bb.b
  %.pre-phi.i = phi i8 [ %.pre39.i, %._crit_edge.i ], [ %i.n, %bb.b ]
  %.6.i = phi i32 [ 0, %._crit_edge.i ], [ %spec.select37.i, %bb.b ] ; 2 uses
  %or.cond36.i = icmp eq i8 %.pre-phi.i, 2
  %i.w = or i32 %.6.i, 128
  %.7.i = select i1 %or.cond36.i, i32 %i.w, i32 %.6.i
  %i.x = getelementptr i8, ptr %0, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !108
  %i.z = and i32 %i.y, 33423360
  %i.aa = or i32 %.7.i, %i.z
  %i.ab = tail call i32 @_PyCodegen_AddReturnAtEnd(ptr noundef nonnull %0, i32 noundef %1) #11
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.c

bb.c:                                             ; preds = %compute_code_flags.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 72, i1 false)
  %i.ad = getelementptr i8, ptr %i.d, i64 928     ; 2 uses
  %i.ae = getelementptr i8, ptr %i.d, i64 944
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48
  %i.ag = tail call fastcc ptr @consts_dict_keys_inorder(ptr noundef %i.af) ; 6 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %optimize_and_assemble_code_unit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %i.d, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67
  %i.ak = tail call ptr @_PyCfg_FromInstructionSequence(ptr noundef %i.aj) #11 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.d, i64 960
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %.val24.i = load i64, ptr %i.ao, align 8, !tbaa !42
  %i.ap = trunc i64 %.val24.i to i32
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.ar = getelementptr i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %.val.i = load i64, ptr %i.at, align 8, !tbaa !24
  %i.au = trunc i64 %.val.i to i32
  %i.av = getelementptr i8, ptr %i.d, i64 1016
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !65
  %i.ax = tail call i32 @_PyCfg_OptimizeCodeUnit(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ag, ptr noundef %i.f, i32 noundef %i.ap, i32 noundef %i.au, i32 noundef %i.aw) #11
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = call i32 @_PyCfg_OptimizedCfgToInstructionSequence(ptr noundef nonnull %i.ak, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %2) #11
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !7
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bd = call ptr @_PyAssemble_MakeCodeObject(ptr noundef %i.ad, ptr noundef %i.f, ptr noundef nonnull %i.ag, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.bc, i32 noundef range(i32 0, -2147483648) %i.aa, ptr noundef %i.g) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.021.ph.i = phi ptr [ %i.bd, %bb.g ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ] ; 3 uses
  %i.be = load i32, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i.i.i, label %bb.i, label %optimize_and_assemble_code_unit.exit

bb.i:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.ag, align 8, !tbaa !11
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %optimize_and_assemble_code_unit.exit

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #11
  br label %optimize_and_assemble_code_unit.exit

optimize_and_assemble_code_unit.exit:             ; preds = %bb.c, %bb.h, %bb.i, %bb.j
  %.030.i = phi ptr [ %i.ak, %bb.j ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ], [ null, %bb.c ]
  %.02128.i = phi ptr [ %.021.ph.i, %bb.j ], [ %.021.ph.i, %bb.h ], [ %.021.ph.i, %bb.i ], [ null, %bb.c ]
  call void @PyInstructionSequence_Fini(ptr noundef nonnull %2) #11
  call void @_PyCfgBuilder_Free(ptr noundef %.030.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %compute_code_flags.exit, %optimize_and_assemble_code_unit.exit
  %.0 = phi ptr [ %.02128.i, %optimize_and_assemble_code_unit.exit ], [ null, %compute_code_flags.exit ]
  ret ptr %.0
}

declare i32 @_PyCodegen_AddReturnAtEnd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyAST_Compile(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @new_compiler(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !109
  %i.d = tail call fastcc i32 @compiler_codegen(ptr noundef nonnull %i.a, ptr noundef nonnull %0)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %compiler_mod.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i32 %i.c, 3
  %i.g = zext i1 %i.f to i32
  %i.h = tail call ptr @_PyCompile_OptimizeAndAssemble(ptr noundef nonnull %i.a, i32 noundef %i.g)
  br label %compiler_mod.exit

compiler_mod.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  tail call void @_PyCompile_ExitScope(ptr noundef nonnull %i.a)
  tail call fastcc void @compiler_free(ptr noundef %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %compiler_mod.exit
  %.0 = phi ptr [ %.0.i, %compiler_mod.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @new_compiler(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 5 uses
  %i.a = tail call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef 96) #11 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i64 64424509440, ptr %.sroa.0, align 8
  %i.c = tail call ptr @PyDict_New() #11          ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyList_New(i64 noundef 0) #11 ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 72
  store ptr %i.e, ptr %i.f, align 8, !tbaa !14
  %.not36.i = icmp eq ptr %i.e, null
  br i1 %.not36.i, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %1, align 8, !tbaa !11
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.e, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !82
  %i.j = getelementptr i8, ptr %i.a, i64 16       ; 4 uses
  %i.k = tail call i32 @_PyFuture_FromAST(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.j) #11
  %.not37.i = icmp eq i32 %i.k, 0
  br i1 %.not37.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit.i
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %_Py_XNewRef.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %5, align 8, !tbaa !11     ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %_Py_XNewRef.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add nuw i32 %i.l, 1
  store i32 %i.n, ptr %5, align 8, !tbaa !11
  br label %_Py_XNewRef.exit.i

_Py_XNewRef.exit.i:                               ; preds = %bb.h, %bb.g, %bb.f
  %i.o = getelementptr i8, ptr %i.a, i64 88
  store ptr %5, ptr %i.o, align 8, !tbaa !98
  %.not38.i = icmp eq ptr %2, null
  %spec.store.select.i = select i1 %.not38.i, ptr %.sroa.0, ptr %2 ; 3 uses
  %i.p = load i32, ptr %i.j, align 8, !tbaa !99
  %i.q = load i32, ptr %spec.store.select.i, align 4, !tbaa !111
  %i.r = or i32 %i.q, %i.p                        ; 3 uses
  store i32 %i.r, ptr %i.j, align 8, !tbaa !99
  store i32 %i.r, ptr %spec.store.select.i, align 4, !tbaa !111
  %i.s = getelementptr i8, ptr %i.a, i64 36
  %i.t = load i64, ptr %spec.store.select.i, align 4
  store i64 %i.t, ptr %i.s, align 4
  %i.u = icmp eq i32 %3, -1
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_Py_XNewRef.exit.i
  %i.v = tail call ptr @_Py_GetConfig() #11
  %i.w = getelementptr i8, ptr %i.v, i64 196
  %i.x = load i32, ptr %i.w, align 4, !tbaa !112
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_Py_XNewRef.exit.i
  %i.y = phi i32 [ %i.x, %bb.i ], [ %3, %_Py_XNewRef.exit.i ] ; 2 uses
  %i.z = getelementptr i8, ptr %i.a, i64 44
  store i32 %i.y, ptr %i.z, align 4, !tbaa !100
  %i.aa = getelementptr i8, ptr %i.a, i64 80
  store i8 0, ptr %i.aa, align 8, !tbaa !74
  %i.ab = tail call i32 @_PyAST_Preprocess(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, i32 noundef %i.y, i32 noundef %i.r, i32 noundef 0, i32 noundef 1, ptr noundef %5) #11
  %.not39.i = icmp eq i32 %i.ab, 0
  br i1 %.not39.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @_PySymtable_Build(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.j) #11 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !51
  %i.ae = icmp eq ptr %i.ac, null
  br i1 %i.ae, label %bb.l, label %compiler_setup.exit

bb.l:                                             ; preds = %bb.k
  %i.af = tail call ptr @PyErr_Occurred() #11
  %.not40.i = icmp eq ptr %i.af, null
  br i1 %.not40.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !35
  tail call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.16) #11
  br label %bb.n

compiler_setup.exit:                              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.o

bb.n:                                             ; preds = %_Py_NewRef.exit.i, %bb.c, %bb.b, %bb.j, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  tail call fastcc void @compiler_free(ptr noundef %i.a)
  br label %bb.o

bb.o:                                             ; preds = %compiler_setup.exit, %bb.a, %bb.n
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.n ], [ %i.a, %compiler_setup.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compiler_free(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_PySymtable_Free(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !82     ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.d, -1
  br i1 %.not.i.i, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !11
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %Py_XDECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #11
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.g = getelementptr i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 4 uses
  %.not.i7 = icmp eq ptr %i.h, null
  br i1 %.not.i7, label %Py_XDECREF.exit9, label %bb.g

bb.g:                                             ; preds = %Py_XDECREF.exit
  %i.i = load i32, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %.not.i.i8 = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i8, label %bb.h, label %Py_XDECREF.exit9

bb.h:                                             ; preds = %bb.g
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !11
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.i, label %Py_XDECREF.exit9

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #11
  br label %Py_XDECREF.exit9

Py_XDECREF.exit9:                                 ; preds = %Py_XDECREF.exit, %bb.g, %bb.h, %bb.i
  %i.l = getelementptr i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 4 uses
  %.not.i10 = icmp eq ptr %i.m, null
  br i1 %.not.i10, label %Py_XDECREF.exit12, label %bb.j

bb.j:                                             ; preds = %Py_XDECREF.exit9
  %i.n = load i32, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %.not.i.i11 = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i11, label %bb.k, label %Py_XDECREF.exit12

bb.k:                                             ; preds = %bb.j
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !11
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.l, label %Py_XDECREF.exit12

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #11
  br label %Py_XDECREF.exit12

Py_XDECREF.exit12:                                ; preds = %Py_XDECREF.exit9, %bb.j, %bb.k, %bb.l
  %i.q = getelementptr i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 4 uses
  %.not.i13 = icmp eq ptr %i.r, null
  br i1 %.not.i13, label %Py_XDECREF.exit15, label %bb.m

bb.m:                                             ; preds = %Py_XDECREF.exit12
  %i.s = load i32, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %.not.i.i14 = icmp sgt i32 %i.s, -1
  br i1 %.not.i.i14, label %bb.n, label %Py_XDECREF.exit15

bb.n:                                             ; preds = %bb.m
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !11
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.o, label %Py_XDECREF.exit15

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #11
  br label %Py_XDECREF.exit15

Py_XDECREF.exit15:                                ; preds = %Py_XDECREF.exit12, %bb.m, %bb.n, %bb.o
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyCompile_AstPreprocess(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct._PyFutureFeatures, align 4  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.a = call i32 @_PyFuture_FromAST(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %7, align 4, !tbaa !117
  %i.c = load i32, ptr %2, align 4, !tbaa !111
  %i.d = or i32 %i.c, %i.b
  %i.e = icmp eq i32 %3, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @_Py_GetConfig() #11
  %i.g = getelementptr i8, ptr %i.f, i64 196
  %i.h = load i32, ptr %i.g, align 4, !tbaa !112
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.011 = phi i32 [ %i.h, %bb.c ], [ %3, %bb.b ]
  %i.i = call i32 @_PyAST_Preprocess(ptr noundef %0, ptr noundef %4, ptr noundef %1, i32 noundef %.011, i32 noundef %i.d, i32 noundef %5, i32 noundef 0, ptr noundef %6) #11
  %.not13 = icmp eq i32 %i.i, 0
  %. = sext i1 %.not13 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i32 [ %., %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i32 %.1
}

declare i32 @_PyFuture_FromAST(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_Py_GetConfig() local_unnamed_addr #2

declare i32 @_PyAST_Preprocess(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyCompile_CleanDoc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef null) #11 ; 12 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #11 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not.i93 = icmp sgt i32 %i.f, -1
  br i1 %.not.i93, label %bb.d, label %Py_DECREF.exit94

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %Py_DECREF.exit94

bb.e:                                             ; preds = %bb.d
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #11
  br label %Py_DECREF.exit94

bb.f:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 %i.i     ; 16 uses
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.lr.ph, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.l = icmp ult ptr %i.m, %i.j
  br i1 %i.l, label %.lr.ph, label %.critedge, !llvm.loop !118

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.073122 = phi ptr [ %i.m, %bb.g ], [ %i.d, %bb.f ] ; 2 uses
  %i.m = getelementptr i8, ptr %.073122, i64 1    ; 4 uses
  %i.n = load i8, ptr %.073122, align 1, !tbaa !11
  %.not = icmp eq i8 %i.n, 10
  br i1 %.not, label %..critedge_crit_edge124, label %bb.g, !llvm.loop !118

..critedge_crit_edge124:                          ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !118

.critedge:                                        ; preds = %bb.g, %..critedge_crit_edge124, %bb.f
  %.174 = phi ptr [ %i.m, %..critedge_crit_edge124 ], [ %i.d, %bb.f ], [ %i.m, %bb.g ] ; 2 uses
end_hunk_1
