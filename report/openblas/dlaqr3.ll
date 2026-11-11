Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr3?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dlaqr3_:bb.a
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0625 = phi double [ %i.cf, %bb.g ], [ 0.000000e+00, %bb.f ] ; 8 uses
  %i.cg = icmp eq i32 %i.bt, %i.bz
  br i1 %i.cg, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ch = add i32 %i.t, 1
  %i.ci = mul i32 %i.bt, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.cj ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !15
  %i.cm = sext i32 %i.bt to i64                   ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.cm
  store double %i.cl, ptr %i.cn, align 8, !tbaa !15
  %i.co = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cm
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !15
  store i32 1, ptr %12, align 4, !tbaa !13
  store i32 0, ptr %13, align 4, !tbaa !13
  %i.cp = load double, ptr %i.ck, align 8, !tbaa !15 ; 3 uses
  %i.cq = fcmp oge double %i.cp, 0.000000e+00
  %i.cr = fneg double %i.cp
  %i.cs = select i1 %i.cq, double %i.cp, double %i.cr
  %i.ct = fmul double %i.bm, %i.cs                ; 2 uses
  %i.cu = call double @llvm.fabs.f64(double %.0625)
  %i.cv = fcmp oge double %i.br, %i.ct
  %i.cw = select i1 %i.cv, double %i.br, double %i.ct
  %i.cx = fcmp ugt double %i.cu, %i.cw
  br i1 %i.cx, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %12, align 4, !tbaa !13
  store i32 1, ptr %13, align 4, !tbaa !13
  %i.cy = load i32, ptr %3, align 4, !tbaa !13
  %.not670 = icmp slt i32 %i.by, %i.cy
  br i1 %.not670, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = mul nsw i32 %i.by, %i.t
  %i.da = add nsw i32 %i.bt, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.db
  store double 0.000000e+00, ptr %i.dc, align 8, !tbaa !15
  br label %.sink.split

bb.l:                                             ; preds = %bb.h
  %i.dd = mul nsw i32 %i.bz, %i.t                 ; 3 uses
  %i.de = add nsw i32 %i.dd, %i.bz
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.df ; 2 uses
  call void @dlacpy_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef %i.dg, ptr noundef nonnull %7, ptr noundef %19, ptr noundef nonnull %20) #6
  %i.dh = load i32, ptr %i.o, align 4, !tbaa !13
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.a, align 4, !tbaa !13
  %i.dj = load i32, ptr %7, align 4, !tbaa !13
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.b, align 4, !tbaa !13
  %i.dl = load i32, ptr %20, align 4, !tbaa !13
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.c, align 4, !tbaa !13
  %i.dn = add nsw i32 %i.by, 2
  %i.do = add nsw i32 %i.dn, %i.dd
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.dp ; 2 uses
  %i.dr = sext i32 %i.ae to i64                   ; 10 uses
  %i.ds = getelementptr [8 x i8], ptr %i.ag, i64 %i.dr ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 16     ; 2 uses
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.dq, ptr noundef nonnull %i.b, ptr noundef %i.dt, ptr noundef nonnull %i.c) #6
  call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef nonnull @c_b17, ptr noundef nonnull @c_b18, ptr noundef %16, ptr noundef nonnull %17) #6
  %i.du = call i32 @ilaenv_(ptr noundef nonnull @c__12, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.o, ptr noundef nonnull @c__1, ptr noundef nonnull %i.o, ptr noundef nonnull %25, i32 noundef 6, i32 noundef 2) #6
  %i.dv = load i32, ptr %i.o, align 4, !tbaa !13
  %i.dw = icmp sgt i32 %i.dv, %i.du
  %i.dx = sext i32 %i.bz to i64                   ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.dx ; 2 uses
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @dlaqr4_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull %i.o, ptr noundef nonnull @c__1, ptr noundef nonnull %i.o, ptr noundef %19, ptr noundef nonnull %20, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dz, ptr noundef nonnull @c__1, ptr noundef nonnull %i.o, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %i.h) #6
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @dlahqr_(ptr noundef nonnull @c_true, ptr noundef nonnull @c_true, ptr noundef nonnull %i.o, ptr noundef nonnull @c__1, ptr noundef nonnull %i.o, ptr noundef %19, ptr noundef nonnull %20, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.dz, ptr noundef nonnull @c__1, ptr noundef nonnull %i.o, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %i.h) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ea = load i32, ptr %i.o, align 4, !tbaa !13  ; 12 uses
  %i.eb = add nsw i32 %i.ea, -3
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !13
  %.not677 = icmp slt i32 %i.ea, 4
  br i1 %.not677, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.ec = zext nneg i32 %i.ea to i64
  %i.ed = add nsw i64 %i.ec, -3                   ; 2 uses
  %xtraiter = and i64 %i.ed, 7                    ; 3 uses
  %i.ee = add nsw i32 %i.ea, -4
  %i.ef = icmp ult i32 %i.ee, 7
  br i1 %i.ef, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ed, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.eg = mul nsw i64 %indvars.iv, %i.dr
  %i.eh = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %i.ej = getelementptr [8 x i8], ptr %i.ei, i64 %i.eg
  store <2 x double> zeroinitializer, ptr %i.ej, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ek = mul nsw i64 %indvars.iv.next, %i.dr
  %i.el = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.next
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %i.ek
  store <2 x double> zeroinitializer, ptr %i.en, align 8, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.eo = mul nsw i64 %indvars.iv.next.1, %i.dr
  %i.ep = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.next.1
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %i.eo
  store <2 x double> zeroinitializer, ptr %i.er, align 8, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.es = mul nsw i64 %indvars.iv.next.2, %i.dr
  %i.et = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.next.2
  %i.eu = getelementptr i8, ptr %i.et, i64 16
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %i.es
  store <2 x double> zeroinitializer, ptr %i.ev, align 8, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ew = mul nsw i64 %indvars.iv.next.3, %i.dr
  %i.ex = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.next.3
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
  %i.ez = getelementptr [8 x i8], ptr %i.ey, i64 %i.ew
  store <2 x double> zeroinitializer, ptr %i.ez, align 8, !tbaa !15
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.fa = mul nsw i64 %indvars.iv.next.4, %i.dr
  %i.fb = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.next.4
  %i.fc = getelementptr i8, ptr %i.fb, i64 16
  %i.fd = getelementptr [8 x i8], ptr %i.fc, i64 %i.fa
  store <2 x double> zeroinitializer, ptr %i.fd, align 8, !tbaa !15
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.fe = mul nsw i64 %indvars.iv.next.5, %i.dr
  %i.ff = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.next.5
  %i.fg = getelementptr i8, ptr %i.ff, i64 16
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %i.fe
  store <2 x double> zeroinitializer, ptr %i.fh, align 8, !tbaa !15
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.fi = mul nsw i64 %indvars.iv.next.6, %i.dr
  %i.fj = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.next.6
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  %i.fl = getelementptr [8 x i8], ptr %i.fk, i64 %i.fi
  store <2 x double> zeroinitializer, ptr %i.fl, align 8, !tbaa !15
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.o
  %i.fm = icmp eq i32 %i.ea, 3
  br i1 %i.fm, label %._crit_edge.thread, label %bb.p

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.thread.loopexit.unr-lcssa ]
  %lcmp.mod747 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod747)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.fn = mul nsw i64 %indvars.iv.epil, %i.dr
  %i.fo = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.epil
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  %i.fq = getelementptr [8 x i8], ptr %i.fp, i64 %i.fn
  store <2 x double> zeroinitializer, ptr %i.fq, align 8, !tbaa !15
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %.lr.ph.epil, !llvm.loop !9

