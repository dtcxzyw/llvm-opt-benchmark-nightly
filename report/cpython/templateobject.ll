inline.NumInlined: 40
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
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

@.str = private unnamed_addr constant [32 x i8] c"string.templatelib.TemplateIter\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Template iterator object\00", align 1
@_PyTemplateIter_Type = hidden global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, i64 0 }, ptr @.str, i64 40, i64 0, ptr @templateiter_dealloc, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 16384, ptr @.str.1, ptr @templateiter_traverse, ptr @templateiter_clear, ptr null, i64 0, ptr @PyObject_SelfIter, ptr @templateiter_next, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr @PyType_GenericAlloc, ptr null, ptr @PyObject_GC_Del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [91 x i8] c"can only concatenate string.templatelib.Template (not \22%T\22) to string.templatelib.Template\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"string.templatelib.Template\00", align 1
@template_as_sequence = internal global %struct.PySequenceMethods { ptr null, ptr @_PyTemplate_Concat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"Template object\00", align 1
@template_getset = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.19, ptr @template_values_get, ptr null, ptr @.str.20, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@_PyTemplate_Type = hidden global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, i64 0 }, ptr @.str.3, i64 32, i64 0, ptr @template_dealloc, i64 0, ptr null, ptr null, ptr null, ptr @template_repr, ptr null, ptr @template_as_sequence, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 16384, ptr @.str.4, ptr @template_traverse, ptr @template_clear, ptr null, i64 0, ptr @template_iter, ptr null, ptr @template_methods, ptr @template_members, ptr @template_getset, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr @PyType_GenericAlloc, ptr @template_new, ptr @PyObject_GC_Del, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"%s(strings=%R, interpolations=%R)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"__class_getitem__\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"See PEP 585\00", align 1
@template_methods = internal global [3 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.7, ptr @template_reduce, i32 4, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.8, ptr @Py_GenericAlias, i32 24, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [19 x i8] c"string.templatelib\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"_template_unpickle\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"O(OO)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Strings\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"interpolations\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Interpolations\00", align 1
@template_members = internal global [3 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.14, i32 16, [4 x i8] zeroinitializer, i64 16, i32 1, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.16, i32 16, [4 x i8] zeroinitializer, i64 24, i32 1, [4 x i8] zeroinitializer, ptr @.str.17 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.19 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Values of interpolations\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Template.__new__ only accepts *args arguments\00", align 1
@_PyInterpolation_Type = external global %struct._typeobject, align 8
@.str.22 = private unnamed_addr constant [75 x i8] c"Template.__new__ *args need to be of type 'str' or 'Interpolation', got %T\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8

; Function Attrs: nounwind uwtable
define internal void @templateiter_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #3
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val5 = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %.val5, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = tail call i32 %i.c(ptr noundef %0) #3    ; 0 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %.val, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  tail call void %i.f(ptr noundef %0) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @templateiter_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #3 ; 2 uses
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #3 ; 2 uses
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @templateiter_clear(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not.i13 = icmp slt i32 %i.c, 0
  br i1 %.not.i13, label %Py_DECREF.exit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !30
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #3
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 4 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit14
  store ptr null, ptr %i.f, align 8, !tbaa !29
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp slt i32 %i.h, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !30
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit14
  ret i32 0
}

declare ptr @PyObject_SelfIter(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @templateiter_next(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = tail call ptr @PyIter_Next(ptr noundef %i.d) #3 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !32
  %i.h = icmp eq i64 %.val, 0
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = tail call ptr @PyIter_Next(ptr noundef %i.j) #3 ; 3 uses
  %i.l = load i32, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp slt i32 %i.l, 0
  br i1 %.not.i, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !30
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #3
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = tail call ptr @PyIter_Next(ptr noundef %i.p) #3
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.d, %bb.g
  %.0.ph = phi ptr [ %i.q, %bb.g ], [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  store i32 1, ptr %i.a, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) #1

declare void @PyObject_GC_Del(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @_PyTemplate_Concat(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val7 = load ptr, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq ptr %.val7, @_PyTemplate_Type
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !11
  %.not8 = icmp eq ptr %.val, @_PyTemplate_Type
  br i1 %.not8, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %.val36.i.i = load i64, ptr %i.g, align 8, !tbaa !37 ; 2 uses
  %i.h = getelementptr i8, ptr %i.d, i64 32       ; 4 uses
  %i.i = add i64 %.val36.i.i, -1                  ; 5 uses
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %.val.i.i = load i64, ptr %i.l, align 8, !tbaa !37 ; 4 uses
  %i.m = getelementptr i8, ptr %i.f, i64 32       ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = tail call ptr @PyUnicode_Concat(ptr noundef %i.k, ptr noundef %i.n) #3, !inline_history !38 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %template_concat_templates.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %.val.i.i, %i.i
  %i.r = tail call ptr @PyTuple_New(i64 noundef %i.q) #3, !inline_history !38 ; 12 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %i.t = icmp sgt i64 %i.i, 0
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.u = getelementptr i8, ptr %i.r, i64 32       ; 3 uses
  %i.v = icmp eq i64 %.val36.i.i, 2
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.i, 9223372036854775806
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.w, 0
  br i1 %.not.i.i.i, label %template_concat_templates.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !30
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit18.sink.split.i, label %template_concat_templates.exit

.epil.preheader:                                  ; preds = %.lr.ph.i.i, %_Py_NewRef.exit.i.i.1
  %.03039.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ar, %_Py_NewRef.exit.i.i.1 ] ; 2 uses
  %i.z = getelementptr [8 x i8], ptr %i.h, i64 %.03039.i.i.epil.init
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, -1073741825
  br i1 %i.ac, label %_Py_NewRef.exit.i.i.epil, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.ad = add nuw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !30
  br label %_Py_NewRef.exit.i.i.epil

_Py_NewRef.exit.i.i.epil:                         ; preds = %bb.g, %.epil.preheader
  %i.ae = getelementptr [8 x i8], ptr %i.u, i64 %.03039.i.i.epil.init
  store ptr %i.aa, ptr %i.ae, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_Py_NewRef.exit.i.i.epil, %.preheader.i.i
  %.031.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.i, %_Py_NewRef.exit.i.i.epil ] ; 3 uses
  %i.af = getelementptr i8, ptr %i.r, i64 32      ; 4 uses
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %.031.lcssa.i.i
  store ptr %i.o, ptr %i.ag, align 8, !tbaa !29
  %i.ah = icmp sgt i64 %.val.i.i, 1
  br i1 %i.ah, label %.lr.ph43.i.i.preheader, label %template_strings_concat.exit.i

.lr.ph43.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.ai = add nsw i64 %.val.i.i, -1               ; 3 uses
  %i.aj = icmp eq i64 %.val.i.i, 2
  br i1 %i.aj, label %.lr.ph43.i.i.epil.preheader, label %.lr.ph43.i.i.preheader.new

.lr.ph43.i.i.preheader.new:                       ; preds = %.lr.ph43.i.i.preheader
  %unroll_iter28 = and i64 %i.ai, -2
  br label %.lr.ph43.i.i

bb.h:                                             ; preds = %_Py_NewRef.exit.i.i.1, %.lr.ph.i.i.new
  %.03039.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ar, %_Py_NewRef.exit.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %_Py_NewRef.exit.i.i.1 ]
  %i.ak = or disjoint i64 %.03039.i.i, 1          ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.h, i64 %.03039.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  %i.ao = icmp ugt i32 %i.an, -1073741825
  br i1 %i.ao, label %_Py_NewRef.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nuw i32 %i.an, 1
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !30
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.i, %bb.h
  %i.aq = getelementptr [8 x i8], ptr %i.u, i64 %.03039.i.i
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !29
  %i.ar = add nuw nsw i64 %.03039.i.i, 2          ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.h, i64 %i.ak
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !30 ; 2 uses
  %i.av = icmp ugt i32 %i.au, -1073741825
  br i1 %i.av, label %_Py_NewRef.exit.i.i.1, label %bb.j

bb.j:                                             ; preds = %_Py_NewRef.exit.i.i
  %i.aw = add nuw i32 %i.au, 1
  store i32 %i.aw, ptr %i.at, align 8, !tbaa !30
  br label %_Py_NewRef.exit.i.i.1

_Py_NewRef.exit.i.i.1:                            ; preds = %bb.j, %_Py_NewRef.exit.i.i
  %i.ax = getelementptr [8 x i8], ptr %i.u, i64 %i.ak
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !29
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.epil.preheader, label %bb.h, !llvm.loop !39

.lr.ph43.i.i:                                     ; preds = %_Py_NewRef.exit37.i.i.1, %.lr.ph43.i.i.preheader.new
  %.041.i.i = phi i64 [ 1, %.lr.ph43.i.i.preheader.new ], [ %i.bm, %_Py_NewRef.exit37.i.i.1 ] ; 3 uses
  %.1.in40.i.i = phi i64 [ %.031.lcssa.i.i, %.lr.ph43.i.i.preheader.new ], [ %.1.i.i.1, %_Py_NewRef.exit37.i.i.1 ] ; 2 uses
  %niter29 = phi i64 [ 0, %.lr.ph43.i.i.preheader.new ], [ %niter29.next.1, %_Py_NewRef.exit37.i.i.1 ]
  %i.ay = getelementptr [8 x i8], ptr %i.m, i64 %.041.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !30 ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, -1073741825
  br i1 %i.bb, label %_Py_NewRef.exit37.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph43.i.i
  %i.bc = add nuw i32 %i.ba, 1
  store i32 %i.bc, ptr %i.az, align 8, !tbaa !30
  br label %_Py_NewRef.exit37.i.i

_Py_NewRef.exit37.i.i:                            ; preds = %bb.k, %.lr.ph43.i.i
  %i.bd = getelementptr [8 x i8], ptr %i.af, i64 %.1.in40.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.az, ptr %i.be, align 8, !tbaa !29
  %.1.i.i.1 = add nuw i64 %.1.in40.i.i, 2         ; 3 uses
  %i.bf = getelementptr [8 x i8], ptr %i.m, i64 %.041.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !30 ; 2 uses
  %i.bj = icmp ugt i32 %i.bi, -1073741825
  br i1 %i.bj, label %_Py_NewRef.exit37.i.i.1, label %bb.l

bb.l:                                             ; preds = %_Py_NewRef.exit37.i.i
  %i.bk = add nuw i32 %i.bi, 1
  store i32 %i.bk, ptr %i.bh, align 8, !tbaa !30
  br label %_Py_NewRef.exit37.i.i.1

_Py_NewRef.exit37.i.i.1:                          ; preds = %bb.l, %_Py_NewRef.exit37.i.i
  %i.bl = getelementptr [8 x i8], ptr %i.af, i64 %.1.i.i.1
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !29
  %i.bm = add nuw nsw i64 %.041.i.i, 2            ; 2 uses
  %niter29.next.1 = add i64 %niter29, 2           ; 2 uses
  %niter29.ncmp.1 = icmp eq i64 %niter29.next.1, %unroll_iter28
  br i1 %niter29.ncmp.1, label %template_strings_concat.exit.i.loopexit.unr-lcssa, label %.lr.ph43.i.i, !llvm.loop !41

template_strings_concat.exit.i.loopexit.unr-lcssa: ; preds = %_Py_NewRef.exit37.i.i.1
  %lcmp.mod25.not = trunc nuw i64 %i.ai to i1
  br i1 %lcmp.mod25.not, label %.lr.ph43.i.i.epil.preheader, label %template_strings_concat.exit.i

.lr.ph43.i.i.epil.preheader:                      ; preds = %template_strings_concat.exit.i.loopexit.unr-lcssa, %.lr.ph43.i.i.preheader
  %.041.i.i.epil.init = phi i64 [ 1, %.lr.ph43.i.i.preheader ], [ %i.bm, %template_strings_concat.exit.i.loopexit.unr-lcssa ]
  %.1.in40.i.i.epil.init = phi i64 [ %.031.lcssa.i.i, %.lr.ph43.i.i.preheader ], [ %.1.i.i.1, %template_strings_concat.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc nuw i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.bn = getelementptr [8 x i8], ptr %i.m, i64 %.041.i.i.epil.init
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !29 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !30 ; 2 uses
  %i.bq = icmp ugt i32 %i.bp, -1073741825
  br i1 %i.bq, label %_Py_NewRef.exit37.i.i.epil, label %bb.m

bb.m:                                             ; preds = %.lr.ph43.i.i.epil.preheader
  %i.br = add nuw i32 %i.bp, 1
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !30
  br label %_Py_NewRef.exit37.i.i.epil

_Py_NewRef.exit37.i.i.epil:                       ; preds = %bb.m, %.lr.ph43.i.i.epil.preheader
  %i.bs = getelementptr [8 x i8], ptr %i.af, i64 %.1.in40.i.i.epil.init
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store ptr %i.bo, ptr %i.bt, align 8, !tbaa !29
  br label %template_strings_concat.exit.i

template_strings_concat.exit.i:                   ; preds = %_Py_NewRef.exit37.i.i.epil, %template_strings_concat.exit.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %i.bu = getelementptr i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !42
  %i.bw = getelementptr i8, ptr %1, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.by = tail call ptr @PySequence_Concat(ptr noundef %i.bv, ptr noundef %i.bx) #3, !inline_history !38 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.n, label %bb.p

bb.n:                                             ; preds = %template_strings_concat.exit.i
  %i.ca = load i32, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %.not.i17.i = icmp slt i32 %i.ca, 0
  br i1 %.not.i17.i, label %template_concat_templates.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cb, ptr %i.r, align 8, !tbaa !30
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %Py_DECREF.exit18.sink.split.i, label %template_concat_templates.exit

bb.p:                                             ; preds = %template_strings_concat.exit.i
  %i.cd = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyTemplate_Type) #3, !inline_history !43 ; 7 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_PyTemplate_Build.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = load i32, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, -1073741825
  br i1 %i.cg, label %_Py_NewRef.exit.i21.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = add nuw i32 %i.cf, 1
  store i32 %i.ch, ptr %i.r, align 8, !tbaa !30
  br label %_Py_NewRef.exit.i21.i

_Py_NewRef.exit.i21.i:                            ; preds = %bb.r, %bb.q
  %i.ci = getelementptr i8, ptr %i.cd, i64 16
  store ptr %i.r, ptr %i.ci, align 8, !tbaa !35
  %i.cj = load i32, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, -1073741825
  br i1 %i.ck, label %_Py_NewRef.exit9.i.i, label %bb.s

bb.s:                                             ; preds = %_Py_NewRef.exit.i21.i
  %i.cl = add nuw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.by, align 8, !tbaa !30
  br label %_Py_NewRef.exit9.i.i

_Py_NewRef.exit9.i.i:                             ; preds = %bb.s, %_Py_NewRef.exit.i21.i
  %i.cm = getelementptr i8, ptr %i.cd, i64 24
  store ptr %i.by, ptr %i.cm, align 8, !tbaa !42
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.cd) #3, !inline_history !43
  br label %_PyTemplate_Build.exit.i

_PyTemplate_Build.exit.i:                         ; preds = %_Py_NewRef.exit9.i.i, %bb.p
  %i.cn = load i32, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %.not.i15.i = icmp slt i32 %i.cn, 0
  br i1 %.not.i15.i, label %Py_DECREF.exit16.i, label %bb.t

bb.t:                                             ; preds = %_PyTemplate_Build.exit.i
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %i.r, align 8, !tbaa !30
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.u, label %Py_DECREF.exit16.i

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #3, !inline_history !38
  br label %Py_DECREF.exit16.i

Py_DECREF.exit16.i:                               ; preds = %bb.u, %bb.t, %_PyTemplate_Build.exit.i
  %i.cq = load i32, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp slt i32 %i.cq, 0
  br i1 %.not.i.i, label %template_concat_templates.exit, label %bb.v

bb.v:                                             ; preds = %Py_DECREF.exit16.i
  %i.cr = add nsw i32 %i.cq, -1                   ; 2 uses
  store i32 %i.cr, ptr %i.by, align 8, !tbaa !30
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %Py_DECREF.exit18.sink.split.i, label %template_concat_templates.exit

Py_DECREF.exit18.sink.split.i:                    ; preds = %bb.v, %bb.o, %bb.f
  %.sink.i = phi ptr [ %i.o, %bb.f ], [ %i.r, %bb.o ], [ %i.by, %bb.v ]
  %.1.ph.i = phi ptr [ null, %bb.f ], [ null, %bb.o ], [ %i.cd, %bb.v ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #3, !inline_history !38
  br label %template_concat_templates.exit

bb.w:                                             ; preds = %bb.b, %bb.a
  %i.ct = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.cu = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ct, ptr noundef nonnull @.str.2, ptr noundef %1) #3 ; 0 uses
  br label %template_concat_templates.exit

template_concat_templates.exit:                   ; preds = %Py_DECREF.exit18.sink.split.i, %bb.v, %Py_DECREF.exit16.i, %bb.o, %bb.n, %bb.f, %bb.e, %bb.c, %bb.w
  %.0 = phi ptr [ null, %bb.w ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.n ], [ null, %bb.o ], [ %i.cd, %Py_DECREF.exit16.i ], [ %i.cd, %bb.v ], [ null, %bb.c ], [ %.1.ph.i, %Py_DECREF.exit18.sink.split.i ]
  ret ptr %.0
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @template_dealloc(ptr noundef %0) #0 {
bb.a:
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #3
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val5 = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %.val5, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = tail call i32 %i.c(ptr noundef %0) #3    ; 0 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %.val, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  tail call void %i.f(ptr noundef %0) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @template_repr(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.b = tail call ptr @_PyType_Name(ptr noundef %.val) #3
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.6, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f) #3
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal i32 @template_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #3 ; 2 uses
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #3 ; 2 uses
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.3 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @template_clear(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %.not.i13 = icmp slt i32 %i.c, 0
  br i1 %.not.i13, label %Py_DECREF.exit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !30
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #3
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 4 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit14
  store ptr null, ptr %i.f, align 8, !tbaa !29
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp slt i32 %i.h, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !30
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @template_iter(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyTemplateIter_Type) #3 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = tail call ptr @PyObject_GetIter(ptr noundef %i.d) #3 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not.i22 = icmp slt i32 %i.g, 0
  br i1 %.not.i22, label %Py_DECREF.exit23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.a, align 8, !tbaa !30
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit23

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #3
  br label %Py_DECREF.exit23

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = tail call ptr @PyObject_GetIter(ptr noundef %i.k) #3 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not.i20 = icmp slt i32 %i.n, 0
  br i1 %.not.i20, label %Py_DECREF.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !30
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %Py_DECREF.exit21

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #3
  br label %Py_DECREF.exit21

Py_DECREF.exit21:                                 ; preds = %bb.g, %bb.h, %bb.i
  %i.q = load i32, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp slt i32 %i.q, 0
  br i1 %.not.i, label %Py_DECREF.exit23, label %bb.j

bb.j:                                             ; preds = %Py_DECREF.exit21
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.e, align 8, !tbaa !30
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %Py_DECREF.exit23

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #3
  br label %Py_DECREF.exit23

bb.l:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.t, align 8, !tbaa !26
  %i.u = getelementptr i8, ptr %i.a, i64 24
  store ptr %i.l, ptr %i.u, align 8, !tbaa !28
  %i.v = getelementptr i8, ptr %i.a, i64 32
  store i32 1, ptr %i.v, align 8, !tbaa !31
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.a) #3
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %bb.k, %bb.j, %Py_DECREF.exit21, %bb.e, %bb.d, %bb.c, %bb.l, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.a, %bb.l ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.d ], [ null, %Py_DECREF.exit21 ], [ null, %bb.j ], [ null, %bb.k ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @template_new(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address_is_null) %2) #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.a, ptr noundef nonnull @.str.21) #3
  br label %Py_DECREF.exit132

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val141 = load i64, ptr %i.b, align 8, !tbaa !37 ; 4 uses
  %.not109179 = icmp sgt i64 %.val141, 0          ; 2 uses
  br i1 %.not109179, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.c = getelementptr i8, ptr %1, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.067183 = phi i64 [ 0, %.lr.ph ], [ %.471.ph, %bb.g ]
  %.074182 = phi i64 [ 0, %.lr.ph ], [ %.276.ph, %bb.g ] ; 2 uses
  %.078181 = phi i32 [ 0, %.lr.ph ], [ %.280.ph, %bb.g ]
  %.096180 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.g ] ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.096180
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val138 = load ptr, ptr %i.f, align 8, !tbaa !11 ; 2 uses
  %i.g = getelementptr i8, ptr %.val138, i64 168
  %.val143 = load i64, ptr %i.g, align 8, !tbaa !44
  %i.h = and i64 %.val143, 268435456              ; 2 uses
  %.not105 = icmp eq i64 %i.h, 0
  br i1 %.not105, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not173 = icmp eq ptr %.val138, @_PyInterpolation_Type
  br i1 %.not173, label %bb.f, label %.thread152

