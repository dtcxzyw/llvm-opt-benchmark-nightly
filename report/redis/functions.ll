inline.NumInlined: 33
inline.NumDeleted: 8
begin_hunk_0_@engineFunctionDispose:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  tail call void %i.k(ptr noundef %i.l, ptr noundef %i.n) #11
  tail call void @zfree(ptr noundef nonnull %1) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @engineLibraryDispose(ptr readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %engineLibraryFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void @dictRelease(ptr noundef %i.b) #11
  %i.c = load ptr, ptr %1, align 8, !tbaa !37
  tail call void @sdsfree(ptr noundef %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  tail call void @sdsfree(ptr noundef %i.e) #11
  tail call void @zfree(ptr noundef nonnull %1) #11
  br label %engineLibraryFree.exit

engineLibraryFree.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @functionsLibCtxClear(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @dictEmpty(ptr noundef %i.b, ptr noundef null) #11
  %i.c = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @dictEmpty(ptr noundef %i.c, ptr noundef null) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  call void @dictInitIterator(ptr noundef nonnull %1, ptr noundef %i.e) #11
  %i.f = call ptr @dictNext(ptr noundef nonnull %1) #11 ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi ptr [ %i.i, %.lr.ph ], [ %i.f, %bb.a ]
  %i.h = call ptr @dictGetVal(ptr noundef nonnull %i.g) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = call ptr @dictNext(ptr noundef nonnull %1) #11 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %1) #11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void
}

declare void @dictEmpty(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @dictNext(ptr noundef) local_unnamed_addr #0

declare ptr @dictGetVal(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @functionsLibCtxClearCurrent(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %0, 0
  %i.a = load ptr, ptr @curr_functions_lib_ctx, align 8, !tbaa !46 ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @engines, align 8, !tbaa !48
  tail call void @freeFunctionsAsync(ptr noundef %i.a, ptr noundef %i.b) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @functionsLibCtxClear(ptr noundef %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  tail call void @dictRelease(ptr noundef %i.d) #11
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @dictRelease(ptr noundef %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  tail call void @dictRelease(ptr noundef %i.g) #11
  tail call void @zfree(ptr noundef nonnull %i.a) #11
  %i.h = load ptr, ptr @engines, align 8, !tbaa !48
  tail call void @dictRelease(ptr noundef %i.h) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = tail call ptr @dictCreate(ptr noundef nonnull @engineDictType) #11
  store ptr %i.i, ptr @engines, align 8, !tbaa !48
  %i.j = tail call i32 @luaEngineInitEngine() #11
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %functionsInit.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @functionsLibCtxCreate()
  store ptr %i.k, ptr @curr_functions_lib_ctx, align 8, !tbaa !46
  br label %functionsInit.exit

functionsInit.exit:                               ; preds = %bb.d, %bb.e
  ret void
}

declare void @freeFunctionsAsync(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @functionsLibCtxFree(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @functionsLibCtxClear(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @dictRelease(ptr noundef %i.b) #11
  %i.c = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @dictRelease(ptr noundef %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  tail call void @dictRelease(ptr noundef %i.e) #11
  tail call void @zfree(ptr noundef nonnull %0) #11
  ret void
}

declare void @dictRelease(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @functionsInit() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dictCreate(ptr noundef nonnull @engineDictType) #11
  store ptr %i.a, ptr @engines, align 8, !tbaa !48
  %i.b = tail call i32 @luaEngineInitEngine() #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @functionsLibCtxCreate()
  store ptr %i.c, ptr @curr_functions_lib_ctx, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare void @zfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @functionsLibCtxSwapWithCurrent(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @curr_functions_lib_ctx, align 8, !tbaa !46 ; 5 uses
  tail call void @functionsLibCtxClear(ptr noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  tail call void @dictRelease(ptr noundef %i.c) #11
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @dictRelease(ptr noundef %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  tail call void @dictRelease(ptr noundef %i.f) #11
  tail call void @zfree(ptr noundef nonnull %i.a) #11
  store ptr %0, ptr @curr_functions_lib_ctx, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @functionsLibCtxGetCurrent() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @curr_functions_lib_ctx, align 8, !tbaa !46
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @functionsLibCtxCreate() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #12 ; 5 uses
  %i.b = tail call ptr @dictCreate(ptr noundef nonnull @librariesDictType) #11
  store ptr %i.b, ptr %i.a, align 8, !tbaa !41
  %i.c = tail call ptr @dictCreate(ptr noundef nonnull @functionDictType) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !39
  %i.e = tail call ptr @dictCreate(ptr noundef nonnull @engineStatsDictType) #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  %i.g = load ptr, ptr @engines, align 8, !tbaa !48
  call void @dictInitIterator(ptr noundef nonnull %0, ptr noundef %i.g) #11
  %i.h = call ptr @dictNext(ptr noundef nonnull %0) #11 ; 2 uses
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi ptr [ %i.n, %.lr.ph ], [ %i.h, %bb.a ]
  %i.j = call ptr @dictGetVal(ptr noundef nonnull %i.i) #11
  %i.k = call noalias dereferenceable_or_null(16) ptr @zcalloc(i64 noundef 16) #12
  %1 = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.m = call i32 @dictAdd(ptr noundef %1, ptr noundef %i.l, ptr noundef %i.k) #11 ; 0 uses
  %i.n = call ptr @dictNext(ptr noundef nonnull %0) #11 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %0) #11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.o, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #4

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #0

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #4

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @functionLibCreateFunction(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef writeonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -1
  %.val.i.i = load i8, ptr %i.a, align 1, !tbaa !50 ; 3 uses
  %i.b = and i8 %.val.i.i, 7                      ; 2 uses
  switch i8 %i.b, label %.sink.split [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i8 %.val.i.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !50
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit.i

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !51
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !9
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit.i

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !53
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.o, %bb.f ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ]
  %i.p = icmp eq i64 %.0.i.i, 0
  br i1 %i.p, label %.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %sdslen.exit.i
  %i.q = getelementptr inbounds i8, ptr %0, i64 -17
  %i.r = getelementptr inbounds i8, ptr %0, i64 -9
  %i.s = getelementptr inbounds i8, ptr %0, i64 -5
  %i.t = getelementptr inbounds i8, ptr %0, i64 -3
  %i.u = lshr i8 %.val.i.i, 3
  %i.v = zext nneg i8 %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %.preheader.i
  %.028.i = phi i64 [ %i.ak, %.thread.i ], [ 0, %.preheader.i ] ; 3 uses
  switch i8 %i.b, label %sdslen.exit34.i [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  br label %sdslen.exit34.i

bb.i:                                             ; preds = %bb.g
  %i.w = load i8, ptr %i.t, align 1, !tbaa !50
  %i.x = zext i8 %i.w to i64
  br label %sdslen.exit34.i

bb.j:                                             ; preds = %bb.g
  %i.y = load i16, ptr %i.s, align 1, !tbaa !51
  %i.z = zext i16 %i.y to i64
  br label %sdslen.exit34.i

bb.k:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.r, align 1, !tbaa !9
  %i.ab = zext i32 %i.aa to i64
  br label %sdslen.exit34.i

bb.l:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.q, align 1, !tbaa !53
  br label %sdslen.exit34.i

sdslen.exit34.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i33.i = phi i64 [ %i.ac, %bb.l ], [ %i.v, %bb.h ], [ %i.x, %bb.i ], [ %i.z, %bb.j ], [ %i.ab, %bb.k ], [ 0, %bb.g ]
  %i.ad = icmp ult i64 %.028.i, %.0.i33.i
  br i1 %i.ad, label %bb.m, label %functionsVerifyName.exit

bb.m:                                             ; preds = %sdslen.exit34.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.028.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !50  ; 3 uses
  %i.ag = and i8 %i.af, -33
  %i.ah = add i8 %i.ag, -65
  %or.cond29.i = icmp ult i8 %i.ah, 26
  br i1 %or.cond29.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = add i8 %i.af, -48
  %or.cond8.i = icmp ult i8 %i.ai, 10
  %i.aj = icmp eq i8 %i.af, 95
  %or.cond11.i = or i1 %i.aj, %or.cond8.i
  br i1 %or.cond11.i, label %.thread.i, label %.sink.split

.thread.i:                                        ; preds = %bb.n, %bb.m
  %i.ak = add nuw i64 %.028.i, 1
  br label %bb.g, !llvm.loop !54

functionsVerifyName.exit:                         ; preds = %sdslen.exit34.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.an = tail call ptr @dictFetchValue(ptr noundef %i.am, ptr noundef nonnull %0) #11
  %.not15 = icmp eq ptr %i.an, null
  br i1 %.not15, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %functionsVerifyName.exit
  %i.ao = tail call noalias dereferenceable_or_null(40) ptr @zmalloc(i64 noundef 40) #12 ; 6 uses
  store ptr %0, ptr %i.ao, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !56
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !57
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !53
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.aq = tail call i32 @dictAdd(ptr noundef %i.ap, ptr noundef nonnull %0, ptr noundef nonnull %i.ao) #11
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.q, label %bb.p, !prof !58

bb.p:                                             ; preds = %bb.o
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 265) #11
  tail call void @abort() #13
  unreachable

.sink.split:                                      ; preds = %bb.n, %functionsVerifyName.exit, %sdslen.exit.i, %bb.a
  %.str.1.sink = phi ptr [ @.str, %sdslen.exit.i ], [ @.str.1, %functionsVerifyName.exit ], [ @.str, %bb.a ], [ @.str, %bb.n ]
  %i.as = tail call ptr @sdsnew(ptr noundef nonnull %.str.1.sink) #11
  store ptr %i.as, ptr %5, align 8, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o
  %.0 = phi i32 [ 0, %bb.o ], [ -1, %.sink.split ]
  ret i32 %.0
}

declare ptr @sdsnew(ptr noundef) local_unnamed_addr #0

declare ptr @dictFetchValue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @functionsRegisterEngine(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @sdsnew(ptr noundef %0) #11 ; 4 uses
  %i.b = load ptr, ptr @engines, align 8, !tbaa !48
  %i.c = tail call ptr @dictFetchValue(ptr noundef %i.b, ptr noundef %i.a) #11
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !59
  %i.e = icmp sgt i32 %i.d, 3
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
