Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/linux?download=true
inline.NumInlined: 107
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uv__io_poll:bb.a
  br i1 %i.jp, label %bb.ar, label %uv__poll_io_uring.exit

bb.ar:                                            ; preds = %bb.aq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 24 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = add i64 %i.jr, %.0.lcssa.i
  store i64 %i.js, ptr %i.jq, align 8
  br label %uv__poll_io_uring.exit

bb.as:                                            ; preds = %bb.ad
  %i.jt = icmp sgt i32 %i.du, -1
  br i1 %i.jt, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef 1512, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_poll) #19
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.ju = load i32, ptr %i.cc, align 8
  %i.jv = icmp ult i32 %i.du, %i.ju
  br i1 %i.jv, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7, i32 noundef 1513, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_poll) #19
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.jw = load ptr, ptr %i.cd, align 8
  %i.jx = zext nneg i32 %i.du to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8            ; 5 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kb = call i32 @epoll_ctl(i32 noundef %i.o, i32 noundef 2, i32 noundef %i.du, ptr noundef nonnull %i.ds) #16 ; 0 uses
  br label %uv__poll_io_uring.exit

bb.ay:                                            ; preds = %bb.aw
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 40 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 8
  %i.ke = or i32 %i.kd, 24
  %i.kf = load i32, ptr %i.ds, align 4
  %i.kg = and i32 %i.kf, %i.ke                    ; 3 uses
  store i32 %i.kg, ptr %i.ds, align 4
  switch i32 %i.kg, label %bb.az [
    i32 8, label %.thread171
    i32 16, label %.thread171
    i32 0, label %uv__poll_io_uring.exit
  ]

.thread171:                                       ; preds = %bb.ay, %bb.ay
  %i.kh = load i32, ptr %i.kc, align 8
  %i.ki = and i32 %i.kh, 8199
  %i.kj = or i32 %i.ki, %i.kg
  store i32 %i.kj, ptr %i.ds, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread171
  %i.kk = icmp eq ptr %i.jz, %i.ce
  br i1 %i.kk, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @uv__metrics_update_idle_time(ptr noundef nonnull %0) #16
  %i.kl = load ptr, ptr %i.jz, align 8
  %i.km = load i32, ptr %i.ds, align 4
  call void %i.kl(ptr noundef nonnull %0, ptr noundef nonnull %i.jz, i32 noundef %i.km) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.1136 = phi i32 [ %.0135219, %bb.ba ], [ 1, %bb.az ]
  %i.kn = add nsw i32 %.0133220, 1
  br label %uv__poll_io_uring.exit

uv__poll_io_uring.exit:                           ; preds = %bb.ay, %bb.ar, %bb.aq, %bb.bb, %.lr.ph223, %bb.ax
  %.1139 = phi i32 [ %.0138218, %.lr.ph223 ], [ %.0138218, %bb.ay ], [ %.0138218, %bb.ax ], [ %.0138218, %bb.bb ], [ 1, %bb.aq ], [ 1, %bb.ar ] ; 2 uses
  %.2137 = phi i32 [ %.0135219, %.lr.ph223 ], [ %.0135219, %bb.ay ], [ %.0135219, %bb.ax ], [ %.1136, %bb.bb ], [ %.0135219, %bb.aq ], [ %.0135219, %bb.ar ] ; 3 uses
  %.1134 = phi i32 [ %.0133220, %.lr.ph223 ], [ %.0133220, %bb.ay ], [ %.0133220, %bb.ax ], [ %i.kn, %bb.bb ], [ %.0133220, %bb.aq ], [ %.0133220, %bb.ar ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge224.loopexit, label %.lr.ph223, !llvm.loop !25

._crit_edge224.loopexit:                          ; preds = %uv__poll_io_uring.exit
  %i.ko = or i32 %.2137, %.1139
  %i.kp = icmp eq i32 %.2137, 0
  %i.kq = icmp eq i32 %i.ko, 0
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.loopexit, %bb.ac
  %.0138.lcssa = phi i1 [ true, %bb.ac ], [ %i.kq, %._crit_edge224.loopexit ]
  %.0135.lcssa = phi i1 [ true, %bb.ac ], [ %i.kp, %._crit_edge224.loopexit ]
  %.0133.lcssa = phi i32 [ 0, %bb.ac ], [ %.1134, %._crit_edge224.loopexit ] ; 2 uses
  %i.kr = sext i32 %.0133.lcssa to i64            ; 2 uses
  %i.ks = load ptr, ptr %i.a, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8
  %i.kv = add i64 %i.ku, %i.kr
  store i64 %i.kv, ptr %i.kt, align 8
  br i1 %.1127, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge224
  %i.kw = load ptr, ptr %i.a, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8
  %i.kz = add i64 %i.ky, %i.kr
  store i64 %i.kz, ptr %i.kx, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge224
  %.2 = phi i32 [ %., %bb.bc ], [ %.1, %._crit_edge224 ]
  br i1 %.0135.lcssa, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @uv__metrics_update_idle_time(ptr noundef nonnull %0) #16
  %i.la = load ptr, ptr %i.ce, align 8
  call void %i.la(ptr noundef nonnull %0, ptr noundef nonnull %i.ce, i32 noundef 1) #16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store ptr null, ptr %i.ca, align 8
  br i1 %.0138.lcssa, label %bb.bg, label %.loopexit177

bb.bg:                                            ; preds = %bb.bf
  %.not157 = icmp eq i32 %.0133.lcssa, 0
  br i1 %.not157, label %select.unfold, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lb = icmp ne i32 %i.cy, 1024
  %i.lc = add nsw i32 %.0132.ph179, -1            ; 2 uses
  %.not158 = icmp eq i32 %i.lc, 0
  %or.cond168 = select i1 %i.lb, i1 true, i1 %.not158
  br i1 %or.cond168, label %.loopexit177, label %.outer178

select.unfold:                                    ; preds = %.thread.thread, %.thread, %bb.bg
  %.3 = phi i32 [ %.2, %bb.bg ], [ %..mux, %.thread ], [ %spec.select, %.thread.thread ] ; 3 uses
  switch i32 %.3, label %bb.bi [
    i32 0, label %.loopexit177
    i32 -1, label %bb.p
  ]

bb.bi:                                            ; preds = %select.unfold
  %i.ld = icmp sgt i32 %.3, 0
  br i1 %i.ld, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 1608, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__io_poll) #19
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.le = load i64, ptr %i.j, align 8
  %.neg = sub i64 %i.k, %i.le
  %i.lf = trunc i64 %.neg to i32
  %i.lg = add i32 %.0141.ph, %i.lf                ; 3 uses
  %i.lh = icmp slt i32 %i.lg, 1
  br i1 %i.lh, label %.loopexit177, label %.outer