._crit_edge.thread:                               ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph.epil, %._crit_edge
  %i.fr = add nsw i32 %i.ea, -2
  %i.fs = mul nsw i32 %i.fr, %i.ae
  %i.ft = add nsw i32 %i.fs, %i.ea
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.fu
  store double 0.000000e+00, ptr %i.fv, align 8, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread, %._crit_edge
  store i32 %i.ea, ptr %12, align 4, !tbaa !13
  %i.fw = load i32, ptr %i.h, align 4, !tbaa !13  ; 3 uses
  %i.fx = add nsw i32 %i.fw, 1                    ; 2 uses
  store i32 %i.fx, ptr %i.g, align 4, !tbaa !13
  %.not657679.not = icmp slt i32 %i.fw, %i.ea
  br i1 %.not657679.not, label %.lr.ph681, label %._crit_edge682.thread

._crit_edge682.thread:                            ; preds = %bb.p
  %i.fy = icmp eq i32 %i.ea, 0
  %spec.select741 = select i1 %i.fy, double 0.000000e+00, double %.0625
  br label %.loopexit676

.lr.ph681:                                        ; preds = %bb.p
  %i.fz = add i32 %i.ae, 1                        ; 2 uses
  %i.ga = fcmp oge double %.0625, 0.000000e+00
  %i.gb = fneg double %.0625
  %i.gc = select i1 %i.ga, double %.0625, double %i.gb ; 2 uses
  %i.gd = insertelement <2 x double> poison, double %.0625, i64 0
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph681, %bb.x
  %i.gf = phi i32 [ %i.fx, %.lr.ph681 ], [ %i.jm, %bb.x ] ; 2 uses
  %i.gg = phi i32 [ %i.ea, %.lr.ph681 ], [ %.pr, %bb.x ] ; 8 uses
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = add nsw i32 %i.gg, -1
  %i.gj = mul nsw i32 %i.gi, %i.ae
  %i.gk = add nsw i32 %i.gj, %i.gg
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.gl
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !15 ; 4 uses
  %i.go = fcmp oeq double %i.gn, 0.000000e+00
  br i1 %i.go, label %.critedge, label %bb.u

.critedge:                                        ; preds = %bb.q, %bb.r
  %i.gp = mul i32 %i.gg, %i.fz
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !15 ; 4 uses
  %i.gt = fcmp oge double %i.gs, 0.000000e+00
  %i.gu = fneg double %i.gs
  %i.gv = select i1 %i.gt, double %i.gs, double %i.gu
  %i.gw = fcmp oeq double %i.gs, 0.000000e+00
  %.0 = select i1 %i.gw, double %i.gc, double %i.gv
  %i.gx = fmul double %i.bm, %.0                  ; 2 uses
  %i.gy = mul nsw i32 %i.gg, %i.ab
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr [8 x i8], ptr %i.ad, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !15
  %i.hd = fmul double %.0625, %i.hc
  %i.he = call double @llvm.fabs.f64(double %i.hd)
  %i.hf = fcmp oge double %i.br, %i.gx
  %i.hg = select i1 %i.hf, double %i.br, double %i.gx
  %i.hh = fcmp ugt double %i.he, %i.hg
  br i1 %i.hh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.hi = add nsw i32 %i.gg, -1
  store i32 %i.hi, ptr %12, align 4, !tbaa !13
  br label %bb.x

