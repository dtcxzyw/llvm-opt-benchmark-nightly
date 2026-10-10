Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dggsvp3?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dggsvp3_:bb.a
  %i.du = getelementptr i8, ptr %i.dt, i64 16
  %i.dv = sext i32 %i.m to i64
  %i.dw = getelementptr [8 x i8], ptr %i.o, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  call void @dlacpy_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef %i.du, ptr noundef nonnull %9, ptr noundef %i.dx, ptr noundef nonnull %17) #6
  %.pre727 = load i32, ptr %4, align 4, !tbaa !19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dy = phi i32 [ %.pre727, %bb.af ], [ %i.dp, %bb.ae ]
  %i.dz = load i32, ptr %5, align 4, !tbaa !19
  %.570 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.dz)
  store i32 %.570, ptr %i.a, align 4, !tbaa !19
  call void @dorg2r_(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  %.pre728 = load i32, ptr %13, align 4, !tbaa !19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge609
  %i.ea = phi i32 [ %.pre728, %bb.ag ], [ %i.do, %._crit_edge609 ] ; 8 uses
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !19
  %.not546.not614 = icmp sgt i32 %i.ea, 1
  br i1 %.not546.not614, label %.lr.ph617, label %._crit_edge618

.lr.ph617:                                        ; preds = %bb.ah
  store i32 %i.ea, ptr %i.b, align 4, !tbaa !19
  %i.ec = shl nsw i64 %i.h, 3
  %scevgep = getelementptr i8, ptr %8, i64 %i.ec  ; 5 uses
  %i.ed = add i32 %i.g, 2                         ; 5 uses
  %i.ee = add i32 %i.g, 1                         ; 5 uses
  %i.ef = add nsw i32 %i.ea, -2                   ; 5 uses
  %wide.trip.count676 = zext nneg i32 %i.eb to i64 ; 2 uses
  %xtraiter775 = and i64 %wide.trip.count676, 3   ; 3 uses
  %i.eg = add nsw i32 %i.ea, -2
  %i.eh = icmp ult i32 %i.eg, 3
  br i1 %i.eh, label %.loopexit602.epil.preheader, label %.lr.ph617.new

.lr.ph617.new:                                    ; preds = %.lr.ph617
  %unroll_iter779 = and i64 %wide.trip.count676, 2147483644
  br label %.loopexit602

.loopexit602:                                     ; preds = %.loopexit602, %.lr.ph617.new
  %indvars.iv673 = phi i64 [ 0, %.lr.ph617.new ], [ %indvars.iv.next674.3, %.loopexit602 ] ; 6 uses
  %niter780 = phi i64 [ 0, %.lr.ph617.new ], [ %niter780.next.3, %.loopexit602 ]
  %i.ei = trunc i64 %indvars.iv673 to i32
  %i.ej = sub i32 %i.ef, %i.ei
  %i.ek = zext i32 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 3
  %i.em = add nuw nsw i64 %i.el, 8
  %i.en = trunc nuw nsw i64 %indvars.iv673 to i32
  %i.eo = mul i32 %i.ee, %i.en
  %i.ep = add i32 %i.ed, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = shl nsw i64 %i.eq, 3
  %scevgep667 = getelementptr i8, ptr %scevgep, i64 %i.er
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep667, i8 0, i64 %i.em, i1 false), !tbaa !21
  %indvars.iv.next674 = or disjoint i64 %indvars.iv673, 1 ; 2 uses
  %i.es = trunc i64 %indvars.iv.next674 to i32
  %i.et = sub i32 %i.ef, %i.es
  %i.eu = zext i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = add nuw nsw i64 %i.ev, 8
  %i.ex = trunc nuw nsw i64 %indvars.iv.next674 to i32
  %i.ey = mul i32 %i.ee, %i.ex
  %i.ez = add i32 %i.ed, %i.ey
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i64 %i.fa, 3
  %scevgep667.1 = getelementptr i8, ptr %scevgep, i64 %i.fb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep667.1, i8 0, i64 %i.ew, i1 false), !tbaa !21
  %indvars.iv.next674.1 = or disjoint i64 %indvars.iv673, 2 ; 2 uses
  %i.fc = trunc i64 %indvars.iv.next674.1 to i32
  %i.fd = sub i32 %i.ef, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = add nuw nsw i64 %i.ff, 8
  %i.fh = trunc nuw nsw i64 %indvars.iv.next674.1 to i32
  %i.fi = mul i32 %i.ee, %i.fh
  %i.fj = add i32 %i.ed, %i.fi
  %i.fk = sext i32 %i.fj to i64
  %i.fl = shl nsw i64 %i.fk, 3
  %scevgep667.2 = getelementptr i8, ptr %scevgep, i64 %i.fl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep667.2, i8 0, i64 %i.fg, i1 false), !tbaa !21
  %indvars.iv.next674.2 = or disjoint i64 %indvars.iv673, 3 ; 2 uses
  %i.fm = trunc i64 %indvars.iv.next674.2 to i32
  %i.fn = sub i32 %i.ef, %i.fm
  %i.fo = zext i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 3
  %i.fq = add nuw nsw i64 %i.fp, 8
  %i.fr = trunc nuw nsw i64 %indvars.iv.next674.2 to i32
  %i.fs = mul i32 %i.ee, %i.fr
  %i.ft = add i32 %i.ed, %i.fs
  %i.fu = sext i32 %i.ft to i64
  %i.fv = shl nsw i64 %i.fu, 3
  %scevgep667.3 = getelementptr i8, ptr %scevgep, i64 %i.fv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep667.3, i8 0, i64 %i.fq, i1 false), !tbaa !21
  %indvars.iv.next674.3 = add nuw nsw i64 %indvars.iv673, 4 ; 2 uses
  %niter780.next.3 = add i64 %niter780, 4         ; 2 uses
  %niter780.ncmp.3 = icmp eq i64 %niter780.next.3, %unroll_iter779
  br i1 %niter780.ncmp.3, label %._crit_edge618.loopexit.unr-lcssa, label %.loopexit602, !llvm.loop !10

