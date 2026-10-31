Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colormap?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 28
begin_hunk_0_@process_frame:bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.preheader16.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.split.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i ; 2 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.val52, i64 %indvars.iv.i
  %i.ek = load <2 x float>, ptr %i.eh, align 8, !tbaa !40
  store <2 x float> %i.ek, ptr %i.ei, align 8, !tbaa !40
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 1064
  %i.em = load float, ptr %i.el, align 8, !tbaa !40
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store float %i.em, ptr %i.en, align 8, !tbaa !40
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv.next.i
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.next.i ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.val52, i64 %indvars.iv.next.i
  %i.er = load <2 x float>, ptr %i.eo, align 8, !tbaa !40
  store <2 x float> %i.er, ptr %i.ep, align 8, !tbaa !40
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 1064
  %i.et = load float, ptr %i.es, align 8, !tbaa !40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store float %i.et, ptr %i.eu, align 8, !tbaa !40
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader17.i.loopexit66.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !65

.preheader16.i:                                   ; preds = %.loopexit.i, %.preheader17.i
  %indvars.iv129.i = phi i64 [ 0, %.preheader17.i ], [ %indvars.iv.next130.i, %.loopexit.i ] ; 28 uses
  %i.ev = load i32, ptr %i.az, align 4, !tbaa !38 ; 25 uses
  %i.ew = icmp sgt i32 %i.ev, 0                   ; 4 uses
  br i1 %i.ew, label %.lr.ph21.i, label %.preheader15.i

.lr.ph21.i:                                       ; preds = %.preheader16.i
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv129.i ; 5 uses
  %wide.trip.count60.i = zext nneg i32 %i.ev to i64 ; 2 uses
  %xtraiter68 = and i64 %wide.trip.count60.i, 3   ; 3 uses
  %i.ex = icmp ult i32 %i.ev, 4
  br i1 %i.ex, label %.epil.preheader, label %.lr.ph21.i.new

.lr.ph21.i.new:                                   ; preds = %.lr.ph21.i
  %unroll_iter71 = and i64 %wide.trip.count60.i, 2147483644
  br label %bb.j