bb.t:                                             ; preds = %.critedge
  store i32 %i.gg, ptr %i.f, align 4, !tbaa !13
  call void @dtrexc_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.o, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %24, ptr noundef nonnull %i.e) #6
  %i.hj = load i32, ptr %i.g, align 4, !tbaa !13
  %i.hk = add nsw i32 %i.hj, 1                    ; 2 uses
  store i32 %i.hk, ptr %i.g, align 4, !tbaa !13
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.hl = mul i32 %i.gg, %i.fz
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !15 ; 3 uses
  %i.hp = fcmp oge double %i.ho, 0.000000e+00
  %i.hq = fneg double %i.ho
  %i.hr = select i1 %i.hp, double %i.ho, double %i.hq
  %i.hs = fcmp oge double %i.gn, 0.000000e+00
  %i.ht = fneg double %i.gn
  %i.hu = select i1 %i.hs, double %i.gn, double %i.ht
  %i.hv = call double @sqrt(double noundef %i.hu) #6
  %i.hw = load i32, ptr %12, align 4, !tbaa !13   ; 2 uses
  %i.hx = add nsw i32 %i.hw, -1
  %i.hy = mul nsw i32 %i.hw, %i.ae
  %i.hz = add nsw i32 %i.hx, %i.hy
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !15 ; 3 uses
  %i.id = fcmp oge double %i.ic, 0.000000e+00
  %i.ie = fneg double %i.ic
  %i.if = select i1 %i.id, double %i.ic, double %i.ie
  %i.ig = call double @sqrt(double noundef %i.if) #6
  %i.ih = call double @llvm.fmuladd.f64(double %i.hv, double %i.ig, double %i.hr) ; 2 uses
  %i.ii = fcmp oeq double %i.ih, 0.000000e+00
  %.1 = select i1 %i.ii, double %i.gc, double %i.ih
  %i.ij = load i32, ptr %12, align 4, !tbaa !13   ; 4 uses
  %i.ik = mul nsw i32 %i.ij, %i.ab
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr [8 x i8], ptr %i.ad, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %i.io = load double, ptr %i.in, align 8, !tbaa !15
  %i.ip = add nsw i32 %i.ij, -1
  %i.iq = mul nsw i32 %i.ip, %i.ab
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr [8 x i8], ptr %i.ad, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.is, i64 8
  %i.iu = load double, ptr %i.it, align 8, !tbaa !15
  %i.iv = insertelement <2 x double> poison, double %i.io, i64 0
  %i.iw = insertelement <2 x double> %i.iv, double %i.iu, i64 1
  %i.ix = fmul <2 x double> %i.ge, %i.iw          ; 3 uses
  %i.iy = fcmp oge <2 x double> %i.ix, zeroinitializer
  %i.iz = fneg <2 x double> %i.ix
  %i.ja = select <2 x i1> %i.iy, <2 x double> %i.ix, <2 x double> %i.iz ; 2 uses
  %i.jb = fmul double %i.bm, %.1                  ; 2 uses
  %i.jc = extractelement <2 x double> %i.ja, i64 0 ; 2 uses
  %i.jd = extractelement <2 x double> %i.ja, i64 1 ; 2 uses
  %i.je = fcmp oge double %i.jc, %i.jd
  %i.jf = select i1 %i.je, double %i.jc, double %i.jd
  %i.jg = fcmp oge double %i.br, %i.jb
  %i.jh = select i1 %i.jg, double %i.br, double %i.jb
  %i.ji = fcmp ugt double %i.jf, %i.jh
  br i1 %i.ji, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jj = add nsw i32 %i.ij, -2
  store i32 %i.jj, ptr %12, align 4, !tbaa !13
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i32 %i.ij, ptr %i.f, align 4, !tbaa !13
  call void @dtrexc_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.o, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %24, ptr noundef nonnull %i.e) #6
  %i.jk = load i32, ptr %i.g, align 4, !tbaa !13
  %i.jl = add nsw i32 %i.jk, 2                    ; 2 uses
  store i32 %i.jl, ptr %i.g, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.s, %bb.t
  %i.jm = phi i32 [ %i.gf, %bb.v ], [ %i.jl, %bb.w ], [ %i.gf, %bb.s ], [ %i.hk, %bb.t ] ; 2 uses
  %.pr = load i32, ptr %12, align 4, !tbaa !13    ; 5 uses
  %.not657 = icmp sgt i32 %i.jm, %.pr
  br i1 %.not657, label %._crit_edge682, label %bb.q

._crit_edge682:                                   ; preds = %bb.x
  %.pre = load i32, ptr %i.o, align 4, !tbaa !13  ; 2 uses
  %.pre715.pre = load i32, ptr %i.h, align 4, !tbaa !13 ; 2 uses
  %i.jn = icmp eq i32 %.pr, 0
  %spec.select = select i1 %i.jn, double 0.000000e+00, double %.0625 ; 2 uses
  %i.jo = icmp slt i32 %.pr, %.pre
  br i1 %i.jo, label %bb.y, label %.loopexit676

