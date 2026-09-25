Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/defrag?download=true
inline.NumInlined: 88
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@defragKey:bb.a
  store ptr %i.cw, ptr %i.cq, align 8, !tbaa !56
  br label %activeDefragAlloc.exit.thread

bb.ac:                                            ; preds = %bb.z
  call void @defragZsetSkiplist(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.ad:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1167, ptr noundef nonnull @.str.22) #11
  call void @abort() #12
  unreachable

bb.ae:                                            ; preds = %activeDefragKvobj.exit.thread
  %i.cz = lshr i32 %i.bb, 4
  %i.da = and i32 %i.cz, 15
  switch i32 %i.da, label %bb.al [
    i32 11, label %bb.af
    i32 12, label %bb.ah
    i32 2, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %i.db = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !56 ; 4 uses
  %i.dd = call i32 @je_get_defrag_hint(ptr noundef %i.dc) #11
  %.not.i.i128 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i128, label %activeDefragAllocWithoutFree.exit.thread.i132, label %activeDefragAllocWithoutFree.exit.i129

activeDefragAllocWithoutFree.exit.thread.i132:    ; preds = %bb.af
  %i.de = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !50
  %i.df = add nsw i64 %i.de, 1
  store i64 %i.df, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !50
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i129:           ; preds = %bb.af
  %i.dg = call i64 @je_malloc_usable_size(ptr noundef %i.dc) #11 ; 2 uses
  %i.dh = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.dg) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.dc, i64 %i.dg, i1 false)
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !51
  %i.dj = add nsw i64 %i.di, 1
  store i64 %i.dj, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !51
  %.not.i130 = icmp eq ptr %i.dh, null
  br i1 %.not.i130, label %activeDefragAlloc.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %activeDefragAllocWithoutFree.exit.i129
  call void @zfree_no_tcache(ptr noundef %i.dc) #11
  store ptr %i.dh, ptr %i.db, align 8, !tbaa !56
  br label %activeDefragAlloc.exit.thread

bb.ah:                                            ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %.082, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !56 ; 6 uses
  %i.dm = call i32 @je_get_defrag_hint(ptr noundef %i.dl) #11
  %.not.i.i134 = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i134, label %activeDefragAllocWithoutFree.exit.thread.i138, label %activeDefragAllocWithoutFree.exit.i135

activeDefragAllocWithoutFree.exit.thread.i138:    ; preds = %bb.ah
  %i.dn = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !50
  %i.do = add nsw i64 %i.dn, 1
  store i64 %i.do, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !50
  br label %activeDefragAlloc.exit139.thread

activeDefragAllocWithoutFree.exit.i135:           ; preds = %bb.ah
  %i.dp = call i64 @je_malloc_usable_size(ptr noundef %i.dl) #11 ; 2 uses
  %i.dq = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.dp) #11 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.dl, i64 %i.dp, i1 false)
  %i.dr = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !51
  %i.ds = add nsw i64 %i.dr, 1
  store i64 %i.ds, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !51
  %.not.i136 = icmp eq ptr %i.dq, null
  br i1 %.not.i136, label %activeDefragAlloc.exit139.thread, label %bb.ai

bb.ai:                                            ; preds = %activeDefragAllocWithoutFree.exit.i135
  call void @zfree_no_tcache(ptr noundef %i.dl) #11
  store ptr %i.dq, ptr %i.dk, align 8, !tbaa !56
  br label %activeDefragAlloc.exit139.thread

activeDefragAlloc.exit139.thread:                 ; preds = %activeDefragAllocWithoutFree.exit.i135, %activeDefragAllocWithoutFree.exit.thread.i138, %bb.ai
  %.0 = phi ptr [ %i.dq, %bb.ai ], [ %i.dl, %activeDefragAllocWithoutFree.exit.thread.i138 ], [ %i.dl, %activeDefragAllocWithoutFree.exit.i135 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !210 ; 4 uses
  %i.dv = call i32 @je_get_defrag_hint(ptr noundef %i.du) #11
  %.not.i.i140 = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i140, label %activeDefragAllocWithoutFree.exit.thread.i144, label %activeDefragAllocWithoutFree.exit.i141

activeDefragAllocWithoutFree.exit.thread.i144:    ; preds = %activeDefragAlloc.exit139.thread
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !50
  %i.dx = add nsw i64 %i.dw, 1
  store i64 %i.dx, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2672), align 8, !tbaa !50
  br label %activeDefragAlloc.exit.thread

activeDefragAllocWithoutFree.exit.i141:           ; preds = %activeDefragAlloc.exit139.thread
  %i.dy = call i64 @je_malloc_usable_size(ptr noundef %i.du) #11 ; 2 uses
  %i.dz = call noalias ptr @zmalloc_no_tcache(i64 noundef %i.dy) #11 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr align 1 %i.du, i64 %i.dy, i1 false)
  %i.ea = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !51
  %i.eb = add nsw i64 %i.ea, 1
  store i64 %i.eb, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2664), align 8, !tbaa !51
  %.not.i142 = icmp eq ptr %i.dz, null
  br i1 %.not.i142, label %activeDefragAlloc.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %activeDefragAllocWithoutFree.exit.i141
  call void @zfree_no_tcache(ptr noundef %i.du) #11
  store ptr %i.dz, ptr %i.dt, align 8, !tbaa !210
  br label %activeDefragAlloc.exit.thread