.preheader15.i.loopexit.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.preheader15.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader15.i.loopexit.unr-lcssa, %.lr.ph21.i
  %indvars.iv57.i.epil.init = phi i64 [ 0, %.lr.ph21.i ], [ %indvars.iv.next58.i.3, %.preheader15.i.loopexit.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter68, 0
  call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv57.i.epil = phi i64 [ %indvars.iv57.i.epil.init, %.epil.preheader ], [ %indvars.iv.next58.i.epil, %bb.i ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %gep.i.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i.epil
  store float 0.000000e+00, ptr %gep.i.epil, align 4, !tbaa !40
  %indvars.iv.next58.i.epil = add nuw nsw i64 %indvars.iv57.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter68
  br i1 %epil.iter.cmp.not, label %.preheader15.i, label %bb.i, !llvm.loop !66

.preheader15.i:                                   ; preds = %.preheader15.i.loopexit.unr-lcssa, %bb.i, %.preheader16.i
  %invariant.gep22.i = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv129.i ; 8 uses
  store float 0.000000e+00, ptr %invariant.gep22.i, align 4, !tbaa !40
  %gep23.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep22.i, i64 16 ; 2 uses
  store float 0.000000e+00, ptr %gep23.1.i, align 4, !tbaa !40
  %gep23.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep22.i, i64 32 ; 2 uses
  store float 0.000000e+00, ptr %gep23.2.i, align 4, !tbaa !40
  %gep23.3.i = getelementptr inbounds nuw i8, ptr %invariant.gep22.i, i64 48 ; 2 uses
  store float 0.000000e+00, ptr %gep23.3.i, align 4, !tbaa !40
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 4 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv.next130.i
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv129.i ; 2 uses
  store float 1.000000e+00, ptr %i.ez, align 4, !tbaa !40
  switch i32 %i.ev, label %bb.r [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.n
    i32 4, label %bb.p
  ]

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i.new
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph21.i.new ], [ %indvars.iv.next58.i.3, %bb.j ] ; 5 uses
  %niter72 = phi i64 [ 0, %.lr.ph21.i.new ], [ %niter72.next.3, %bb.j ]
  %gep.i = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i
  store float 0.000000e+00, ptr %gep.i, align 4, !tbaa !40
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store float 0.000000e+00, ptr %gep.i.1, align 4, !tbaa !40
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  store float 0.000000e+00, ptr %gep.i.2, align 4, !tbaa !40
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv57.i
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  store float 0.000000e+00, ptr %gep.i.3, align 4, !tbaa !40
  %indvars.iv.next58.i.3 = add nuw nsw i64 %indvars.iv57.i, 4 ; 2 uses
  %niter72.next.3 = add i64 %niter72, 4           ; 2 uses
  %niter72.ncmp.3 = icmp eq i64 %niter72.next.3, %unroll_iter71
  br i1 %niter72.ncmp.3, label %.preheader15.i.loopexit.unr-lcssa, label %bb.j, !llvm.loop !67

bb.k:                                             ; preds = %.preheader15.i
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv129.i
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !40 ; 2 uses
  %i.ff = call nsz float @llvm.fabs.f32(float %i.fe)
  %i.fg = fcmp nsz olt float %i.ff, f0x358637BD
  %i.fh = select nsz i1 %i.fg, float f0x358637BD, float %i.fe
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv129.i
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !40
  %i.fk = fdiv nsz float %i.fj, %i.fh
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv129.i
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next130.i
  store float %i.fk, ptr %i.fm, align 4, !tbaa !40
  br label %.loopexit.i

bb.l:                                             ; preds = %.preheader15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store double 1.000000e+00, ptr %i.c, align 16, !tbaa !44
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv129.i
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !40
  %i.fp = fpext nsz float %i.fo to double
  store double %i.fp, ptr %i.dw, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.dx, align 16, !tbaa !44
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv129.i
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !40
  %i.fs = fpext nsz float %i.fr to double
  store double %i.fs, ptr %i.dy, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv129.i
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !40
  %i.fv = fpext nsz float %i.fu to double         ; 2 uses
  store double %i.fv, ptr %i.d, align 16, !tbaa !44
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv129.i
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !40
  %i.fy = fpext nsz float %i.fx to double
  store double %i.fy, ptr %i.dz, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.fz = call fastcc i32 @gauss_make_triangular(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 2)
  %.not.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i, label %gauss_solve.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.l
  %i.ga = load i32, ptr %i.b, align 4, !tbaa !31
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.gb ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !44 ; 2 uses
  store double %i.fv, ptr %i.gc, align 8, !tbaa !44
  %i.ge = load double, ptr %i.dx, align 16, !tbaa !44
  %i.gf = load double, ptr %i.dz, align 8, !tbaa !44
  %i.gg = call nsz double @llvm.fmuladd.f64(double %i.ge, double %i.gd, double %i.gf)
  %i.gh = load double, ptr %i.dy, align 8, !tbaa !44
  %i.gi = fdiv nsz double %i.gg, %i.gh            ; 2 uses
  %i.gj = load double, ptr %i.dw, align 8, !tbaa !44
  %i.gk = fneg nsz double %i.gj
  %i.gl = call nsz double @llvm.fmuladd.f64(double %i.gk, double %i.gi, double %i.gd)
  %i.gm = load double, ptr %i.c, align 16, !tbaa !44
  %i.gn = fdiv nsz double %i.gl, %i.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.go = fptrunc nsz double %i.gn to float
  store float %i.go, ptr %invariant.gep22.i, align 4, !tbaa !40
  %i.gp = fptrunc nsz double %i.gi to float
  store float %i.gp, ptr %i.ez, align 4, !tbaa !40
  br label %bb.m

gauss_solve.exit.i:                               ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.m

bb.m:                                             ; preds = %gauss_solve.exit.i, %.lr.ph.preheader.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.loopexit.i

bb.n:                                             ; preds = %.preheader15.i
  %i.gq = getelementptr inbounds nuw [3 x i8], ptr @__const.build_map.idx, i64 %indvars.iv129.i ; 3 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !94
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !94
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store double 1.000000e+00, ptr %i.e, align 16, !tbaa !44
  %i.gw = zext i8 %i.gr to i64                    ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !40
  %i.gz = zext i8 %i.gt to i64                    ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.gz
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !40
  %i.hc = zext i8 %i.gv to i64                    ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.hc
  %i.he = load float, ptr %i.hd, align 4, !tbaa !40
  %i.hf = fadd nsz float %i.hb, %i.he
  %i.hg = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.hf, i64 1
  %i.hi = fpext nsz <2 x float> %i.hh to <2 x double>
  store <2 x double> %i.hi, ptr %i.dm, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.do, align 8, !tbaa !44
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gw
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !40
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gz
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !40
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hc
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !40
  %i.hp = fadd nsz float %i.hm, %i.ho
  %i.hq = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hr = insertelement <2 x float> %i.hq, float %i.hp, i64 1
  %i.hs = fpext nsz <2 x float> %i.hr to <2 x double>
  store <2 x double> %i.hs, ptr %i.dp, align 16, !tbaa !44
  store double 1.000000e+00, ptr %i.dr, align 16, !tbaa !44
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gw
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !40
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gz
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !40
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.hc
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !40
  %i.hz = fadd nsz float %i.hw, %i.hy
  %i.ia = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ib = insertelement <2 x float> %i.ia, float %i.hz, i64 1
  %i.ic = fpext nsz <2 x float> %i.ib to <2 x double>
  store <2 x double> %i.ic, ptr %i.ds, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv129.i
  %i.ie = load float, ptr %i.id, align 4, !tbaa !40
  %i.if = fpext nsz float %i.ie to double         ; 2 uses
  store double %i.if, ptr %i.f, align 16, !tbaa !44
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv129.i
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !40
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv129.i
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !40
  %i.ik = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %i.ij, i64 1
  %i.im = fpext nsz <2 x float> %i.il to <2 x double>
  store <2 x double> %i.im, ptr %i.du, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.in = call fastcc i32 @gauss_make_triangular(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 3)
  %.not.i287.i = icmp eq i32 %i.in, 0
  br i1 %.not.i287.i, label %gauss_solve.exit311.i, label %.lr.ph.preheader.i.i288.preheader.i

.lr.ph.preheader.i.i288.preheader.i:              ; preds = %bb.n
  %i.io = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ip ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !44 ; 2 uses
  store double %i.if, ptr %i.iq, align 8, !tbaa !44
  store double %i.ir, ptr %i.f, align 16, !tbaa !44
  %i.is = load <2 x double>, ptr %i.do, align 8
  %i.it = load double, ptr %i.dr, align 16, !tbaa !44
  %i.iu = load <2 x double>, ptr %i.du, align 8, !tbaa !44
  %i.iv = insertelement <2 x double> %i.is, double %i.it, i64 1
  %i.iw = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.ix, <2 x double> %i.iu) ; 2 uses
  store <2 x double> %i.iy, ptr %i.du, align 8, !tbaa !44
  %i.iz = load i32, ptr %i.eg, align 4, !tbaa !31
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ja ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !44 ; 2 uses
  %i.jd = extractelement <2 x double> %i.iy, i64 0
  store double %i.jd, ptr %i.jb, align 8, !tbaa !44
  %i.je = load double, ptr %i.ds, align 8, !tbaa !44
  %i.jf = load double, ptr %i.dv, align 16, !tbaa !44
  %i.jg = call nsz double @llvm.fmuladd.f64(double %i.je, double %i.jc, double %i.jf)
  %i.jh = load double, ptr %i.dt, align 16, !tbaa !44
  %i.ji = fdiv nsz double %i.jg, %i.jh            ; 3 uses
  store double %i.ji, ptr %i.dv, align 16, !tbaa !44
  %i.jj = load double, ptr %i.dn, align 16, !tbaa !44
  %i.jk = load double, ptr %i.f, align 16, !tbaa !44
  %i.jl = fneg nsz double %i.jj
  %i.jm = call nsz double @llvm.fmuladd.f64(double %i.jl, double %i.ji, double %i.jk)
  %i.jn = load double, ptr %i.dq, align 8, !tbaa !44
  %i.jo = fneg nsz double %i.jn
  %i.jp = call nsz double @llvm.fmuladd.f64(double %i.jo, double %i.ji, double %i.jc)
  %i.jq = load double, ptr %i.dp, align 16, !tbaa !44
  %i.jr = fdiv nsz double %i.jp, %i.jq            ; 2 uses
  store double %i.jr, ptr %i.du, align 8, !tbaa !44
  %i.js = load double, ptr %i.dm, align 8, !tbaa !44
  %i.jt = fneg nsz double %i.js
  %i.ju = call nsz double @llvm.fmuladd.f64(double %i.jt, double %i.jr, double %i.jm)
  %i.jv = load double, ptr %i.e, align 16, !tbaa !44
  %i.jw = fdiv nsz double %i.ju, %i.jv            ; 2 uses
  store double %i.jw, ptr %i.f, align 16, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr @__const.build_map.didx, i64 %indvars.iv129.i ; 3 uses
  %i.jy = fptrunc nsz double %i.jw to float
  store float %i.jy, ptr %invariant.gep22.i, align 4, !tbaa !40
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !94
  %i.kb = zext i8 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.kb
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !44
  %i.ke = fptrunc nsz double %i.kd to float
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv129.i
  store float %i.ke, ptr %i.kf, align 4, !tbaa !40
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jx, i64 2
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !94
  %i.ki = zext i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ki
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !44
  %i.kl = fptrunc nsz double %i.kk to float
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv129.i
  store float %i.kl, ptr %i.km, align 4, !tbaa !40
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jx, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !94
  %i.kp = zext i8 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !44
  %i.ks = fptrunc nsz double %i.kr to float
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv129.i
  store float %i.ks, ptr %i.kt, align 4, !tbaa !40
  br label %bb.o