bb.y:                                             ; preds = %._crit_edge682
  %i.jp = add nsw i32 %.pr, 1
  %i.jq = add i32 %i.ae, 1                        ; 2 uses
  br label %bb.z

.loopexit675:                                     ; preds = %bb.ak, %bb.al
  %.pre712 = load i32, ptr %i.h, align 4, !tbaa !13 ; 2 uses
  %i.jr = icmp eq i32 %.2, 0
  br i1 %i.jr, label %bb.z, label %.loopexit676.loopexit

bb.z:                                             ; preds = %bb.y, %.loopexit675
  %.0631691.a = phi i32 [ %.pre715.pre, %bb.y ], [ %.pre712, %.loopexit675 ] ; 4 uses
  %.0631691 = phi i32 [ %i.jp, %bb.y ], [ %.2633, %.loopexit675 ] ; 3 uses
  %26 = add nsw i32 %.0631691, -1                 ; 3 uses
  %i.js = add nsw i32 %.0631691.a, 1              ; 3 uses
  %i.jt = load i32, ptr %12, align 4, !tbaa !13
  %i.ju = icmp eq i32 %i.js, %i.jt
  %i.jv = add nsw i32 %.0631691.a, 2              ; 3 uses
  br i1 %i.ju, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jw = mul nsw i32 %i.js, %i.ae
  %i.jx = add nsw i32 %i.jw, %i.jv
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !15
  %i.kb = fcmp oeq double %i.ka, 0.000000e+00
  %i.kc = add nsw i32 %.0631691.a, 3
  %spec.select671 = select i1 %i.kb, i32 %i.jv, i32 %i.kc
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.0627 = phi i32 [ %spec.select671, %bb.aa ], [ %i.jv, %bb.z ] ; 2 uses
  %.not659.not683 = icmp slt i32 %.0627, %.0631691
  br i1 %.not659.not683, label %.lr.ph688.preheader, label %.loopexit676.loopexit

.lr.ph688.preheader:                              ; preds = %bb.ab
  %i.kd = mul i32 %26, %i.jq
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ke
  br label %.lr.ph688

.lr.ph688:                                        ; preds = %.lr.ph688.preheader, %bb.al
  %.1623686 = phi i32 [ %.2, %bb.al ], [ 1, %.lr.ph688.preheader ]
  %.1628685 = phi i32 [ %spec.select673, %bb.al ], [ %.0627, %.lr.ph688.preheader ] ; 9 uses
  %.1632684 = phi i32 [ %.2633, %bb.al ], [ %i.js, %.lr.ph688.preheader ] ; 6 uses
  %i.kg = add nsw i32 %.1632684, 1                ; 3 uses
  %i.kh = icmp eq i32 %.1628685, %i.kg
  br i1 %i.kh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph688
  %i.ki = mul i32 %.1632684, %i.jq
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.kj
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !15 ; 3 uses
  %i.km = fcmp oge double %i.kl, 0.000000e+00
  %i.kn = fneg double %i.kl
  %i.ko = select i1 %i.km, double %i.kl, double %i.kn
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph688
  %i.kp = mul nsw i32 %.1632684, %i.ae            ; 2 uses
  %i.kq = add nsw i32 %i.kp, %.1632684
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.kr
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !15 ; 3 uses
  %i.ku = fcmp oge double %i.kt, 0.000000e+00
  %i.kv = fneg double %i.kt
  %i.kw = select i1 %i.ku, double %i.kt, double %i.kv
  %i.kx = add nsw i32 %i.kg, %i.kp
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !15 ; 3 uses
  %i.lb = fcmp oge double %i.la, 0.000000e+00
  %i.lc = fneg double %i.la
  %i.ld = select i1 %i.lb, double %i.la, double %i.lc
  %i.le = call double @sqrt(double noundef %i.ld) #6
  %i.lf = mul nsw i32 %i.kg, %i.ae
  %i.lg = add nsw i32 %i.lf, %.1632684
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.lh
  %i.lj = load double, ptr %i.li, align 8, !tbaa !15 ; 3 uses
  %i.lk = fcmp oge double %i.lj, 0.000000e+00
  %i.ll = fneg double %i.lj
  %i.lm = select i1 %i.lk, double %i.lj, double %i.ll
  %i.ln = call double @sqrt(double noundef %i.lm) #6
  %i.lo = call double @llvm.fmuladd.f64(double %i.le, double %i.ln, double %i.kw)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0620 = phi double [ %i.ko, %bb.ac ], [ %i.lo, %bb.ad ]
  %i.lp = icmp eq i32 %.1628685, %26
  br i1 %i.lp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.lq = load double, ptr %i.kf, align 8, !tbaa !15 ; 3 uses
  %i.lr = fcmp oge double %i.lq, 0.000000e+00
  %i.ls = fneg double %i.lq
  %i.lt = select i1 %i.lr, double %i.lq, double %i.ls
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.lu = add nsw i32 %.1628685, 1                ; 2 uses
  %i.lv = mul nsw i32 %.1628685, %i.ae            ; 2 uses
  %i.lw = add nsw i32 %i.lu, %i.lv
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.lx
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !15 ; 4 uses
  %i.ma = fcmp oeq double %i.lz, 0.000000e+00
  %i.mb = add nsw i32 %i.lv, %.1628685
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.mc
  %i.me = load double, ptr %i.md, align 8, !tbaa !15 ; 3 uses
  %i.mf = fcmp oge double %i.me, 0.000000e+00
  %i.mg = fneg double %i.me
  %i.mh = select i1 %i.mf, double %i.me, double %i.mg ; 2 uses
  br i1 %i.ma, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mi = fcmp oge double %i.lz, 0.000000e+00
  %i.mj = fneg double %i.lz
  %i.mk = select i1 %i.mi, double %i.lz, double %i.mj
  %i.ml = call double @sqrt(double noundef %i.mk) #6
  %i.mm = mul nsw i32 %i.lu, %i.ae
  %i.mn = add nsw i32 %i.mm, %.1628685
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.mo
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !15 ; 3 uses
  %i.mr = fcmp oge double %i.mq, 0.000000e+00
  %i.ms = fneg double %i.mq
  %i.mt = select i1 %i.mr, double %i.mq, double %i.ms
  %i.mu = call double @sqrt(double noundef %i.mt) #6
  %i.mv = call double @llvm.fmuladd.f64(double %i.ml, double %i.mu, double %i.mh)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.0619 = phi double [ %i.lt, %bb.af ], [ %i.mv, %bb.ah ], [ %i.mh, %bb.ag ]
  %i.mw = fcmp ult double %.0620, %.0619
  br i1 %i.mw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %.1632684, ptr %i.f, align 4, !tbaa !13
  store i32 %.1628685, ptr %i.g, align 4, !tbaa !13
  call void @dtrexc_(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.o, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %24, ptr noundef nonnull %i.e) #6
  %i.mx = load i32, ptr %i.e, align 4, !tbaa !13
  %i.my = icmp eq i32 %i.mx, 0
  %i.mz = load i32, ptr %i.g, align 4
  %spec.select672 = select i1 %i.my, i32 %i.mz, i32 %.1628685
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2633 = phi i32 [ %.1628685, %bb.ai ], [ %spec.select672, %bb.aj ] ; 6 uses
  %.2 = phi i32 [ %.1623686, %bb.ai ], [ 0, %bb.aj ] ; 2 uses
  %i.na = icmp eq i32 %.2633, %26
  br i1 %i.na, label %.loopexit675, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nb = add nsw i32 %.2633, 1                   ; 2 uses
  %i.nc = mul nsw i32 %.2633, %i.ae
  %i.nd = add nsw i32 %i.nb, %i.nc
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ne
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !15
  %i.nh = fcmp oeq double %i.ng, 0.000000e+00
  %i.ni = add nsw i32 %.2633, 2
  %spec.select673 = select i1 %i.nh, i32 %i.nb, i32 %i.ni ; 2 uses
  %.not659.not = icmp slt i32 %spec.select673, %.0631691
  br i1 %.not659.not, label %.lr.ph688, label %.loopexit675