bb.f:                                             ; preds = %bb.e
  %i.i = add i64 %.074182, 1
  br label %bb.g

.thread152:                                       ; preds = %bb.e
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.e) #3 ; 0 uses
  br label %Py_DECREF.exit132

bb.g:                                             ; preds = %bb.d, %bb.f
  %.280.ph = phi i32 [ 0, %bb.f ], [ 1, %bb.d ]
  %.276.ph = phi i64 [ %i.i, %bb.f ], [ %.074182, %bb.d ] ; 2 uses
  %.pn.in = icmp eq i32 %.078181, 0
  %.pn = zext i1 %.pn.in to i64
  %.471.ph = add i64 %.067183, %.pn               ; 2 uses
  %i.l = add nuw nsw i64 %.096180, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %.val141
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %bb.g
  %.lobit = lshr exact i64 %i.h, 28
  %i.m = xor i64 %.lobit, 1
  %i.n = add i64 %.471.ph, %i.m
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.074.lcssa = phi i64 [ 0, %bb.c ], [ %.276.ph, %._crit_edge.loopexit ]
  %spec.select121 = phi i64 [ 1, %bb.c ], [ %i.n, %._crit_edge.loopexit ]
  %i.o = tail call ptr @PyTuple_New(i64 noundef %spec.select121) #3 ; 16 uses
  %.not111 = icmp eq ptr %i.o, null
  br i1 %.not111, label %Py_DECREF.exit132, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.p = tail call ptr @PyTuple_New(i64 noundef %.074.lcssa) #3 ; 11 uses
  %.not112 = icmp eq ptr %i.p, null
  br i1 %.not112, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  br i1 %.not109179, label %.lr.ph191, label %._crit_edge192.thread