gauss_solve.exit311.i:                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.o:                                             ; preds = %gauss_solve.exit311.i, %.lr.ph.preheader.i.i288.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.loopexit.i

bb.p:                                             ; preds = %.preheader15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store double 1.000000e+00, ptr %i.g, align 16, !tbaa !44
  %i.ku = load <2 x float>, ptr %i.cg, align 8, !tbaa !40
  %i.kv = fpext nsz <2 x float> %i.ku to <2 x double>
  store <2 x double> %i.kv, ptr %i.cf, align 8, !tbaa !44
  %i.kw = load float, ptr %i.cj, align 8, !tbaa !40
  %i.kx = fpext nsz float %i.kw to double
  store double %i.kx, ptr %i.ci, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.ck, align 16, !tbaa !44
  %i.ky = load <2 x float>, ptr %i.cm, align 8, !tbaa !40
  %i.kz = fpext nsz <2 x float> %i.ky to <2 x double>
  store <2 x double> %i.kz, ptr %i.cl, align 8, !tbaa !44
  %i.la = load float, ptr %i.cp, align 8, !tbaa !40
  %i.lb = fpext nsz float %i.la to double
  store double %i.lb, ptr %i.co, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.cq, align 16, !tbaa !44
  %i.lc = load <2 x float>, ptr %i.cs, align 8, !tbaa !40
  %i.ld = fpext nsz <2 x float> %i.lc to <2 x double>
  store <2 x double> %i.ld, ptr %i.cr, align 8, !tbaa !44
  %i.le = load float, ptr %i.cv, align 8, !tbaa !40
  %i.lf = fpext nsz float %i.le to double
  store double %i.lf, ptr %i.cu, align 8, !tbaa !44
  store double 1.000000e+00, ptr %i.cw, align 16, !tbaa !44
  %i.lg = load <2 x float>, ptr %i.cy, align 8, !tbaa !40
  %i.lh = fpext nsz <2 x float> %i.lg to <2 x double>
  store <2 x double> %i.lh, ptr %i.cx, align 8, !tbaa !44
  %i.li = load float, ptr %i.db, align 8, !tbaa !40
  %i.lj = fpext nsz float %i.li to double
  store double %i.lj, ptr %i.da, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv129.i
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !40
  %i.lm = fpext nsz float %i.ll to double         ; 2 uses
  store double %i.lm, ptr %i.h, align 16, !tbaa !44
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv129.i
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !40
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv129.i
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !40
  %i.lr = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.ls = insertelement <2 x float> %i.lr, float %i.lq, i64 1
  %i.lt = fpext nsz <2 x float> %i.ls to <2 x double>
  store <2 x double> %i.lt, ptr %i.dd, align 8, !tbaa !44
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv129.i
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !40
  %i.lw = fpext nsz float %i.lv to double
  store double %i.lw, ptr %i.dh, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.lx = call fastcc i32 @gauss_make_triangular(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, i32 noundef 4)
  %.not.i = icmp eq i32 %i.lx, 0
  br i1 %.not.i, label %bb.q, label %.lr.ph.preheader.i.preheader.i