._crit_edge618.loopexit.unr-lcssa:                ; preds = %.loopexit602
  %lcmp.mod777.not = icmp eq i64 %xtraiter775, 0
  br i1 %lcmp.mod777.not, label %._crit_edge618, label %.loopexit602.epil.preheader

.loopexit602.epil.preheader:                      ; preds = %._crit_edge618.loopexit.unr-lcssa, %.lr.ph617
  %indvars.iv673.epil.init = phi i64 [ 0, %.lr.ph617 ], [ %indvars.iv.next674.3, %._crit_edge618.loopexit.unr-lcssa ]
  %lcmp.mod778 = icmp ne i64 %xtraiter775, 0
  call void @llvm.assume(i1 %lcmp.mod778)
  br label %.loopexit602.epil

.loopexit602.epil:                                ; preds = %.loopexit602.epil, %.loopexit602.epil.preheader
  %indvars.iv673.epil = phi i64 [ %indvars.iv673.epil.init, %.loopexit602.epil.preheader ], [ %indvars.iv.next674.epil, %.loopexit602.epil ] ; 3 uses
  %epil.iter776 = phi i64 [ 0, %.loopexit602.epil.preheader ], [ %epil.iter776.next, %.loopexit602.epil ]
  %i.fw = trunc i64 %indvars.iv673.epil to i32
  %i.fx = sub i32 %i.ef, %i.fw
  %i.fy = zext i32 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 3
  %i.ga = add nuw nsw i64 %i.fz, 8
  %i.gb = trunc nuw nsw i64 %indvars.iv673.epil to i32
  %i.gc = mul i32 %i.ee, %i.gb
  %i.gd = add i32 %i.ed, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 3
  %scevgep667.epil = getelementptr i8, ptr %scevgep, i64 %i.gf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep667.epil, i8 0, i64 %i.ga, i1 false), !tbaa !21
  %indvars.iv.next674.epil = add nuw nsw i64 %indvars.iv673.epil, 1
  %epil.iter776.next = add i64 %epil.iter776, 1   ; 2 uses
  %epil.iter776.cmp.not = icmp eq i64 %epil.iter776.next, %xtraiter775
  br i1 %epil.iter776.cmp.not, label %._crit_edge618, label %.loopexit602.epil, !llvm.loop !11

._crit_edge618:                                   ; preds = %._crit_edge618.loopexit.unr-lcssa, %.loopexit602.epil, %bb.ah
  %i.gg = load i32, ptr %4, align 4, !tbaa !19    ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, %i.ea
  br i1 %i.gh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge618
  %i.gi = sub nsw i32 %i.gg, %i.ea
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !19
  %i.gj = add i32 %i.g, 1
  %i.gk = add i32 %i.gj, %i.ea
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gl
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %i.gm, ptr noundef nonnull %9) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge618
  br i1 %.not528, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b24, ptr noundef %18, ptr noundef nonnull %19) #6
  call void @dlapmt_(ptr noundef nonnull %i.c, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %18, ptr noundef nonnull %19, ptr noundef %20) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gn = load i32, ptr %4, align 4, !tbaa !19
  %i.go = load i32, ptr %13, align 4, !tbaa !19   ; 5 uses
  %.not548 = icmp slt i32 %i.gn, %i.go
  %.pre730 = load i32, ptr %5, align 4, !tbaa !19 ; 2 uses
  br i1 %.not548, label %.loopexit601, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not549 = icmp eq i32 %.pre730, %i.go
  br i1 %.not549, label %.loopexit601, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @dgerq2_(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  call void @dormr2_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %13, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %21, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br i1 %.not528, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @dormr2_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %13, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %21, ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gp = load i32, ptr %5, align 4, !tbaa !19
  %i.gq = load i32, ptr %13, align 4, !tbaa !19
  %i.gr = sub nsw i32 %i.gp, %i.gq
  store i32 %i.gr, ptr %i.a, align 4, !tbaa !19
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %13, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %8, ptr noundef nonnull %9) #6
  %i.gs = load i32, ptr %5, align 4, !tbaa !19    ; 6 uses
  %i.gt = load i32, ptr %13, align 4, !tbaa !19   ; 9 uses
  %.not550.not624 = icmp sgt i32 %i.gt, 0
  br i1 %.not550.not624, label %.lr.ph627, label %.loopexit601