.lr.ph191:                                        ; preds = %.preheader
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %i.s = getelementptr i8, ptr %i.o, i64 32       ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 32
  br label %.outer

.outer:                                           ; preds = %.thread157.thread, %.lr.ph191
  %.086189.ph = phi i64 [ %i.bb, %.thread157.thread ], [ 0, %.lr.ph191 ]
  %.087188.ph = phi i64 [ %i.av, %.thread157.thread ], [ 0, %.lr.ph191 ] ; 2 uses
  %.090187.ph = phi i64 [ %.292, %.thread157.thread ], [ 0, %.lr.ph191 ]
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %.not.i131 = icmp slt i32 %i.u, 0
  br i1 %.not.i131, label %Py_DECREF.exit132, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.o, align 8, !tbaa !30
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %Py_DECREF.exit132

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #3
  br label %Py_DECREF.exit132

bb.l:                                             ; preds = %.outer, %.thread157
  %.482190 = phi i32 [ %.684164, %.thread157 ], [ 0, %.outer ] ; 3 uses
  %.086189 = phi i64 [ %i.az, %.thread157 ], [ %.086189.ph, %.outer ] ; 3 uses
  %.090187 = phi i64 [ %.494162, %.thread157 ], [ %.090187.ph, %.outer ] ; 10 uses
  %i.x = getelementptr [8 x i8], ptr %i.q, i64 %.086189
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 8 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val = load ptr, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  %i.aa = getelementptr i8, ptr %.val, i64 168
  %.val142 = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ab = and i64 %.val142, 268435456
  %.not113 = icmp eq i64 %i.ab, 0
  br i1 %.not113, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not116 = icmp eq i32 %.482190, 0
  br i1 %.not116, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr [8 x i8], ptr %i.r, i64 %.090187 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 4 uses
  %i.ae = tail call ptr @PyUnicode_Concat(ptr noundef %i.ad, ptr noundef nonnull %i.y) #3 ; 2 uses
  %.not117.not = icmp eq ptr %i.ae, null
  br i1 %.not117.not, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.af = load i32, ptr %i.o, align 8, !tbaa !30  ; 2 uses
  %.not.i129 = icmp slt i32 %i.af, 0
  br i1 %.not.i129, label %Py_DECREF.exit130, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.o, align 8, !tbaa !30
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %Py_DECREF.exit130

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #3
  br label %Py_DECREF.exit130