.loopexit177:                                     ; preds = %bb.bk, %bb.bh, %select.unfold, %bb.bf, %bb.q
  %i.li = load i32, ptr %i.bw, align 8
  %.not161 = icmp eq i32 %i.li, -1
  br i1 %.not161, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit177
  %i.lj = load ptr, ptr %i.c, align 8
  %i.lk = load i32, ptr %i.lj, align 4
  %i.ll = load ptr, ptr %i.bx, align 8
  %i.lm = load i32, ptr %i.ll, align 4
  %.not162227 = icmp eq i32 %i.lk, %i.lm
  br i1 %.not162227, label %.loopexit, label %.lr.ph228

.lr.ph228:                                        ; preds = %.preheader, %.lr.ph228
  call fastcc void @uv__epoll_ctl_flush(i32 noundef %i.o, ptr noundef nonnull %i.c, ptr noundef %4)
  %i.ln = load ptr, ptr %i.c, align 8
  %i.lo = load i32, ptr %i.ln, align 4
  %i.lp = load ptr, ptr %i.bx, align 8
  %i.lq = load i32, ptr %i.lp, align 4
  %.not162 = icmp eq i32 %i.lo, %i.lq
  br i1 %.not162, label %.loopexit, label %.lr.ph228, !llvm.loop !26

.loopexit:                                        ; preds = %.thread, %.lr.ph228, %.preheader, %.loopexit177
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @uv__epoll_ctl_flush(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [256 x %struct.epoll_event], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.7, i32 noundef 1295, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__epoll_ctl_flush) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not37 = icmp eq i32 %i.d, %i.g
  br i1 %.not37, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.7, i32 noundef 1296, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__epoll_ctl_flush) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = sub i32 %i.g, %i.d                       ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.i = load i32, ptr %i.a, align 8
  %i.j = tail call i64 (i64, ...) @syscall(i64 noundef 426, i32 noundef %i.i, i32 noundef %i.h, i32 noundef %i.h, i32 noundef 1, ptr noundef null, i64 noundef 0) #16
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @__errno_location() #18
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %bb.f, label %.critedge.thread, !llvm.loop !27

.critedge:                                        ; preds = %bb.f
  %i.p = icmp slt i32 %i.k, 0
  br i1 %i.p, label %.critedge.thread, label %bb.h

.critedge.thread:                                 ; preds = %bb.g, %.critedge
  tail call void @perror(ptr noundef nonnull @.str.39) #20
  br label %bb.h