.lr.ph627:                                        ; preds = %bb.ap
  %i.gu = sub nsw i32 %i.gs, %i.gt
  store i32 %i.gt, ptr %i.b, align 4, !tbaa !19
  %i.gv = sub i32 %i.gt, %i.gs
  %i.gw = shl nsw i64 %i.h, 3
  %scevgep678 = getelementptr i8, ptr %8, i64 %i.gw
  %i.gx = add i32 %i.gs, 1
  %i.gy = sub i32 %i.gx, %i.gt
  %i.gz = mul i32 %i.g, %i.gy
  %i.ha = add i32 %i.gz, 2
  %i.hb = add i32 %i.g, 1
  %i.hc = add nsw i32 %i.gt, -2
  br label %bb.aq

.loopexit600:                                     ; preds = %.lr.ph622, %bb.aq
  %.not550.not = icmp slt i32 %.1488625, %i.gs
  %indvar.next = add i32 %indvar, 1
  br i1 %.not550.not, label %bb.aq, label %.loopexit601, !llvm.loop !12

bb.aq:                                            ; preds = %.lr.ph627, %.loopexit600
  %indvar = phi i32 [ 0, %.lr.ph627 ], [ %indvar.next, %.loopexit600 ] ; 3 uses
  %.1488625.in = phi i32 [ %i.gu, %.lr.ph627 ], [ %.1488625, %.loopexit600 ]
  %.1488625 = add nsw i32 %.1488625.in, 1         ; 3 uses
  %i.hd = add i32 %i.gv, %.1488625
  %.not564.not619 = icmp slt i32 %i.hd, %i.gt
  br i1 %.not564.not619, label %.lr.ph622, label %.loopexit600

.lr.ph622:                                        ; preds = %bb.aq
  %i.he = sub i32 %i.hc, %indvar
  %i.hf = zext i32 %i.he to i64
  %i.hg = shl nuw nsw i64 %i.hf, 3
  %i.hh = add nuw nsw i64 %i.hg, 8
  %i.hi = mul i32 %i.hb, %indvar
  %i.hj = add i32 %i.ha, %i.hi
  %i.hk = sext i32 %i.hj to i64
  %i.hl = shl nsw i64 %i.hk, 3
  %scevgep679 = getelementptr i8, ptr %scevgep678, i64 %i.hl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep679, i8 0, i64 %i.hh, i1 false), !tbaa !21
  br label %.loopexit600

.loopexit601:                                     ; preds = %.loopexit600, %bb.ap, %bb.am, %bb.al
  %i.hm = phi i32 [ %i.go, %bb.al ], [ %i.gt, %bb.ap ], [ %i.go, %bb.am ], [ %i.gt, %.loopexit600 ]
  %i.hn = phi i32 [ %.pre730, %bb.al ], [ %i.gs, %bb.ap ], [ %i.go, %bb.am ], [ %i.gs, %.loopexit600 ]
  %i.ho = sub nsw i32 %i.hn, %i.hm                ; 3 uses
  %.not551628 = icmp slt i32 %i.ho, 1
  br i1 %.not551628, label %._crit_edge632, label %.lr.ph631.preheader

.lr.ph631.preheader:                              ; preds = %.loopexit601
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %i.hq, i1 false), !tbaa !19
  %.pre731 = load i32, ptr %5, align 4, !tbaa !19
  %.pre732 = load i32, ptr %13, align 4, !tbaa !19
  %.pre738.a = sub nsw i32 %.pre731, %.pre732
  br label %._crit_edge632

._crit_edge632:                                   ; preds = %.lr.ph631.preheader, %.loopexit601
  %.pre-phi = phi i32 [ %.pre738.a, %.lr.ph631.preheader ], [ %i.ho, %.loopexit601 ]
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !19
  call void @dgeqp3_(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %20, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24) #6
  store i32 0, ptr %12, align 4, !tbaa !19
  %i.hr = load i32, ptr %3, align 4, !tbaa !19    ; 2 uses
  %i.hs = load i32, ptr %5, align 4, !tbaa !19
  %i.ht = load i32, ptr %13, align 4, !tbaa !19
  %i.hu = sub nsw i32 %i.hs, %i.ht                ; 2 uses
  %i.hv = call i32 @llvm.smin.i32(i32 %i.hr, i32 %i.hu) ; 4 uses
  %.not553633 = icmp slt i32 %i.hv, 1
  br i1 %.not553633, label %._crit_edge637, label %.lr.ph636