Py_DECREF.exit130:                                ; preds = %bb.o, %bb.p, %bb.q
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !30  ; 2 uses
  %.not.i127 = icmp slt i32 %i.ai, 0
  br i1 %.not.i127, label %Py_DECREF.exit132, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit130
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !30
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.s, label %Py_DECREF.exit132

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #3
  br label %Py_DECREF.exit132

bb.t:                                             ; preds = %bb.n
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !29
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !30 ; 2 uses
  %.not.i125 = icmp slt i32 %i.al, 0
  br i1 %.not.i125, label %.thread157, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ad, align 8, !tbaa !30
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.v, label %.thread157

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #3
  br label %.thread157

bb.w:                                             ; preds = %bb.m
  %i.ao = add i64 %.090187, 1
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !30  ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, -1073741825
  br i1 %i.aq, label %_Py_NewRef.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = add nuw i32 %i.ap, 1
  store i32 %i.ar, ptr %i.y, align 8, !tbaa !30
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.w, %bb.x
  %i.as = getelementptr [8 x i8], ptr %i.s, i64 %.090187
  store ptr %i.y, ptr %i.as, align 8, !tbaa !29
  br label %.thread157

bb.y:                                             ; preds = %bb.l
  %.not172 = icmp eq ptr %.val, @_PyInterpolation_Type
  br i1 %.not172, label %bb.z, label %.thread157

