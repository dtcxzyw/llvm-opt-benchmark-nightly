Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/udp?download=true
inline.NumInlined: 57
inline.NumDeleted: 19
begin_hunk_0_@uv__udp_close:bb.a
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.e, -5
  store i32 %i.h, ptr %i.d, align 8
  %i.i = and i32 %i.e, 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not9 = icmp eq i32 %i.o, -1
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @uv__close(i32 noundef %i.o) #9 ; 0 uses
  store i32 -1, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

declare void @uv__io_close(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uv__close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @uv__udp_finish_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.a, %i.b
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi ptr [ %i.b, %.lr.ph ], [ %i.m, %bb.b ] ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store i64 -125, ptr %i.k, align 8
  store ptr %i.c, ptr %i.e, align 8
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  store ptr %i.l, ptr %i.g, align 8
  store ptr %i.e, ptr %i.l, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.a, %i.m
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call fastcc void @uv__udp_run_completed(ptr noundef nonnull %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__udp_run_completed(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, 16777216
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not37 = icmp eq ptr %i.d, %i.e
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.h = phi ptr [ %i.e, %.lr.ph ], [ %i.aj, %.backedge ] ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 -80
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.v = load i32, ptr %i.u, align 8
  %i.w = tail call i64 @uv__count_bufs(ptr noundef %i.t, i32 noundef %i.v) #9
  %i.x = load <2 x i64>, ptr %i.g, align 8
  %i.y = insertelement <2 x i64> <i64 poison, i64 1>, i64 %i.w, i64 0
  %i.z = sub <2 x i64> %i.x, %i.y
  store <2 x i64> %i.z, ptr %i.g, align 8
  %i.aa = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %.not35 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uv__free(ptr noundef %i.aa) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.s, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.backedge, label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  %i.ai = trunc i64 %i.ag to i32
  %.sink = select i1 %i.ah, i32 0, i32 %i.ai
  tail call void %i.ad(ptr noundef nonnull %i.n, i32 noundef %.sink) #9
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.d
  %i.aj = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not = icmp eq ptr %i.d, %i.aj
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not36 = icmp eq ptr %i.ak, %i.al
  br i1 %.not36, label %bb.e, label %bb.i

bb.e:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @uv__io_stop(ptr noundef %i.an, ptr noundef nonnull %i.ao, i32 noundef 4) #9
  %i.ap = tail call i32 @uv__io_active(ptr noundef nonnull %i.ao, i32 noundef 1) #9
  %.not33 = icmp eq i32 %i.ap, 0
  br i1 %.not33, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr %i.a, align 8             ; 3 uses
  %i.ar = and i32 %i.aq, 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = and i32 %i.aq, -5
  store i32 %i.at, ptr %i.a, align 8
  %i.au = and i32 %i.aq, 8
  %.not34 = icmp eq i32 %i.au, 0
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.am, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f, %._crit_edge
  %i.az = load i32, ptr %i.a, align 8
  %i.ba = and i32 %i.az, -16777217
  store i32 %i.ba, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden void @uv__udp_io(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -128 ; 4 uses
  %.not = trunc i32 %2 to i1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @uv__udp_recvmsg(ptr noundef nonnull %i.a, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %2, 8
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds i8, ptr %1, i64 -40
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 4
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @uv__udp_recvmsg(ptr noundef nonnull %i.a, i32 noundef 8192)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.f = and i32 %2, 4
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds i8, ptr %1, i64 -40
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 3
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @uv__udp_sendmsg(ptr noundef nonnull %i.a)
  tail call fastcc void @uv__udp_run_completed(ptr noundef nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__udp_recvmsg(ptr noundef %0, i32 noundef range(i32 0, 8193) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [20 x %struct.sockaddr_in6], align 16 ; 4 uses
  %3 = alloca [20 x %struct.iovec], align 16      ; 5 uses
  %4 = alloca [20 x %struct.mmsghdr], align 16    ; 6 uses
  %5 = alloca %struct.uv_buf_t, align 8           ; 6 uses
  %i.a = alloca [20 x [64 x i8]], align 16        ; 3 uses
  %6 = alloca %struct.sockaddr_storage, align 8   ; 5 uses
  %7 = alloca %struct.msghdr, align 8             ; 11 uses
  %8 = alloca %struct.uv_buf_t, align 8           ; 15 uses
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not69.i = icmp samesign ult i32 %1, 8192      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 11 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.ak, %bb.a
  %.040 = phi i32 [ 32, %bb.a ], [ %.1, %bb.ak ]  ; 3 uses
  %i.n = call { ptr, i64 } @uv_buf_init(ptr noundef null, i32 noundef 0) #9 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.o, ptr %8, align 8
  store i64 %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %i.q = load ptr, ptr %i.c, align 8
  call void %i.q(ptr noundef %0, i64 noundef 65536, ptr noundef nonnull %8) #9
  %i.r = load ptr, ptr %8, align 8                ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %or.cond = select i1 %i.s, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.f, align 8
  call void %i.v(ptr noundef nonnull %0, i64 noundef -105, ptr noundef nonnull %8, ptr noundef null, i32 noundef 0) #9
  br label %.critedge6

bb.d:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.d, align 8
  %i.x = and i32 %i.w, 67108864
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.y = lshr i64 %i.t, 16                        ; 2 uses
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.y, i64 20) ; 3 uses
  %.not82.i = icmp eq i64 %i.y, 0
  br i1 %.not82.i, label %.preheader72.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  br i1 %.not69.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.077.us.i = phi i64 [ %i.ak, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.z = shl nuw nsw i64 %.077.us.i, 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.z
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.077.us.i ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 65536, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %.077.us.i ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ab, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %.077.us.i
  store ptr %i.ag, ptr %i.ad, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 28, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i32 0, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %.077.us.i, 1           ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.ak, %spec.store.select.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.ai, i8 0, i64 20, i1 false)
  br i1 %exitcond87.not.i, label %.preheader72.i, label %.lr.ph.split.us.i, !llvm.loop !8

.preheader72.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i, %bb.e
  %i.al = trunc nuw nsw i64 %spec.store.select.i to i32
  br label %bb.f

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.077.i = phi i64 [ %i.az, %.lr.ph.split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.am = shl nuw nsw i64 %.077.i, 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.am
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.077.i ; 3 uses
  store ptr %i.an, ptr %i.ao, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 65536, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %.077.i ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.aq, i8 0, i64 56, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.ao, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw [28 x i8], ptr %2, i64 %.077.i
  store ptr %i.at, ptr %i.aq, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 28, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %.077.i
  store ptr %i.ay, ptr %i.av, align 16
  store i64 64, ptr %i.aw, align 8
  %i.az = add nuw nsw i64 %.077.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %spec.store.select.i
  br i1 %exitcond.not.i, label %.preheader72.i, label %.lr.ph.split.i, !llvm.loop !8

bb.f:                                             ; preds = %bb.g, %.preheader72.i
  %i.ba = load i32, ptr %i.e, align 8
  %i.bb = call i32 @recvmmsg(i32 noundef %i.ba, ptr noundef nonnull %4, i32 noundef %i.al, i32 noundef range(i32 0, 8193) %1, ptr noundef null) #9 ; 6 uses
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.bd = tail call ptr @__errno_location() #10
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = icmp eq i32 %i.be, 4
  br i1 %i.bf, label %bb.f, label %.thread.i, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.f
  %i.bg = sext i32 %i.bb to i64
  %i.bh = icmp slt i32 %i.bb, 1
  br i1 %i.bh, label %bb.h, label %.lr.ph80.i

bb.h:                                             ; preds = %.critedge.i
  %i.bi = icmp eq i32 %i.bb, 0
  br i1 %i.bi, label %bb.i, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.h
  %.pre.i = tail call ptr @__errno_location() #10
  %.pr.i = load i32, ptr %.pre.i, align 4
  br label %.thread.i

end_hunk_0
begin_hunk_1_@uv__udp_recvmsg:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %.03.i, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.03.i, i64 32
  %i.fi = load ptr, ptr %i.f, align 8
  %i.fj = load i32, ptr %i.fg, align 4
  %i.fk = sub i32 0, %i.fj
  %i.fl = zext i32 %i.fk to i64
  call void %i.fi(ptr noundef %0, i64 noundef %i.fl, ptr noundef nonnull %8, ptr noundef nonnull %i.fh, i32 noundef %i.ef) #9, !inline_history !14
  %i.fm = add nsw i32 %.040, -1
  br label %bb.ai

uv__udp_recvmsg_errqueue.exit.thread:             ; preds = %.thread.i54, %bb.ab, %bb.x, %bb.y, %.critedge
  br i1 %i.dx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %uv__udp_recvmsg_errqueue.exit.thread
  %i.fn = load ptr, ptr %i.f, align 8
  call void %i.fn(ptr noundef %0, i64 noundef %i.dw, ptr noundef nonnull %8, ptr noundef nonnull %6, i32 noundef %spec.select51) #9
  br label %bb.ah

bb.ae:                                            ; preds = %uv__udp_recvmsg_errqueue.exit.thread
  %i.fo = tail call ptr @__errno_location() #10
  %i.fp = load i32, ptr %i.fo, align 4            ; 2 uses
  %i.fq = icmp eq i32 %i.fp, 11
  %i.fr = load ptr, ptr %i.f, align 8             ; 2 uses
  br i1 %i.fq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void %i.fr(ptr noundef %0, i64 noundef 0, ptr noundef nonnull %8, ptr noundef null, i32 noundef 0) #9
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fs = sub nsw i32 0, %i.fp
  %i.ft = sext i32 %i.fs to i64
  call void %i.fr(ptr noundef %0, i64 noundef %i.ft, ptr noundef nonnull %8, ptr noundef null, i32 noundef 0) #9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ad
  %i.fu = add nsw i32 %.040, -1
  br label %bb.ai

bb.ai:                                            ; preds = %uv__udp_recvmmsg.exit, %bb.ah, %bb.ac
  %.1 = phi i32 [ %i.fu, %bb.ah ], [ %spec.select, %uv__udp_recvmmsg.exit ], [ %i.fm, %bb.ac ] ; 2 uses
  %.0 = phi i64 [ %i.dw, %bb.ah ], [ %i.dt, %uv__udp_recvmmsg.exit ], [ %i.dw, %bb.ac ]
  %i.fv = icmp ne i64 %.0, -1
  %i.fw = icmp sgt i32 %.1, 0
  %or.cond4 = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond4, label %bb.aj, label %.critedge6

bb.aj:                                            ; preds = %bb.ai
  %i.fx = load i32, ptr %i.e, align 8
  %.not49 = icmp eq i32 %i.fx, -1
  br i1 %.not49, label %.critedge6, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fy = load ptr, ptr %i.f, align 8
  %.not50 = icmp eq ptr %i.fy, null
  br i1 %.not50, label %.critedge6, label %bb.b, !llvm.loop !15

.critedge6:                                       ; preds = %bb.ak, %bb.ai, %bb.aj, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__udp_sendmsg(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x ptr], align 16              ; 4 uses
  %i.b = alloca [20 x i32], align 16              ; 4 uses
  %i.c = alloca [20 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.be, %.backedge ] ; 5 uses
  %.037 = phi ptr [ %i.e, %.preheader ], [ %.037.be, %.backedge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.037, i64 16
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.037, i64 144
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %.037, i64 152
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.o, ptr %i.p, align 8
  %.037.val = load ptr, ptr %.037, align 8        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv, 19
  %i.r = icmp ne ptr %.037.val, %i.d
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.backedge, label %bb.c

.backedge:                                        ; preds = %bb.b, %._crit_edge.thread
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %._crit_edge.thread ]
  %.037.be = phi ptr [ %.037.val, %bb.b ], [ %i.al, %._crit_edge.thread ]
  br label %bb.b, !llvm.loop !16

bb.c:                                             ; preds = %bb.b
  %i.t = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.u = load i32, ptr %i.f, align 8
  %i.v = call fastcc i32 @uv__udp_sendmsgv(i32 noundef %i.u, i32 noundef %i.t, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.148 = phi i32 [ %i.aj, %.lr.ph ], [ %i.v, %bb.c ] ; 2 uses
  %.val39 = load ptr, ptr %i.d, align 8           ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val39, i64 152
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.val39, i64 144
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = tail call i64 @uv__count_bufs(ptr noundef %i.y, i32 noundef %i.aa) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %.val39, i64 160
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %.val39, align 8          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val39, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8
  store ptr %i.g, ptr %.val39, align 8
  %i.ai = load ptr, ptr %i.h, align 8             ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8
  store ptr %.val39, ptr %i.ai, align 8
  store ptr %.val39, ptr %i.h, align 8
  %i.aj = add nsw i32 %.148, -1
  %i.ak = icmp samesign ugt i32 %.148, 1
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.c
  switch i32 %i.v, label %bb.d [
    i32 0, label %._crit_edge.thread
    i32 -11, label %.loopexit
  ]

._crit_edge.thread:                               ; preds = %.lr.ph, %._crit_edge
  %i.al = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not41 = icmp eq ptr %i.d, %i.al
  br i1 %.not41, label %.loopexit42, label %.backedge

bb.d:                                             ; preds = %._crit_edge
  %.val = load ptr, ptr %i.d, align 8             ; 6 uses
  %i.am = sext i32 %i.v to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 160
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = load ptr, ptr %.val, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store ptr %i.g, ptr %.val, align 8
  %i.at = load ptr, ptr %i.h, align 8             ; 2 uses
  store ptr %i.at, ptr %i.ap, align 8
  store ptr %.val, ptr %i.at, align 8
  store ptr %.val, ptr %i.h, align 8
  br label %.loopexit42

.loopexit42:                                      ; preds = %._crit_edge.thread, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void @uv__io_feed(ptr noundef %i.aw, ptr noundef nonnull %i.au) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %.loopexit42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @uv__udp_bind(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = and i32 %3, -102
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %.not40 = trunc i32 %3 to i1                    ; 2 uses
  br i1 %.not40, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %1, align 2
  %.not41 = icmp eq i16 %i.e, 10
  br i1 %.not41, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = load i16, ptr %1, align 2
  %i.j = zext i16 %i.i to i32
  %i.k = tail call i32 @uv__socket(i32 noundef %i.j, i32 noundef 2, i32 noundef 0) #9 ; 4 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.k, ptr %i.f, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.034 = phi i32 [ %i.k, %bb.f ], [ %i.g, %bb.d ] ; 6 uses
  %i.m = and i32 %3, 32
  %.not42 = icmp eq i32 %i.m, 0
  br i1 %.not42, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load i16, ptr %1, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 1, ptr %i.b, align 4
  switch i16 %i.n, label %uv__set_recverr.exit.thread [
    i16 2, label %bb.i
    i16 10, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.o = call i32 @setsockopt(i32 noundef range(i32 0, -1) %.034, i32 noundef 0, i32 noundef 11, ptr noundef nonnull %i.b, i32 noundef 4) #9
  %.not6.i = icmp eq i32 %i.o, 0
  br i1 %.not6.i, label %uv__set_recverr.exit.thread, label %uv__set_recverr.exit

bb.j:                                             ; preds = %bb.h
  %i.p = call i32 @setsockopt(i32 noundef range(i32 0, -1) %.034, i32 noundef 41, i32 noundef 25, ptr noundef nonnull %i.b, i32 noundef 4) #9
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %uv__set_recverr.exit.thread, label %uv__set_recverr.exit

uv__set_recverr.exit.thread:                      ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.k

uv__set_recverr.exit:                             ; preds = %bb.i, %bb.j
  %i.q = tail call ptr @__errno_location() #10
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = sub nsw i32 0, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %.not43 = icmp eq i32 %i.r, 0
  br i1 %.not43, label %bb.k, label %bb.t

bb.k:                                             ; preds = %uv__set_recverr.exit.thread, %uv__set_recverr.exit, %bb.g
  %i.t = and i32 %3, 4
  %.not44 = icmp eq i32 %i.t, 0
  br i1 %.not44, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 1, ptr %i.a, align 4
  %i.u = call i32 @setsockopt(i32 noundef %.034, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 4) #9
  %.not.i49 = icmp eq i32 %i.u, 0
  br i1 %.not.i49, label %uv__sock_reuseaddr.exit.thread, label %uv__sock_reuseaddr.exit

uv__sock_reuseaddr.exit.thread:                   ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.m

uv__sock_reuseaddr.exit:                          ; preds = %bb.l
  %i.v = tail call ptr @__errno_location() #10
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = sub nsw i32 0, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not45 = icmp eq i32 %i.w, 0
  br i1 %.not45, label %bb.m, label %bb.t

bb.m:                                             ; preds = %uv__sock_reuseaddr.exit.thread, %uv__sock_reuseaddr.exit, %bb.k
  %.not46 = icmp samesign ult i32 %3, 64
  br i1 %.not46, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = call i32 @uv__sock_reuseport(i32 noundef %.034) #9 ; 2 uses
  %.not47 = icmp eq i32 %i.y, 0
  br i1 %.not47, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not40, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.c, align 4
  %i.z = call i32 @setsockopt(i32 noundef %.034, i32 noundef 41, i32 noundef 26, ptr noundef nonnull %i.c, i32 noundef 4) #9
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ab = tail call ptr @__errno_location() #10
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sub nsw i32 0, %i.ac
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ae = call i32 @bind(i32 noundef %.034, ptr %1, i32 noundef %2) #9
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = tail call ptr @__errno_location() #10
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = sub nsw i32 0, %i.ag
  %i.ai = icmp eq i32 %i.ag, 97
  %spec.store.select = select i1 %i.ai, i32 -22, i32 %i.ah
  br label %bb.t

._crit_edge:                                      ; preds = %bb.r
  %i.aj = load i16, ptr %1, align 2
  %i.ak = icmp eq i16 %i.aj, 10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load i32, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = select i1 %i.ak, i32 4202496, i32 8192
  %i.ap = or i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %uv__sock_reuseaddr.exit, %uv__set_recverr.exit, %bb.e, %bb.c, %bb.a, %._crit_edge, %bb.s, %bb.q
  %.0 = phi i32 [ 0, %._crit_edge ], [ -22, %bb.a ], [ -22, %bb.c ], [ %i.k, %bb.e ], [ %i.s, %uv__set_recverr.exit ], [ %i.x, %uv__sock_reuseaddr.exit ], [ %i.ad, %bb.q ], [ %spec.store.select, %bb.s ], [ %i.y, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.0
}

declare i32 @uv__socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @uv__sock_reuseaddr(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 1, ptr %i.a, align 4
  %i.b = call i32 @setsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 4) #9
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #10
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sub nsw i32 0, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare i32 @uv__sock_reuseport(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @uv__udp_connect(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.uv__sockaddr, align 4        ; 11 uses
  %i.a = load i16, ptr %1, align 2                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not.i = icmp eq i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %uv__udp_maybe_deferred_bind.exit.thread18

bb.b:                                             ; preds = %bb.a
  switch i16 %i.a, label %bb.c [
    i16 2, label %.split13.i
    i16 10, label %.split.i
  ]

.split13.i:                                       ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i16 2, ptr %3, align 4
  br label %.sink.split.i

.split.i:                                         ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  store i16 10, ptr %3, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) @in6addr_any, i64 16, i1 false)
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #11
  unreachable

.sink.split.i:                                    ; preds = %.split13.i, %.split.i
  %.sink.i = phi i32 [ 16, %.split13.i ], [ 28, %.split.i ]
  %i.e = zext nneg i16 %i.a to i32
  %i.f = tail call i32 @uv__socket(i32 noundef %i.e, i32 noundef 2, i32 noundef 0) #9 ; 4 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %uv__udp_maybe_deferred_bind.exit.thread, label %bb.d

bb.d:                                             ; preds = %.sink.split.i
  store i32 %i.f, ptr %i.b, align 8
  %i.h = call i32 @bind(i32 noundef %i.f, ptr nonnull %3, i32 noundef %.sink.i) #9
  %.not48.i = icmp eq i32 %i.h, 0
  br i1 %.not48.i, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__errno_location() #10
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 97
  br i1 %i.k, label %uv__udp_maybe_deferred_bind.exit.thread, label %uv__udp_maybe_deferred_bind.exit

._crit_edge.i:                                    ; preds = %bb.d
  %i.l = load i16, ptr %3, align 4
  %i.m = icmp eq i16 %i.l, 10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = select i1 %i.m, i32 4202496, i32 8192
  %i.q = or i32 %i.p, %i.o
  store i32 %i.q, ptr %i.n, align 8
  br label %uv__udp_maybe_deferred_bind.exit.thread18

uv__udp_maybe_deferred_bind.exit.thread:          ; preds = %.sink.split.i, %bb.e
  %.0.i.ph = phi i32 [ %i.f, %.sink.split.i ], [ -22, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.i

uv__udp_maybe_deferred_bind.exit.thread18:        ; preds = %bb.a, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.preheader

uv__udp_maybe_deferred_bind.exit:                 ; preds = %bb.e
  %i.r = sub nsw i32 0, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.preheader, label %bb.i

.preheader:                                       ; preds = %uv__udp_maybe_deferred_bind.exit.thread18, %uv__udp_maybe_deferred_bind.exit
  %i.s = tail call ptr @__errno_location() #10    ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.g
  store i32 0, ptr %i.s, align 4
  %i.t = load i32, ptr %i.b, align 8
  %i.u = call i32 @connect(i32 noundef %i.t, ptr nonnull %1, i32 noundef %2) #9
  switch i32 %i.u, label %..critedge_crit_edge [
    i32 -1, label %bb.g
    i32 0, label %bb.h
  ]

..critedge_crit_edge:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.s, align 4
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.s, align 4              ; 2 uses
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %bb.f, label %.critedge, !llvm.loop !18

.critedge:                                        ; preds = %bb.g, %..critedge_crit_edge
  %i.x = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.v, %bb.g ]
  %i.y = sub nsw i32 0, %i.x
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = or i32 %i.aa, 33554432
  store i32 %i.ab, ptr %i.z, align 8
  br label %bb.i

bb.i:                                             ; preds = %uv__udp_maybe_deferred_bind.exit.thread, %uv__udp_maybe_deferred_bind.exit, %bb.h, %.critedge
  %.0 = phi i32 [ 0, %bb.h ], [ %i.y, %.critedge ], [ %i.r, %uv__udp_maybe_deferred_bind.exit ], [ %.0.i.ph, %uv__udp_maybe_deferred_bind.exit.thread ]
  ret i32 %.0
}

declare i32 @connect(i32 noundef, ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @uv__udp_disconnect(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sockaddr, align 2           ; 4 uses
end_hunk_1