.loopexit676.loopexit:                            ; preds = %bb.ab, %.loopexit675
  %27 = phi i32 [ %.pre712, %.loopexit675 ], [ %.0631691.a, %bb.ab ]
  %.pre712.a = load i32, ptr %i.o, align 4, !tbaa !13
  br label %.loopexit676

.loopexit676:                                     ; preds = %._crit_edge682.thread, %.loopexit676.loopexit, %._crit_edge682
  %spec.select742 = phi double [ %spec.select, %.loopexit676.loopexit ], [ %spec.select, %._crit_edge682 ], [ %spec.select741, %._crit_edge682.thread ] ; 2 uses
  %i.nj = phi i32 [ %27, %.loopexit676.loopexit ], [ %.pre715.pre, %._crit_edge682 ], [ %i.fw, %._crit_edge682.thread ] ; 2 uses
  %28 = phi i32 [ %.pre712.a, %.loopexit676.loopexit ], [ %.pre, %._crit_edge682 ], [ %i.ea, %._crit_edge682.thread ] ; 3 uses
  %.not660.not692 = icmp sgt i32 %28, %i.nj
  br i1 %.not660.not692, label %.lr.ph695, label %._crit_edge696

.lr.ph695:                                        ; preds = %.loopexit676
  %i.nk = add i32 %i.by, -1
  %i.nl = add i32 %i.ae, 1                        ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph695, %bb.ar
  %i.nm = phi i32 [ %i.nj, %.lr.ph695 ], [ %i.pj, %bb.ar ] ; 3 uses
  %.3693 = phi i32 [ %28, %.lr.ph695 ], [ %.4, %bb.ar ] ; 13 uses
  %i.nn = add nsw i32 %i.nm, 1
  %i.no = icmp eq i32 %.3693, %i.nn
  br i1 %i.no, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.np = mul i32 %.3693, %i.nl
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.nq
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !15
  %i.nt = add i32 %.3693, %i.by
  %i.nu = sext i32 %i.nt to i64                   ; 2 uses
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.nu
  store double %i.ns, ptr %i.nv, align 8, !tbaa !15
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.nu
  store double 0.000000e+00, ptr %i.nw, align 8, !tbaa !15
  %i.nx = add nsw i32 %.3693, -1
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.ny = add nsw i32 %.3693, -1                  ; 4 uses
  %i.nz = mul nsw i32 %i.ny, %i.ae                ; 2 uses
  %i.oa = add nsw i32 %i.nz, %.3693
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ob
  %i.od = load double, ptr %i.oc, align 8, !tbaa !15 ; 2 uses
  %i.oe = fcmp oeq double %i.od, 0.000000e+00
  br i1 %i.oe, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.of = mul i32 %.3693, %i.nl
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.og
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !15
  %i.oj = add i32 %.3693, %i.by
  %i.ok = sext i32 %i.oj to i64                   ; 2 uses
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ok
  store double %i.oi, ptr %i.ol, align 8, !tbaa !15
  %i.om = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ok
  store double 0.000000e+00, ptr %i.om, align 8, !tbaa !15
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.on = add nsw i32 %i.nz, %i.ny
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.oo
  %i.oq = load double, ptr %i.op, align 8, !tbaa !15
  store double %i.oq, ptr %i.i, align 8, !tbaa !15
  store double %i.od, ptr %i.k, align 8, !tbaa !15
  %i.or = mul nsw i32 %.3693, %i.ae               ; 2 uses
  %i.os = add nsw i32 %i.ny, %i.or
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ot
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !15
  store double %i.ov, ptr %i.j, align 8, !tbaa !15
  %i.ow = add nsw i32 %i.or, %.3693
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ox
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !15
  store double %i.oz, ptr %i.l, align 8, !tbaa !15
  %i.pa = add i32 %i.nk, %.3693
  %i.pb = sext i32 %i.pa to i64                   ; 2 uses
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.pb
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.pb
  %i.pe = add i32 %.3693, %i.by
  %i.pf = sext i32 %i.pe to i64                   ; 2 uses
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.pf
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.pf
  call void @dlanv2_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.pc, ptr noundef nonnull %i.pd, ptr noundef nonnull %i.pg, ptr noundef nonnull %i.ph, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #6
  %i.pi = add nsw i32 %.3693, -2
  %.pre713 = load i32, ptr %i.h, align 4, !tbaa !13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.an
  %i.pj = phi i32 [ %i.nm, %bb.an ], [ %i.nm, %bb.ap ], [ %.pre713, %bb.aq ] ; 2 uses
  %.4 = phi i32 [ %i.nx, %bb.an ], [ %i.ny, %bb.ap ], [ %i.pi, %bb.aq ] ; 2 uses
  %.not660.not = icmp sgt i32 %.4, %i.pj
  br i1 %.not660.not, label %bb.am, label %._crit_edge696.loopexit

