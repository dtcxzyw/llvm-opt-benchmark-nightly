Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlamch?download=true
inline.NumInlined: 41
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0_@dlamch_:bb.a
bb.n:                                             ; preds = %bb.l
  %i.az = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #10
  %.not19 = icmp eq i32 %i.az, 0
  br i1 %.not19, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load double, ptr @dlamch_.prec, align 8, !tbaa !12
  br label %bb.aa

bb.p:                                             ; preds = %bb.n
  %i.bb = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #10
  %.not20 = icmp eq i32 %i.bb, 0
  br i1 %.not20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load double, ptr @dlamch_.t, align 8, !tbaa !12
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
  %i.bd = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.5) #10
  %.not21 = icmp eq i32 %i.bd, 0
  br i1 %.not21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load double, ptr @dlamch_.rnd, align 8, !tbaa !12
  br label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.bf = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  %.not22 = icmp eq i32 %i.bf, 0
  br i1 %.not22, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load double, ptr @dlamch_.emin, align 8, !tbaa !12
  br label %bb.aa

bb.v:                                             ; preds = %bb.t
  %i.bh = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.7) #10
  %.not23 = icmp eq i32 %i.bh, 0
  br i1 %.not23, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = load double, ptr @dlamch_.rmin, align 8, !tbaa !12
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.bj = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.8) #10
  %.not24 = icmp eq i32 %i.bj, 0
  br i1 %.not24, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = load double, ptr @dlamch_.emax, align 8, !tbaa !12
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.bl = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.9) #10
  %.not25 = icmp eq i32 %i.bl, 0
  %i.bm = load double, ptr @dlamch_.rmax, align 8
  %spec.select = select i1 %.not25, double undef, double %i.bm
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.k, %bb.o, %bb.s, %bb.w, %bb.y, %bb.u, %bb.q, %bb.m, %bb.i
  %.0 = phi double [ %i.au, %bb.i ], [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.o ], [ %i.bc, %bb.q ], [ %i.be, %bb.s ], [ %i.bg, %bb.u ], [ %i.bi, %bb.w ], [ %i.bk, %bb.y ], [ %spec.select, %bb.z ]
  store i1 true, ptr @dlamch_.first, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @dlamc2_(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @dlamc2_.first, align 4
  br i1 %.b, label %._crit_edge236, label %bb.b

._crit_edge236:                                   ; preds = %bb.a
  %.pre = load i32, ptr @dlamc2_.lbeta, align 4, !tbaa !10
  %.pre237 = load double, ptr @dlamc2_.leps, align 8, !tbaa !12
  %.pre238 = load double, ptr @dlamc2_.lrmin, align 8, !tbaa !12
  br label %bb.w

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @dlamc1_.first, align 4
  br i1 %.b.i, label %dlamc1_.exit, label %.thread

.thread:                                          ; preds = %bb.b
  store i1 true, ptr @dlamc1_.lbeta, align 4
  store i1 true, ptr @dlamc1_.lrnd, align 4
  store i1 true, ptr @dlamc1_.lieee1, align 4
  store i32 53, ptr @dlamc1_.lt, align 4, !tbaa !10
  store i32 2, ptr @dlamc2_.lbeta, align 4, !tbaa !10
  store i32 53, ptr @dlamc2_.lt, align 4, !tbaa !10
  store i1 true, ptr @dlamc1_.first, align 4
  br label %bb.d

dlamc1_.exit:                                     ; preds = %bb.b
  %.pre.i.b = load i1, ptr @dlamc1_.lbeta, align 4
  %.pre.i = select i1 %.pre.i.b, i32 2, i32 0     ; 4 uses
  %.pre65.i = load i32, ptr @dlamc1_.lt, align 4, !tbaa !10
  %.pre65.i.fr = freeze i32 %.pre65.i             ; 4 uses
  %.b7.pre.i = load i1, ptr @dlamc1_.lrnd, align 4
  %.pre67.i.b = load i1, ptr @dlamc1_.lieee1, align 4 ; 2 uses
  %i.a = zext i1 %.b7.pre.i to i32                ; 2 uses
  store i32 %.pre.i, ptr @dlamc2_.lbeta, align 4, !tbaa !10
  store i32 %.pre65.i.fr, ptr @dlamc2_.lt, align 4, !tbaa !10
  store i1 true, ptr @dlamc1_.first, align 4
  %i.b = uitofp nneg i32 %.pre.i to double        ; 4 uses
  %.not.i = icmp eq i32 %.pre65.i.fr, 0
  br i1 %.not.i, label %dpow_ui.exit, label %bb.c

bb.c:                                             ; preds = %dlamc1_.exit
  %i.c = icmp sgt i32 %.pre65.i.fr, 0
  %i.d = fdiv double 1.000000e+00, %i.b
  %spec.select279 = select i1 %i.c, double %i.d, double %i.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.e = phi i1 [ %.pre67.i.b, %bb.c ], [ true, %.thread ] ; 2 uses
  %.b7.i253257 = phi i32 [ %i.a, %bb.c ], [ 1, %.thread ] ; 2 uses
  %i.f = phi i32 [ %.pre65.i.fr, %bb.c ], [ 53, %.thread ] ; 3 uses
  %i.g = phi i32 [ %.pre.i, %bb.c ], [ 2, %.thread ] ; 2 uses
  %i.h = phi double [ %i.b, %bb.c ], [ 2.000000e+00, %.thread ] ; 2 uses
  %i.i = phi double [ %spec.select279, %bb.c ], [ 5.000000e-01, %.thread ] ; 2 uses
  %.012.i = tail call i32 @llvm.abs.i32(i32 %i.f, i1 true)
  %i.j = zext nneg i32 %.012.i to i64             ; 2 uses
  %i.k = and i64 %i.j, 1
  %.not1719.i = icmp eq i64 %i.k, 0
  %spec.select20.i = select i1 %.not1719.i, double 1.000000e+00, double %i.i ; 2 uses
  %i.l = lshr i64 %i.j, 1                         ; 2 uses
  %.not1821.i = icmp eq i64 %i.l, 0
  br i1 %.not1821.i, label %dpow_ui.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.m = phi i64 [ %i.q, %.lr.ph.i ], [ %i.l, %bb.d ] ; 2 uses
  %spec.select23.i = phi double [ %spec.select.i, %.lr.ph.i ], [ %spec.select20.i, %bb.d ] ; 2 uses
  %.11422.i = phi double [ %i.n, %.lr.ph.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = fmul double %.11422.i, %.11422.i         ; 2 uses
  %i.o = and i64 %i.m, 1
  %.not17.i = icmp eq i64 %i.o, 0
  %i.p = fmul double %spec.select23.i, %i.n
  %spec.select.i = select i1 %.not17.i, double %spec.select23.i, double %i.p ; 2 uses
  %i.q = lshr i64 %i.m, 1                         ; 2 uses
  %.not18.i = icmp eq i64 %i.q, 0
  br i1 %.not18.i, label %dpow_ui.exit, label %.lr.ph.i

dpow_ui.exit:                                     ; preds = %.lr.ph.i, %dlamc1_.exit, %bb.d
  %i.r = phi double [ %i.b, %dlamc1_.exit ], [ %i.h, %bb.d ], [ %i.h, %.lr.ph.i ] ; 19 uses
  %i.s = phi i32 [ %.pre.i, %dlamc1_.exit ], [ %i.g, %bb.d ], [ %i.g, %.lr.ph.i ] ; 11 uses
  %i.t = phi i32 [ 0, %dlamc1_.exit ], [ %i.f, %bb.d ], [ %i.f, %.lr.ph.i ] ; 7 uses
  %.b7.i254 = phi i32 [ %i.a, %dlamc1_.exit ], [ %.b7.i253257, %bb.d ], [ %.b7.i253257, %.lr.ph.i ]
  %i.u = phi i1 [ %.pre67.i.b, %dlamc1_.exit ], [ %i.e, %bb.d ], [ %i.e, %.lr.ph.i ] ; 7 uses
  %.2.i = phi double [ 1.000000e+00, %dlamc1_.exit ], [ %spec.select20.i, %bb.d ], [ %spec.select.i, %.lr.ph.i ] ; 5 uses
  %i.v = fcmp ogt double %.2.i, f0x3CA0000000000000
  %spec.store.select = select i1 %i.v, double %.2.i, double f0x3CA0000000000000 ; 3 uses
  store double 1.000000e+00, ptr @dlamc2_.leps, align 8, !tbaa !12
  %i.w = fcmp olt double %spec.store.select, 1.000000e+00
  %i.x = fcmp ogt double %spec.store.select, 0.000000e+00
  %or.cond206 = and i1 %i.x, %i.w
  br i1 %or.cond206, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %dpow_ui.exit, %.lr.ph
  %.0179207 = phi double [ %i.af, %.lr.ph ], [ %spec.store.select, %dpow_ui.exit ] ; 6 uses
  %i.y = fmul nnan double %.0179207, 5.000000e-01
  %i.z = fmul nnan double %.0179207, %.0179207
  %i.aa = fmul nnan double %i.z, 3.200000e+01
  %i.ab = fadd double %i.y, %i.aa
  %i.ac = fsub double 5.000000e-01, %i.ab
  %i.ad = fadd double %i.ac, 5.000000e-01
  %i.ae = fsub double 5.000000e-01, %i.ad
  %i.af = fadd double %i.ae, 5.000000e-01         ; 3 uses
  %i.ag = fcmp ogt double %.0179207, %i.af
  %i.ah = fcmp ogt double %i.af, 0.000000e+00
  %or.cond = and i1 %i.ah, %i.ag
  br i1 %or.cond, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  store double %.0179207, ptr @dlamc2_.leps, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %dpow_ui.exit
  %.lcssa203 = phi double [ %.0179207, %._crit_edge ], [ 1.000000e+00, %dpow_ui.exit ] ; 2 uses
  %i.ai = fcmp olt double %.2.i, %.lcssa203
  br i1 %i.ai, label %bb.f, label %.lr.ph75.preheader.i

bb.f:                                             ; preds = %bb.e
  store double %.2.i, ptr @dlamc2_.leps, align 8, !tbaa !12
  br label %.lr.ph75.preheader.i

.lr.ph75.preheader.i:                             ; preds = %bb.f, %bb.e
  %i.aj = phi double [ %.2.i, %bb.f ], [ %.lcssa203, %bb.e ]
  %i.ak = fdiv double 1.000000e+00, %i.r          ; 36 uses
  %i.al = fadd double %i.ak, 0.000000e+00         ; 2 uses
  %.not61.i = icmp slt i32 %i.s, 1                ; 4 uses
  %exitcond.not.i.1 = icmp eq i32 %i.s, 2
  %exitcond78.not.i.1 = icmp eq i32 %i.s, 2
  br label %.lr.ph75.i

.loopexit.i46:                                    ; preds = %.lr.ph.i45.1, %._crit_edge.thread.i
  %.pn.i = phi double [ %i.ax, %._crit_edge.thread.i ], [ %8, %.lr.ph.i45.1 ]
  %.140.lcssa80.i = phi double [ 0.000000e+00, %._crit_edge.thread.i ], [ %spec.select380, %.lr.ph.i45.1 ]
  %.1.lcssa.i = phi double [ 0.000000e+00, %._crit_edge.thread.i ], [ %.lcssa313, %.lr.ph.i45.1 ]
  %i.am = fdiv double %.pn.i, %i.ak
  %i.an = fcmp oeq double %i.av, %.04373.i
  %i.ao = fcmp oeq double %i.am, %.04373.i
  %or.cond.i = select i1 %i.an, i1 %i.ao, i1 false
  %i.ap = fcmp oeq double %.140.lcssa80.i, %.04373.i
  %or.cond48.i = select i1 %or.cond.i, i1 %i.ap, i1 false
  %i.aq = fcmp oeq double %.1.lcssa.i, %.04373.i
  %or.cond49.i = select i1 %or.cond48.i, i1 %i.aq, i1 false
  br i1 %or.cond49.i, label %.lr.ph75.i, label %.lr.ph75.preheader.i47

.lr.ph75.i:                                       ; preds = %.loopexit.i46, %.lr.ph75.preheader.i
  %i.ar = phi i32 [ %i.as, %.loopexit.i46 ], [ 1, %.lr.ph75.preheader.i ] ; 4 uses
  %.04373.i = phi double [ %i.au, %.loopexit.i46 ], [ %i.al, %.lr.ph75.preheader.i ] ; 7 uses
  %i.as = add nsw i32 %i.ar, -1                   ; 9 uses
  %i.at = fdiv double %.04373.i, %i.r
  %i.au = fadd double %i.at, 0.000000e+00         ; 5 uses
  %i.av = fmul double %i.au, %i.r
  br i1 %.not61.i, label %._crit_edge.thread.i, label %.lr.ph.i45.1

._crit_edge.thread.i:                             ; preds = %.lr.ph75.i
  %i.aw = fmul double %i.ak, %.04373.i
  %i.ax = fadd double %i.aw, 0.000000e+00
  br label %.loopexit.i46

.lr.ph.i45.1:                                     ; preds = %.lr.ph75.i
  %i.ay = fadd double %i.au, %i.au                ; 2 uses
  %i.az = fadd double %i.au, %i.ay
  %spec.select380 = select i1 %exitcond.not.i.1, double %i.ay, double %i.az
  %i.ba = fmul double %i.ak, %.04373.i
  %8 = fadd double %i.ba, 0.000000e+00            ; 4 uses
  %9 = fadd double %8, %8                         ; 2 uses
  %i.bb = fadd double %8, %9
  %.lcssa313 = select i1 %exitcond78.not.i.1, double %9, double %i.bb
  br label %.loopexit.i46

.lr.ph75.preheader.i47:                           ; preds = %.loopexit.i46
  %i.bc = fsub double 0.000000e+00, %i.ak
  %exitcond.not.i54.1 = icmp eq i32 %i.s, 2
  %exitcond78.not.i59.1 = icmp eq i32 %i.s, 2
  br label %.lr.ph75.i48

.loopexit.i60:                                    ; preds = %.lr.ph.i51.1, %._crit_edge.thread.i67
  %.pn.i61 = phi double [ %i.bo, %._crit_edge.thread.i67 ], [ %10, %.lr.ph.i51.1 ]
  %.140.lcssa80.i62 = phi double [ 0.000000e+00, %._crit_edge.thread.i67 ], [ %spec.select381, %.lr.ph.i51.1 ]
  %.1.lcssa.i63 = phi double [ 0.000000e+00, %._crit_edge.thread.i67 ], [ %.lcssa309, %.lr.ph.i51.1 ]
  %i.bd = fdiv double %.pn.i61, %i.ak
  %i.be = fcmp oeq double %i.bm, %.04373.i49
  %i.bf = fcmp oeq double %i.bd, %.04373.i49
  %or.cond.i64 = select i1 %i.be, i1 %i.bf, i1 false
  %i.bg = fcmp oeq double %.140.lcssa80.i62, %.04373.i49
  %or.cond48.i65 = select i1 %or.cond.i64, i1 %i.bg, i1 false
  %i.bh = fcmp oeq double %.1.lcssa.i63, %.04373.i49
  %or.cond49.i66 = select i1 %or.cond48.i65, i1 %i.bh, i1 false
  br i1 %or.cond49.i66, label %.lr.ph75.i48, label %dlamc4_.exit68

.lr.ph75.i48:                                     ; preds = %.loopexit.i60, %.lr.ph75.preheader.i47
  %i.bi = phi i32 [ %i.bj, %.loopexit.i60 ], [ 1, %.lr.ph75.preheader.i47 ] ; 3 uses
  %.04373.i49 = phi double [ %i.bl, %.loopexit.i60 ], [ %i.bc, %.lr.ph75.preheader.i47 ] ; 7 uses
  %i.bj = add nsw i32 %i.bi, -1                   ; 6 uses
  %i.bk = fdiv double %.04373.i49, %i.r
  %i.bl = fadd double %i.bk, 0.000000e+00         ; 5 uses
  %i.bm = fmul double %i.bl, %i.r
  br i1 %.not61.i, label %._crit_edge.thread.i67, label %.lr.ph.i51.1

._crit_edge.thread.i67:                           ; preds = %.lr.ph75.i48
  %i.bn = fmul double %i.ak, %.04373.i49
  %i.bo = fadd double %i.bn, 0.000000e+00
  br label %.loopexit.i60

.lr.ph.i51.1:                                     ; preds = %.lr.ph75.i48
  %i.bp = fadd double %i.bl, %i.bl                ; 2 uses
  %i.bq = fadd double %i.bl, %i.bp
  %spec.select381 = select i1 %exitcond.not.i54.1, double %i.bp, double %i.bq
  %i.br = fmul double %i.ak, %.04373.i49
  %10 = fadd double %i.br, 0.000000e+00           ; 4 uses
  %11 = fadd double %10, %10                      ; 2 uses
  %i.bs = fadd double %10, %11
  %.lcssa309 = select i1 %exitcond78.not.i59.1, double %11, double %i.bs
  br label %.loopexit.i60

dlamc4_.exit68:                                   ; preds = %.loopexit.i60
  %i.bt = fmul double %i.ak, %i.al
  %i.bu = fadd double %i.bt, 0.000000e+00
  %i.bv = fmul double %i.ak, %i.bu
  %i.bw = fadd double %i.bv, 0.000000e+00
  %i.bx = fadd double %i.bw, 1.000000e+00         ; 3 uses
  %i.by = fcmp ord double %i.bx, 0.000000e+00
  br i1 %i.by, label %.lr.ph75.preheader.i69, label %dlamc4_.exit112

.lr.ph75.preheader.i69:                           ; preds = %dlamc4_.exit68
  %i.bz = fmul double %i.ak, %i.bx
  %i.ca = fadd double %i.bz, 0.000000e+00
  %exitcond.not.i76.1 = icmp eq i32 %i.s, 2
  %exitcond78.not.i81.1 = icmp eq i32 %i.s, 2
  br label %.lr.ph75.i70

.loopexit.i82:                                    ; preds = %.lr.ph.i73.1, %._crit_edge.thread.i89
  %.pn.i83 = phi double [ %i.cm, %._crit_edge.thread.i89 ], [ %12, %.lr.ph.i73.1 ]
  %.140.lcssa80.i84 = phi double [ 0.000000e+00, %._crit_edge.thread.i89 ], [ %spec.select382, %.lr.ph.i73.1 ]
  %.1.lcssa.i85 = phi double [ 0.000000e+00, %._crit_edge.thread.i89 ], [ %.lcssa306, %.lr.ph.i73.1 ]
  %i.cb = fdiv double %.pn.i83, %i.ak
  %i.cc = fcmp oeq double %i.ck, %.04373.i71
  %i.cd = fcmp oeq double %i.cb, %.04373.i71
  %or.cond.i86 = select i1 %i.cc, i1 %i.cd, i1 false
  %i.ce = fcmp oeq double %.140.lcssa80.i84, %.04373.i71
  %or.cond48.i87 = select i1 %or.cond.i86, i1 %i.ce, i1 false
  %i.cf = fcmp oeq double %.1.lcssa.i85, %.04373.i71
  %or.cond49.i88 = select i1 %or.cond48.i87, i1 %i.cf, i1 false
  br i1 %or.cond49.i88, label %.lr.ph75.i70, label %.lr.ph75.preheader.i91

.lr.ph75.i70:                                     ; preds = %.loopexit.i82, %.lr.ph75.preheader.i69
  %i.cg = phi i32 [ %i.ch, %.loopexit.i82 ], [ 1, %.lr.ph75.preheader.i69 ]
  %.04373.i71 = phi double [ %i.cj, %.loopexit.i82 ], [ %i.ca, %.lr.ph75.preheader.i69 ] ; 7 uses
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  %i.ci = fdiv double %.04373.i71, %i.r
  %i.cj = fadd double %i.ci, 0.000000e+00         ; 5 uses
  %i.ck = fmul double %i.cj, %i.r
  br i1 %.not61.i, label %._crit_edge.thread.i89, label %.lr.ph.i73.1

._crit_edge.thread.i89:                           ; preds = %.lr.ph75.i70
  %i.cl = fmul double %i.ak, %.04373.i71
  %i.cm = fadd double %i.cl, 0.000000e+00
  br label %.loopexit.i82

.lr.ph.i73.1:                                     ; preds = %.lr.ph75.i70
  %i.cn = fadd double %i.cj, %i.cj                ; 2 uses
  %i.co = fadd double %i.cj, %i.cn
  %spec.select382 = select i1 %exitcond.not.i76.1, double %i.cn, double %i.co
  %i.cp = fmul double %i.ak, %.04373.i71
  %12 = fadd double %i.cp, 0.000000e+00           ; 4 uses
  %13 = fadd double %12, %12                      ; 2 uses
  %i.cq = fadd double %12, %13
  %.lcssa306 = select i1 %exitcond78.not.i81.1, double %13, double %i.cq
  br label %.loopexit.i82

.lr.ph75.preheader.i91:                           ; preds = %.loopexit.i82
  %i.cr = fmul double %i.ak, %i.bx
  %i.cs = fsub double 0.000000e+00, %i.cr
  %exitcond.not.i98.1 = icmp eq i32 %i.s, 2
  %exitcond78.not.i103.1 = icmp eq i32 %i.s, 2
  br label %.lr.ph75.i92

.loopexit.i104:                                   ; preds = %.lr.ph.i95.1, %._crit_edge.thread.i111
  %.pn.i105 = phi double [ %i.de, %._crit_edge.thread.i111 ], [ %14, %.lr.ph.i95.1 ]
  %.140.lcssa80.i106 = phi double [ 0.000000e+00, %._crit_edge.thread.i111 ], [ %spec.select383, %.lr.ph.i95.1 ]
  %.1.lcssa.i107 = phi double [ 0.000000e+00, %._crit_edge.thread.i111 ], [ %.lcssa303, %.lr.ph.i95.1 ]
  %i.ct = fdiv double %.pn.i105, %i.ak
  %i.cu = fcmp oeq double %i.dc, %.04373.i93
  %i.cv = fcmp oeq double %i.ct, %.04373.i93
  %or.cond.i108 = select i1 %i.cu, i1 %i.cv, i1 false
  %i.cw = fcmp oeq double %.140.lcssa80.i106, %.04373.i93
  %or.cond48.i109 = select i1 %or.cond.i108, i1 %i.cw, i1 false
  %i.cx = fcmp oeq double %.1.lcssa.i107, %.04373.i93
  %or.cond49.i110 = select i1 %or.cond48.i109, i1 %i.cx, i1 false
  br i1 %or.cond49.i110, label %.lr.ph75.i92, label %dlamc4_.exit112

.lr.ph75.i92:                                     ; preds = %.loopexit.i104, %.lr.ph75.preheader.i91
  %i.cy = phi i32 [ %i.cz, %.loopexit.i104 ], [ 1, %.lr.ph75.preheader.i91 ]
  %.04373.i93 = phi double [ %i.db, %.loopexit.i104 ], [ %i.cs, %.lr.ph75.preheader.i91 ] ; 7 uses
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  %i.da = fdiv double %.04373.i93, %i.r
  %i.db = fadd double %i.da, 0.000000e+00         ; 5 uses
  %i.dc = fmul double %i.db, %i.r
  br i1 %.not61.i, label %._crit_edge.thread.i111, label %.lr.ph.i95.1

._crit_edge.thread.i111:                          ; preds = %.lr.ph75.i92
  %i.dd = fmul double %i.ak, %.04373.i93
  %i.de = fadd double %i.dd, 0.000000e+00
  br label %.loopexit.i104

.lr.ph.i95.1:                                     ; preds = %.lr.ph75.i92
  %i.df = fadd double %i.db, %i.db                ; 2 uses
  %i.dg = fadd double %i.db, %i.df
  %spec.select383 = select i1 %exitcond.not.i98.1, double %i.df, double %i.dg
  %i.dh = fmul double %i.ak, %.04373.i93
  %14 = fadd double %i.dh, 0.000000e+00           ; 4 uses
  %15 = fadd double %14, %14                      ; 2 uses
  %i.di = fadd double %14, %15
  %.lcssa303 = select i1 %exitcond78.not.i103.1, double %15, double %i.di
  br label %.loopexit.i104

dlamc4_.exit112:                                  ; preds = %.loopexit.i104, %dlamc4_.exit68
  %.0176260 = phi i32 [ 1, %dlamc4_.exit68 ], [ %i.ch, %.loopexit.i104 ] ; 6 uses
  %.0178 = phi i32 [ 1, %dlamc4_.exit68 ], [ %i.cz, %.loopexit.i104 ] ; 3 uses
  %i.dj = icmp eq i32 %i.ar, %i.bi
  %i.dk = icmp eq i32 %.0176260, %.0178           ; 2 uses
  %or.cond182 = select i1 %i.dj, i1 %i.dk, i1 false
  %i.dl = icmp eq i32 %i.as, %.0176260            ; 2 uses
  br i1 %or.cond182, label %bb.g, label %bb.k

bb.g:                                             ; preds = %dlamc4_.exit112
  br i1 %i.dl, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dm = sub nsw i32 %.0176260, %i.as
  %i.dn = icmp eq i32 %i.dm, 3
  br i1 %i.dn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.do = add i32 %i.t, -2
  %i.dp = add i32 %i.do, %i.ar
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.dq = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %.0176260)
  br label %bb.s

bb.k:                                             ; preds = %dlamc4_.exit112
  %i.dr = icmp eq i32 %i.bj, %.0178
  %or.cond183 = select i1 %i.dl, i1 %i.dr, i1 false
  %i.ds = sub nsw i32 %i.ar, %i.bi
  %i.dt = tail call i32 @llvm.abs.i32(i32 %i.ds, i1 true)
  %i.du = icmp eq i32 %i.dt, 1                    ; 2 uses
  br i1 %or.cond183, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %i.du, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dv = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.bj)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.dw = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.bj)
  br label %bb.s

