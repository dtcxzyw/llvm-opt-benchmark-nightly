Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/net?download=true
inline.NumInlined: 44
inline.NumDeleted: 7
begin_hunk_0_@redisContextConnectUnix
define range(i32 -1, 1) i32 @redisContextConnectUnix(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = and i32 %i.c, 1
  %i.e = tail call i32 @socket(i32 noundef 1, i32 noundef 1, i32 noundef 0) #9 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %redisCreateSocket.exit.thread, label %bb.b

redisCreateSocket.exit.thread:                    ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.i = call i32 @__xpg_strerror_r(i32 noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 128) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i32 %i.e, ptr %i.j, align 4, !tbaa !24
  %i.k = tail call fastcc i32 @redisSetBlocking(ptr noundef nonnull %0, i32 noundef 0)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 1, ptr %i.l, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %.not38 = icmp eq ptr %i.n, %1
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !34
  tail call void %i.o(ptr noundef %i.n) #9, !inline_history !1
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 24), align 8, !tbaa !35
  %i.q = tail call ptr %i.p(ptr noundef %1) #9, !inline_history !2 ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !55
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %redisContextUpdateConnectTimeout.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not39 = icmp eq ptr %2, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 5 uses
  br i1 %.not39, label %redisContextUpdateConnectTimeout.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.t, %2
  br i1 %i.u, label %redisContextUpdateConnectTimeout.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !31
  %i.x = tail call ptr %i.w(i64 noundef 16) #9, !inline_history !3 ; 3 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !32
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %redisContextUpdateConnectTimeout.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ %i.x, %bb.h ], [ %i.t, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !32
  br label %redisContextUpdateConnectTimeout.exit.thread

redisContextUpdateConnectTimeout.exit.thread.thread: ; preds = %bb.e
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !34
  tail call void %i.aa(ptr noundef %i.t) #9, !inline_history !1
  store ptr null, ptr %i.s, align 8, !tbaa !32
  br label %bb.m

redisContextUpdateConnectTimeout.exit.thread:     ; preds = %bb.f, %bb.i
  %i.ab = phi ptr [ %i.t, %bb.f ], [ %.pre, %bb.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %redisContextUpdateConnectTimeout.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !37 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 1000000
  br i1 %i.ae, label %redisContextTimeoutMsec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 9223372036854774
  br i1 %i.ag, label %redisContextTimeoutMsec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = mul nsw i64 %i.af, 1000
  %i.ai = add nsw i64 %i.ad, 999
  %i.aj = sdiv i64 %i.ai, 1000
  %i.ak = add nsw i64 %i.ah, %i.aj
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2147483647)
  br label %bb.m

redisContextTimeoutMsec.exit:                     ; preds = %bb.j, %bb.k
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.15) #9
  br label %bb.v

bb.m:                                             ; preds = %redisContextUpdateConnectTimeout.exit.thread.thread, %bb.l, %redisContextUpdateConnectTimeout.exit.thread
  %storemerge.i.ph = phi i64 [ -1, %redisContextUpdateConnectTimeout.exit.thread ], [ %spec.store.select.i, %bb.l ], [ -1, %redisContextUpdateConnectTimeout.exit.thread.thread ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27 ; 2 uses
  %.not41 = icmp eq ptr %i.am, null
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hiredisAllocFns, i64 32), align 8, !tbaa !34
  tail call void %i.an(ptr noundef nonnull %i.am) #9, !inline_history !1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !31
  %i.ap = tail call ptr %i.ao(i64 noundef 110) #9, !inline_history !0 ; 5 uses
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !27
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %redisContextUpdateConnectTimeout.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 110, ptr %i.ar, align 8, !tbaa !28
  store i16 1, ptr %i.ap, align 2, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.at = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 107) #9 ; 0 uses
  %i.au = load i32, ptr %i.j, align 4, !tbaa !24
  %i.av = tail call i32 @connect(i32 noundef %i.au, ptr noundef nonnull %i.ap, i32 noundef 110) #9
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call ptr @__errno_location() #10
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !13
  %i.az = icmp ne i32 %i.ay, 115
  %i.ba = trunc i32 %i.c to i1
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = tail call fastcc i32 @redisContextWaitReady(ptr noundef nonnull %0, i64 noundef %storemerge.i.ph)
  %.not42 = icmp eq i32 %i.bb, 0
  br i1 %.not42, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.not43 = icmp eq i32 %i.d, 0
  br i1 %.not43, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = tail call fastcc i32 @redisSetBlocking(ptr noundef nonnull %0, i32 noundef 1)
  %.not44 = icmp eq i32 %i.bc, 0
  br i1 %.not44, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bd = load i32, ptr %i.b, align 8, !tbaa !25
  %i.be = or i32 %i.bd, 2
  store i32 %i.be, ptr %i.b, align 8, !tbaa !25
  br label %bb.v