.lr.ph.preheader.i.preheader.i:                   ; preds = %bb.p
  %i.ly = load i32, ptr %i.i, align 16, !tbaa !31
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.lz ; 2 uses
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !44 ; 3 uses
  store double %i.lm, ptr %i.ma, align 8, !tbaa !44
  store double %i.mb, ptr %i.h, align 16, !tbaa !44
  %i.mc = load <2 x double>, ptr %i.ck, align 16
  %i.md = load double, ptr %i.cq, align 16, !tbaa !44
  %i.me = load <2 x double>, ptr %i.dd, align 8, !tbaa !44
  %i.mf = insertelement <2 x double> %i.mc, double %i.md, i64 1
  %i.mg = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mi = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.mh, <2 x double> %i.me) ; 2 uses
  store <2 x double> %i.mi, ptr %i.dd, align 8, !tbaa !44
  %i.mj = load double, ptr %i.cw, align 16, !tbaa !44
  %i.mk = load double, ptr %i.dh, align 8, !tbaa !44
  %i.ml = call nsz double @llvm.fmuladd.f64(double %i.mj, double %i.mb, double %i.mk)
  store double %i.ml, ptr %i.dh, align 8, !tbaa !44
  %i.mm = load i32, ptr %i.ee, align 4, !tbaa !31
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mn ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !44 ; 2 uses
  %i.mq = extractelement <2 x double> %i.mi, i64 0
  store double %i.mq, ptr %i.mo, align 8, !tbaa !44
  store double %i.mp, ptr %i.dd, align 8, !tbaa !44
  %i.mr = load <2 x double>, ptr %i.cr, align 8
  %i.ms = load double, ptr %i.cx, align 8, !tbaa !44
  %i.mt = load <2 x double>, ptr %i.df, align 16, !tbaa !44
  %i.mu = insertelement <2 x double> %i.mr, double %i.ms, i64 1
  %i.mv = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mw = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.mw, <2 x double> %i.mt) ; 2 uses
  store <2 x double> %i.mx, ptr %i.df, align 16, !tbaa !44
  %i.my = load i32, ptr %i.ef, align 8, !tbaa !31
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mz ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !44 ; 3 uses
  %i.nc = extractelement <2 x double> %i.mx, i64 0
  store double %i.nc, ptr %i.na, align 8, !tbaa !44
  store double %i.nb, ptr %i.df, align 16, !tbaa !44
  %i.nd = load double, ptr %i.cz, align 16, !tbaa !44
  %i.ne = load double, ptr %i.dh, align 8, !tbaa !44
  %i.nf = call nsz double @llvm.fmuladd.f64(double %i.nd, double %i.nb, double %i.ne) ; 2 uses
  store double %i.nf, ptr %i.dh, align 8, !tbaa !44
  %i.ng = load double, ptr %i.da, align 8, !tbaa !44
  %i.nh = fdiv nsz double %i.nf, %i.ng            ; 3 uses
  %i.ni = load <2 x double>, ptr %i.ci, align 8
  %i.nj = load double, ptr %i.co, align 8, !tbaa !44
  %i.nk = load <2 x double>, ptr %i.h, align 16, !tbaa !44
  %i.nl = insertelement <2 x double> %i.ni, double %i.nj, i64 1
  %i.nm = fneg nsz <2 x double> %i.nl
  %i.nn = insertelement <2 x double> poison, double %i.nh, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.no, <2 x double> %i.nk) ; 2 uses
  %i.nq = load double, ptr %i.cu, align 8, !tbaa !44
  %i.nr = fneg nsz double %i.nq
  %i.ns = call nsz double @llvm.fmuladd.f64(double %i.nr, double %i.nh, double %i.nb)
  %i.nt = load double, ptr %i.ct, align 16, !tbaa !44
  %i.nu = fdiv nsz double %i.ns, %i.nt            ; 3 uses
  %i.nv = load double, ptr %i.ch, align 16, !tbaa !44
  %i.nw = fneg nsz double %i.nv
  %i.nx = extractelement <2 x double> %i.np, i64 0
  %i.ny = call nsz double @llvm.fmuladd.f64(double %i.nw, double %i.nu, double %i.nx)
  %i.nz = load double, ptr %i.cn, align 16, !tbaa !44
  %i.oa = fneg nsz double %i.nz
  %i.ob = extractelement <2 x double> %i.np, i64 1
  %i.oc = call nsz double @llvm.fmuladd.f64(double %i.oa, double %i.nu, double %i.ob)
  %i.od = load double, ptr %i.cl, align 8, !tbaa !44
  %i.oe = fdiv nsz double %i.oc, %i.od            ; 2 uses
  %i.of = load double, ptr %i.cf, align 8, !tbaa !44
  %i.og = fneg nsz double %i.of
  %i.oh = call nsz double @llvm.fmuladd.f64(double %i.og, double %i.oe, double %i.ny)
  %i.oi = load double, ptr %i.g, align 16, !tbaa !44
  %i.oj = fdiv nsz double %i.oh, %i.oi
  %i.ok = fptrunc nsz double %i.oj to float
  store float %i.ok, ptr %invariant.gep22.i, align 4, !tbaa !40
  %i.ol = fptrunc nsz double %i.oe to float
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv129.i
  store float %i.ol, ptr %i.om, align 4, !tbaa !40
  %i.on = fptrunc nsz double %i.nu to float
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv129.i
  store float %i.on, ptr %i.oo, align 4, !tbaa !40
  %i.op = fptrunc nsz double %i.nh to float
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv129.i
  store float %i.op, ptr %i.oq, align 4, !tbaa !40
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph.preheader.i.preheader.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %.loopexit.i

bb.r:                                             ; preds = %.preheader15.i
  %i.or = add i32 %i.ev, 4                        ; 12 uses
  br i1 %i.ew, label %.preheader6.preheader.i, label %..preheader10.i_crit_edge

..preheader10.i_crit_edge:                        ; preds = %bb.r
  %.pre55 = add nsw i32 %i.ev, 1
  br label %.preheader10.i

.preheader6.preheader.i:                          ; preds = %bb.r
  %i.os = zext i32 %i.or to i64                   ; 16 uses
  %wide.trip.count80.i = zext nneg i32 %i.ev to i64 ; 12 uses
  br label %.preheader6.i

.preheader14.i:                                   ; preds = %bb.s
  %i.ot = mul nuw nsw i32 %i.or, %i.ev
  %i.ou = zext i32 %i.ot to i64
  %invariant.gep142.i = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ou ; 5 uses
  %invariant.gep144.i = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %wide.trip.count80.i ; 14 uses
  %i.ov = add nsw i64 %wide.trip.count80.i, -1    ; 3 uses
  %xtraiter74 = and i64 %wide.trip.count80.i, 3   ; 3 uses
  %i.ow = icmp ult i32 %i.ev, 4
  br i1 %i.ow, label %.epil.preheader73, label %.preheader14.i.new

.preheader14.i.new:                               ; preds = %.preheader14.i
  %unroll_iter78 = and i64 %wide.trip.count80.i, 2147483644
  br label %bb.v

.preheader6.i:                                    ; preds = %bb.s, %.preheader6.preheader.i
  %indvars.iv72.i = phi i64 [ 0, %.preheader6.preheader.i ], [ %indvars.iv.next73.i, %bb.s ] ; 5 uses
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %indvars.iv72.i
  %i.oy = mul nuw nsw i64 %indvars.iv72.i, %i.os
  %invariant.gep138.i = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv72.i
  %invariant.gep140.i = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.oy
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count80.i
  br i1 %exitcond81.not.i, label %.preheader14.i, label %.preheader6.i, !llvm.loop !68

bb.t:                                             ; preds = %bb.t, %.preheader6.i
  %indvars.iv74.i = phi i64 [ %indvars.iv72.i, %.preheader6.i ], [ %indvars.iv.next75.i, %bb.t ] ; 4 uses
  %i.oz = load ptr, ptr %i.ed, align 8, !tbaa !37
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %indvars.iv74.i
  %i.pb = call nsz float %i.oz(ptr noundef nonnull %i.pa, ptr noundef nonnull %i.ox) #12, !inline_history !69
  %i.pc = fpext nsz float %i.pb to double         ; 2 uses
  %i.pd = mul nuw nsw i64 %indvars.iv74.i, %i.os
  %gep139.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep138.i, i64 %i.pd
  store double %i.pc, ptr %gep139.i, align 8, !tbaa !44
  %gep141.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep140.i, i64 %indvars.iv74.i
  store double %i.pc, ptr %gep141.i, align 8, !tbaa !44
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %wide.trip.count80.i
  br i1 %exitcond78.not.i, label %bb.s, label %bb.t, !llvm.loop !70

.lr.ph30.i.unr-lcssa:                             ; preds = %bb.v
  %lcmp.mod76.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod76.not, label %.lr.ph30.i, label %.epil.preheader73

