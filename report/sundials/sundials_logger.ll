Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_logger?download=true
inline.NumInlined: 26
inline.NumDeleted: 10
begin_hunk_0_@sunFlushLogMessage:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %sunLoggerGetFilePointer.exit.thread, label %sunLoggerGetFilePointer.exit.thread.sink.split

bb.i:                                             ; preds = %bb.a
  br label %sunLoggerGetFilePointer.exit

bb.j:                                             ; preds = %bb.a
  br label %sunLoggerGetFilePointer.exit

bb.k:                                             ; preds = %bb.a
  br label %sunLoggerGetFilePointer.exit

sunLoggerGetFilePointer.exit:                     ; preds = %bb.a, %bb.i, %bb.j, %bb.k
  %.sink.i = phi i64 [ 32, %bb.k ], [ 16, %bb.i ], [ 24, %bb.j ], [ 8, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %.not27 = icmp eq ptr %i.m, null
  br i1 %.not27, label %sunLoggerGetFilePointer.exit.thread, label %sunLoggerGetFilePointer.exit.thread.sink.split

sunLoggerGetFilePointer.exit.thread.sink.split:   ; preds = %sunLoggerGetFilePointer.exit, %bb.h
  %.sink = phi ptr [ %i.k, %bb.h ], [ %i.m, %sunLoggerGetFilePointer.exit ]
  %i.n = tail call i32 @fflush(ptr noundef nonnull %.sink) ; 0 uses
  br label %sunLoggerGetFilePointer.exit.thread

sunLoggerGetFilePointer.exit.thread:              ; preds = %sunLoggerGetFilePointer.exit.thread.sink.split, %bb.a, %sunLoggerGetFilePointer.exit, %bb.h
  %.0 = phi i32 [ -9971, %bb.a ], [ 0, %bb.h ], [ 0, %sunLoggerGetFilePointer.exit ], [ 0, %sunLoggerGetFilePointer.exit.thread.sink.split ]
  ret i32 %.0
}

declare i32 @SUNHashMap_New(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @sunLoggerFreeKeyValue(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr @stdout, align 8
  %.not4.i = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not4.i
  %i.e = load ptr, ptr @stderr, align 8
  %.not5.i = icmp eq ptr %i.c, %i.e
  %or.cond6.i = select i1 %or.cond.i, i1 true, i1 %.not5.i
  br i1 %or.cond6.i, label %sunCloseLogFile.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !26
  br label %sunCloseLogFile.exit

sunCloseLogFile.exit:                             ; preds = %bb.c, %bb.d
  %i.g = phi ptr [ %i.a, %bb.c ], [ %.pre, %bb.d ]
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.h) #17
  %i.i = load ptr, ptr %0, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.i) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %sunCloseLogFile.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -9993, 1) i32 @SUNLogger_CreateFromEnv(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str) #17 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 10) #17, !inline_history !31
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = tail call ptr @getenv(ptr noundef nonnull @.str.1) #17 ; 2 uses
  %i.f = tail call ptr @getenv(ptr noundef nonnull @.str.2) #17 ; 2 uses
  %i.g = tail call ptr @getenv(ptr noundef nonnull @.str.3) #17 ; 0 uses
  %i.h = tail call ptr @getenv(ptr noundef nonnull @.str.4) #17 ; 0 uses
  %i.i = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #16 ; 16 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %SUNLogger_Destroy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !14
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.i) #17
  br label %SUNLogger_Destroy.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.d, ptr %i.k, align 4, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr @sunQueueLogMessage, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr @sunFlushLogMessage, ptr %i.n, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !18
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !20
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !19 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.r, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.r, ptr %i.u, align 8, !tbaa !23
  %i.v = tail call i32 @SUNHashMap_New(i64 noundef 8, ptr noundef nonnull @sunLoggerFreeKeyValue, ptr noundef nonnull %i.o) #17 ; 0 uses
  %.not32 = icmp eq ptr %i.e, null
  br i1 %.not32, label %bb.g, label %SUNLogger_SetErrorFilename.exit

SUNLogger_SetErrorFilename.exit:                  ; preds = %bb.f
  %i.w = tail call fastcc i32 @sunLoggerSetFilename(ptr noundef %i.i, ptr noundef nonnull %i.e, ptr noundef %i.q) ; 2 uses
  %.not33 = icmp eq i32 %i.w, 0
  br i1 %.not33, label %bb.g, label %.thread

bb.g:                                             ; preds = %SUNLogger_SetErrorFilename.exit, %bb.f
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %.split20.thread61, label %SUNLogger_SetWarningFilename.exit