bb.o:                                             ; preds = %bb.k
  %or.cond184 = select i1 %i.du, i1 %i.dk, i1 false
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.bj) ; 3 uses
  br i1 %or.cond184, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dy = sub nsw i32 %.0176260, %i.dx
  %i.dz = icmp eq i32 %i.dy, 3
  br i1 %i.dz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ea = tail call i32 @llvm.smax.i32(i32 %i.as, i32 %i.bj)
  %i.eb = add i32 %i.t, -1
  %i.ec = add i32 %i.eb, %i.ea
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ed = tail call i32 @llvm.smin.i32(i32 %i.dx, i32 %.0176260)
  %i.ee = tail call i32 @llvm.smin.i32(i32 %i.ed, i32 %.0178)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.g, %bb.n, %bb.m, %bb.q, %bb.r, %bb.j, %bb.i
  %.sink = phi i32 [ %i.dw, %bb.n ], [ %i.dv, %bb.m ], [ %i.ec, %bb.q ], [ %i.as, %bb.g ], [ %i.ee, %bb.r ], [ %i.dp, %bb.i ], [ %i.dq, %bb.j ], [ %i.dx, %bb.p ] ; 7 uses
  %i.ef = phi i1 [ %i.u, %bb.n ], [ %i.u, %bb.m ], [ %i.u, %bb.q ], [ %i.u, %bb.g ], [ %i.u, %bb.r ], [ true, %bb.i ], [ %i.u, %bb.j ], [ %i.u, %bb.p ] ; 2 uses
  store i32 %.sink, ptr @dlamc2_.lemin, align 4, !tbaa !10
  store i1 true, ptr @dlamc2_.first, align 4
  store double 1.000000e+00, ptr @dlamc2_.lrmin, align 8, !tbaa !12
  %.not210 = icmp sgt i32 %.sink, 0
  br i1 %.not210, label %bb.t, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %bb.s
  %i.eg = sub i32 1, %.sink                       ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 1) ; 2 uses
  %xtraiter339 = and i32 %smax, 7                 ; 3 uses
  %i.eh = icmp slt i32 %i.eg, 8
  br i1 %i.eh, label %.lr.ph213.epil.preheader, label %.lr.ph213.preheader.new