bb.z:                                             ; preds = %bb.y
  %.not115 = icmp eq i32 %.482190, 0
  br i1 %.not115, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.at = add i64 %.090187, 1
  %i.au = getelementptr [8 x i8], ptr %i.s, i64 %.090187
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.au, align 8, !tbaa !29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.292 = phi i64 [ %.090187, %bb.z ], [ %i.at, %bb.aa ] ; 2 uses
  %i.av = add i64 %.087188.ph, 1
  %i.aw = load i32, ptr %i.y, align 8, !tbaa !30  ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, -1073741825
  br i1 %i.ax, label %.thread157.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ay = add nuw i32 %i.aw, 1
  store i32 %i.ay, ptr %i.y, align 8, !tbaa !30
  br label %.thread157.thread

.thread157:                                       ; preds = %bb.v, %bb.u, %bb.t, %bb.y, %_Py_NewRef.exit
  %.684164 = phi i32 [ %.482190, %bb.y ], [ 1, %_Py_NewRef.exit ], [ 1, %bb.v ], [ 1, %bb.t ], [ 1, %bb.u ] ; 2 uses
  %.494162 = phi i64 [ %.090187, %bb.y ], [ %i.ao, %_Py_NewRef.exit ], [ %.090187, %bb.v ], [ %.090187, %bb.t ], [ %.090187, %bb.u ] ; 2 uses
  %i.az = add nuw nsw i64 %.086189, 1             ; 2 uses
  %exitcond196.not = icmp eq i64 %i.az, %.val141
  br i1 %exitcond196.not, label %._crit_edge192, label %bb.l, !llvm.loop !46