.lr.ph636:                                        ; preds = %._crit_edge632
  %i.hw = add i32 %i.d, 1                         ; 5 uses
  %i.hx = load double, ptr %10, align 8, !tbaa !21 ; 5 uses
  %i.hy = zext nneg i32 %i.hv to i64              ; 2 uses
  %xtraiter782 = and i64 %i.hy, 3                 ; 3 uses
  %i.hz = icmp ult i32 %i.hv, 4
  br i1 %i.hz, label %.epil.preheader781, label %.lr.ph636.new

.lr.ph636.new:                                    ; preds = %.lr.ph636
  %unroll_iter788 = and i64 %i.hy, 2147483644
  br label %bb.ar

bb.ar:                                            ; preds = %bb.az, %.lr.ph636.new
  %i.ia = phi i32 [ 0, %.lr.ph636.new ], [ %i.jn, %bb.az ] ; 2 uses
  %indvars.iv688 = phi i64 [ 1, %.lr.ph636.new ], [ %indvars.iv.next689.3, %bb.az ] ; 5 uses
  %niter789 = phi i64 [ 0, %.lr.ph636.new ], [ %niter789.next.3, %bb.az ]
  %i.ib = trunc nuw nsw i64 %indvars.iv688 to i32
  %i.ic = mul i32 %i.hw, %i.ib
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.id
  %i.if = load double, ptr %i.ie, align 8, !tbaa !21
  %i.ig = call double @llvm.fabs.f64(double %i.if)
  %i.ih = fcmp ogt double %i.ig, %i.hx
  br i1 %i.ih, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ii = add nsw i32 %i.ia, 1                    ; 2 uses
  store i32 %i.ii, ptr %12, align 4, !tbaa !19
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.ij = phi i32 [ %i.ia, %bb.ar ], [ %i.ii, %bb.as ] ; 2 uses
  %i.ik = trunc i64 %indvars.iv688 to i32
  %i.il = add i32 %i.ik, 1
  %i.im = mul i32 %i.hw, %i.il
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !21
  %i.iq = call double @llvm.fabs.f64(double %i.ip)
  %i.ir = fcmp ogt double %i.iq, %i.hx
  br i1 %i.ir, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.is = add nsw i32 %i.ij, 1                    ; 2 uses
  store i32 %i.is, ptr %12, align 4, !tbaa !19
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.it = phi i32 [ %i.ij, %bb.at ], [ %i.is, %bb.au ] ; 2 uses
  %i.iu = trunc i64 %indvars.iv688 to i32
  %i.iv = add i32 %i.iu, 2
  %i.iw = mul i32 %i.hw, %i.iv
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ix
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !21
  %i.ja = call double @llvm.fabs.f64(double %i.iz)
  %i.jb = fcmp ogt double %i.ja, %i.hx
  br i1 %i.jb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jc = add nsw i32 %i.it, 1                    ; 2 uses
  store i32 %i.jc, ptr %12, align 4, !tbaa !19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.jd = phi i32 [ %i.it, %bb.av ], [ %i.jc, %bb.aw ] ; 2 uses
  %i.je = trunc i64 %indvars.iv688 to i32
  %i.jf = add i32 %i.je, 3
  %i.jg = mul i32 %i.hw, %i.jf
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !21
  %i.jk = call double @llvm.fabs.f64(double %i.jj)
  %i.jl = fcmp ogt double %i.jk, %i.hx
  br i1 %i.jl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jm = add nsw i32 %i.jd, 1                    ; 2 uses
  store i32 %i.jm, ptr %12, align 4, !tbaa !19
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.jn = phi i32 [ %i.jd, %bb.ax ], [ %i.jm, %bb.ay ] ; 2 uses
  %indvars.iv.next689.3 = add nuw nsw i64 %indvars.iv688, 4 ; 2 uses
  %niter789.next.3 = add i64 %niter789, 4         ; 2 uses
  %niter789.ncmp.3 = icmp eq i64 %niter789.next.3, %unroll_iter788
  br i1 %niter789.ncmp.3, label %._crit_edge637.loopexit.unr-lcssa, label %bb.ar, !llvm.loop !13

._crit_edge637.loopexit.unr-lcssa:                ; preds = %bb.az
  %lcmp.mod786.not = icmp eq i64 %xtraiter782, 0
  br i1 %lcmp.mod786.not, label %._crit_edge637.loopexit, label %.epil.preheader781

