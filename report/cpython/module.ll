Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/module?download=true
inline.NumInlined: 148
inline.NumDeleted: 42
loop-unroll.NumUnrolled: 10
begin_hunk_0
@.str.167 = private unnamed_addr constant [19 x i8] c"sample_interval_us\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"start_time_us\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@_remote_debugging_BinaryWriter___init__._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_remote_debugging_BinaryWriter___init__._keywords, ptr @.str.170, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.170 = private unnamed_addr constant [13 x i8] c"BinaryWriter\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"argument 'filename'\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.173 = private unnamed_addr constant [24 x i8] c"embedded null character\00", align 1
@.str.174 = private unnamed_addr constant [31 x i8] c"_remote_debugging.BinaryReader\00", align 1
@BinaryReader_spec = internal global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str.174, i32 24, i32 0, i32 256, [4 x i8] zeroinitializer, ptr @BinaryReader_slots }, align 8
@BinaryReader_getset = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.177, ptr @BinaryReader_get_sample_count, ptr null, ptr @.str.178, ptr null }, %struct.PyGetSetDef { ptr @.str.167, ptr @BinaryReader_get_sample_interval_us, ptr null, ptr @.str.179, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@BinaryReader_slots = internal global [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @BinaryReader_getset }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @BinaryReader_methods }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @_remote_debugging_BinaryReader___init__ }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @BinaryReader_dealloc }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.177 = private unnamed_addr constant [13 x i8] c"sample_count\00", align 1
@.str.178 = private unnamed_addr constant [26 x i8] c"Number of samples in file\00", align 1
@.str.179 = private unnamed_addr constant [32 x i8] c"Sample interval in microseconds\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"replay\00", align 1
@_remote_debugging_BinaryReader_replay__doc__ = internal constant [256 x i8] c"replay($self, /, collector, progress_callback=None)\0A--\0A\0AReplay samples through a collector.\0A\0AArguments:\0A    collector: Collector object with collect() method\0A    progress_callback: Optional callable(current, total)\0A\0AReturns:\0A    Number of samples replayed\00", align 16
@.str.181 = private unnamed_addr constant [9 x i8] c"get_info\00", align 1
@_remote_debugging_BinaryReader_get_info__doc__ = internal constant [97 x i8] c"get_info($self, /)\0A--\0A\0AGet metadata about the binary file.\0A\0AReturns:\0A    Dict with file metadata\00", align 16
@_remote_debugging_BinaryReader_get_stats__doc__ = internal constant [167 x i8] c"get_stats($self, /)\0A--\0A\0AGet reconstruction statistics from replay.\0A\0AReturns a dict with statistics about record types decoded and samples\0Areconstructed during replay.\00", align 16
@_remote_debugging_BinaryReader_close__doc__ = internal constant [57 x i8] c"close($self, /)\0A--\0A\0AClose the reader and free resources.\00", align 16
@_remote_debugging_BinaryReader___enter____doc__ = internal constant [47 x i8] c"__enter__($self, /)\0A--\0A\0AEnter context manager.\00", align 16
@_remote_debugging_BinaryReader___exit____doc__ = internal constant [105 x i8] c"__exit__($self, /, exc_type=None, exc_val=None, exc_tb=None)\0A--\0A\0AExit context manager, closing the file.\00", align 16
@BinaryReader_methods = internal global [7 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.180, ptr @_remote_debugging_BinaryReader_replay, i32 130, [4 x i8] zeroinitializer, ptr @_remote_debugging_BinaryReader_replay__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.181, ptr @_remote_debugging_BinaryReader_get_info, i32 4, [4 x i8] zeroinitializer, ptr @_remote_debugging_BinaryReader_get_info__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.97, ptr @_remote_debugging_BinaryReader_get_stats, i32 4, [4 x i8] zeroinitializer, ptr @_remote_debugging_BinaryReader_get_stats__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.156, ptr @_remote_debugging_BinaryReader_close, i32 4, [4 x i8] zeroinitializer, ptr @_remote_debugging_BinaryReader_close__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.157, ptr @_remote_debugging_BinaryReader___enter__, i32 4, [4 x i8] zeroinitializer, ptr @_remote_debugging_BinaryReader___enter____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.158, ptr @_remote_debugging_BinaryReader___exit__, i32 130, [4 x i8] zeroinitializer, ptr @_remote_debugging_BinaryReader___exit____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@_remote_debugging_BinaryReader_replay._keywords = internal constant [3 x ptr] [ptr @.str.183, ptr @.str.184, ptr null], align 16
@.str.183 = private unnamed_addr constant [10 x i8] c"collector\00", align 1
@.str.184 = private unnamed_addr constant [18 x i8] c"progress_callback\00", align 1
@_remote_debugging_BinaryReader_replay._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_remote_debugging_BinaryReader_replay._keywords, ptr @.str.180, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.185 = private unnamed_addr constant [17 x i8] c"Reader is closed\00", align 1
@_remote_debugging_BinaryReader___exit__._keywords = internal constant [4 x ptr] [ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr null], align 16
@_remote_debugging_BinaryReader___exit__._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_remote_debugging_BinaryReader___exit__._keywords, ptr @.str.158, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@_remote_debugging_BinaryReader___init__._keywords = internal constant [2 x ptr] [ptr @.str.36, ptr null], align 16
@_remote_debugging_BinaryReader___init__._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @_remote_debugging_BinaryReader___init__._keywords, ptr @.str.186, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.186 = private unnamed_addr constant [13 x i8] c"BinaryReader\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @cached_code_metadata_destroy(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126    ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not.i7 = icmp sgt i32 %i.b, -1
  br i1 %.not.i7, label %bb.b, label %Py_DECREF.exit8

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %Py_DECREF.exit8

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #12
  br label %Py_DECREF.exit8

Py_DECREF.exit8:                                  ; preds = %bb.a, %bb.b, %bb.c
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127  ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %.not.i5 = icmp sgt i32 %i.g, -1
  br i1 %.not.i5, label %bb.d, label %Py_DECREF.exit6

bb.d:                                             ; preds = %Py_DECREF.exit8
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !16
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit6

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #12
  br label %Py_DECREF.exit6

Py_DECREF.exit6:                                  ; preds = %Py_DECREF.exit8, %bb.d, %bb.e
  %i.j = getelementptr i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %Py_DECREF.exit6
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !16
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.k) #12
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit6, %bb.f, %bb.g
  tail call void @PyMem_RawFree(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @RemoteDebugging_GetState(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  ret ptr %.val
}

; Function Attrs: nounwind uwtable
define hidden ptr @RemoteDebugging_GetStateFromType(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyType_GetModule(ptr noundef %0) #12
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !21
  ret ptr %.val.i
}

declare ptr @PyType_GetModule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @RemoteDebugging_GetStateFromObject(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 33816      ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.e = tail call ptr @PyType_GetModule(ptr noundef %.val) #12
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !21 ; 2 uses
  store ptr %.val.i.i, ptr %i.a, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %.val.i.i, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @RemoteDebugging_InitState(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i32 0, 2) i32 @is_prerelease_version(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %0, 240
  %i.b = icmp ne i64 %i.a, 240
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @validate_debug_offsets(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 1
  %i.b = icmp ne i64 %i.a, 8750607829840520312
  %i.c = zext i1 %i.b to i32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !55
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.15) #12
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr @Py_Version, align 8, !tbaa !56 ; 4 uses
  %i.f = and i64 %i.e, 240
  %.not18 = icmp eq i64 %i.f, 240
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !129 ; 4 uses
  br i1 %.not18, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not13 = icmp eq i64 %i.e, %.pre
  br i1 %.not13, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !55
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.16) #12
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %.pre20 = and i64 %.pre, 240
  %i.h = icmp eq i64 %.pre20, 240
  %.not15 = icmp eq i64 %i.e, %.pre
  %or.cond17 = or i1 %.not15, %i.h
  br i1 %or.cond17, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !55
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.17) #12
  br label %bb.k

.thread:                                          ; preds = %bb.d, %bb.f
  %i.j = phi i64 [ %.pre, %bb.f ], [ %i.e, %bb.d ]
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %1 = lshr i32 %i.k, 24                          ; 2 uses
  %2 = lshr i32 %i.k, 16
  %i.l = and i32 %2, 255                          ; 2 uses
  %i.m = icmp ne i32 %1, 3
  %i.n = icmp ne i32 %i.l, 15
  %or.cond = or i1 %i.m, %i.n
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.o = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !55
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.18, i32 noundef 3, i32 noundef 15, i32 noundef %1, i32 noundef %i.l) #12 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %.thread
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !130
  %.not16 = icmp eq i64 %i.r, 0
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !55
  tail call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.19) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.g, %bb.e, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.j ], [ 0, %bb.i ]
  ret i32 %.1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @PyInit__remote_debugging() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @remote_debugging_module) #12
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @remote_debugging_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !21 ; 10 uses
  %i.b = load ptr, ptr %.val.i, align 8, !tbaa !58 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #12 ; 2 uses
  %.not109 = icmp eq i32 %i.c, 0
  br i1 %.not109, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %.val.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %.not110 = icmp eq ptr %i.e, null
  br i1 %.not110, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 %1(ptr noundef nonnull %i.e, ptr noundef %2) #12 ; 2 uses
  %.not111 = icmp eq i32 %i.f, 0
  br i1 %.not111, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %.val.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.not112 = icmp eq ptr %i.h, null
  br i1 %.not112, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 %1(ptr noundef nonnull %i.h, ptr noundef %2) #12 ; 2 uses
  %.not113 = icmp eq i32 %i.i, 0
  br i1 %.not113, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61   ; 2 uses
  %.not114 = icmp eq ptr %i.k, null
  br i1 %.not114, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 %1(ptr noundef nonnull %i.k, ptr noundef %2) #12 ; 2 uses
  %.not115 = icmp eq i32 %i.l, 0
  br i1 %.not115, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.m = getelementptr i8, ptr %.val.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %.not116 = icmp eq ptr %i.n, null
  br i1 %.not116, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 %1(ptr noundef nonnull %i.n, ptr noundef %2) #12 ; 2 uses
  %.not117 = icmp eq i32 %i.o, 0
  br i1 %.not117, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.p = getelementptr i8, ptr %.val.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63   ; 2 uses
  %.not118 = icmp eq ptr %i.q, null
  br i1 %.not118, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call i32 %1(ptr noundef nonnull %i.q, ptr noundef %2) #12 ; 2 uses
  %.not119 = icmp eq i32 %i.r, 0
  br i1 %.not119, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.s = getelementptr i8, ptr %.val.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64   ; 2 uses
  %.not120 = icmp eq ptr %i.t, null
  br i1 %.not120, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i32 %1(ptr noundef nonnull %i.t, ptr noundef %2) #12 ; 2 uses
  %.not121 = icmp eq i32 %i.u, 0
  br i1 %.not121, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.v = getelementptr i8, ptr %.val.i, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65   ; 2 uses
  %.not122 = icmp eq ptr %i.w, null
  br i1 %.not122, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = tail call i32 %1(ptr noundef nonnull %i.w, ptr noundef %2) #12 ; 2 uses
  %.not123 = icmp eq i32 %i.x, 0
  br i1 %.not123, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.y = getelementptr i8, ptr %.val.i, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66   ; 2 uses
  %.not124 = icmp eq ptr %i.z, null
  br i1 %.not124, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = tail call i32 %1(ptr noundef nonnull %i.z, ptr noundef %2) #12 ; 2 uses
  %.not125 = icmp eq i32 %i.aa, 0
  br i1 %.not125, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ab = getelementptr i8, ptr %.val.i, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67 ; 2 uses
  %.not126 = icmp eq ptr %i.ac, null
  br i1 %.not126, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = tail call i32 %1(ptr noundef nonnull %i.ac, ptr noundef %2) #12 ; 2 uses
  %.not127 = icmp eq i32 %i.ad, 0
  br i1 %.not127, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.u
  %.19 = phi i32 [ 0, %bb.u ], [ %i.ad, %bb.t ], [ %i.aa, %bb.r ], [ %i.x, %bb.p ], [ %i.u, %bb.n ], [ %i.r, %bb.l ], [ %i.o, %bb.j ], [ %i.l, %bb.h ], [ %i.i, %bb.f ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @remote_debugging_clear(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !21 ; 11 uses
  %i.b = load ptr, ptr %.val.i, align 8, !tbaa !131 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit86, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %.val.i, align 8, !tbaa !131
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %.not.i85 = icmp sgt i32 %i.c, -1
  br i1 %.not.i85, label %bb.c, label %Py_DECREF.exit86

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !16
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit86

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #12
  br label %Py_DECREF.exit86

Py_DECREF.exit86:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %.val.i, i64 8     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131  ; 4 uses
  %.not60 = icmp eq ptr %i.g, null
  br i1 %.not60, label %Py_DECREF.exit84, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit86
  store ptr null, ptr %i.f, align 8, !tbaa !131
  %i.h = load i32, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.not.i83 = icmp sgt i32 %i.h, -1
  br i1 %.not.i83, label %bb.f, label %Py_DECREF.exit84

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !16
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit84

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #12
  br label %Py_DECREF.exit84
end_hunk_0