SUNLogger_SetWarningFilename.exit:                ; preds = %bb.g
  %i.x = tail call fastcc i32 @sunLoggerSetFilename(ptr noundef %i.i, ptr noundef nonnull %i.f, ptr noundef %i.s) ; 2 uses
  %.not35 = icmp eq i32 %i.x, 0
  br i1 %.not35, label %.split20.thread61, label %.thread

.split20.thread61:                                ; preds = %SUNLogger_SetWarningFilename.exit, %bb.g
  store ptr %i.i, ptr %1, align 8, !tbaa !10
  br label %SUNLogger_Destroy.exit

.thread:                                          ; preds = %SUNLogger_SetWarningFilename.exit, %SUNLogger_SetErrorFilename.exit
  %.25967 = phi i32 [ %i.x, %SUNLogger_SetWarningFilename.exit ], [ %i.w, %SUNLogger_SetErrorFilename.exit ]
  %i.y = tail call i32 @SUNHashMap_Destroy(ptr noundef nonnull %i.o) #17 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.i) #17
  br label %SUNLogger_Destroy.exit

SUNLogger_Destroy.exit:                           ; preds = %bb.c, %bb.e, %.thread, %.split20.thread61
  %.019 = phi i32 [ -9993, %bb.c ], [ 0, %.split20.thread61 ], [ %.25967, %.thread ], [ -9993, %bb.e ]
  ret i32 %.019
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -9999, 1) i32 @SUNLogger_SetErrorFilename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call fastcc i32 @sunLoggerSetFilename(ptr noundef %0, ptr noundef %1, ptr noundef %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -9999, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -9999, 1) i32 @SUNLogger_SetWarningFilename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call fastcc i32 @sunLoggerSetFilename(ptr noundef %0, ptr noundef %1, ptr noundef %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -9999, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -9999, 1) i32 @SUNLogger_SetDebugFilename(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %. = select i1 %.not, i32 -9999, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -9999, 1) i32 @SUNLogger_SetInfoFilename(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %. = select i1 %.not, i32 -9999, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNLogger_Destroy(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = tail call i32 @SUNHashMap_Destroy(ptr noundef nonnull %i.b) #17 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.a) #17
  store ptr null, ptr %0, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -9991, 1) i32 @sunLoggerSetFilename(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %sunIsNullOrEmpty.exit.thread, label %sunIsNullOrEmpty.exit

sunIsNullOrEmpty.exit:                            ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !32
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %sunIsNullOrEmpty.exit.thread, label %bb.b

sunIsNullOrEmpty.exit.thread:                     ; preds = %bb.a, %sunIsNullOrEmpty.exit
  store ptr null, ptr %2, align 8, !tbaa !19
  br label %bb.j

bb.b:                                             ; preds = %sunIsNullOrEmpty.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = tail call i64 @SUNHashMap_GetValue(ptr noundef %i.d, ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  switch i64 %i.e, label %bb.i [
    i64 -99, label %bb.j
    i64 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.12) #18
  %.not7.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !19
  br label %sunOpenLogFile.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.13) #18
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !19
  br label %sunOpenLogFile.exit

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.11)
  br label %sunOpenLogFile.exit

sunOpenLogFile.exit:                              ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.j, %bb.g ], [ %i.i, %bb.f ], [ %i.g, %bb.d ] ; 3 uses
  store ptr %.0.i, ptr %2, align 8, !tbaa !19
  %i.k = icmp eq ptr %.0.i, null
  br i1 %i.k, label %bb.j, label %bb.h