.epil.preheader781:                               ; preds = %._crit_edge637.loopexit.unr-lcssa, %.lr.ph636
  %.epil.init785 = phi i32 [ 0, %.lr.ph636 ], [ %i.jn, %._crit_edge637.loopexit.unr-lcssa ]
  %indvars.iv688.epil.init = phi i64 [ 1, %.lr.ph636 ], [ %indvars.iv.next689.3, %._crit_edge637.loopexit.unr-lcssa ]
  %lcmp.mod787 = icmp ne i64 %xtraiter782, 0
  call void @llvm.assume(i1 %lcmp.mod787)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %.epil.preheader781
  %i.jo = phi i32 [ %.epil.init785, %.epil.preheader781 ], [ %i.jx, %bb.bc ] ; 2 uses
  %indvars.iv688.epil = phi i64 [ %indvars.iv688.epil.init, %.epil.preheader781 ], [ %indvars.iv.next689.epil, %bb.bc ] ; 2 uses
  %epil.iter783 = phi i64 [ 0, %.epil.preheader781 ], [ %epil.iter783.next, %bb.bc ]
  %i.jp = trunc nuw nsw i64 %indvars.iv688.epil to i32
  %i.jq = mul i32 %i.hw, %i.jp
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jr
  %i.jt = load double, ptr %i.js, align 8, !tbaa !21
  %i.ju = call double @llvm.fabs.f64(double %i.jt)
  %i.jv = fcmp ogt double %i.ju, %i.hx
  br i1 %i.jv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jw = add nsw i32 %i.jo, 1                    ; 2 uses
  store i32 %i.jw, ptr %12, align 4, !tbaa !19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.jx = phi i32 [ %i.jo, %bb.ba ], [ %i.jw, %bb.bb ]
  %indvars.iv.next689.epil = add nuw nsw i64 %indvars.iv688.epil, 1
  %epil.iter783.next = add i64 %epil.iter783, 1   ; 2 uses
  %epil.iter783.cmp.not = icmp eq i64 %epil.iter783.next, %xtraiter782
  br i1 %epil.iter783.cmp.not, label %._crit_edge637.loopexit, label %bb.ba, !llvm.loop !14

._crit_edge637.loopexit:                          ; preds = %bb.bc, %._crit_edge637.loopexit.unr-lcssa
  %.pre733 = load i32, ptr %3, align 4, !tbaa !19 ; 2 uses
  %.pre734 = load i32, ptr %5, align 4, !tbaa !19
  %.pre735 = load i32, ptr %13, align 4, !tbaa !19
  %.pre739.a = sub nsw i32 %.pre734, %.pre735     ; 2 uses
  %.pre741 = call i32 @llvm.smin.i32(i32 %.pre733, i32 %.pre739.a)
  br label %._crit_edge637

._crit_edge637:                                   ; preds = %._crit_edge637.loopexit, %._crit_edge632
  %.pre-phi742.a = phi i32 [ %.pre741, %._crit_edge637.loopexit ], [ %i.hv, %._crit_edge632 ]
  %.pre-phi740 = phi i32 [ %.pre739.a, %._crit_edge637.loopexit ], [ %i.hu, %._crit_edge632 ]
  %i.jy = phi i32 [ %.pre733, %._crit_edge637.loopexit ], [ %i.hr, %._crit_edge632 ]
  store i32 %i.jy, ptr %i.b, align 4, !tbaa !19
  store i32 %.pre-phi742.a, ptr %i.a, align 4, !tbaa !19
  %i.jz = add nsw i32 %.pre-phi740, 1
  %i.ka = mul nsw i32 %i.jz, %i.d
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr [8 x i8], ptr %i.f, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.kc, i64 8
  call void @dorm2r_(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull %13, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %21, ptr noundef %i.kd, ptr noundef nonnull %7, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br i1 %.not, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %._crit_edge637
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %14, ptr noundef nonnull %15) #6
  %i.ke = load i32, ptr %3, align 4, !tbaa !19    ; 3 uses
  %i.kf = icmp sgt i32 %i.ke, 1
  br i1 %i.kf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.kg = add nsw i32 %i.ke, -1
  store i32 %i.kg, ptr %i.a, align 4, !tbaa !19
  %i.kh = load i32, ptr %5, align 4, !tbaa !19
  %i.ki = load i32, ptr %13, align 4, !tbaa !19
  %i.kj = sub nsw i32 %i.kh, %i.ki
  store i32 %i.kj, ptr %i.b, align 4, !tbaa !19
  %i.kk = sext i32 %i.d to i64
  %i.kl = getelementptr [8 x i8], ptr %i.f, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 16
  %i.kn = sext i32 %i.j to i64
  %i.ko = getelementptr [8 x i8], ptr %i.l, i64 %i.kn
end_hunk_0
begin_hunk_1_@dggsvp3_:bb.a
  %i.no = phi i32 [ %.pre737, %bb.bj ], [ %i.ky, %._crit_edge646 ] ; 2 uses
  %i.np = load i32, ptr %5, align 4, !tbaa !19    ; 2 uses
  %i.nq = load i32, ptr %13, align 4, !tbaa !19   ; 2 uses
  %i.nr = sub nsw i32 %i.np, %i.nq                ; 2 uses
  %i.ns = icmp sgt i32 %i.nr, %i.no
  br i1 %i.ns, label %bb.bl, label %.loopexit598

