inline.NumInlined: 168
inline.NumDeleted: 41
begin_hunk_0
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

@_Py_EllipsisObject = external global %struct._object, align 8
@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@PyExc_SystemError = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown expression kind\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" @ \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" % \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" << \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" >> \00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" // \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" ** \00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"unknown binary operator\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"unknown unary operator\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"lambda \00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c", /\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c" if \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c" else \00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" async for \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c" for \00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"(yield)\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"(yield \00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"(yield from \00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"await \00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c" == \00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c" != \00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c" < \00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" <= \00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c" >= \00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c" is \00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c" is not \00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c" not in \00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"unexpected comparison kind\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.51 = private unnamed_addr constant [2 x i8] c",\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@PyComplex_Type = external global %struct._typeobject, align 8
@_PyRuntime = external global %struct.pyruntimestate, align 8
@.str.52 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"unknown expression kind inside f-string or t-string\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"!a\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"!r\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"!s\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"unknown f-value conversion kind\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@.str.62 = private unnamed_addr constant [3 x i8] c" .\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c" := \00", align 1
@switch.table.append_ast_expr = private unnamed_addr constant [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 8
@switch.table.append_ast_expr.6 = private unnamed_addr constant [4 x i32] [i32 12, i32 4, i32 12, i32 12], align 4
@switch.table.append_ast_expr.7 = private unnamed_addr constant [10 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.36, ptr @.str.49], align 8

; Function Attrs: nounwind uwtable
define hidden ptr @_PyAST_ExprAsUnicode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyUnicodeWriter_Create(i64 noundef 256) #3, !inline_history !11 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %expr_as_unicode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @append_ast_expr(ptr noundef %i.a, ptr noundef %0, i32 noundef 1), !inline_history !11
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @PyUnicodeWriter_Discard(ptr noundef nonnull %i.a) #3, !inline_history !11
  br label %expr_as_unicode.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @PyUnicodeWriter_Finish(ptr noundef nonnull %i.a) #3, !inline_history !11
  br label %expr_as_unicode.exit

expr_as_unicode.exit:                             ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0.i
}

declare ptr @PyUnicodeWriter_Create(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr nofree noundef readonly %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !12
  switch i32 %i.a, label %bb.hr [
    i32 1, label %bb.b
    i32 3, label %bb.l
    i32 4, label %bb.ag
    i32 5, label %bb.an
    i32 6, label %bb.az
    i32 7, label %bb.bi
    i32 8, label %bb.by
    i32 12, label %bb.cd
    i32 9, label %bb.ch
    i32 10, label %bb.cl
    i32 11, label %bb.cp
    i32 14, label %bb.cy
    i32 15, label %bb.dd
    i32 13, label %bb.dg
    i32 16, label %bb.dm
    i32 17, label %bb.dw
    i32 22, label %bb.er
    i32 20, label %bb.ew
    i32 21, label %bb.fh
    i32 18, label %bb.fs
    i32 19, label %bb.fy
    i32 23, label %bb.ge
    i32 24, label %bb.gi
    i32 25, label %bb.gm
    i32 29, label %bb.go
    i32 26, label %bb.gw
    i32 27, label %bb.gx
    i32 28, label %bb.hc
    i32 2, label %bb.hk
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %i.e = select i1 %i.d, ptr @.str.2, ptr @.str.3
  %i.f = select i1 %i.d, i32 3, i32 2             ; 2 uses
  %i.g = icmp samesign ugt i32 %2, %i.f           ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef -1) #3
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %common.ret332, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %._crit_edge197, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %._crit_edge197

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.p = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %.pre246 = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %.pre246, i32 noundef %i.p), !inline_history !22
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %common.ret332, label %bb.g

bb.g:                                             ; preds = %bb.f
  %exitcond219.peel.not = icmp eq i64 %i.m, 1
  br i1 %exitcond219.peel.not, label %._crit_edge197, label %.peel.next

bb.h:                                             ; preds = %bb.i
  %i.s = add nuw nsw i64 %.021.i194, 1            ; 2 uses
  %exitcond219.not = icmp eq i64 %i.s, %i.m
  br i1 %exitcond219.not, label %._crit_edge197, label %.peel.next, !llvm.loop !23

.peel.next:                                       ; preds = %bb.g, %bb.h
  %.021.i194 = phi i64 [ %i.s, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.t = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef -1) #3
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %common.ret332, label %bb.i

bb.i:                                             ; preds = %.peel.next
  %i.v = getelementptr [8 x i8], ptr %i.o, i64 %.021.i194
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.w, i32 noundef %i.p), !inline_history !22
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %common.ret332, label %bb.h

._crit_edge197:                                   ; preds = %bb.h, %bb.d, %bb.g, %bb.e
  br i1 %i.g, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge197
  %i.z = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef -1) #3
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %common.ret332, label %bb.k

bb.k:                                             ; preds = %bb.hp, %bb.hq, %._crit_edge.thread304, %bb.hj, %bb.gt, %bb.gv, %._crit_edge185, %bb.dv, %bb.dk, %bb.dl, %bb.bg, %bb.bh, %bb.ax, %bb.ay, %bb.al, %bb.am, %bb.ae, %bb.af, %bb.j, %._crit_edge197
  br label %common.ret332