redisContextUpdateConnectTimeout.exit:            ; preds = %bb.h, %bb.o, %bb.d
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @.str.5) #9
  br label %bb.v

bb.v:                                             ; preds = %redisContextTimeoutMsec.exit, %redisCreateSocket.exit.thread, %bb.t, %bb.r, %bb.b, %redisContextUpdateConnectTimeout.exit, %bb.u
  %.0 = phi i32 [ 0, %bb.u ], [ -1, %redisCreateSocket.exit.thread ], [ -1, %redisContextUpdateConnectTimeout.exit ], [ -1, %bb.b ], [ -1, %redisContextTimeoutMsec.exit ], [ -1, %bb.r ], [ -1, %bb.t ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @redisSetBlocking(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24
  %i.e = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.d, i32 noundef 3) #9 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13) #9
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j
  %i.l = sub nsw i64 128, %i.j
  %i.m = call i32 @__xpg_strerror_r(i32 noundef %i.h, ptr noundef nonnull %i.k, i64 noundef %i.l) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.n = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %.not5.i = icmp eq i32 %i.n, -1
  br i1 %.not5.i, label %redisNetClose.exit, label %redisNetClose.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.o = and i32 %i.e, -2049
  %2 = shl nuw nsw i32 %1, 11
  %.0.a = or disjoint i32 %i.o, %2
  %.0 = xor i32 %.0.a, 2048
  %i.p = load i32, ptr %i.c, align 4, !tbaa !24
  %i.q = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.p, i32 noundef 4, i32 noundef %.0) #9
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %redisNetClose.exit

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @__errno_location() #10
  %i.t = load i32, ptr %i.s, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14) #9
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.x = sub nsw i64 128, %i.v
  %i.y = call i32 @__xpg_strerror_r(i32 noundef %i.t, ptr noundef nonnull %i.w, i64 noundef %i.x) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.z = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %.not5.i13 = icmp eq i32 %i.z, -1
  br i1 %.not5.i13, label %redisNetClose.exit, label %redisNetClose.exit.sink.split

redisNetClose.exit.sink.split:                    ; preds = %bb.d, %bb.b
  %.sink = phi i32 [ %i.n, %bb.b ], [ %i.z, %bb.d ]
  %i.aa = call i32 @close(i32 noundef %.sink) #9  ; 0 uses
  store i32 -1, ptr %i.c, align 4, !tbaa !24
  br label %redisNetClose.exit