bb.bl:                                            ; preds = %bb.bk
  store i32 %i.nr, ptr %i.a, align 4, !tbaa !19
  call void @dgerq2_(ptr noundef nonnull %12, ptr noundef nonnull %i.a, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br i1 %.not528, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.nt = load i32, ptr %5, align 4, !tbaa !19
  %i.nu = load i32, ptr %13, align 4, !tbaa !19
  %i.nv = sub nsw i32 %i.nt, %i.nu
  store i32 %i.nv, ptr %i.a, align 4, !tbaa !19
  call void @dormr2_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull %12, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %21, ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.nw = load i32, ptr %5, align 4, !tbaa !19
  %i.nx = load i32, ptr %13, align 4, !tbaa !19
  %i.ny = load i32, ptr %12, align 4, !tbaa !19
  %i.nz = add i32 %i.nx, %i.ny
  %i.oa = sub i32 %i.nw, %i.nz
  store i32 %i.oa, ptr %i.a, align 4, !tbaa !19
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %12, ptr noundef nonnull %i.a, ptr noundef nonnull @c_b14, ptr noundef nonnull @c_b14, ptr noundef %6, ptr noundef nonnull %7) #6
  %i.ob = load i32, ptr %5, align 4, !tbaa !19    ; 8 uses
  %i.oc = load i32, ptr %13, align 4, !tbaa !19   ; 6 uses
  %i.od = sub nsw i32 %i.ob, %i.oc
  %i.oe = load i32, ptr %12, align 4, !tbaa !19   ; 14 uses
  %i.of = add i32 %i.oc, %i.oe                    ; 3 uses
  %i.og = sub i32 %i.ob, %i.of                    ; 3 uses
  %.not558.not652 = icmp slt i32 %i.og, %i.od
  br i1 %.not558.not652, label %.lr.ph655, label %.loopexit598

.lr.ph655:                                        ; preds = %bb.bn
  store i32 %i.oe, ptr %i.b, align 4, !tbaa !19
  %i.oh = sub i32 %i.of, %i.ob                    ; 3 uses
  %i.oi = shl nsw i64 %i.e, 3
  %scevgep707 = getelementptr i8, ptr %6, i64 %i.oi ; 3 uses
  %i.oj = add i32 %i.ob, 1
  %i.ok = sub i32 %i.oj, %i.of
  %i.ol = mul i32 %i.d, %i.ok
  %i.om = add i32 %i.ol, 2                        ; 3 uses
  %i.on = add i32 %i.d, 1                         ; 3 uses
  %i.oo = add i32 %i.oe, -2                       ; 3 uses
  %xtraiter797 = and i32 %i.oe, 1
  %i.op = icmp eq i32 %i.oe, 1
  br i1 %i.op, label %.epil.preheader796, label %.lr.ph655.new

.lr.ph655.new:                                    ; preds = %.lr.ph655
  %unroll_iter801 = and i32 %i.oe, -2
  %invariant.op806 = add i32 1, %i.oh
  br label %bb.bo

.loopexit597:                                     ; preds = %.lr.ph650, %bb.bo
  %.3653.1 = add nsw i32 %.3653.in, 2             ; 3 uses
  %i.oq = add i32 %i.oh, %.3653.1
  %.not562.not647.1 = icmp slt i32 %i.oq, %i.oe
  br i1 %.not562.not647.1, label %.lr.ph650.1, label %.loopexit597.1

.lr.ph650.1:                                      ; preds = %.loopexit597
  %indvar.next709 = or disjoint i32 %indvar708, 1 ; 2 uses
  %i.or = sub i32 %i.oo, %indvar.next709
  %i.os = zext i32 %i.or to i64
  %i.ot = shl nuw nsw i64 %i.os, 3
  %i.ou = add nuw nsw i64 %i.ot, 8
  %i.ov = mul i32 %i.on, %indvar.next709
  %i.ow = add i32 %i.om, %i.ov
  %i.ox = sext i32 %i.ow to i64
  %i.oy = shl nsw i64 %i.ox, 3
  %scevgep710.1 = getelementptr i8, ptr %scevgep707, i64 %i.oy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep710.1, i8 0, i64 %i.ou, i1 false), !tbaa !21
  br label %.loopexit597.1

.loopexit597.1:                                   ; preds = %.lr.ph650.1, %.loopexit597
  %indvar.next709.1 = add i32 %indvar708, 2       ; 2 uses
  %niter802.next.1 = add i32 %niter802, 2         ; 2 uses
  %niter802.ncmp.1 = icmp eq i32 %niter802.next.1, %unroll_iter801
  br i1 %niter802.ncmp.1, label %.loopexit598.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !17

bb.bo:                                            ; preds = %.loopexit597.1, %.lr.ph655.new
  %indvar708 = phi i32 [ 0, %.lr.ph655.new ], [ %indvar.next709.1, %.loopexit597.1 ] ; 4 uses
  %.3653.in = phi i32 [ %i.og, %.lr.ph655.new ], [ %.3653.1, %.loopexit597.1 ] ; 2 uses
  %niter802 = phi i32 [ 0, %.lr.ph655.new ], [ %niter802.next.1, %.loopexit597.1 ]
  %.reass807 = add i32 %.3653.in, %invariant.op806
  %.not562.not647 = icmp slt i32 %.reass807, %i.oe
  br i1 %.not562.not647, label %.lr.ph650, label %.loopexit597

