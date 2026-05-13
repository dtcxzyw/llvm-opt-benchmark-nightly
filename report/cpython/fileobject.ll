inline.NumInlined: 43
inline.NumDeleted: 20
begin_hunk_0
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
%struct.PyGetSetDef = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"_io\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"isisssO\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"../Objects/fileobject.c\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"%T.readline() must return a str, not %T\00", align 1
@PyExc_EOFError = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"EOF when reading a line\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"writeobject with NULL file\00", align 1
@PyExc_SystemError = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"null file for PyFile_WriteString\00", align 1
@PyBool_Type = external global %struct._typeobject, align 8
@PyExc_RuntimeWarning = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"bool is used as a file descriptor\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"%T.fileno() must return an int, not %T\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"argument must be an int, or have a fileno() method.\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [50 x i8] c"file descriptor cannot be a negative integer (%i)\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"stderrprinter\00", align 1
@stdprinter_getsetlist = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.30, ptr @get_closed, ptr null, ptr @.str.31, ptr null }, %struct.PyGetSetDef { ptr @.str.32, ptr @get_encoding, ptr null, ptr @.str.33, ptr null }, %struct.PyGetSetDef { ptr @.str.34, ptr @get_mode, ptr null, ptr @.str.35, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyStdPrinter_Type = dso_local global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.13, i64 24, i64 0, ptr null, i64 0, ptr null, ptr null, ptr null, ptr @stdprinter_repr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 128, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @stdprinter_methods, ptr null, ptr @stdprinter_getsetlist, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr @PyType_GenericAlloc, ptr null, ptr @PyObject_Free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"setopencodehook\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"failed to change existing open_code hook\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"'path' must be 'str', not '%.200s'\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"Os\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@_Py_tss_tstate = external thread_local local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [33 x i8] c"<stdprinter(fd=%d) object at %p>\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@stdprinter_methods = internal global [6 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.21, ptr @stdprinter_noop, i32 4, [4 x i8] zeroinitializer, ptr @.str.22 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.23, ptr @stdprinter_noop, i32 4, [4 x i8] zeroinitializer, ptr @.str.22 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.24, ptr @stdprinter_fileno, i32 4, [4 x i8] zeroinitializer, ptr @.str.22 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.25, ptr @stdprinter_isatty, i32 4, [4 x i8] zeroinitializer, ptr @.str.22 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.26, ptr @stdprinter_write, i32 1, [4 x i8] zeroinitializer, ptr @.str.22 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@_Py_NoneStruct = external global %struct._object, align 8
@.str.28 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"backslashreplace\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"True if the file is closed\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Encoding of the file\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"String giving the file mode\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @PyFile_FromFd(i32 noundef %0, ptr noundef readnone captures(none) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %7, 0
  %i.c = select i1 %.not, ptr @_Py_FalseStruct, ptr @_Py_TrueStruct
  %i.d = tail call ptr (ptr, ptr, ...) @PyObject_CallFunction(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, i32 noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.c) #8 ; 3 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp sgt i32 %i.e, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !11
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallFunction(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @PyFile_GetLine(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.3, i32 noundef 59) #8
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %1, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !12
  %i.e = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97112), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call ptr (ptr, ptr, ptr, ...) @_PyObject_CallMethod(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 97112), ptr noundef nonnull @.str.4, i32 noundef %1) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi ptr [ %i.f, %bb.e ], [ %i.e, %bb.d ] ; 13 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %Py_DECREF.exit47.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %storemerge.val = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr i8, ptr %storemerge.val, i64 168
  %.val56 = load i64, ptr %i.i, align 8, !tbaa !18
  %i.j = and i64 %.val56, 402653184
  %or.cond59 = icmp eq i64 %i.j, 0
  br i1 %or.cond59, label %bb.h, label %Py_DECREF.exit47

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !12
  %i.l = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef nonnull %i.g) #8 ; 0 uses
  store ptr null, ptr %i.b, align 8, !tbaa !12
  %i.m = load i32, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.not.i46 = icmp sgt i32 %i.m, -1
  br i1 %.not.i46, label %bb.i, label %Py_DECREF.exit47.thread

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.g, align 8, !tbaa !11
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %Py_DECREF.exit47.thread