._crit_edge696.loopexit:                          ; preds = %bb.ar
  %.pre714 = load i32, ptr %i.o, align 4, !tbaa !13
  br label %._crit_edge696

._crit_edge696:                                   ; preds = %._crit_edge696.loopexit, %.loopexit676
  %i.pk = phi i32 [ %.pre714, %._crit_edge696.loopexit ], [ %28, %.loopexit676 ]
  %i.pl = load i32, ptr %12, align 4, !tbaa !13   ; 2 uses
  %i.pm = icmp slt i32 %i.pl, %i.pk
  %i.pn = fcmp oeq double %spec.select742, 0.000000e+00 ; 3 uses
  %or.cond = select i1 %i.pm, i1 true, i1 %i.pn
  br i1 %or.cond, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %._crit_edge696
  %i.po = icmp slt i32 %i.pl, 2
  %or.cond3.not = select i1 %i.po, i1 true, i1 %i.pn
  br i1 %or.cond3.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @dcopy_(ptr noundef nonnull %12, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %24, ptr noundef nonnull @c__1) #6
  %i.pp = load double, ptr %24, align 8, !tbaa !15
  store double %i.pp, ptr %i.d, align 8, !tbaa !15
  %i.pq = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @dlarfg_(ptr noundef nonnull %12, ptr noundef nonnull %i.d, ptr noundef nonnull %i.pq, ptr noundef nonnull @c__1, ptr noundef nonnull %i.s) #6
  store double 1.000000e+00, ptr %24, align 8, !tbaa !15
  %i.pr = load i32, ptr %i.o, align 4, !tbaa !13
  %i.ps = add nsw i32 %i.pr, -2                   ; 2 uses
  store i32 %i.ps, ptr %i.a, align 4, !tbaa !13
  store i32 %i.ps, ptr %i.b, align 4, !tbaa !13
  %i.pt = getelementptr i8, ptr %i.ds, i64 24
  call void @dlaset_(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull @c_b17, ptr noundef nonnull @c_b17, ptr noundef %i.pt, ptr noundef nonnull %20) #6
  %i.pu = load i32, ptr %i.o, align 4, !tbaa !13
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr [8 x i8], ptr %i.ah, i64 %i.pv
  %i.px = getelementptr i8, ptr %i.pw, i64 8
  call void @dlarf_(ptr noundef nonnull @.str.9, ptr noundef nonnull %12, ptr noundef nonnull %i.o, ptr noundef nonnull %24, ptr noundef nonnull @c__1, ptr noundef nonnull %i.s, ptr noundef %19, ptr noundef nonnull %20, ptr noundef %i.px) #6
  %i.py = load i32, ptr %i.o, align 4, !tbaa !13
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr [8 x i8], ptr %i.ah, i64 %i.pz
  %i.qb = getelementptr i8, ptr %i.qa, i64 8
  call void @dlarf_(ptr noundef nonnull @.str, ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull %24, ptr noundef nonnull @c__1, ptr noundef nonnull %i.s, ptr noundef %19, ptr noundef nonnull %20, ptr noundef %i.qb) #6
  %i.qc = load i32, ptr %i.o, align 4, !tbaa !13
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr [8 x i8], ptr %i.ah, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 8
  call void @dlarf_(ptr noundef nonnull @.str, ptr noundef nonnull %i.o, ptr noundef nonnull %12, ptr noundef nonnull %24, ptr noundef nonnull @c__1, ptr noundef nonnull %i.s, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %i.qf) #6
  %i.qg = load i32, ptr %25, align 4, !tbaa !13
  %i.qh = load i32, ptr %i.o, align 4, !tbaa !13  ; 2 uses
  %i.qi = sub nsw i32 %i.qg, %i.qh
  store i32 %i.qi, ptr %i.a, align 4, !tbaa !13
  %i.qj = sext i32 %i.qh to i64
  %i.qk = getelementptr [8 x i8], ptr %i.ah, i64 %i.qj
  %i.ql = getelementptr i8, ptr %i.qk, i64 8
  call void @dgehrd_(ptr noundef nonnull %i.o, ptr noundef nonnull @c__1, ptr noundef nonnull %12, ptr noundef %19, ptr noundef nonnull %20, ptr noundef nonnull %24, ptr noundef %i.ql, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.qm = icmp sgt i32 %i.by, 0
  br i1 %i.qm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.qn = load double, ptr %16, align 8, !tbaa !15
  %i.qo = fmul double %spec.select742, %i.qn
  %i.qp = mul nsw i32 %i.by, %i.t
  %i.qq = add nsw i32 %i.bz, %i.qp
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.qr
  store double %i.qo, ptr %i.qs, align 8, !tbaa !15
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @dlacpy_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef %19, ptr noundef nonnull %20, ptr noundef %i.dg, ptr noundef nonnull %7) #6
  %i.qt = load i32, ptr %i.o, align 4, !tbaa !13
  %i.qu = add nsw i32 %i.qt, -1
  store i32 %i.qu, ptr %i.a, align 4, !tbaa !13
  %i.qv = load i32, ptr %20, align 4, !tbaa !13
  %i.qw = add nsw i32 %i.qv, 1
  store i32 %i.qw, ptr %i.b, align 4, !tbaa !13
  %i.qx = load i32, ptr %7, align 4, !tbaa !13
  %i.qy = add nsw i32 %i.qx, 1
  store i32 %i.qy, ptr %i.c, align 4, !tbaa !13
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.dt, ptr noundef nonnull %i.b, ptr noundef %i.dq, ptr noundef nonnull %i.c) #6
  %i.qz = load i32, ptr %12, align 4, !tbaa !13
  %i.ra = icmp slt i32 %i.qz, 2
  %or.cond5.not = select i1 %i.ra, i1 true, i1 %i.pn
  br i1 %or.cond5.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rb = load i32, ptr %25, align 4, !tbaa !13
  %i.rc = load i32, ptr %i.o, align 4, !tbaa !13  ; 2 uses
  %i.rd = sub nsw i32 %i.rb, %i.rc
  store i32 %i.rd, ptr %i.a, align 4, !tbaa !13
  %i.re = sext i32 %i.rc to i64
  %i.rf = getelementptr [8 x i8], ptr %i.ah, i64 %i.re
  %i.rg = getelementptr i8, ptr %i.rf, i64 8
  call void @dormhr_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.o, ptr noundef nonnull %12, ptr noundef nonnull @c__1, ptr noundef nonnull %12, ptr noundef %19, ptr noundef nonnull %20, ptr noundef nonnull %24, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %i.rg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #6
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.rh = load i32, ptr %0, align 4, !tbaa !13    ; 2 uses
  %.not661 = icmp eq i32 %i.rh, 0
  br i1 %.not661, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ri = load i32, ptr %3, align 4, !tbaa !13
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %.0636 = phi i32 [ %i.ri, %bb.az ], [ 1, %bb.ay ] ; 3 uses
  store i32 %i.by, ptr %i.a, align 4, !tbaa !13
  %i.rj = load i32, ptr %21, align 4, !tbaa !13   ; 2 uses
  store i32 %i.rj, ptr %i.b, align 4, !tbaa !13
  %i.rk = icmp slt i32 %i.rj, 0
  %i.rl = icmp sge i32 %.0636, %i.by
  %i.rm = icmp sle i32 %.0636, %i.by
  %.in697 = select i1 %i.rk, i1 %i.rl, i1 %i.rm
  br i1 %.in697, label %.lr.ph700, label %._crit_edge701