.lr.ph650:                                        ; preds = %bb.bo
  %i.oz = sub i32 %i.oo, %indvar708
  %i.pa = zext i32 %i.oz to i64
  %i.pb = shl nuw nsw i64 %i.pa, 3
  %i.pc = add nuw nsw i64 %i.pb, 8
  %i.pd = mul i32 %i.on, %indvar708
  %i.pe = add i32 %i.om, %i.pd
  %i.pf = sext i32 %i.pe to i64
  %i.pg = shl nsw i64 %i.pf, 3
  %scevgep710 = getelementptr i8, ptr %scevgep707, i64 %i.pg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep710, i8 0, i64 %i.pc, i1 false), !tbaa !21
  br label %.loopexit597

.loopexit598.loopexit.unr-lcssa:                  ; preds = %.loopexit597.1
  %lcmp.mod799.not = icmp eq i32 %xtraiter797, 0
  br i1 %lcmp.mod799.not, label %.loopexit598, label %.epil.preheader796

.epil.preheader796:                               ; preds = %.loopexit598.loopexit.unr-lcssa, %.lr.ph655
  %indvar708.epil.init = phi i32 [ 0, %.lr.ph655 ], [ %indvar.next709.1, %.loopexit598.loopexit.unr-lcssa ] ; 2 uses
  %.3653.in.epil.init = phi i32 [ %i.og, %.lr.ph655 ], [ %.3653.1, %.loopexit598.loopexit.unr-lcssa ]
  %lcmp.mod800 = trunc i32 %i.oe to i1
  call void @llvm.assume(i1 %lcmp.mod800)
  %.3653.epil = add nsw i32 %.3653.in.epil.init, 1
  %i.ph = add i32 %i.oh, %.3653.epil
  %.not562.not647.epil = icmp slt i32 %i.ph, %i.oe
  br i1 %.not562.not647.epil, label %.lr.ph650.epil, label %.loopexit598

.lr.ph650.epil:                                   ; preds = %.epil.preheader796
  %i.pi = sub i32 %i.oo, %indvar708.epil.init
  %i.pj = zext i32 %i.pi to i64
  %i.pk = shl nuw nsw i64 %i.pj, 3
  %i.pl = add nuw nsw i64 %i.pk, 8
  %i.pm = mul i32 %i.on, %indvar708.epil.init
  %i.pn = add i32 %i.om, %i.pm
  %i.po = sext i32 %i.pn to i64
  %i.pp = shl nsw i64 %i.po, 3
  %scevgep710.epil = getelementptr i8, ptr %scevgep707, i64 %i.pp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep710.epil, i8 0, i64 %i.pl, i1 false), !tbaa !21
  br label %.loopexit598

.loopexit598:                                     ; preds = %.loopexit598.loopexit.unr-lcssa, %.lr.ph650.epil, %.epil.preheader796, %bb.bn, %bb.bk
  %i.pq = phi i32 [ %i.nq, %bb.bk ], [ %i.oc, %bb.bn ], [ %i.oc, %.epil.preheader796 ], [ %i.oc, %.lr.ph650.epil ], [ %i.oc, %.loopexit598.loopexit.unr-lcssa ]
  %i.pr = phi i32 [ %i.np, %bb.bk ], [ %i.ob, %bb.bn ], [ %i.ob, %.epil.preheader796 ], [ %i.ob, %.lr.ph650.epil ], [ %i.ob, %.loopexit598.loopexit.unr-lcssa ]
  %i.ps = phi i32 [ %i.no, %bb.bk ], [ %i.oe, %bb.bn ], [ %i.oe, %.epil.preheader796 ], [ %i.oe, %.lr.ph650.epil ], [ %i.oe, %.loopexit598.loopexit.unr-lcssa ] ; 3 uses
  %i.pt = load i32, ptr %3, align 4, !tbaa !19    ; 2 uses
  %i.pu = icmp sgt i32 %i.pt, %i.ps
  br i1 %i.pu, label %bb.bp, label %.loopexit596