bb.h:                                             ; preds = %sunOpenLogFile.exit
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.m = tail call i64 @SUNHashMap_Insert(ptr noundef %i.l, ptr noundef nonnull %1, ptr noundef nonnull %.0.i) #17
  %.not17 = icmp eq i64 %i.m, 0
  br i1 %.not17, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b, %sunOpenLogFile.exit, %bb.h, %sunIsNullOrEmpty.exit.thread
  %.1 = phi i32 [ 0, %sunIsNullOrEmpty.exit.thread ], [ 0, %bb.i ], [ -9991, %bb.b ], [ -9991, %sunOpenLogFile.exit ], [ -9991, %bb.h ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -9999, 1) i32 @SUNLogger_SetErrorFile(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -9999, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -9999, 1) i32 @SUNLogger_GetErrorFile(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  store ptr %i.b, ptr %1, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -9999, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -9999, 1) i32 @SUNLogger_SetWarningFile(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -9999, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -9999, 1) i32 @SUNLogger_GetWarningFile(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  store ptr %i.b, ptr %1, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -9999, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -9999, 1) i32 @SUNLogger_SetInfoFile(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %. = select i1 %.not, i32 -9999, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -9999, 1) i32 @SUNLogger_GetInfoFile(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  store ptr %i.b, ptr %1, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -9999, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -9999, 1) i32 @SUNLogger_SetDebugFile(ptr nofree noundef readnone captures(address_is_null) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %. = select i1 %.not, i32 -9999, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -9999, 1) i32 @SUNLogger_GetDebugFile(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  store ptr %i.b, ptr %1, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -9999, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -9999, 1) i32 @SUNLogger_SetQueueAndFlushMsgFns(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %.not13 = icmp eq ptr %1, null                  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %sunQueueLogMessage. = select i1 %.not13, ptr @sunQueueLogMessage, ptr %1
  %sunFlushLogMessage. = select i1 %.not13, ptr @sunFlushLogMessage, ptr %2
  %. = select i1 %.not13, ptr null, ptr %3
  store ptr %sunQueueLogMessage., ptr %i.a, align 8, !tbaa !16
  store ptr %sunFlushLogMessage., ptr %i.b, align 8, !tbaa !17
  store ptr %., ptr %i.c, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -9999, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @SUNLogger_QueueMsg(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ...) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %6 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %7 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %switch.tableidx = add i32 %1, -1               ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 4
  br i1 %i.d, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.c
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.SUNLogger_QueueMsg, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %.not49 = icmp eq ptr %i.g, null
  br i1 %.not49, label %.thread, label %switch.lookup54

switch.lookup54:                                  ; preds = %switch.lookup
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr [8 x i8], ptr @switch.table.SUNLogger_QueueMsg.5, i64 %i.h
  %switch.gep55 = getelementptr i8, ptr %i.i, i64 -8
  %switch.load56 = load ptr, ptr %switch.gep55, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.va_start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.va_copy.p0(ptr nonnull %5, ptr nonnull %7)
  %i.j = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef readonly %4, ptr noundef nonnull %5) #17 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %5)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %sunvasnprintf.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %switch.lookup54
  %i.l = add nuw nsw i32 %i.j, 1
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = call noalias ptr @malloc(i64 noundef %i.m) #16 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %sunvasnprintf.exit.thread.i, label %sunvasnprintf.exit.i

sunvasnprintf.exit.thread.i:                      ; preds = %bb.d, %switch.lookup54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.e

sunvasnprintf.exit.i:                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.va_copy.p0(ptr nonnull %6, ptr nonnull %7)
  %i.p = call i32 @vsnprintf(ptr noundef nonnull %i.n, i64 noundef %i.m, ptr noundef readonly %4, ptr noundef nonnull %6) #17
  call void @llvm.va_end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %sunvasnprintf.exit.i, %sunvasnprintf.exit.thread.i
  %.038 = phi ptr [ null, %sunvasnprintf.exit.thread.i ], [ %i.n, %sunvasnprintf.exit.i ]
  %i.r = call noalias dereferenceable_or_null(70) ptr @malloc(i64 noundef 70) #16 ; 3 uses
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 70, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef 67) #17 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull %i.r, ptr noundef nonnull @__func__.sunCreateLogPayload, ptr noundef nonnull @.str.16) #19 ; 0 uses
  call void @free(ptr noundef %i.r) #17
  br label %bb.f

bb.f:                                             ; preds = %sunvasnprintf.exit.i, %bb.e
  %.239 = phi ptr [ %.038, %bb.e ], [ %i.n, %sunvasnprintf.exit.i ] ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %7)
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.y = call i32 %i.v(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %switch.load56, i32 noundef 0, ptr noundef %2, ptr noundef %3, ptr noundef %.239, ptr noundef %i.x) #17
  call void @free(ptr noundef %.239) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.thread

.thread:                                          ; preds = %bb.c, %switch.lookup, %bb.f, %bb.b, %bb.a
  %.2 = phi i32 [ -9999, %bb.a ], [ 0, %bb.b ], [ %i.y, %bb.f ], [ 0, %switch.lookup ], [ -9971, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

; Function Attrs: nounwind uwtable
define i32 @SUNLogger_Flush(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call i32 %i.b(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.d) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.09 = phi i32 [ -9999, %bb.a ], [ %i.e, %bb.c ], [ 0, %bb.b ]
  ret i32 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -9999, 1) i32 @SUNLogger_GetOutputRank(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  store i32 %i.b, ptr %1, align 4, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -9999, %bb.a ]
  ret i32 %.0
}

declare i32 @SUNHashMap_Destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #12

end_hunk_0