bb.j:                                             ; preds = %bb.i
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #8
  br label %Py_DECREF.exit47.thread

Py_DECREF.exit47.thread:                          ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.p = icmp slt i32 %1, 0
  br label %bb.r

Py_DECREF.exit47:                                 ; preds = %bb.g
  %i.q = icmp slt i32 %1, 0
  br i1 %i.q, label %bb.k, label %bb.r

bb.k:                                             ; preds = %Py_DECREF.exit47
  %i.r = getelementptr i8, ptr %i.g, i64 8
  %.val51 = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.s = getelementptr i8, ptr %.val51, i64 168
  %.val54 = load i64, ptr %i.s, align 8, !tbaa !18
  %i.t = and i64 %.val54, 134217728
  %.not40 = icmp eq i64 %i.t, 0
  br i1 %.not40, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr i8, ptr %i.g, i64 16
  %.val57 = load i64, ptr %i.u, align 8, !tbaa !27 ; 2 uses
  %i.v = icmp eq i64 %.val57, 0
  br i1 %i.v, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.b, align 8, !tbaa !12
  %i.w = load i32, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %.not.i44 = icmp sgt i32 %i.w, -1
  br i1 %.not.i44, label %bb.n, label %Py_DECREF.exit45

bb.n:                                             ; preds = %bb.m
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.g, align 8, !tbaa !11
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.o, label %Py_DECREF.exit45

bb.o:                                             ; preds = %bb.n
  call void @_Py_Dealloc(ptr noundef nonnull %i.g) #8
  br label %Py_DECREF.exit45

Py_DECREF.exit45:                                 ; preds = %bb.m, %bb.n, %bb.o
  %i.z = load ptr, ptr @PyExc_EOFError, align 8, !tbaa !12
  call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.6) #8
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.aa = getelementptr i8, ptr %i.g, i64 32
  %i.ab = add i64 %.val57, -1                     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = icmp eq i8 %i.ad, 10
  br i1 %i.ae, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.af = call i32 @_PyBytes_Resize(ptr noundef nonnull %i.b, i64 noundef %i.ab) #8 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit47.thread, %Py_DECREF.exit45, %bb.q, %bb.p, %bb.k, %Py_DECREF.exit47
  %i.ag = phi i1 [ %i.p, %Py_DECREF.exit47.thread ], [ true, %Py_DECREF.exit45 ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.k ], [ false, %Py_DECREF.exit47 ]
  %i.ah = load ptr, ptr %i.b, align 8             ; 14 uses
  %i.ai = icmp ne ptr %i.ah, null
  %or.cond3 = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond3, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  %.val = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.ak = getelementptr i8, ptr %.val, i64 168
  %.val53 = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.al = and i64 %.val53, 268435456
  %.not41 = icmp eq i64 %i.al, 0
  br i1 %.not41, label %Py_DECREF.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr i8, ptr %i.ah, i64 16
  %.val58 = load i64, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %i.an = icmp eq i64 %.val58, 0
  br i1 %i.an, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.b, align 8, !tbaa !12
  %i.ao = load i32, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %.not.i42 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i42, label %bb.v, label %Py_DECREF.exit43

bb.v:                                             ; preds = %bb.u
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.ah, align 8, !tbaa !11
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %Py_DECREF.exit43

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #8
  br label %Py_DECREF.exit43

Py_DECREF.exit43:                                 ; preds = %bb.u, %bb.v, %bb.w
  %i.ar = load ptr, ptr @PyExc_EOFError, align 8, !tbaa !12
  call void @PyErr_SetString(ptr noundef %i.ar, ptr noundef nonnull @.str.6) #8
  br label %Py_DECREF.exit