bb.ak:                                            ; preds = %bb.ae
  call void @defragHash(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.al:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1182, ptr noundef nonnull @.str.23) #11
  call void @abort() #12
  unreachable

bb.am:                                            ; preds = %activeDefragKvobj.exit.thread
  call void @defragStream(ptr noundef nonnull %0, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.an:                                            ; preds = %activeDefragKvobj.exit.thread
  call void @defragModule(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull %.082)
  br label %activeDefragAlloc.exit.thread

bb.ao:                                            ; preds = %activeDefragKvobj.exit.thread
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1189, ptr noundef nonnull @.str.24) #11
  call void @abort() #12
  unreachable

activeDefragAlloc.exit.thread:                    ; preds = %activeDefragAllocWithoutFree.exit.i.i110, %activeDefragAllocWithoutFree.exit.thread.i.i113, %activeDefragAllocWithoutFree.exit.i141, %activeDefragAllocWithoutFree.exit.thread.i144, %activeDefragAllocWithoutFree.exit.i129, %activeDefragAllocWithoutFree.exit.thread.i132, %activeDefragAllocWithoutFree.exit.i123, %activeDefragAllocWithoutFree.exit.thread.i126, %activeDefragAllocWithoutFree.exit.i117, %activeDefragAllocWithoutFree.exit.thread.i120, %activeDefragAllocWithoutFree.exit.i, %activeDefragAllocWithoutFree.exit.thread.i, %bb.aj, %bb.x, %bb.o, %bb.s, %bb.q, %bb.ab, %bb.ac, %bb.am, %bb.an, %bb.ag, %bb.ak, %bb.v, %bb.m
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !130
  %.not107 = icmp eq i32 %i.ec, 0
  br i1 %.not107, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %activeDefragAlloc.exit.thread
  %i.ed = call i64 @kvobjAllocSize(ptr noundef nonnull %.082) #11
  call void @updateSlotAllocSize(ptr noundef %i.h, i32 noundef %i.j, ptr noundef nonnull %.082, i64 noundef %.081, i64 noundef %i.ed) #11
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %activeDefragAlloc.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret void
}

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #2

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #2