bb.l:                                             ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %1, i64 8
  %i.ac = getelementptr i8, ptr %1, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !14
  switch i32 %i.ad, label %bb.y [
    i32 1, label %bb.z
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 8, label %bb.r
    i32 9, label %bb.s
    i32 10, label %bb.t
    i32 11, label %bb.u
    i32 12, label %bb.v
    i32 13, label %bb.w
    i32 7, label %bb.x
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  br label %bb.z

bb.o:                                             ; preds = %bb.l
  br label %bb.z

bb.p:                                             ; preds = %bb.l
  br label %bb.z

bb.q:                                             ; preds = %bb.l
  br label %bb.z

bb.r:                                             ; preds = %bb.l
  br label %bb.z

bb.s:                                             ; preds = %bb.l
  br label %bb.z

bb.t:                                             ; preds = %bb.l
  br label %bb.z

bb.u:                                             ; preds = %bb.l
  br label %bb.z

bb.v:                                             ; preds = %bb.l
  br label %bb.z

bb.w:                                             ; preds = %bb.l
  br label %bb.z

bb.x:                                             ; preds = %bb.l
  br label %bb.z

bb.y:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.19) #3, !inline_history !28
  br label %common.ret332

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.018.i = phi ptr [ @.str.18, %bb.x ], [ @.str.7, %bb.m ], [ @.str.8, %bb.n ], [ @.str.9, %bb.o ], [ @.str.10, %bb.p ], [ @.str.11, %bb.q ], [ @.str.12, %bb.r ], [ @.str.13, %bb.s ], [ @.str.14, %bb.t ], [ @.str.15, %bb.u ], [ @.str.16, %bb.v ], [ @.str.17, %bb.w ], [ @.str.6, %bb.l ]
  %.017.i = phi i32 [ 13, %bb.x ], [ 10, %bb.m ], [ 11, %bb.n ], [ 11, %bb.o ], [ 11, %bb.p ], [ 11, %bb.q ], [ 9, %bb.r ], [ 9, %bb.s ], [ 6, %bb.t ], [ 7, %bb.u ], [ 8, %bb.v ], [ 11, %bb.w ], [ 10, %bb.l ] ; 3 uses
  %.0.i74 = phi i1 [ true, %bb.x ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.l ] ; 2 uses
  %i.af = icmp samesign ugt i32 %2, %.017.i       ; 2 uses
  br i1 %i.af, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ag = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef -1) #3
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %common.ret332, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.aj = zext i1 %.0.i74 to i32
  %i.ak = add nuw nsw i32 %.017.i, %i.aj
  %i.al = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.ai, i32 noundef %i.ak), !inline_history !28
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %common.ret332, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.an = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull %.018.i, i64 noundef -1) #3
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %common.ret332, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ap = getelementptr i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14
  %i.ar = xor i1 %.0.i74, true
  %i.as = zext i1 %i.ar to i32
  %i.at = add nuw nsw i32 %.017.i, %i.as
  %i.au = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.aq, i32 noundef %i.at), !inline_history !28
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %common.ret332, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.af, label %bb.af, label %bb.k

bb.af:                                            ; preds = %bb.ae
  %i.aw = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef -1) #3
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %common.ret332, label %bb.k

bb.ag:                                            ; preds = %bb.a
  %i.ay = getelementptr i8, ptr %1, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !14
  %switch.tableidx = add i32 %i.az, -1            ; 3 uses
  %i.ba = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ba, label %switch.lookup, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bb = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !26
  tail call void @PyErr_SetString(ptr noundef %i.bb, ptr noundef nonnull @.str.24) #3, !inline_history !29
  br label %common.ret332

switch.lookup:                                    ; preds = %bb.ag
  %i.bc = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.append_ast_expr, i64 %i.bc
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.bd = zext nneg i32 %switch.tableidx to i64
  %switch.gep319 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.append_ast_expr.6, i64 %i.bd
  %switch.load320 = load i32, ptr %switch.gep319, align 4 ; 2 uses
  %i.be = icmp samesign ugt i32 %2, %switch.load320 ; 2 uses
  br i1 %i.be, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %switch.lookup
  %i.bf = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef -1) #3
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %common.ret332, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %switch.lookup
  %i.bh = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull %switch.load, i64 noundef -1) #3
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %common.ret332, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bj = getelementptr i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.bk, i32 noundef %switch.load320), !inline_history !29
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %common.ret332, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %i.be, label %bb.am, label %bb.k

bb.am:                                            ; preds = %bb.al
  %i.bn = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef -1) #3
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %common.ret332, label %bb.k