.epil.preheader73:                                ; preds = %.lr.ph30.i.unr-lcssa, %.preheader14.i
  %indvars.iv82.i.epil.init = phi i64 [ 0, %.preheader14.i ], [ %indvars.iv.next83.i.3, %.lr.ph30.i.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter74, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader73
  %indvars.iv82.i.epil = phi i64 [ %indvars.iv82.i.epil.init, %.epil.preheader73 ], [ %indvars.iv.next83.i.epil, %bb.u ] ; 3 uses
  %epil.iter75 = phi i64 [ 0, %.epil.preheader73 ], [ %epil.iter75.next, %bb.u ]
  %gep143.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142.i, i64 %indvars.iv82.i.epil
  store double 1.000000e+00, ptr %gep143.i.epil, align 8, !tbaa !44
  %i.pe = mul nuw nsw i64 %indvars.iv82.i.epil, %i.os
  %gep145.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep144.i, i64 %i.pe
  store double 1.000000e+00, ptr %gep145.i.epil, align 8, !tbaa !44
  %indvars.iv.next83.i.epil = add nuw nsw i64 %indvars.iv82.i.epil, 1
  %epil.iter75.next = add i64 %epil.iter75, 1     ; 2 uses
  %epil.iter75.cmp.not = icmp eq i64 %epil.iter75.next, %xtraiter74
  br i1 %epil.iter75.cmp.not, label %.lr.ph30.i, label %bb.u, !llvm.loop !71

.lr.ph30.i:                                       ; preds = %bb.u, %.lr.ph30.i.unr-lcssa
  %i.pf = add nuw i32 %i.ev, 1                    ; 3 uses
  %i.pg = mul nuw nsw i32 %i.pf, %i.or
  %i.ph = zext nneg i32 %i.pg to i64
  %invariant.gep146.i = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ph ; 3 uses
  %xtraiter81 = and i64 %wide.trip.count80.i, 1
  %i.pi = icmp eq i64 %i.ov, 0
  br i1 %i.pi, label %.epil.preheader80, label %.lr.ph30.i.new

.lr.ph30.i.new:                                   ; preds = %.lr.ph30.i
  %unroll_iter85 = and i64 %wide.trip.count80.i, 2147483646
  br label %bb.w

bb.v:                                             ; preds = %bb.v, %.preheader14.i.new
  %indvars.iv82.i = phi i64 [ 0, %.preheader14.i.new ], [ %indvars.iv.next83.i.3, %bb.v ] ; 6 uses
  %niter79 = phi i64 [ 0, %.preheader14.i.new ], [ %niter79.next.3, %bb.v ]
  %gep143.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142.i, i64 %indvars.iv82.i
  store double 1.000000e+00, ptr %gep143.i, align 8, !tbaa !44
end_hunk_0
begin_hunk_1_@process_frame:bb.a
  store double %i.tu, ptr %i.tv, align 8, !tbaa !44
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count112.i
  br i1 %exitcond113.not.i, label %.preheader8.thread.i, label %scalar.ph, !llvm.loop !77

.preheader8.thread.i:                             ; preds = %scalar.ph
  %i.tw = shl nuw nsw i64 %wide.trip.count112.i, 3
  %scevgep115136.i = getelementptr i8, ptr %i.eb, i64 %i.tw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep115136.i, i8 0, i64 %i.ro, i1 false), !tbaa !44
  br label %.lr.ph53.preheader.i.i

.lr.ph53.preheader.i.i:                           ; preds = %.preheader8.thread.i, %.preheader8.i
  %i.tx = phi i64 [ %wide.trip.count112.i, %.preheader8.thread.i ], [ %i.tn, %.preheader8.i ] ; 3 uses
  %i.ty = add nsw i32 %i.ev, 3
  %i.tz = zext nneg i32 %i.or to i64              ; 11 uses
  %wide.trip.count63.i.i = zext nneg i32 %i.ty to i64
  %i.ua = add nsw i64 %i.tz, -2
  br label %.lr.ph.preheader.i312.i

.loopexit.i322.i:                                 ; preds = %.lr.ph.i317.i, %.lr.ph.i317.i.prol.loopexit
  %indvars.iv.next61.i315.i = add nuw nsw i64 %indvars.iv60.i313.i, 1 ; 2 uses
  %indvars.iv.next.i323.i = add nuw nsw i64 %indvars.iv.i314.i, 1
  %exitcond64.not.i324.i = icmp eq i64 %indvars.iv.next61.i315.i, %wide.trip.count63.i.i
  br i1 %exitcond64.not.i324.i, label %.preheader.i325.i.preheader, label %.lr.ph.preheader.i312.i, !llvm.loop !78

.preheader.i325.i.preheader:                      ; preds = %.loopexit.i322.i
  %i.ub = add nsw i64 %i.tz, -2
  br label %.preheader.i325.i

.lr.ph.preheader.i312.i:                          ; preds = %.loopexit.i322.i, %.lr.ph53.preheader.i.i
  %indvars.iv60.i313.i = phi i64 [ 0, %.lr.ph53.preheader.i.i ], [ %indvars.iv.next61.i315.i, %.loopexit.i322.i ] ; 6 uses
  %indvars.iv.i314.i = phi i64 [ 1, %.lr.ph53.preheader.i.i ], [ %indvars.iv.next.i323.i, %.loopexit.i322.i ] ; 5 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv60.i313.i
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !31
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ue ; 2 uses
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !44 ; 4 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv60.i313.i ; 2 uses
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !44
  store double %i.ui, ptr %i.uf, align 8, !tbaa !44
  store double %i.ug, ptr %i.uh, align 8, !tbaa !44
  %invariant.gep.i316.i = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv60.i313.i ; 3 uses
  %i.uj = sub nsw i64 %indvars.iv60.i313.i, %i.tz
  %i.uk = and i64 %i.uj, 1
  %lcmp.mod102.not.not = icmp eq i64 %i.uk, 0
  br i1 %lcmp.mod102.not.not, label %.lr.ph.i317.i.prol, label %.lr.ph.i317.i.prol.loopexit

.lr.ph.i317.i.prol:                               ; preds = %.lr.ph.preheader.i312.i
  %i.ul = mul nuw nsw i64 %indvars.iv.i314.i, %i.tz
  %gep.i319.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i316.i, i64 %i.ul
  %i.um = load double, ptr %gep.i319.i.prol, align 8, !tbaa !44
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i314.i ; 2 uses
  %i.uo = load double, ptr %i.un, align 8, !tbaa !44
  %i.up = call nsz double @llvm.fmuladd.f64(double %i.um, double %i.ug, double %i.uo)
  store double %i.up, ptr %i.un, align 8, !tbaa !44
  %indvars.iv.next58.i320.i.prol = add nuw nsw i64 %indvars.iv.i314.i, 1
  br label %.lr.ph.i317.i.prol.loopexit