.lr.ph213.preheader.new:                          ; preds = %.lr.ph213.preheader
  %unroll_iter344 = and i32 %smax, 2147483640
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213, %.lr.ph213.preheader.new
  %i.ei = phi double [ 1.000000e+00, %.lr.ph213.preheader.new ], [ %i.ey, %.lr.ph213 ]
  %niter345 = phi i32 [ 0, %.lr.ph213.preheader.new ], [ %niter345.next.7, %.lr.ph213 ]
  %i.ej = fmul double %i.ak, %i.ei
  %i.ek = fadd double %i.ej, 0.000000e+00
  %i.el = fmul double %i.ak, %i.ek
  %i.em = fadd double %i.el, 0.000000e+00
  %i.en = fmul double %i.ak, %i.em
  %i.eo = fadd double %i.en, 0.000000e+00
  %i.ep = fmul double %i.ak, %i.eo
  %i.eq = fadd double %i.ep, 0.000000e+00
  %i.er = fmul double %i.ak, %i.eq
  %i.es = fadd double %i.er, 0.000000e+00
  %i.et = fmul double %i.ak, %i.es
  %i.eu = fadd double %i.et, 0.000000e+00
  %i.ev = fmul double %i.ak, %i.eu
  %i.ew = fadd double %i.ev, 0.000000e+00
  %i.ex = fmul double %i.ak, %i.ew
  %i.ey = fadd double %i.ex, 0.000000e+00         ; 3 uses
  %niter345.next.7 = add i32 %niter345, 8         ; 2 uses
  %niter345.ncmp.7 = icmp eq i32 %niter345.next.7, %unroll_iter344
  br i1 %niter345.ncmp.7, label %._crit_edge214.unr-lcssa, label %.lr.ph213, !llvm.loop !15