.lr.ph700:                                        ; preds = %bb.ba, %.lr.ph700
  %.0634698 = phi i32 [ %i.ru, %.lr.ph700 ], [ %.0636, %bb.ba ] ; 3 uses
  %i.rn = load i32, ptr %21, align 4, !tbaa !13   ; 2 uses
  store i32 %i.rn, ptr %i.c, align 4, !tbaa !13
  %i.ro = sub nsw i32 %i.bz, %.0634698
  %i.rp = call i32 @llvm.smin.i32(i32 %i.rn, i32 %i.ro)
  store i32 %i.rp, ptr %i.r, align 4, !tbaa !13
  %i.rq = add nsw i32 %.0634698, %i.dd
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.rr ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.r, ptr noundef nonnull %i.o, ptr noundef nonnull %i.o, ptr noundef nonnull @c_b18, ptr noundef %i.rs, ptr noundef nonnull %7, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull @c_b17, ptr noundef %22, ptr noundef %23) #6
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef nonnull %i.o, ptr noundef %22, ptr noundef %23, ptr noundef %i.rs, ptr noundef nonnull %7) #6
  %i.rt = load i32, ptr %i.b, align 4, !tbaa !13  ; 2 uses
  %i.ru = add nsw i32 %i.rt, %.0634698            ; 3 uses
  %i.rv = icmp slt i32 %i.rt, 0
  %i.rw = load i32, ptr %i.a, align 4             ; 2 uses
  %i.rx = icmp sge i32 %i.ru, %i.rw
  %i.ry = icmp sle i32 %i.ru, %i.rw
  %.in = select i1 %i.rv, i1 %i.rx, i1 %i.ry
  br i1 %.in, label %.lr.ph700, label %._crit_edge701.loopexit, !llvm.loop !10