.lr.ph.i317.i.prol.loopexit:                      ; preds = %.lr.ph.i317.i.prol, %.lr.ph.preheader.i312.i
  %indvars.iv57.i318.i.unr = phi i64 [ %indvars.iv.i314.i, %.lr.ph.preheader.i312.i ], [ %indvars.iv.next58.i320.i.prol, %.lr.ph.i317.i.prol ]
  %i.uq = icmp eq i64 %i.ua, %indvars.iv60.i313.i
  br i1 %i.uq, label %.loopexit.i322.i, label %.lr.ph.i317.i

.lr.ph.i317.i:                                    ; preds = %.lr.ph.i317.i.prol.loopexit, %.lr.ph.i317.i
  %indvars.iv57.i318.i = phi i64 [ %indvars.iv.next58.i320.i.1, %.lr.ph.i317.i ], [ %indvars.iv57.i318.i.unr, %.lr.ph.i317.i.prol.loopexit ] ; 4 uses
  %i.ur = mul nuw nsw i64 %indvars.iv57.i318.i, %i.tz
  %gep.i319.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i316.i, i64 %i.ur
  %i.us = load double, ptr %gep.i319.i, align 8, !tbaa !44
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv57.i318.i ; 2 uses
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !44
  %i.uv = call nsz double @llvm.fmuladd.f64(double %i.us, double %i.ug, double %i.uu)
  store double %i.uv, ptr %i.ut, align 8, !tbaa !44
  %indvars.iv.next58.i320.i = add nuw nsw i64 %indvars.iv57.i318.i, 1 ; 2 uses
  %i.uw = mul nuw nsw i64 %indvars.iv.next58.i320.i, %i.tz
  %gep.i319.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i316.i, i64 %i.uw
  %i.ux = load double, ptr %gep.i319.i.1, align 8, !tbaa !44
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next58.i320.i ; 2 uses
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !44
  %i.va = call nsz double @llvm.fmuladd.f64(double %i.ux, double %i.ug, double %i.uz)
  store double %i.va, ptr %i.uy, align 8, !tbaa !44
  %indvars.iv.next58.i320.i.1 = add nuw nsw i64 %indvars.iv57.i318.i, 2 ; 2 uses
  %exitcond.not.i321.i.1 = icmp eq i64 %indvars.iv.next58.i320.i.1, %i.tz
  br i1 %exitcond.not.i321.i.1, label %.loopexit.i322.i, label %.lr.ph.i317.i, !llvm.loop !79

.preheader.i325.i:                                ; preds = %.preheader.i325.i.preheader, %bb.aa
  %indvar = phi i64 [ 0, %.preheader.i325.i.preheader ], [ %indvar.next, %bb.aa ] ; 2 uses
  %indvars.iv70.in.i326.i = phi i64 [ %i.tz, %.preheader.i325.i.preheader ], [ %indvars.iv70.i327.i, %bb.aa ] ; 2 uses
  %indvars.iv70.i327.i = add nsw i64 %indvars.iv70.in.i326.i, -1 ; 7 uses
  %i.vb = trunc nuw nsw i64 %indvars.iv70.i327.i to i32
  %i.vc = mul i32 %i.ri, %i.vb
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.vd
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !44
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv70.i327.i ; 2 uses
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !44
  %i.vi = fdiv nsz double %i.vh, %i.vf            ; 4 uses
  store double %i.vi, ptr %i.vg, align 8, !tbaa !44
  %invariant.gep73.i328.i = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv70.i327.i ; 3 uses
  %xtraiter104 = and i64 %indvars.iv70.i327.i, 1
  %i.vj = icmp eq i64 %i.ub, %indvar
  br i1 %i.vj, label %.epil.preheader103, label %.preheader.i325.i.new

.preheader.i325.i.new:                            ; preds = %.preheader.i325.i
  %unroll_iter108 = and i64 %indvars.iv70.i327.i, -2
  br label %bb.ab

.unr-lcssa:                                       ; preds = %bb.ab
  %lcmp.mod106.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod106.not, label %bb.aa, label %.epil.preheader103