.thread157.thread:                                ; preds = %bb.ac, %bb.ab
  %i.ba = getelementptr [8 x i8], ptr %i.t, i64 %.087188.ph
  store ptr %i.y, ptr %i.ba, align 8, !tbaa !29
  %i.bb = add nuw nsw i64 %.086189, 1             ; 2 uses
  %exitcond196.not218 = icmp eq i64 %i.bb, %.val141
  br i1 %exitcond196.not218, label %._crit_edge192.thread, label %.outer, !llvm.loop !46

._crit_edge192:                                   ; preds = %.thread157
  %3 = trunc nuw i32 %.684164 to i1
  br i1 %3, label %bb.ad, label %._crit_edge192.thread

._crit_edge192.thread:                            ; preds = %.thread157.thread, %.preheader, %._crit_edge192
  %.090.lcssa214 = phi i64 [ 0, %.preheader ], [ %.494162, %._crit_edge192 ], [ %.292, %.thread157.thread ]
  %i.bc = getelementptr i8, ptr %i.o, i64 32
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %.090.lcssa214
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 60176), ptr %i.bd, align 8, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge192.thread, %._crit_edge192
  %i.be = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyTemplate_Type) #3, !inline_history !47 ; 7 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_PyTemplate_Build.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bg = load i32, ptr %i.o, align 8, !tbaa !30  ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, -1073741825
  br i1 %i.bh, label %_Py_NewRef.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bi = add nuw i32 %i.bg, 1
  store i32 %i.bi, ptr %i.o, align 8, !tbaa !30
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.af, %bb.ae
  %i.bj = getelementptr i8, ptr %i.be, i64 16
  store ptr %i.o, ptr %i.bj, align 8, !tbaa !35
  %i.bk = load i32, ptr %i.p, align 8, !tbaa !30  ; 2 uses
  %i.bl = icmp ugt i32 %i.bk, -1073741825
  br i1 %i.bl, label %_Py_NewRef.exit9.i, label %bb.ag