._crit_edge214.unr-lcssa:                         ; preds = %.lr.ph213
  %lcmp.mod341.not = icmp eq i32 %xtraiter339, 0
  br i1 %lcmp.mod341.not, label %._crit_edge214, label %.lr.ph213.epil.preheader

.lr.ph213.epil.preheader:                         ; preds = %._crit_edge214.unr-lcssa, %.lr.ph213.preheader
  %.epil.init = phi double [ 1.000000e+00, %.lr.ph213.preheader ], [ %i.ey, %._crit_edge214.unr-lcssa ]
  %lcmp.mod343 = icmp ne i32 %xtraiter339, 0
  tail call void @llvm.assume(i1 %lcmp.mod343)
  br label %.lr.ph213.epil

.lr.ph213.epil:                                   ; preds = %.lr.ph213.epil, %.lr.ph213.epil.preheader
  %i.ez = phi double [ %i.fb, %.lr.ph213.epil ], [ %.epil.init, %.lr.ph213.epil.preheader ]
  %epil.iter340 = phi i32 [ %epil.iter340.next, %.lr.ph213.epil ], [ 0, %.lr.ph213.epil.preheader ]
  %i.fa = fmul double %i.ak, %i.ez
  %i.fb = fadd double %i.fa, 0.000000e+00         ; 2 uses
  %epil.iter340.next = add i32 %epil.iter340, 1   ; 2 uses
  %epil.iter340.cmp.not = icmp eq i32 %epil.iter340.next, %xtraiter339
  br i1 %epil.iter340.cmp.not, label %._crit_edge214, label %.lr.ph213.epil, !llvm.loop !16

._crit_edge214:                                   ; preds = %.lr.ph213.epil, %._crit_edge214.unr-lcssa
  %.lcssa301 = phi double [ %i.ey, %._crit_edge214.unr-lcssa ], [ %i.fb, %.lr.ph213.epil ] ; 2 uses
  store double %.lcssa301, ptr @dlamc2_.lrmin, align 8, !tbaa !12
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge214, %bb.s
  %i.fc = phi double [ %.lcssa301, %._crit_edge214 ], [ 1.000000e+00, %bb.s ]
  %i.fd = sub nsw i32 0, %.sink                   ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.045.i = phi i32 [ 1, %bb.t ], [ %i.fe, %bb.u ] ; 4 uses
  %.039.i = phi i32 [ 1, %bb.t ], [ %i.ff, %bb.u ]
  %i.fe = shl i32 %.045.i, 1                      ; 4 uses
  %.not.i113 = icmp sgt i32 %i.fe, %i.fd
  %i.ff = add nuw i32 %.039.i, 1                  ; 2 uses
  br i1 %.not.i113, label %bb.v, label %bb.u