.epil.preheader103:                               ; preds = %.unr-lcssa, %.preheader.i325.i
  %indvars.iv65.i329.i.epil.init = phi i64 [ 0, %.preheader.i325.i ], [ %indvars.iv.next66.i331.i.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod107 = trunc i64 %indvars.iv70.i327.i to i1
  call void @llvm.assume(i1 %lcmp.mod107)
  %i.vk = mul nuw nsw i64 %indvars.iv65.i329.i.epil.init, %i.tz
  %gep74.i330.i.epil = getelementptr [8 x i8], ptr %invariant.gep73.i328.i, i64 %i.vk
  %i.vl = load double, ptr %gep74.i330.i.epil, align 8, !tbaa !44
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv65.i329.i.epil.init ; 2 uses
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !44
  %i.vo = fneg nsz double %i.vl
  %i.vp = call nsz double @llvm.fmuladd.f64(double %i.vo, double %i.vi, double %i.vn)
  store double %i.vp, ptr %i.vm, align 8, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %.unr-lcssa, %.epil.preheader103
  %i.vq = icmp samesign ugt i64 %indvars.iv70.in.i326.i, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.vq, label %.preheader.i325.i, label %gauss_solve_triangular.exit333.i, !llvm.loop !80

bb.ab:                                            ; preds = %bb.ab, %.preheader.i325.i.new
  %indvars.iv65.i329.i = phi i64 [ 0, %.preheader.i325.i.new ], [ %indvars.iv.next66.i331.i.1, %bb.ab ] ; 4 uses
  %niter109 = phi i64 [ 0, %.preheader.i325.i.new ], [ %niter109.next.1, %bb.ab ]
  %i.vr = mul nuw nsw i64 %indvars.iv65.i329.i, %i.tz
  %gep74.i330.i = getelementptr [8 x i8], ptr %invariant.gep73.i328.i, i64 %i.vr
  %i.vs = load double, ptr %gep74.i330.i, align 8, !tbaa !44
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv65.i329.i ; 2 uses
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !44
  %i.vv = fneg nsz double %i.vs
  %i.vw = call nsz double @llvm.fmuladd.f64(double %i.vv, double %i.vi, double %i.vu)
  store double %i.vw, ptr %i.vt, align 8, !tbaa !44
  %indvars.iv.next66.i331.i = or disjoint i64 %indvars.iv65.i329.i, 1 ; 2 uses
  %i.vx = mul nuw nsw i64 %indvars.iv.next66.i331.i, %i.tz
  %gep74.i330.i.1 = getelementptr [8 x i8], ptr %invariant.gep73.i328.i, i64 %i.vx
  %i.vy = load double, ptr %gep74.i330.i.1, align 8, !tbaa !44
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next66.i331.i ; 2 uses
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !44
  %i.wb = fneg nsz double %i.vy
  %i.wc = call nsz double @llvm.fmuladd.f64(double %i.wb, double %i.vi, double %i.wa)
  store double %i.wc, ptr %i.vz, align 8, !tbaa !44
  %indvars.iv.next66.i331.i.1 = add nuw nsw i64 %indvars.iv65.i329.i, 2 ; 2 uses
  %niter109.next.1 = add i64 %niter109, 2         ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %.unr-lcssa, label %bb.ab, !llvm.loop !81

gauss_solve_triangular.exit333.i:                 ; preds = %bb.aa
  %i.wd = load double, ptr %i.ea, align 8, !tbaa !44
  %i.we = load double, ptr %i.eb, align 8, !tbaa !44
  %i.wf = fdiv nsz double %i.we, %i.wd
  store double %i.wf, ptr %i.eb, align 8, !tbaa !44
  br i1 %i.ew, label %.lr.ph43.i, label %.preheader7.i

.lr.ph43.i:                                       ; preds = %gauss_solve_triangular.exit333.i
  %invariant.gep44.i = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv129.i ; 5 uses
  %wide.trip.count123.i = zext nneg i32 %i.ev to i64 ; 2 uses
  %xtraiter111 = and i64 %wide.trip.count123.i, 3 ; 3 uses
  %i.wg = add nsw i32 %i.ev, -1
  %i.wh = icmp ult i32 %i.wg, 3
  br i1 %i.wh, label %.epil.preheader110, label %.lr.ph43.i.new

.lr.ph43.i.new:                                   ; preds = %.lr.ph43.i
  %unroll_iter115 = and i64 %wide.trip.count123.i, 2147483644
  br label %bb.ad

.preheader7.i.loopexit.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %.preheader7.i, label %.epil.preheader110

.epil.preheader110:                               ; preds = %.preheader7.i.loopexit.unr-lcssa, %.lr.ph43.i
  %indvars.iv120.i.epil.init = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next121.i.3, %.preheader7.i.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod114)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader110
  %indvars.iv120.i.epil = phi i64 [ %indvars.iv120.i.epil.init, %.epil.preheader110 ], [ %indvars.iv.next121.i.epil, %bb.ac ] ; 3 uses
  %epil.iter112 = phi i64 [ 0, %.epil.preheader110 ], [ %epil.iter112.next, %bb.ac ]
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv120.i.epil
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !44
  %i.wk = fptrunc nsz double %i.wj to float
  %gep45.i.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv120.i.epil
  store float %i.wk, ptr %gep45.i.epil, align 4, !tbaa !40
  %indvars.iv.next121.i.epil = add nuw nsw i64 %indvars.iv120.i.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %.preheader7.i, label %bb.ac, !llvm.loop !82

.preheader7.i:                                    ; preds = %.preheader7.i.loopexit.unr-lcssa, %bb.ac, %gauss_solve_triangular.exit333.i, %gauss_solve_triangular.exit333.thread.i
  %i.wl = phi i64 [ %i.tn, %gauss_solve_triangular.exit333.thread.i ], [ %i.tx, %gauss_solve_triangular.exit333.i ], [ %i.tx, %bb.ac ], [ %i.tx, %.preheader7.i.loopexit.unr-lcssa ]
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.wl ; 2 uses
  %i.wn = load <2 x double>, ptr %i.wm, align 8, !tbaa !44
  %i.wo = fptrunc nsz <2 x double> %i.wn to <2 x float> ; 2 uses
  %i.wp = extractelement <2 x float> %i.wo, i64 0
  store float %i.wp, ptr %invariant.gep22.i, align 4, !tbaa !40
  %i.wq = extractelement <2 x float> %i.wo, i64 1
  store float %i.wq, ptr %gep23.1.i, align 4, !tbaa !40
  %i.wr = getelementptr i8, ptr %i.wm, i64 16
  %i.ws = load <2 x double>, ptr %i.wr, align 8, !tbaa !44
  %i.wt = fptrunc nsz <2 x double> %i.ws to <2 x float> ; 2 uses
  %i.wu = extractelement <2 x float> %i.wt, i64 0
  store float %i.wu, ptr %gep23.2.i, align 4, !tbaa !40
  %i.wv = extractelement <2 x float> %i.wt, i64 1
  store float %i.wv, ptr %gep23.3.i, align 4, !tbaa !40
  br label %.loopexit.i

bb.ad:                                            ; preds = %bb.ad, %.lr.ph43.i.new
  %indvars.iv120.i = phi i64 [ 0, %.lr.ph43.i.new ], [ %indvars.iv.next121.i.3, %bb.ad ] ; 6 uses
  %niter116 = phi i64 [ 0, %.lr.ph43.i.new ], [ %niter116.next.3, %bb.ad ]
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv120.i
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !44
  %i.wy = fptrunc nsz double %i.wx to float
  %gep45.i = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv120.i
  store float %i.wy, ptr %gep45.i, align 4, !tbaa !40
  %indvars.iv.next121.i = or disjoint i64 %indvars.iv120.i, 1 ; 2 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next121.i
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !44
  %i.xb = fptrunc nsz double %i.xa to float
  %gep45.i.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv.next121.i
  store float %i.xb, ptr %gep45.i.1, align 4, !tbaa !40
  %indvars.iv.next121.i.1 = or disjoint i64 %indvars.iv120.i, 2 ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next121.i.1
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !44
  %i.xe = fptrunc nsz double %i.xd to float
  %gep45.i.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv.next121.i.1
  store float %i.xe, ptr %gep45.i.2, align 4, !tbaa !40
  %indvars.iv.next121.i.2 = or disjoint i64 %indvars.iv120.i, 3 ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next121.i.2
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !44
  %i.xh = fptrunc nsz double %i.xg to float
  %gep45.i.3 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep44.i, i64 %indvars.iv.next121.i.2
  store float %i.xh, ptr %gep45.i.3, align 4, !tbaa !40
  %indvars.iv.next121.i.3 = add nuw nsw i64 %indvars.iv120.i, 4 ; 2 uses
  %niter116.next.3 = add i64 %niter116, 4         ; 2 uses
  %niter116.ncmp.3 = icmp eq i64 %niter116.next.3, %unroll_iter115
  br i1 %niter116.ncmp.3, label %.preheader7.i.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !83