bb.ag:                                            ; preds = %_Py_NewRef.exit.i
  %i.bm = add nuw i32 %i.bk, 1
  store i32 %i.bm, ptr %i.p, align 8, !tbaa !30
  br label %_Py_NewRef.exit9.i

_Py_NewRef.exit9.i:                               ; preds = %bb.ag, %_Py_NewRef.exit.i
  %i.bn = getelementptr i8, ptr %i.be, i64 24
  store ptr %i.p, ptr %i.bn, align 8, !tbaa !42
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.be) #3, !inline_history !47
  br label %_PyTemplate_Build.exit

_PyTemplate_Build.exit:                           ; preds = %bb.ad, %_Py_NewRef.exit9.i
  %i.bo = load i32, ptr %i.o, align 8, !tbaa !30  ; 2 uses
  %.not.i123 = icmp slt i32 %i.bo, 0
  br i1 %.not.i123, label %Py_DECREF.exit124, label %bb.ah

bb.ah:                                            ; preds = %_PyTemplate_Build.exit
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.o, align 8, !tbaa !30
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ai, label %Py_DECREF.exit124

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #3
  br label %Py_DECREF.exit124

Py_DECREF.exit124:                                ; preds = %_PyTemplate_Build.exit, %bb.ah, %bb.ai
  %i.br = load i32, ptr %i.p, align 8, !tbaa !30  ; 2 uses
  %.not.i = icmp slt i32 %i.br, 0
  br i1 %.not.i, label %Py_DECREF.exit132, label %bb.aj

bb.aj:                                            ; preds = %Py_DECREF.exit124
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.p, align 8, !tbaa !30
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ak, label %Py_DECREF.exit132

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #3
  br label %Py_DECREF.exit132

Py_DECREF.exit132:                                ; preds = %Py_DECREF.exit130, %bb.r, %bb.s, %bb.ak, %bb.aj, %Py_DECREF.exit124, %bb.k, %bb.j, %bb.i, %.thread152, %._crit_edge, %bb.b
  %.13 = phi ptr [ null, %bb.b ], [ null, %.thread152 ], [ null, %._crit_edge ], [ %i.be, %bb.ak ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.j ], [ %i.be, %Py_DECREF.exit124 ], [ %i.be, %bb.aj ], [ null, %bb.s ], [ null, %bb.r ], [ null, %Py_DECREF.exit130 ]
  ret ptr %.13
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyTemplate_Build(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyTemplate_Type) #3 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.d = icmp ugt i32 %i.c, -1073741825
  br i1 %i.d, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !30
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.b, %bb.c
  %i.f = getelementptr i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.f, align 8, !tbaa !35
  %i.g = load i32, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.h = icmp ugt i32 %i.g, -1073741825
  br i1 %i.h, label %_Py_NewRef.exit9, label %bb.d