bb.v:                                             ; preds = %bb.u
  %i.fg = icmp ne i32 %.045.i, %i.fd              ; 2 uses
  %.042.i = select i1 %i.fg, i32 %i.fe, i32 %.045.i ; 2 uses
  %i.fh = zext i1 %i.fg to i32
  %i.fi = add nsw i32 %.042.i, %.sink
  %i.fj = add i32 %.sink, %.045.i
  %i.fk = sub i32 0, %i.fj
  %i.fl = icmp sgt i32 %i.fi, %i.fk
  %i.fm = shl i32 %.042.i, 1
  %.0.i = select i1 %i.fl, i32 %i.fe, i32 %i.fm
  %i.fn = add nsw i32 %.0.i, %.sink               ; 2 uses
  %i.fo = add nsw i32 %i.fn, -1                   ; 2 uses
  %i.fp = add i32 %i.t, %i.fh
  %i.fq = add i32 %i.fp, %i.ff
  %i.fr = and i32 %i.fq, -2147483647
  %i.fs = icmp eq i32 %i.fr, 1
  %i.ft = icmp eq i32 %i.s, 2
  %or.cond185 = select i1 %i.fs, i1 %i.ft, i1 false ; 2 uses
  %i.fu = add nsw i32 %i.fn, -2
  %i.fv = select i1 %or.cond185, i32 %i.fu, i32 %i.fo ; 2 uses
  %i.fw = sext i1 %i.ef to i32                    ; 2 uses
  %i.fx = add i32 %i.fv, %i.fw                    ; 4 uses
  %i.fy = or i1 %i.ef, %or.cond185
  %spec.select = select i1 %i.fy, i32 %i.fx, i32 %i.fo
  store i32 %spec.select, ptr @dlamc2_.lemax, align 4, !tbaa !10
  %.not5166.i = icmp slt i32 %i.t, 1
  br i1 %.not5166.i, label %._crit_edge.i117, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.fz = fadd nnan double %i.r, -1.000000e+00    ; 2 uses
  %xtraiter346 = and i32 %i.t, 7                  ; 3 uses
  %i.ga = icmp ult i32 %i.t, 8
  br i1 %i.ga, label %.lr.ph.i114.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter352 = and i32 %i.t, 2147483640
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %.lr.ph.i114, %.lr.ph.preheader.i.new
  %.04369.i = phi double [ undef, %.lr.ph.preheader.i.new ], [ %spec.select.i115.7, %.lr.ph.i114 ]
  %.06068.i = phi double [ %i.fz, %.lr.ph.preheader.i.new ], [ %i.gw, %.lr.ph.i114 ]
  %.06167.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.gy, %.lr.ph.i114 ] ; 3 uses
  %niter353 = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter353.next.7, %.lr.ph.i114 ]
  %i.gb = fmul double %i.ak, %.06068.i            ; 2 uses
  %i.gc = fcmp olt double %.06167.i, 1.000000e+00
  %spec.select.i115 = select i1 %i.gc, double %.06167.i, double %.04369.i
  %i.gd = fadd double %.06167.i, %i.gb            ; 3 uses
  %i.ge = fmul double %i.ak, %i.gb                ; 2 uses
  %i.gf = fcmp olt double %i.gd, 1.000000e+00
  %spec.select.i115.1 = select i1 %i.gf, double %i.gd, double %spec.select.i115
  %i.gg = fadd double %i.gd, %i.ge                ; 3 uses
  %i.gh = fmul double %i.ak, %i.ge                ; 2 uses
  %i.gi = fcmp olt double %i.gg, 1.000000e+00
  %spec.select.i115.2 = select i1 %i.gi, double %i.gg, double %spec.select.i115.1
  %i.gj = fadd double %i.gg, %i.gh                ; 3 uses
  %i.gk = fmul double %i.ak, %i.gh                ; 2 uses
  %i.gl = fcmp olt double %i.gj, 1.000000e+00
  %spec.select.i115.3 = select i1 %i.gl, double %i.gj, double %spec.select.i115.2
  %i.gm = fadd double %i.gj, %i.gk                ; 3 uses
  %i.gn = fmul double %i.ak, %i.gk                ; 2 uses
  %i.go = fcmp olt double %i.gm, 1.000000e+00
  %spec.select.i115.4 = select i1 %i.go, double %i.gm, double %spec.select.i115.3
  %i.gp = fadd double %i.gm, %i.gn                ; 3 uses
  %i.gq = fmul double %i.ak, %i.gn                ; 2 uses
  %i.gr = fcmp olt double %i.gp, 1.000000e+00
  %spec.select.i115.5 = select i1 %i.gr, double %i.gp, double %spec.select.i115.4
  %i.gs = fadd double %i.gp, %i.gq                ; 3 uses
  %i.gt = fmul double %i.ak, %i.gq                ; 2 uses
  %i.gu = fcmp olt double %i.gs, 1.000000e+00
  %spec.select.i115.6 = select i1 %i.gu, double %i.gs, double %spec.select.i115.5
  %i.gv = fadd double %i.gs, %i.gt                ; 3 uses
  %i.gw = fmul double %i.ak, %i.gt                ; 3 uses
  %i.gx = fcmp olt double %i.gv, 1.000000e+00
  %spec.select.i115.7 = select i1 %i.gx, double %i.gv, double %spec.select.i115.6 ; 3 uses
  %i.gy = fadd double %i.gv, %i.gw                ; 3 uses
  %niter353.next.7 = add nuw nsw i32 %niter353, 8 ; 2 uses
  %niter353.ncmp.7 = icmp eq i32 %niter353.next.7, %unroll_iter352
  br i1 %niter353.ncmp.7, label %._crit_edge.i117.loopexit.unr-lcssa, label %.lr.ph.i114, !llvm.loop !0

._crit_edge.i117.loopexit.unr-lcssa:              ; preds = %.lr.ph.i114
  %lcmp.mod348.not = icmp eq i32 %xtraiter346, 0
  br i1 %lcmp.mod348.not, label %._crit_edge.i117, label %.lr.ph.i114.epil.preheader

.lr.ph.i114.epil.preheader:                       ; preds = %._crit_edge.i117.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.04369.i.epil.init = phi double [ undef, %.lr.ph.preheader.i ], [ %spec.select.i115.7, %._crit_edge.i117.loopexit.unr-lcssa ]
  %.06068.i.epil.init = phi double [ %i.fz, %.lr.ph.preheader.i ], [ %i.gw, %._crit_edge.i117.loopexit.unr-lcssa ]
  %.06167.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.gy, %._crit_edge.i117.loopexit.unr-lcssa ]
  %lcmp.mod351 = icmp ne i32 %xtraiter346, 0
  tail call void @llvm.assume(i1 %lcmp.mod351)
  br label %.lr.ph.i114.epil

.lr.ph.i114.epil:                                 ; preds = %.lr.ph.i114.epil, %.lr.ph.i114.epil.preheader
  %.04369.i.epil = phi double [ %spec.select.i115.epil, %.lr.ph.i114.epil ], [ %.04369.i.epil.init, %.lr.ph.i114.epil.preheader ]
  %.06068.i.epil = phi double [ %i.gz, %.lr.ph.i114.epil ], [ %.06068.i.epil.init, %.lr.ph.i114.epil.preheader ]
  %.06167.i.epil = phi double [ %i.hb, %.lr.ph.i114.epil ], [ %.06167.i.epil.init, %.lr.ph.i114.epil.preheader ] ; 3 uses
  %epil.iter347 = phi i32 [ %epil.iter347.next, %.lr.ph.i114.epil ], [ 0, %.lr.ph.i114.epil.preheader ]
  %i.gz = fmul double %i.ak, %.06068.i.epil       ; 2 uses
  %i.ha = fcmp olt double %.06167.i.epil, 1.000000e+00
  %spec.select.i115.epil = select i1 %i.ha, double %.06167.i.epil, double %.04369.i.epil ; 2 uses
  %i.hb = fadd double %.06167.i.epil, %i.gz       ; 2 uses
  %epil.iter347.next = add i32 %epil.iter347, 1   ; 2 uses
  %epil.iter347.cmp.not = icmp eq i32 %epil.iter347.next, %xtraiter346
  br i1 %epil.iter347.cmp.not, label %._crit_edge.i117, label %.lr.ph.i114.epil, !llvm.loop !17