.loopexit.i:                                      ; preds = %.preheader7.i, %bb.z, %bb.q, %bb.o, %bb.m, %bb.k
  %exitcond132.not.i = icmp eq i64 %indvars.iv.next130.i, 3
  br i1 %exitcond132.not.i, label %build_map.exit, label %.preheader16.i, !llvm.loop !84

build_map.exit:                                   ; preds = %.loopexit.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 0, ptr %i.xi, align 4, !tbaa !31
  store i32 0, ptr %i.au, align 8, !tbaa !31
  br label %bb.ae

bb.ae:                                            ; preds = %build_map.exit, %bb.g
  %i.xj = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !95
  %.not43 = icmp eq i32 %i.xk, 0
  %i.xl = load ptr, ptr %i.j, align 8, !tbaa !89  ; 2 uses
  br i1 %.not43, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.xm = call i32 @av_frame_is_writable(ptr noundef %i.xl) #12
  %.not44 = icmp eq i32 %i.xm, 0
  br i1 %.not44, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.xn = load ptr, ptr %i.j, align 8, !tbaa !89  ; 2 uses
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.xo = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !96
  %i.xq = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !97
  %i.xs = call ptr @ff_get_video_buffer(ptr noundef %i.s, i32 noundef %i.xp, i32 noundef %i.xr) #12 ; 3 uses
  %.not45 = icmp eq ptr %i.xs, null
  br i1 %.not45, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @av_frame_free(ptr noundef nonnull %i.j) #12
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.xt = load ptr, ptr %i.j, align 8, !tbaa !89
  %i.xu = call i32 @av_frame_copy_props(ptr noundef nonnull %i.xs, ptr noundef %i.xt) #12 ; 0 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !89
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %i.xv = phi ptr [ %i.xn, %bb.ag ], [ %.pre, %bb.aj ] ; 2 uses
  %.034 = phi ptr [ %i.xn, %bb.ag ], [ %i.xs, %bb.aj ] ; 4 uses
  store ptr %i.xv, ptr %1, align 8, !tbaa !48
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.034, ptr %i.xw, align 8, !tbaa !49
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 108
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !54
  %i.xz = call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.n) #13
  %. = call i32 @llvm.smin.i32(i32 %i.xy, i32 %i.xz)
  %i.ya = call i32 @ff_filter_execute(ptr noundef nonnull %i.n, ptr noundef nonnull @colormap_slice, ptr noundef nonnull %1, ptr noundef null, i32 noundef %.) #12 ; 0 uses
  %i.yb = load ptr, ptr %i.j, align 8, !tbaa !89
  %.not46 = icmp eq ptr %.034, %i.yb
  br i1 %.not46, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @av_frame_free(ptr noundef nonnull %i.j) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.ae, %bb.ak, %bb.al
  %.1 = phi ptr [ %.034, %bb.ak ], [ %.034, %bb.al ], [ %i.xl, %bb.ae ] ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.p, i64 4240
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !98
  %i.ye = getelementptr inbounds nuw i8, ptr %i.p, i64 4228
  %i.yf = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.yg = load i64, ptr %i.ye, align 4
  %i.yh = load i64, ptr %i.yf, align 8
  %i.yi = call i64 @av_rescale_q(i64 noundef %i.yd, i64 %i.yg, i64 %i.yh) #14
  %i.yj = getelementptr inbounds nuw i8, ptr %.1, i64 136
  store i64 %i.yi, ptr %i.yj, align 8, !tbaa !99
  %i.yk = call i32 @ff_filter_frame(ptr noundef %i.s, ptr noundef %.1) #12
  br label %bb.an

bb.an:                                            ; preds = %bb.c, %bb.d, %bb.e, %bb.a, %bb.am, %bb.ai
  %.035 = phi i32 [ -12, %bb.ai ], [ -558323010, %bb.a ], [ %i.yk, %bb.am ], [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  ret i32 %.035
}

declare i32 @ff_framesync_configure(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal float @euclidean_kernel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !40
  %i.b = load float, ptr %1, align 4, !tbaa !40
  %i.c = fsub nsz float %i.a, %i.b                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !40
  %i.h = fsub nsz float %i.e, %i.g                ; 2 uses
  %i.i = fmul nsz float %i.h, %i.h
  %i.j = tail call nsz float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !40
  %i.o = fsub nsz float %i.l, %i.n                ; 2 uses
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.j)
  %i.q = tail call nsz float @llvm.sqrt.f32(float %i.p)
  ret float %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal float @weuclidean_kernel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !40   ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !40   ; 2 uses
  %i.c = fadd nsz float %i.a, %i.b
  %i.d = fmul nsz float %i.c, 5.000000e-01        ; 2 uses
  %i.e = fsub nsz float %i.a, %i.b                ; 2 uses
  %i.f = fmul nsz float %i.e, %i.e
  %i.g = fadd nsz float %i.d, 2.000000e+00
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !40
  %i.l = fsub nsz float %i.i, %i.k                ; 2 uses
  %i.m = fmul nsz float %i.l, %i.l
  %i.n = fmul nsz float %i.m, 4.000000e+00
  %i.o = tail call nsz float @llvm.fmuladd.f32(float %i.f, float %i.g, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !40
  %i.t = fsub nsz float %i.q, %i.s                ; 2 uses
  %i.u = fmul nsz float %i.t, %i.t
  %i.v = fsub nsz float 3.000000e+00, %i.d
  %i.w = tail call nsz float @llvm.fmuladd.f32(float %i.u, float %i.v, float %i.o)
  %i.x = tail call nsz float @llvm.sqrt.f32(float %i.w)
  ret float %i.x
}

declare i32 @ff_framesync_get_frame(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @import_map(ptr %.16.val.24.val, ptr nofree captures(none) %.16.val.72.val, ptr %.24.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %.24.val to i64
  %i.b = ptrtoint ptr %.16.val.24.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 48
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 1                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = sdiv i32 %i.h, 2                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.16.val.72.val, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !103  ; 2 uses
  %i.l = sdiv i32 %i.k, 2                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
end_hunk_1