bb.bp:                                            ; preds = %.loopexit598
  %i.pv = sub nsw i32 %i.pt, %i.ps
  store i32 %i.pv, ptr %i.a, align 4, !tbaa !19
  %i.pw = add nsw i32 %i.ps, 1
  %i.px = add i32 %i.pr, 1
  %i.py = sub i32 %i.px, %i.pq
  %i.pz = mul nsw i32 %i.py, %i.d
  %i.qa = add nsw i32 %i.pw, %i.pz
  %i.qb = sext i32 %i.qa to i64
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.qb
  call void @dgeqr2_(ptr noundef nonnull %i.a, ptr noundef nonnull %13, ptr noundef %i.qc, ptr noundef nonnull %7, ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br i1 %.not, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.qd = load i32, ptr %3, align 4, !tbaa !19
  %i.qe = load i32, ptr %12, align 4, !tbaa !19   ; 2 uses
  %i.qf = sub nsw i32 %i.qd, %i.qe                ; 2 uses
  store i32 %i.qf, ptr %i.a, align 4, !tbaa !19
  %i.qg = load i32, ptr %13, align 4, !tbaa !19   ; 2 uses
  %.571 = call i32 @llvm.smin.i32(i32 %i.qf, i32 %i.qg)
  store i32 %.571, ptr %i.b, align 4, !tbaa !19
  %i.qh = add nsw i32 %i.qe, 1                    ; 2 uses
  %i.qi = load i32, ptr %5, align 4, !tbaa !19
  %reass.sub = sub i32 %i.qi, %i.qg
  %i.qj = add i32 %reass.sub, 1
  %i.qk = mul nsw i32 %i.qj, %i.d
  %i.ql = add nsw i32 %i.qk, %i.qh
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.qm
  %i.qo = mul nsw i32 %i.qh, %i.j
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr [8 x i8], ptr %i.l, i64 %i.qp
  %i.qr = getelementptr i8, ptr %i.qq, i64 8
  call void @dorm2r_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.qn, ptr noundef nonnull %7, ptr noundef %21, ptr noundef %i.qr, ptr noundef nonnull %15, ptr noundef nonnull %22, ptr noundef nonnull %24) #6
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.qs = load i32, ptr %5, align 4, !tbaa !19    ; 4 uses
  %i.qt = load i32, ptr %13, align 4, !tbaa !19   ; 4 uses
  %.not560.not661 = icmp sgt i32 %i.qt, 0
  br i1 %.not560.not661, label %.lr.ph664, label %.loopexit596

.lr.ph664:                                        ; preds = %bb.br
  %i.qu = sub nsw i32 %i.qs, %i.qt
  %i.qv = load i32, ptr %3, align 4, !tbaa !19    ; 2 uses
  %i.qw = load i32, ptr %12, align 4, !tbaa !19   ; 3 uses
  %i.qx = sub i32 %i.qt, %i.qs
  %invariant.op = add i32 %i.qx, %i.qw
  %i.qy = shl nsw i64 %i.e, 3
  %scevgep717 = getelementptr i8, ptr %6, i64 %i.qy
  %i.qz = add i32 %i.qs, 1
  %i.ra = sub i32 %i.qz, %i.qt
  %i.rb = mul i32 %i.d, %i.ra
  %i.rc = add i32 %i.qw, %i.rb
  %i.rd = add i32 %i.rc, 2
  %i.re = add i32 %i.d, 1
  %i.rf = add i32 %i.qv, -2
  br label %bb.bs

.loopexit:                                        ; preds = %.lr.ph659, %bb.bs
  %.not560.not = icmp slt i32 %.4662, %i.qs
  %indvar.next719 = add i32 %indvar718, 1
  br i1 %.not560.not, label %bb.bs, label %.loopexit596, !llvm.loop !18

bb.bs:                                            ; preds = %.lr.ph664, %.loopexit
  %indvar718 = phi i32 [ 0, %.lr.ph664 ], [ %indvar.next719, %.loopexit ] ; 3 uses
  %.4662.in = phi i32 [ %i.qu, %.lr.ph664 ], [ %.4662, %.loopexit ]
  %.4662 = add nsw i32 %.4662.in, 1               ; 3 uses
  %.reass = add i32 %.4662, %invariant.op
  %.not561.not656 = icmp slt i32 %.reass, %i.qv
  br i1 %.not561.not656, label %.lr.ph659, label %.loopexit

.lr.ph659:                                        ; preds = %bb.bs
  %i.rg = add i32 %i.qw, %indvar718
  %i.rh = sub i32 %i.rf, %i.rg
  %i.ri = zext i32 %i.rh to i64
  %i.rj = shl nuw nsw i64 %i.ri, 3
  %i.rk = add nuw nsw i64 %i.rj, 8
  %i.rl = mul i32 %i.re, %indvar718
  %i.rm = add i32 %i.rd, %i.rl
  %i.rn = sext i32 %i.rm to i64
  %i.ro = shl nsw i64 %i.rn, 3
  %scevgep720 = getelementptr i8, ptr %scevgep717, i64 %i.ro
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep720, i8 0, i64 %i.rk, i1 false), !tbaa !21
  br label %.loopexit

.loopexit596:                                     ; preds = %.loopexit, %bb.br, %.loopexit598
  store double %i.bd, ptr %22, align 8, !tbaa !21
  br label %bb.bt

bb.bt:                                            ; preds = %bb.q, %.loopexit596, %.thread574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgeqp3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlapmt_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorg2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgerq2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dormr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorm2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgeqr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !22}
!9 = distinct !{!9, !23}
!10 = distinct !{!10, !22}
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !22}
!13 = distinct !{!13, !22}
!14 = distinct !{!14, !23}
!15 = distinct !{!15, !22}
!16 = distinct !{!16, !23}
!17 = distinct !{!17, !22}
!18 = distinct !{!18, !22}
!19 = !{!5, !5, i64 0}
!20 = !{!"double", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