._crit_edge.i117:                                 ; preds = %._crit_edge.i117.loopexit.unr-lcssa, %.lr.ph.i114.epil, %bb.v
  %.061.lcssa.i = phi double [ 0.000000e+00, %bb.v ], [ %i.gy, %._crit_edge.i117.loopexit.unr-lcssa ], [ %i.hb, %.lr.ph.i114.epil ] ; 2 uses
  %.043.lcssa.i = phi double [ undef, %bb.v ], [ %spec.select.i115.7, %._crit_edge.i117.loopexit.unr-lcssa ], [ %spec.select.i115.epil, %.lr.ph.i114.epil ]
  %i.hc = fcmp ult double %.061.lcssa.i, 1.000000e+00
  %spec.select63.i = select i1 %i.hc, double %.061.lcssa.i, double %.043.lcssa.i ; 3 uses
  %.not5272.i = icmp slt i32 %i.fx, 1
  br i1 %.not5272.i, label %dlamc5_.exit, label %.lr.ph76.i.preheader

.lr.ph76.i.preheader:                             ; preds = %._crit_edge.i117
  %i.hd = add i32 %i.fv, %i.fw
  %i.he = add i32 %i.hd, -1
  %xtraiter354 = and i32 %i.fx, 7                 ; 3 uses
  %i.hf = icmp ult i32 %i.he, 7
  br i1 %i.hf, label %.lr.ph76.i.epil.preheader, label %.lr.ph76.i.preheader.new

.lr.ph76.i.preheader.new:                         ; preds = %.lr.ph76.i.preheader
  %unroll_iter359 = and i32 %i.fx, 2147483640
  br label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.lr.ph76.i, %.lr.ph76.i.preheader.new
  %.273.i = phi double [ %spec.select63.i, %.lr.ph76.i.preheader.new ], [ %i.hv, %.lr.ph76.i ]
  %niter360 = phi i32 [ 0, %.lr.ph76.i.preheader.new ], [ %niter360.next.7, %.lr.ph76.i ]
  %i.hg = fmul double %.273.i, %i.r
  %i.hh = fadd double %i.hg, 0.000000e+00
  %i.hi = fmul double %i.hh, %i.r
  %i.hj = fadd double %i.hi, 0.000000e+00
  %i.hk = fmul double %i.hj, %i.r
  %i.hl = fadd double %i.hk, 0.000000e+00
  %i.hm = fmul double %i.hl, %i.r
  %i.hn = fadd double %i.hm, 0.000000e+00
  %i.ho = fmul double %i.hn, %i.r
  %i.hp = fadd double %i.ho, 0.000000e+00
  %i.hq = fmul double %i.hp, %i.r
  %i.hr = fadd double %i.hq, 0.000000e+00
  %i.hs = fmul double %i.hr, %i.r
  %i.ht = fadd double %i.hs, 0.000000e+00
  %i.hu = fmul double %i.ht, %i.r
  %i.hv = fadd double %i.hu, 0.000000e+00         ; 3 uses
  %niter360.next.7 = add i32 %niter360, 8         ; 2 uses
  %niter360.ncmp.7 = icmp eq i32 %niter360.next.7, %unroll_iter359
  br i1 %niter360.ncmp.7, label %dlamc5_.exit.loopexit.unr-lcssa, label %.lr.ph76.i, !llvm.loop !1

dlamc5_.exit.loopexit.unr-lcssa:                  ; preds = %.lr.ph76.i
  %lcmp.mod356.not = icmp eq i32 %xtraiter354, 0
  br i1 %lcmp.mod356.not, label %dlamc5_.exit, label %.lr.ph76.i.epil.preheader

.lr.ph76.i.epil.preheader:                        ; preds = %dlamc5_.exit.loopexit.unr-lcssa, %.lr.ph76.i.preheader
  %.273.i.epil.init = phi double [ %spec.select63.i, %.lr.ph76.i.preheader ], [ %i.hv, %dlamc5_.exit.loopexit.unr-lcssa ]
  %lcmp.mod358 = icmp ne i32 %xtraiter354, 0
  tail call void @llvm.assume(i1 %lcmp.mod358)
  br label %.lr.ph76.i.epil

.lr.ph76.i.epil:                                  ; preds = %.lr.ph76.i.epil, %.lr.ph76.i.epil.preheader
  %.273.i.epil = phi double [ %i.hx, %.lr.ph76.i.epil ], [ %.273.i.epil.init, %.lr.ph76.i.epil.preheader ]
  %epil.iter355 = phi i32 [ %epil.iter355.next, %.lr.ph76.i.epil ], [ 0, %.lr.ph76.i.epil.preheader ]
  %i.hw = fmul double %.273.i.epil, %i.r
  %i.hx = fadd double %i.hw, 0.000000e+00         ; 2 uses
  %epil.iter355.next = add i32 %epil.iter355, 1   ; 2 uses
  %epil.iter355.cmp.not = icmp eq i32 %epil.iter355.next, %xtraiter354
  br i1 %epil.iter355.cmp.not, label %dlamc5_.exit, label %.lr.ph76.i.epil, !llvm.loop !18