bb.x:                                             ; preds = %bb.t
  %i.as = add i64 %.val58, -1                     ; 4 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 32
  %i.au = load i32, ptr %i.at, align 8            ; 5 uses
  %i.av = lshr i32 %i.au, 2
  %i.aw = and i32 %i.av, 7
  %i.ax = and i32 %i.au, 32
  %.not.i19.i = icmp eq i32 %i.ax, 0              ; 3 uses
  switch i32 %i.aw, label %bb.ae [
    i32 1, label %bb.y
    i32 2, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i19.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = and i32 %i.au, 64
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.ah, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.az = getelementptr i8, ptr %i.ah, i64 56
  %.val4.i.i = load ptr, ptr %i.az, align 8, !tbaa !11
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.aa, %bb.z
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.z ], [ %.val4.i.i, %bb.aa ]
  %i.ba = getelementptr i8, ptr %.0.i.i, i64 %i.as
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = zext i8 %i.bb to i32
  br label %PyUnicode_READ_CHAR.exit

bb.ab:                                            ; preds = %bb.x
  br i1 %.not.i19.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = and i32 %i.au, 64
  %.not.i.i12.i = icmp eq i32 %i.bd, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.ah, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.ad:                                            ; preds = %bb.ab
  %i.be = getelementptr i8, ptr %i.ah, i64 56
  %.val4.i16.i = load ptr, ptr %i.be, align 8, !tbaa !11
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.ad, %bb.ac
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.ac ], [ %.val4.i16.i, %bb.ad ]
  %i.bf = getelementptr [2 x i8], ptr %.0.i15.i, i64 %i.as
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !31
  %i.bh = zext i16 %i.bg to i32
  br label %PyUnicode_READ_CHAR.exit

bb.ae:                                            ; preds = %bb.x
  br i1 %.not.i19.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bi = and i32 %i.au, 64
  %.not.i.i20.i = icmp eq i32 %i.bi, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.ah, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.ag:                                            ; preds = %bb.ae
  %i.bj = getelementptr i8, ptr %i.ah, i64 56
  %.val4.i24.i = load ptr, ptr %i.bj, align 8, !tbaa !11
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.ag, %bb.af
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.af ], [ %.val4.i24.i, %bb.ag ]
  %i.bk = getelementptr [4 x i8], ptr %.0.i23.i, i64 %i.as
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.bc, %_PyUnicode_DATA.exit.i ], [ %i.bh, %_PyUnicode_DATA.exit17.i ], [ %i.bl, %_PyUnicode_DATA.exit25.i ]
  %i.bm = icmp eq i32 %.0.i, 10
  br i1 %i.bm, label %bb.ah, label %Py_DECREF.exit

bb.ah:                                            ; preds = %PyUnicode_READ_CHAR.exit
  %i.bn = call ptr @PyUnicode_Substring(ptr noundef nonnull %i.ah, i64 noundef 0, i64 noundef %i.as) #8
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !12
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i, label %bb.ai, label %Py_DECREF.exit

bb.ai:                                            ; preds = %bb.ah
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !11
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.aj, label %Py_DECREF.exit

bb.aj:                                            ; preds = %bb.ai
  call void @_Py_Dealloc(ptr noundef nonnull %i.bo) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.aj, %bb.ai, %bb.ah, %Py_DECREF.exit43, %PyUnicode_READ_CHAR.exit, %bb.s, %bb.r
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !12
  br label %bb.ak

bb.ak:                                            ; preds = %Py_DECREF.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.bs, %Py_DECREF.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret ptr %.0
}

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_PyObject_CallMethod(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyBytes_Resize(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyFile_WriteObject(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !12
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.7) #8
  br label %Py_DECREF.exit23

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyObject_GetAttr(ptr noundef nonnull %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 104832)) #8 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %2, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @PyObject_Str(ptr noundef %0) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call ptr @PyObject_Repr(ptr noundef %0) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.014 = phi ptr [ %i.f, %bb.e ], [ %i.g, %bb.f ] ; 5 uses
  %i.h = icmp eq ptr %.014, null
  br i1 %i.h, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.i = load i32, ptr %i.c, align 8, !tbaa !11   ; 2 uses
end_hunk_0