bb.h:                                             ; preds = %.critedge.thread, %.critedge
  %.not38 = icmp eq i32 %i.h, %i.k
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @abort() #19
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %1, align 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.7, i32 noundef 1309, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__epoll_ctl_flush) #19
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %3, ptr noundef nonnull align 1 dereferenceable(3072) %2, i64 3072, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = load i32, ptr %i.z, align 4
  %.not3943 = icmp eq i32 %i.y, %i.aa
  br i1 %.not3943, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %.backedge
  %i.af = phi i32 [ %i.y, %.lr.ph ], [ %i.bz, %.backedge ] ; 2 uses
  %i.ag = phi ptr [ %i.x, %.lr.ph ], [ %i.by, %.backedge ]
  %i.ah = add i32 %i.af, 1
  store i32 %i.ah, ptr %i.ag, align 4
  %i.ai = load i32, ptr %i.ab, align 8
  %i.aj = and i32 %i.ai, %i.af
  %i.ak = load ptr, ptr %i.ac, align 8
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.backedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i64, ptr %i.am, align 8            ; 4 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 3
  %i.at = lshr i64 %i.aq, 2
  %i.au = and i64 %i.at, 255
  switch i32 %i.as, label %bb.o [
    i32 2, label %.backedge
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  tail call void @abort() #19
  unreachable

bb.p:                                             ; preds = %bb.n
  %.not41 = icmp eq i32 %i.ao, -17
  br i1 %.not41, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @abort() #19
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.av = load i32, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.av, -1
  br i1 %.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.7, i32 noundef 1258, ptr noundef nonnull @__PRETTY_FUNCTION__.uv__epoll_ctl_prep) #19, !inline_history !19
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.aw = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.ax = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = and i32 %i.ay, %i.aw                    ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %i.bb ; 2 uses
  %.0..sroa_stride = mul nuw nsw i64 %i.au, 12
  %.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 %.0..sroa_stride
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bc, ptr noundef nonnull align 4 dereferenceable(12) %.0..sroa_idx, i64 12, i1 false)
  %i.bd = load ptr, ptr %i.ae, align 8
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.bd, i64 %i.bb ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, i8 0, i64 64, i1 false)
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %0, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 3, ptr %i.bi, align 8
  %i.bj = ashr i64 %i.aq, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bj, ptr %i.bk, align 8
  store i8 29, ptr %i.be, align 8
  %i.bl = shl i32 %i.ba, 2
  %i.bm = or disjoint i32 %i.bl, 3
  %i.bn = zext i32 %i.bm to i64
  %i.bo = and i64 %i.aq, -4294967296
  %i.bp = or disjoint i64 %i.bo, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i64 %i.bp, ptr %i.bq, align 8
  %i.br = load ptr, ptr %1, align 8
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = load ptr, ptr %i.e, align 8
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = xor i32 %i.bu, %i.bs
  %i.bw = and i32 %i.bv, %i.aw
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %.backedge

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @uv__epoll_ctl_flush(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !19
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.t, %bb.m, %bb.n
  %i.by = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4            ; 2 uses
  %i.ca = load ptr, ptr %i.w, align 8
  %i.cb = load i32, ptr %i.ca, align 4
  %.not39 = icmp eq i32 %i.bz, %i.cb
  br i1 %.not39, label %._crit_edge, label %bb.m, !llvm.loop !28

._crit_edge:                                      ; preds = %.backedge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare void @uv__metrics_set_provider_entry_time(ptr noundef) local_unnamed_addr #2

declare i32 @epoll_pwait(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uv__metrics_update_idle_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i64 @uv__hrtime(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i64, ptr @uv__hrtime.fast_clock_id monotonic, align 8 ; 2 uses
  %.not11 = icmp eq i64 %i.a, -1
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = call i32 @clock_getres(i32 noundef 6, ptr noundef nonnull %1) #16
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp slt i64 %i.e, 1000001
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %spec.select = select i1 %or.cond, i64 6, i64 1 ; 2 uses
  store atomic i64 %spec.select, ptr @uv__hrtime.fast_clock_id monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi i64 [ 1, %bb.a ], [ %i.a, %bb.b ], [ %spec.select, %bb.c ]
  %i.g = trunc nuw nsw i64 %.1 to i32
  %i.h = call i32 @clock_gettime(i32 noundef %i.g, ptr noundef nonnull %1) #16
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %1, align 8
  %i.j = mul i64 %i.i, 1000000000
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.j, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @clock_getres(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @uv_resident_set_memory(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @uv__slurp(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a, i64 noundef 1024) #16 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 41) #17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.g = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 32) #17 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 32) #17 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.l, i32 noundef 32) #17 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.p = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.o, i32 noundef 32) #17 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.s = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 32) #17 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.v = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.u, i32 noundef 32) #17 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.x, i32 noundef 32) #17 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ab = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aa, i32 noundef 32) #17 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ae = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ad, i32 noundef 32) #17 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ag, i32 noundef 32) #17 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.loopexit, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ak = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aj, i32 noundef 32) #17 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.an = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.am, i32 noundef 32) #17 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.loopexit, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.aq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ap, i32 noundef 32) #17 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.loopexit, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.at = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.as, i32 noundef 32) #17 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.loopexit, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.av, i32 noundef 32) #17 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.loopexit, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.az = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ay, i32 noundef 32) #17 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit, label %.preheader.16

.preheader.16:                                    ; preds = %.preheader.15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bc = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bb, i32 noundef 32) #17 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.loopexit, label %.preheader.17

.preheader.17:                                    ; preds = %.preheader.16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bf = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.be, i32 noundef 32) #17 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.loopexit, label %.preheader.18

.preheader.18:                                    ; preds = %.preheader.17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bi = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bh, i32 noundef 32) #17 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.loopexit, label %.preheader.19

.preheader.19:                                    ; preds = %.preheader.18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bl = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bk, i32 noundef 32) #17 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.loopexit, label %.preheader.20

.preheader.20:                                    ; preds = %.preheader.19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bn, i32 noundef 32) #17 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.loopexit, label %.preheader.21

end_hunk_0