redisNetClose.exit:                               ; preds = %redisNetClose.exit.sink.split, %bb.d, %bb.b, %bb.c
  %.010 = phi i32 [ 0, %bb.c ], [ -1, %bb.d ], [ -1, %bb.b ], [ -1, %redisNetClose.exit.sink.split ]
  ret i32 %.010
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @redisContextWaitReady(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca [128 x i8], align 16              ; 6 uses
  %2 = alloca [1 x %struct.pollfd], align 4       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 9 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  store i32 %i.g, ptr %2, align 4, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 4, ptr %i.h, align 4, !tbaa !60
  %i.i = tail call ptr @__errno_location() #10    ; 5 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13   ; 2 uses
  %i.k = icmp eq i32 %i.j, 115
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = trunc i64 %1 to i32
  %i.m = call i32 @poll(ptr noundef nonnull %2, i64 noundef 1, i32 noundef %i.l) #9
  switch i32 %i.m, label %bb.g [
    i32 -1, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16) #9
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.p
  %i.r = sub nsw i64 128, %i.p
  %i.s = call i32 @__xpg_strerror_r(i32 noundef %i.n, ptr noundef nonnull %i.q, i64 noundef %i.r) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.t = load i32, ptr %i.f, align 4, !tbaa !24   ; 2 uses
  %.not5.i = icmp eq i32 %i.t, -1
  br i1 %.not5.i, label %redisNetClose.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = call i32 @close(i32 noundef %i.t) #9     ; 0 uses
  store i32 -1, ptr %i.f, align 4, !tbaa !24
  br label %redisNetClose.exit

bb.e:                                             ; preds = %bb.b
  store i32 110, ptr %i.i, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  %i.v = call i32 @__xpg_strerror_r(i32 noundef 110, ptr noundef nonnull %i.d, i64 noundef 128) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.w = load i32, ptr %i.f, align 4, !tbaa !24   ; 2 uses
  %.not5.i13 = icmp eq i32 %i.w, -1
  br i1 %.not5.i13, label %redisNetClose.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = call i32 @close(i32 noundef %i.w) #9     ; 0 uses
  store i32 -1, ptr %i.f, align 4, !tbaa !24
  br label %redisNetClose.exit

bb.g:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.f, align 4, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = call i32 @connect(i32 noundef %i.y, ptr noundef %i.aa, i32 noundef %i.ad) #9
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %redisNetClose.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !13  ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 115
  br i1 %i.ah, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 4, ptr %i.c, align 4, !tbaa !13
  %i.ai = load i32, ptr %i.f, align 4, !tbaa !24
  %i.aj = call i32 @getsockopt(i32 noundef %i.ai, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #9
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.b, align 4, !tbaa !13  ; 3 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.critedge.i, label %bb.k

.critedge.i:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %redisNetClose.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.al, ptr %i.i, align 4, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.1.i = phi i32 [ 115, %bb.i ], [ %i.al, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.2.i = phi i32 [ %.1.i, %bb.l ], [ %i.ag, %bb.h ]
  %cond.not = icmp eq i32 %.2.i, 106
  br i1 %cond.not, label %redisNetClose.exit, label %redisCheckConnectDone.exit.thread

redisCheckConnectDone.exit.thread:                ; preds = %bb.m
  %i.an = call i32 @redisCheckSocketError(ptr noundef nonnull %0) ; 0 uses
  br label %redisNetClose.exit

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.ao = call i32 @__xpg_strerror_r(i32 noundef %i.j, ptr noundef nonnull %i.a, i64 noundef 128) #9 ; 0 uses
  call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ap = load i32, ptr %i.f, align 4, !tbaa !24  ; 2 uses
  %.not5.i16 = icmp eq i32 %i.ap, -1
  br i1 %.not5.i16, label %redisNetClose.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = call i32 @close(i32 noundef %i.ap) #9   ; 0 uses
  store i32 -1, ptr %i.f, align 4, !tbaa !24
  br label %redisNetClose.exit

redisNetClose.exit:                               ; preds = %.critedge.i, %bb.g, %bb.m, %bb.o, %bb.n, %redisCheckConnectDone.exit.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.1 = phi i32 [ -1, %bb.f ], [ 0, %bb.m ], [ -1, %bb.d ], [ -1, %redisCheckConnectDone.exit.thread ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.n ], [ -1, %bb.o ], [ 0, %bb.g ], [ 0, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__xpg_strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #1

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