._crit_edge701.loopexit:                          ; preds = %.lr.ph700
  %.pre715 = load i32, ptr %0, align 4, !tbaa !13
  br label %._crit_edge701

._crit_edge701:                                   ; preds = %._crit_edge701.loopexit, %bb.ba
  %i.rz = phi i32 [ %.pre715, %._crit_edge701.loopexit ], [ %i.rh, %bb.ba ]
  %.not662 = icmp eq i32 %i.rz, 0
  br i1 %.not662, label %.loopexit674, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge701
  %i.sa = load i32, ptr %2, align 4, !tbaa !13    ; 3 uses
  store i32 %i.sa, ptr %i.b, align 4, !tbaa !13
  %i.sb = load i32, ptr %18, align 4, !tbaa !13   ; 2 uses
  store i32 %i.sb, ptr %i.a, align 4, !tbaa !13
  %i.sc = load i32, ptr %4, align 4, !tbaa !13    ; 2 uses
  %i.sd = add nsw i32 %i.sc, 1                    ; 2 uses
  %i.se = icmp slt i32 %i.sb, 0
  %i.sf = icmp sge i32 %i.sd, %i.sa
  %i.sg = icmp slt i32 %i.sc, %i.sa
  %.in663702 = select i1 %i.se, i1 %i.sf, i1 %i.sg
  br i1 %.in663702, label %.lr.ph705, label %.loopexit674

.lr.ph705:                                        ; preds = %bb.bb, %.lr.ph705
  %.0637703 = phi i32 [ %i.sq, %.lr.ph705 ], [ %i.sd, %bb.bb ] ; 3 uses
  %i.sh = load i32, ptr %18, align 4, !tbaa !13   ; 2 uses
  store i32 %i.sh, ptr %i.c, align 4, !tbaa !13
  %i.si = load i32, ptr %2, align 4, !tbaa !13
  %reass.sub = sub i32 %i.si, %.0637703
  %i.sj = add i32 %reass.sub, 1
  %i.sk = call i32 @llvm.smin.i32(i32 %i.sh, i32 %i.sj)
  store i32 %i.sk, ptr %i.r, align 4, !tbaa !13
  %i.sl = mul nsw i32 %.0637703, %i.t
  %i.sm = add nsw i32 %i.sl, %i.bz
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.sn ; 2 uses
  call void @dgemm_(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r, ptr noundef nonnull %i.o, ptr noundef nonnull @c_b18, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %i.so, ptr noundef nonnull %7, ptr noundef nonnull @c_b17, ptr noundef %19, ptr noundef nonnull %20) #6
  call void @dlacpy_(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r, ptr noundef %19, ptr noundef nonnull %20, ptr noundef %i.so, ptr noundef nonnull %7) #6
  %i.sp = load i32, ptr %i.a, align 4, !tbaa !13  ; 2 uses
  %i.sq = add nsw i32 %i.sp, %.0637703            ; 3 uses
  %i.sr = icmp slt i32 %i.sp, 0
  %i.ss = load i32, ptr %i.b, align 4             ; 2 uses
  %i.st = icmp sge i32 %i.sq, %i.ss
  %i.su = icmp sle i32 %i.sq, %i.ss
  %.in663 = select i1 %i.sr, i1 %i.st, i1 %i.su
  br i1 %.in663, label %.lr.ph705, label %.loopexit674, !llvm.loop !11

.loopexit674:                                     ; preds = %.lr.ph705, %bb.bb, %._crit_edge701
  %i.sv = load i32, ptr %1, align 4, !tbaa !13
  %.not664 = icmp eq i32 %i.sv, 0
  br i1 %.not664, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %.loopexit674
  %i.sw = load i32, ptr %9, align 4, !tbaa !13    ; 3 uses
  store i32 %i.sw, ptr %i.a, align 4, !tbaa !13
  %i.sx = load i32, ptr %21, align 4, !tbaa !13   ; 2 uses
  store i32 %i.sx, ptr %i.b, align 4, !tbaa !13
  %i.sy = load i32, ptr %8, align 4, !tbaa !13    ; 3 uses
  %i.sz = icmp slt i32 %i.sx, 0
  %i.ta = icmp sge i32 %i.sy, %i.sw
  %i.tb = icmp sle i32 %i.sy, %i.sw
  %.in665706 = select i1 %i.sz, i1 %i.ta, i1 %i.tb
  br i1 %.in665706, label %.lr.ph709, label %.loopexit

.lr.ph709:                                        ; preds = %bb.bc
  %i.tc = mul nsw i32 %i.bz, %i.w
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph709, %bb.bd
end_hunk_0