bb.d:                                             ; preds = %_Py_NewRef.exit
  %i.i = add nuw i32 %i.g, 1
  store i32 %i.i, ptr %1, align 8, !tbaa !30
  br label %_Py_NewRef.exit9

_Py_NewRef.exit9:                                 ; preds = %_Py_NewRef.exit, %bb.d
  %i.j = getelementptr i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.j, align 8, !tbaa !42
  tail call void @PyObject_GC_Track(ptr noundef nonnull %i.a) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_Py_NewRef.exit9
  ret ptr %i.a
}

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_Track(ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #1

declare ptr @PySequence_Concat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_Concat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromFormat(ptr noundef, ...) local_unnamed_addr #1

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @template_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @PyImport_ImportModule(ptr noundef nonnull @.str.11) #3 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.12) #3 ; 5 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not.i13 = icmp slt i32 %i.d, 0
  br i1 %.not.i13, label %Py_DECREF.exit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.a, align 8, !tbaa !30
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #3
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.b, %bb.c, %bb.d
  %i.g = icmp eq ptr %i.c, null
  br i1 %i.g, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit14
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.c, ptr noundef %i.i, ptr noundef %i.k) #3 ; 3 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not.i = icmp slt i32 %i.m, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.c, align 8, !tbaa !30
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #3
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit14, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %Py_DECREF.exit14 ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  ret ptr %.1
}

declare ptr @Py_GenericAlias(ptr noundef, ptr noundef) #1

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @template_values_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val15 = load i64, ptr %i.c, align 8, !tbaa !37 ; 3 uses
  %i.d = tail call ptr @PyTuple_New(i64 noundef %.val15) #3 ; 3 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp sgt i64 %.val15, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01316 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.01316
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = tail call ptr @_PyInterpolation_GetValueRef(ptr noundef %i.k) #3
  %i.m = getelementptr [8 x i8], ptr %i.g, i64 %.01316
  store ptr %i.l, ptr %i.m, align 8, !tbaa !29
  %i.n = add nuw nsw i64 %.01316, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %.val15
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !48

.loopexit:                                        ; preds = %bb.b, %bb.a
  ret ptr %i.d
}

declare ptr @_PyInterpolation_GetValueRef(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind }

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
!11 = !{!12, !13, i64 8}
!12 = !{!"_object", !9, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !14, i64 192}
!16 = !{!"_typeobject", !17, i64 0, !19, i64 24, !18, i64 32, !18, i64 40, !14, i64 48, !18, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !18, i64 168, !19, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !18, i64 208, !14, i64 216, !14, i64 224, !20, i64 232, !21, i64 240, !22, i64 248, !13, i64 256, !23, i64 264, !14, i64 272, !14, i64 280, !18, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !23, i64 336, !23, i64 344, !23, i64 352, !14, i64 360, !23, i64 368, !14, i64 376, !8, i64 384, !14, i64 392, !14, i64 400, !9, i64 408, !24, i64 410}
!17 = !{!"PyVarObject", !12, i64 0, !18, i64 16}
!18 = !{!"long", !9, i64 0}
!19 = !{!"p1 omnipotent char", !14, i64 0}
!20 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!21 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!22 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!23 = !{!"p1 _ZTS7_object", !14, i64 0}
!24 = !{!"short", !9, i64 0}
!25 = !{!16, !14, i64 320}
!26 = !{!27, !23, i64 16}
!27 = !{!"", !12, i64 0, !23, i64 16, !23, i64 24, !8, i64 32}
!28 = !{!27, !23, i64 24}
!29 = !{!23, !23, i64 0}
!30 = !{!9, !9, i64 0}
!31 = !{!27, !8, i64 32}
!32 = !{!33, !18, i64 16}
!33 = !{!"", !12, i64 0, !18, i64 16, !18, i64 24, !34, i64 32}
!34 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!35 = !{!36, !23, i64 16}
!36 = !{!"", !12, i64 0, !23, i64 16, !23, i64 24}
!37 = !{!17, !18, i64 16}
!38 = distinct !{null}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{!36, !23, i64 24}
!43 = distinct !{null, ptr @_PyTemplate_Build}
!44 = !{!16, !18, i64 168}
!45 = distinct !{!45, !40}
!46 = distinct !{!46, !40}
!47 = !{ptr @_PyTemplate_Build}
!48 = distinct !{!48, !40}
end_hunk_0