dlamc5_.exit:                                     ; preds = %dlamc5_.exit.loopexit.unr-lcssa, %.lr.ph76.i.epil, %._crit_edge.i117
  %.2.lcssa.i = phi double [ %spec.select63.i, %._crit_edge.i117 ], [ %i.hv, %dlamc5_.exit.loopexit.unr-lcssa ], [ %i.hx, %.lr.ph76.i.epil ]
  store double %.2.lcssa.i, ptr @dlamc2_.lrmax, align 8, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge236, %dlamc5_.exit
  %i.hy = phi double [ %.pre238, %._crit_edge236 ], [ %i.fc, %dlamc5_.exit ]
  %i.hz = phi double [ %.pre237, %._crit_edge236 ], [ %i.aj, %dlamc5_.exit ]
  %i.ia = phi i32 [ %.pre, %._crit_edge236 ], [ %i.s, %dlamc5_.exit ]
  %.0180 = phi i32 [ undef, %._crit_edge236 ], [ %.b7.i254, %dlamc5_.exit ]
  store i32 %i.ia, ptr %0, align 4, !tbaa !10
  %i.ib = load i32, ptr @dlamc2_.lt, align 4, !tbaa !10
  store i32 %i.ib, ptr %1, align 4, !tbaa !10
  store i32 %.0180, ptr %2, align 4, !tbaa !10
  store double %i.hz, ptr %3, align 8, !tbaa !12
  %i.ic = load i32, ptr @dlamc2_.lemin, align 4, !tbaa !10
  store i32 %i.ic, ptr %4, align 4, !tbaa !10
  store double %i.hy, ptr %5, align 8, !tbaa !12
  %i.id = load i32, ptr @dlamc2_.lemax, align 4, !tbaa !10
  store i32 %i.id, ptr %6, align 4, !tbaa !10
  %i.ie = load double, ptr @dlamc2_.lrmax, align 8, !tbaa !12
  store double %i.ie, ptr %7, align 8, !tbaa !12
  ret i32 0
}

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @dlamc1_(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @dlamc1_.first, align 4
  br i1 %.b, label %._crit_edge64, label %._crit_edge

._crit_edge64:                                    ; preds = %bb.a
  %.pre.b = load i1, ptr @dlamc1_.lbeta, align 4
  %.pre = select i1 %.pre.b, i32 2, i32 0
  %.pre65 = load i32, ptr @dlamc1_.lt, align 4, !tbaa !10
  %.b7.pre = load i1, ptr @dlamc1_.lrnd, align 4
  %.pre67.b = load i1, ptr @dlamc1_.lieee1, align 4
  %.pre67 = zext i1 %.pre67.b to i32
  %i.a = zext i1 %.b7.pre to i32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.a
  store i1 true, ptr @dlamc1_.lbeta, align 4
  store i1 true, ptr @dlamc1_.lrnd, align 4
  store i1 true, ptr @dlamc1_.lieee1, align 4
  store i32 53, ptr @dlamc1_.lt, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge64, %._crit_edge
  %i.b = phi i32 [ %.pre67, %._crit_edge64 ], [ 1, %._crit_edge ]
  %.b7 = phi i32 [ %i.a, %._crit_edge64 ], [ 1, %._crit_edge ]
  %i.c = phi i32 [ %.pre65, %._crit_edge64 ], [ 53, %._crit_edge ]
  %i.d = phi i32 [ %.pre, %._crit_edge64 ], [ 2, %._crit_edge ]
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  store i32 %i.c, ptr %1, align 4, !tbaa !10
  store i32 %.b7, ptr %2, align 4, !tbaa !10
  store i32 %i.b, ptr %3, align 4, !tbaa !10
  store i1 true, ptr @dlamc1_.first, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define double @dlamc3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12
  %i.b = load double, ptr %1, align 8, !tbaa !12
  %i.c = fadd double %i.a, %i.b
  ret double %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @dlamc4_(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !12  ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !10
  %i.c = sitofp i32 %i.b to double
  %i.d = fdiv double 1.000000e+00, %i.c           ; 4 uses
  store i32 1, ptr %0, align 4, !tbaa !10
  %i.e = fcmp ord double %i.a, 0.000000e+00
  br i1 %i.e, label %.lr.ph75.preheader, label %._crit_edge76

.lr.ph75.preheader:                               ; preds = %bb.a
  %i.f = fmul double %i.a, %i.d
  %i.g = fadd double %i.f, 0.000000e+00
  br label %.lr.ph75

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph68
  %lcmp.mod88.not = icmp eq i32 %xtraiter86, 0
  br i1 %lcmp.mod88.not, label %.loopexit, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.166.epil.init = phi double [ 0.000000e+00, %.lr.ph68.preheader ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i32 %xtraiter86, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph68.epil

.lr.ph68.epil:                                    ; preds = %.lr.ph68.epil, %.lr.ph68.epil.preheader
  %.166.epil = phi double [ %i.h, %.lr.ph68.epil ], [ %.166.epil.init, %.lr.ph68.epil.preheader ]
  %epil.iter87 = phi i32 [ %epil.iter87.next, %.lr.ph68.epil ], [ 0, %.lr.ph68.epil.preheader ]
  %i.h = fadd double %i.ah, %.166.epil            ; 2 uses
  %epil.iter87.next = add i32 %epil.iter87, 1     ; 2 uses
  %epil.iter87.cmp.not = icmp eq i32 %epil.iter87.next, %xtraiter86
  br i1 %epil.iter87.cmp.not, label %.loopexit, label %.lr.ph68.epil, !llvm.loop !19

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph68.epil, %._crit_edge.thread
  %.pn = phi double [ %i.w, %._crit_edge.thread ], [ %i.ah, %.lr.ph68.epil ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ]
  %.140.lcssa80 = phi double [ 0.000000e+00, %._crit_edge.thread ], [ %.lcssa, %.lr.ph68.epil ], [ %.lcssa, %.loopexit.loopexit.unr-lcssa ]
  %.1.lcssa = phi double [ 0.000000e+00, %._crit_edge.thread ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ], [ %i.h, %.lr.ph68.epil ]
  %i.i = fdiv double %.pn, %i.d
  %i.j = fcmp oeq double %i.t, %.04373
  %i.k = fcmp oeq double %i.i, %.04373
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  %i.l = fcmp oeq double %.140.lcssa80, %.04373
  %or.cond48 = select i1 %or.cond, i1 %i.l, i1 false
  %i.m = fcmp oeq double %.1.lcssa, %.04373
  %or.cond49 = select i1 %or.cond48, i1 %i.m, i1 false
  br i1 %or.cond49, label %.lr.ph75, label %._crit_edge76

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %.loopexit
  %i.n = phi i32 [ %i.o, %.loopexit ], [ 1, %.lr.ph75.preheader ]
  %.04373 = phi double [ %i.s, %.loopexit ], [ %i.g, %.lr.ph75.preheader ] ; 7 uses
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %0, align 4, !tbaa !10
  %i.p = load i32, ptr %2, align 4, !tbaa !10     ; 8 uses
  %i.q = sitofp i32 %i.p to double                ; 2 uses
  %i.r = fdiv double %.04373, %i.q
  %i.s = fadd double %i.r, 0.000000e+00           ; 11 uses
  %i.t = fmul double %i.s, %i.q
  %.not61 = icmp slt i32 %i.p, 1
  br i1 %.not61, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph75
  %xtraiter = and i32 %i.p, 7                     ; 3 uses
  %i.u = icmp ult i32 %i.p, 8
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.p, 2147483640
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph75
  %i.v = fmul double %i.d, %.04373
  %i.w = fadd double %i.v, 0.000000e+00
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.14063 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.x = fadd double %i.s, %.14063
  %i.y = fadd double %i.s, %i.x
  %i.z = fadd double %i.s, %i.y
  %i.aa = fadd double %i.s, %i.z
  %i.ab = fadd double %i.s, %i.aa
  %i.ac = fadd double %i.s, %i.ab
  %i.ad = fadd double %i.s, %i.ac
  %i.ae = fadd double %i.s, %i.ad                 ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph68.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !20

.lr.ph68.preheader.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph68.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph68.preheader.unr-lcssa, %.lr.ph.preheader
  %.14063.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ae, %.lr.ph68.preheader.unr-lcssa ]
  %lcmp.mod85 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.14063.epil = phi double [ %i.af, %.lr.ph.epil ], [ %.14063.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.af = fadd double %i.s, %.14063.epil          ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph68.preheader, label %.lr.ph.epil, !llvm.loop !21

.lr.ph68.preheader:                               ; preds = %.lr.ph.epil, %.lr.ph68.preheader.unr-lcssa
  %.lcssa = phi double [ %i.ae, %.lr.ph68.preheader.unr-lcssa ], [ %i.af, %.lr.ph.epil ] ; 2 uses
  %i.ag = fmul double %i.d, %.04373
  %i.ah = fadd double %i.ag, 0.000000e+00         ; 11 uses
  %xtraiter86 = and i32 %i.p, 7                   ; 3 uses
  %i.ai = icmp ult i32 %i.p, 8
  br i1 %i.ai, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter91 = and i32 %i.p, 2147483640
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %.166 = phi double [ 0.000000e+00, %.lr.ph68.preheader.new ], [ %i.aq, %.lr.ph68 ]
  %niter92 = phi i32 [ 0, %.lr.ph68.preheader.new ], [ %niter92.next.7, %.lr.ph68 ]
  %i.aj = fadd double %i.ah, %.166
  %i.ak = fadd double %i.ah, %i.aj
  %i.al = fadd double %i.ah, %i.ak
  %i.am = fadd double %i.ah, %i.al
  %i.an = fadd double %i.ah, %i.am
  %i.ao = fadd double %i.ah, %i.an
  %i.ap = fadd double %i.ah, %i.ao
  %i.aq = fadd double %i.ah, %i.ap                ; 3 uses
  %niter92.next.7 = add nuw nsw i32 %niter92, 8   ; 2 uses
  %niter92.ncmp.7 = icmp eq i32 %niter92.next.7, %unroll_iter91
  br i1 %niter92.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !22

._crit_edge76:                                    ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @dlamc5_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !10     ; 4 uses
  %i.b = sub nsw i32 0, %i.a                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.045 = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]   ; 4 uses
  %.039 = phi i32 [ 1, %bb.a ], [ %i.d, %bb.b ]
  %i.c = shl i32 %.045, 1                         ; 4 uses
  %.not = icmp sgt i32 %i.c, %i.b
  %i.d = add nuw i32 %.039, 1                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i32 %.045, %i.b                  ; 2 uses
  %.042 = select i1 %i.e, i32 %i.c, i32 %.045     ; 2 uses
  %i.f = zext i1 %i.e to i32
  %i.g = add nsw i32 %.042, %i.a
  %i.h = add i32 %.045, %i.a
  %i.i = sub i32 0, %i.h
  %i.j = icmp sgt i32 %i.g, %i.i
  %i.k = shl i32 %.042, 1
  %.0 = select i1 %i.j, i32 %i.c, i32 %i.k
  %i.l = add nsw i32 %.0, %i.a                    ; 2 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  store i32 %i.m, ptr %4, align 4, !tbaa !10
  %i.n = load i32, ptr %1, align 4, !tbaa !10
  %i.o = add i32 %i.d, %i.f
  %i.p = add nsw i32 %i.o, %i.n
  %i.q = and i32 %i.p, -2147483647
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %0, align 4, !tbaa !10
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -2                     ; 2 uses
  store i32 %i.u, ptr %4, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.v = phi i32 [ %i.u, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.w = load i32, ptr %3, align 4, !tbaa !10
  %.not50 = icmp eq i32 %i.w, 0
  br i1 %.not50, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.x, ptr %4, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.x, %bb.g ], [ %i.v, %bb.f ] ; 4 uses
  %i.z = load i32, ptr %0, align 4, !tbaa !10
  %i.aa = sitofp i32 %i.z to double               ; 11 uses
  %i.ab = fdiv nnan double 1.000000e+00, %i.aa    ; 9 uses
  %i.ac = load i32, ptr %1, align 4, !tbaa !10    ; 4 uses
  %.not5166 = icmp slt i32 %i.ac, 1
  br i1 %.not5166, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ad = fadd nnan double %i.aa, -1.000000e+00   ; 2 uses
  %xtraiter = and i32 %i.ac, 7                    ; 3 uses
  %i.ae = icmp ult i32 %i.ac, 8
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ac, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04369 = phi double [ undef, %.lr.ph.preheader.new ], [ %spec.select.7, %.lr.ph ]
  %.06068 = phi double [ %i.ad, %.lr.ph.preheader.new ], [ %i.ba, %.lr.ph ]
  %.06167 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.bc, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.af = fmul double %i.ab, %.06068              ; 2 uses
  %i.ag = fcmp olt double %.06167, 1.000000e+00
  %spec.select = select i1 %i.ag, double %.06167, double %.04369
  %i.ah = fadd double %.06167, %i.af              ; 3 uses
  %i.ai = fmul double %i.ab, %i.af                ; 2 uses
  %i.aj = fcmp olt double %i.ah, 1.000000e+00
  %spec.select.1 = select i1 %i.aj, double %i.ah, double %spec.select
  %i.ak = fadd double %i.ah, %i.ai                ; 3 uses
  %i.al = fmul double %i.ab, %i.ai                ; 2 uses
  %i.am = fcmp olt double %i.ak, 1.000000e+00
  %spec.select.2 = select i1 %i.am, double %i.ak, double %spec.select.1
  %i.an = fadd double %i.ak, %i.al                ; 3 uses
  %i.ao = fmul double %i.ab, %i.al                ; 2 uses
  %i.ap = fcmp olt double %i.an, 1.000000e+00
  %spec.select.3 = select i1 %i.ap, double %i.an, double %spec.select.2
  %i.aq = fadd double %i.an, %i.ao                ; 3 uses
  %i.ar = fmul double %i.ab, %i.ao                ; 2 uses
  %i.as = fcmp olt double %i.aq, 1.000000e+00
  %spec.select.4 = select i1 %i.as, double %i.aq, double %spec.select.3
  %i.at = fadd double %i.aq, %i.ar                ; 3 uses
  %i.au = fmul double %i.ab, %i.ar                ; 2 uses
  %i.av = fcmp olt double %i.at, 1.000000e+00
  %spec.select.5 = select i1 %i.av, double %i.at, double %spec.select.4
  %i.aw = fadd double %i.at, %i.au                ; 3 uses
  %i.ax = fmul double %i.ab, %i.au                ; 2 uses
  %i.ay = fcmp olt double %i.aw, 1.000000e+00
  %spec.select.6 = select i1 %i.ay, double %i.aw, double %spec.select.5
  %i.az = fadd double %i.aw, %i.ax                ; 3 uses
  %i.ba = fmul double %i.ab, %i.ax                ; 3 uses
  %i.bb = fcmp olt double %i.az, 1.000000e+00
  %spec.select.7 = select i1 %i.bb, double %i.az, double %spec.select.6 ; 3 uses
  %i.bc = fadd double %i.az, %i.ba                ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04369.epil.init = phi double [ undef, %.lr.ph.preheader ], [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ]
  %.06068.epil.init = phi double [ %i.ad, %.lr.ph.preheader ], [ %i.ba, %._crit_edge.loopexit.unr-lcssa ]
  %.06167.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod97 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04369.epil = phi double [ %spec.select.epil, %.lr.ph.epil ], [ %.04369.epil.init, %.lr.ph.epil.preheader ]
  %.06068.epil = phi double [ %i.bd, %.lr.ph.epil ], [ %.06068.epil.init, %.lr.ph.epil.preheader ]
  %.06167.epil = phi double [ %i.bf, %.lr.ph.epil ], [ %.06167.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bd = fmul double %i.ab, %.06068.epil         ; 2 uses
  %i.be = fcmp olt double %.06167.epil, 1.000000e+00
  %spec.select.epil = select i1 %i.be, double %.06167.epil, double %.04369.epil ; 2 uses
  %i.bf = fadd double %.06167.epil, %i.bd         ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !23

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.h
  %.061.lcssa = phi double [ 0.000000e+00, %bb.h ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ], [ %i.bf, %.lr.ph.epil ] ; 2 uses
  %.043.lcssa = phi double [ undef, %bb.h ], [ %spec.select.7, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil ]
  %i.bg = fcmp ult double %.061.lcssa, 1.000000e+00
  %spec.select63 = select i1 %i.bg, double %.061.lcssa, double %.043.lcssa ; 3 uses
  %.not5272 = icmp slt i32 %i.y, 1
  br i1 %.not5272, label %._crit_edge77, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %._crit_edge
  %xtraiter98 = and i32 %i.y, 7                   ; 3 uses
  %i.bh = icmp ult i32 %i.y, 8
  br i1 %i.bh, label %.lr.ph76.epil.preheader, label %.lr.ph76.preheader.new

.lr.ph76.preheader.new:                           ; preds = %.lr.ph76.preheader
  %unroll_iter103 = and i32 %i.y, 2147483640
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76, %.lr.ph76.preheader.new
  %.273 = phi double [ %spec.select63, %.lr.ph76.preheader.new ], [ %i.bx, %.lr.ph76 ]
  %niter104 = phi i32 [ 0, %.lr.ph76.preheader.new ], [ %niter104.next.7, %.lr.ph76 ]
  %i.bi = fmul double %.273, %i.aa
  %i.bj = fadd double %i.bi, 0.000000e+00
  %i.bk = fmul double %i.bj, %i.aa
  %i.bl = fadd double %i.bk, 0.000000e+00
  %i.bm = fmul double %i.bl, %i.aa
  %i.bn = fadd double %i.bm, 0.000000e+00
  %i.bo = fmul double %i.bn, %i.aa
  %i.bp = fadd double %i.bo, 0.000000e+00
  %i.bq = fmul double %i.bp, %i.aa
  %i.br = fadd double %i.bq, 0.000000e+00
  %i.bs = fmul double %i.br, %i.aa
  %i.bt = fadd double %i.bs, 0.000000e+00
  %i.bu = fmul double %i.bt, %i.aa
  %i.bv = fadd double %i.bu, 0.000000e+00
  %i.bw = fmul double %i.bv, %i.aa
  %i.bx = fadd double %i.bw, 0.000000e+00         ; 3 uses
  %niter104.next.7 = add nuw nsw i32 %niter104, 8 ; 2 uses
  %niter104.ncmp.7 = icmp eq i32 %niter104.next.7, %unroll_iter103
  br i1 %niter104.ncmp.7, label %._crit_edge77.loopexit.unr-lcssa, label %.lr.ph76, !llvm.loop !1

._crit_edge77.loopexit.unr-lcssa:                 ; preds = %.lr.ph76
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %._crit_edge77, label %.lr.ph76.epil.preheader

.lr.ph76.epil.preheader:                          ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.preheader
  %.273.epil.init = phi double [ %spec.select63, %.lr.ph76.preheader ], [ %i.bx, %._crit_edge77.loopexit.unr-lcssa ]
  %lcmp.mod102 = icmp ne i32 %xtraiter98, 0
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph76.epil

.lr.ph76.epil:                                    ; preds = %.lr.ph76.epil, %.lr.ph76.epil.preheader
  %.273.epil = phi double [ %i.bz, %.lr.ph76.epil ], [ %.273.epil.init, %.lr.ph76.epil.preheader ]
  %epil.iter99 = phi i32 [ %epil.iter99.next, %.lr.ph76.epil ], [ 0, %.lr.ph76.epil.preheader ]
  %i.by = fmul double %.273.epil, %i.aa
  %i.bz = fadd double %i.by, 0.000000e+00         ; 2 uses
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %._crit_edge77, label %.lr.ph76.epil, !llvm.loop !24

._crit_edge77:                                    ; preds = %._crit_edge77.loopexit.unr-lcssa, %.lr.ph76.epil, %._crit_edge
  %.2.lcssa = phi double [ %spec.select63, %._crit_edge ], [ %i.bx, %._crit_edge77.loopexit.unr-lcssa ], [ %i.bz, %.lr.ph76.epil ]
  store double %.2.lcssa, ptr %5, align 8, !tbaa !12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
end_hunk_0