bb.an:                                            ; preds = %bb.a
  %i.bp = icmp samesign ugt i32 %2, 1             ; 2 uses
  br i1 %i.bp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.bq = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef -1) #3
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %common.ret332, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bs = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !14 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.by = phi i64 [ %i.bx, %bb.aq ], [ 0, %bb.ap ]
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !33 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !15
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.cc = phi i64 [ %i.cb, %bb.as ], [ 0, %bb.ar ]
  %i.cd = sub i64 0, %i.cc
  %.not.i = icmp eq i64 %i.by, %i.cd
  %i.ce = select i1 %.not.i, ptr @.str.26, ptr @.str.25
  %i.cf = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull %i.ce, i64 noundef -1) #3
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %common.ret332, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ch = load ptr, ptr %i.bs, align 8, !tbaa !14
  %i.ci = tail call fastcc i32 @append_ast_args(ptr noundef nonnull %0, ptr noundef %i.ch), !inline_history !34
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %common.ret332, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ck = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %common.ret332, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cm = getelementptr i8, ptr %1, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14
  %i.co = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.cn, i32 noundef 1), !inline_history !34
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %common.ret332, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.bp, label %bb.ay, label %bb.k

bb.ay:                                            ; preds = %bb.ax
  %i.cq = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef -1) #3
  %i.cr = icmp eq i32 %i.cq, -1
  br i1 %i.cr, label %common.ret332, label %bb.k

bb.az:                                            ; preds = %bb.a
  %i.cs = icmp samesign ugt i32 %2, 1             ; 2 uses
  br i1 %i.cs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ct = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef -1) #3
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %common.ret332, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.cv = getelementptr i8, ptr %1, i64 8
  %i.cw = getelementptr i8, ptr %1, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !14
  %i.cy = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.cx, i32 noundef 2), !inline_history !35
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %common.ret332, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.da = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, i64 noundef -1) #3
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %common.ret332, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !14
  %i.dd = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.dc, i32 noundef 2), !inline_history !35
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %common.ret332, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.df = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, i64 noundef -1) #3
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %common.ret332, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dh = getelementptr i8, ptr %1, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !14
  %i.dj = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.di, i32 noundef 1), !inline_history !35
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %common.ret332, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.cs, label %bb.bh, label %bb.k

bb.bh:                                            ; preds = %bb.bg
  %i.dl = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i64 noundef -1) #3
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %common.ret332, label %bb.k

bb.bi:                                            ; preds = %bb.a
  %i.dn = tail call i32 @PyUnicodeWriter_WriteChar(ptr noundef nonnull %0, i32 noundef 123) #3
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %common.ret332, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dp = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.dq = getelementptr i8, ptr %1, i64 16        ; 5 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !14 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %._crit_edge193, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !15 ; 3 uses
  %i.du = icmp sgt i64 %i.dt, 0
  br i1 %i.du, label %bb.bl, label %._crit_edge193

bb.bl:                                            ; preds = %bb.bk
  %.pre241 = load ptr, ptr %i.dp, align 8, !tbaa !14
  %.phi.trans.insert242 = getelementptr i8, ptr %.pre241, i64 16
  %.pre243 = load ptr, ptr %.phi.trans.insert242, align 8, !tbaa !20 ; 2 uses
  %.not.i78.peel = icmp eq ptr %.pre243, null
  br i1 %.not.i78.peel, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dv = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef nonnull %.pre243, i32 noundef 1), !inline_history !36
  %i.dw = icmp eq i32 %i.dv, -1
  br i1 %i.dw, label %common.ret332, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dx = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef -1) #3
  %i.dy = icmp eq i32 %i.dx, -1
  br i1 %i.dy, label %common.ret332, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !14
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !20
  %i.ec = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.eb, i32 noundef 1), !inline_history !36
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %common.ret332, label %bb.br

bb.bp:                                            ; preds = %bb.bl
  %i.ee = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, i64 noundef -1) #3
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %common.ret332, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.eg = load ptr, ptr %i.dq, align 8, !tbaa !14
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !20
  %i.ej = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef %i.ei, i32 noundef 6), !inline_history !36
  %i.ek = icmp eq i32 %i.ej, -1
  br i1 %i.ek, label %common.ret332, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bo
  %exitcond217.peel.not = icmp eq i64 %i.dt, 1
  br i1 %exitcond217.peel.not, label %._crit_edge193, label %.lr.ph192.peel.next

.lr.ph192.peel.next:                              ; preds = %bb.br, %bb.bx
  %.022.i190 = phi i64 [ %i.fj, %bb.bx ], [ 1, %bb.br ] ; 4 uses
  %i.el = tail call i32 @PyUnicodeWriter_WriteUTF8(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, i64 noundef -1) #3
  %i.em = icmp eq i32 %i.el, -1
  br i1 %i.em, label %common.ret332, label %._crit_edge244

._crit_edge244:                                   ; preds = %.lr.ph192.peel.next
  %i.en = load ptr, ptr %i.dp, align 8, !tbaa !14
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = getelementptr [8 x i8], ptr %i.eo, i64 %.022.i190
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !20 ; 2 uses
  %.not.i78 = icmp eq ptr %i.eq, null
  br i1 %.not.i78, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge244
  %i.er = tail call fastcc i32 @append_ast_expr(ptr noundef nonnull %0, ptr noundef nonnull %i.eq, i32 noundef 1), !inline_history !36
end_hunk_0