declare ptr @kvstoreDictFindLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @hashTypeGetMinExpire(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @kvstoreDictSetAtLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local float @getAllocatorFragmentation(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.i = call i32 @zmalloc_get_allocator_info(i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8328), align 8, !tbaa !211 ; 2 uses
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.d, align 8, !tbaa !81
  %.pre6 = load i64, ptr %i.c, align 8, !tbaa !81
  %.pre7 = load i64, ptr %i.a, align 8, !tbaa !81
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.k = call i32 @zmalloc_get_allocator_info_by_arena(i32 noundef %i.j, i32 noundef 0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #11 ; 0 uses
  %i.l = load i64, ptr %i.e, align 8, !tbaa !81
  %i.m = load i64, ptr %i.a, align 8, !tbaa !81
  %i.n = load i64, ptr %i.f, align 8, !tbaa !81
  %i.o = load i64, ptr %i.b, align 8, !tbaa !81
  %i.p = sub i64 %i.o, %i.n
  store i64 %i.p, ptr %i.b, align 8, !tbaa !81
  %i.q = load i64, ptr %i.g, align 8, !tbaa !81
  %i.r = load i64, ptr %i.c, align 8, !tbaa !81
  %i.s = sub i64 %i.r, %i.q                       ; 2 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !81
  %i.t = load i64, ptr %i.h, align 8, !tbaa !81
  %i.u = load i64, ptr %i.d, align 8, !tbaa !81
  %i.v = sub i64 %i.m, %i.l                       ; 2 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !81
  %1 = sub i64 %i.u, %i.t                         ; 2 uses
  store i64 %1, ptr %i.d, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.w = phi i64 [ %.pre7, %._crit_edge ], [ %i.v, %bb.b ] ; 3 uses
  %i.x = phi i64 [ %.pre6, %._crit_edge ], [ %i.s, %bb.b ] ; 3 uses
  %i.y = phi i64 [ %.pre, %._crit_edge ], [ %1, %bb.b ] ; 3 uses
  %i.z = uitofp i64 %i.y to float
  %i.aa = uitofp i64 %i.x to float
  %i.ab = uitofp i64 %i.w to float
  %i.ac = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fdiv <2 x float> %i.ad, %i.af           ; 2 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  %i.ai = fmul float %i.ah, 1.000000e+02          ; 2 uses
  %i.aj = extractelement <2 x float> %i.ag, i64 1
  %i.ak = call float @llvm.fmuladd.f32(float %i.aj, float 1.000000e+02, float -1.000000e+02)
  %i.al = sub i64 %i.w, %i.x
  %.not5 = icmp eq ptr %0, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.y, ptr %0, align 8, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !133
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !81
  %i.ap = fpext float %i.ai to double
  %i.aq = fpext float %i.ak to double
  call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.25, i64 noundef %i.x, i64 noundef %i.ao, i64 noundef %i.w, double noundef %i.ap, double noundef %i.aq, i64 noundef %i.y, i64 noundef %i.al) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret float %i.ai
}

declare i32 @zmalloc_get_allocator_info(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zmalloc_get_allocator_info_by_arena(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @defragPubsubScanCallback(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !213    ; 2 uses
  %i.b = tail call ptr @dictGetKey(ptr noundef %1) #11 ; 3 uses
  %i.c = tail call ptr @dictGetVal(ptr noundef %1) #11 ; 4 uses
  %i.d = load i64, ptr %i.b, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 8388607                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81
  %i.l = add i64 %i.k, %i.i
  %i.m = trunc i64 %i.l to i32
  %i.n = add nsw i32 %i.m, 1
  %i.o = icmp eq i32 %i.g, %i.n
  br i1 %i.o, label %bb.c, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1257) #11
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = tail call ptr @activeDefragStringObEx(ptr noundef nonnull %i.b, i32 noundef %i.g) ; 4 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !214
  tail call void @kvstoreDictSetKey(ptr noundef %i.a, i32 noundef %i.r, ptr noundef %1, ptr noundef nonnull %i.p) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @dictInitIterator(ptr noundef nonnull %3, ptr noundef nonnull %i.c) #11
  %i.s = call ptr @dictNext(ptr noundef nonnull %3) #11 ; 2 uses
  %.not3639 = icmp eq ptr %i.s, null
  br i1 %.not3639, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.u = phi ptr [ %i.s, %.lr.ph ], [ %i.ac, %bb.g ]
  %i.v = call ptr @dictGetKey(ptr noundef nonnull %i.u) #11 ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !135
  %i.x = call ptr %i.w(ptr noundef %i.v) #11      ; 2 uses
  %i.y = call i64 @dictGetHash(ptr noundef %i.x, ptr noundef nonnull %i.p) #11
  %i.z = call ptr @dictFindByHashAndPtr(ptr noundef %i.x, ptr noundef nonnull %i.b, i64 noundef %i.y) #11 ; 2 uses
  %.not38 = icmp eq ptr %i.z, null
  br i1 %.not38, label %bb.f, label %bb.g, !prof !54

bb.f:                                             ; preds = %bb.e
  call void @_serverAssert(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 1273) #11
  call void @abort() #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !135
  %i.ab = call ptr %i.aa(ptr noundef %i.v) #11
  call void @dictSetKey(ptr noundef %i.ab, ptr noundef nonnull %i.z, ptr noundef nonnull %i.p) #11
  %i.ac = call ptr @dictNext(ptr noundef nonnull %3) #11 ; 2 uses
  %.not36 = icmp eq ptr %i.ac, null
  br i1 %.not36, label %._crit_edge, label %bb.e, !llvm.loop !212

._crit_edge:                                      ; preds = %bb.g, %bb.d
  call void @dictResetIterator(ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.c
  %i.ad = call ptr @dictDefragTables(ptr noundef %i.c) ; 2 uses
  %.not37 = icmp eq ptr %i.ad, null
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !214
  call void @kvstoreDictSetVal(ptr noundef %i.a, i32 noundef %i.af, ptr noundef %1, ptr noundef nonnull %i.ad) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2696), align 8, !tbaa !92
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2696), align 8, !tbaa !92
  ret void
}

declare void @kvstoreDictSetKey(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictNext(ptr noundef) local_unnamed_addr #2

declare i64 @dictGetHash(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictFindByHashAndPtr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @dictSetKey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #2

declare void @kvstoreDictSetVal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @defragLaterItem(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.scanLaterZsetData, align 8  ; 4 uses
  %5 = alloca %struct.dictDefragFunctions, align 8 ; 4 uses
  %6 = alloca %struct.dictDefragFunctions, align 8 ; 4 uses
  %7 = alloca %struct.redisObject, align 8        ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %trunc = trunc i64 %i.a to i8
  switch i8 %trunc, label %bb.f [
    i8 -111, label %bb.c
    i8 34, label %scanLaterSet.exit
    i8 115, label %scanLaterZset.exit
    i8 36, label %bb.d
    i8 -90, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @scanLaterList(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  %i.c = trunc nuw nsw i64 %i.b to i32
  br label %bb.j

scanLaterSet.exit:                                ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.scanLaterSet.defragfns, i64 24, i1 false)
  %i.f = load i64, ptr %1, align 8, !tbaa !81
  %i.g = call i64 @dictScanDefrag(ptr noundef %i.e, i64 noundef %i.f, ptr noundef nonnull @scanCallbackCountScanned, ptr noundef nonnull %6, ptr noundef null) #11
end_hunk_0
