Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_avectorscope?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@activate:bb.a
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !72 ; 4 uses
  %i.ds = fcmp nsz oge float %i.dr, 0.000000e+00
  %i.dt = fneg nsz float %i.dr
  %i.du = call nsz float @llvm.fabs.f32(float %i.dr)
  %i.dv = fcmp nsz ule float %i.du, %i.do
  %.1.mux.i.1 = select i1 %i.ds, float %i.dr, float %i.dt
  %i.dw = select i1 %i.dv, float %i.do, float %.1.mux.i.1 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit64.unr-lcssa, label %.lr.ph234.i, !llvm.loop !55

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph237.i
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.loopexit.i, label %.lr.ph237.i.epil.preheader

.lr.ph237.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph237.preheader.i
  %indvars.iv248.i.epil.init = phi i64 [ 0, %.lr.ph237.preheader.i ], [ %indvars.iv.next249.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.0181235.i.epil.init = phi float [ 0.000000e+00, %.lr.ph237.preheader.i ], [ %..0181.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i32 %smax251.i to i1
  call void @llvm.assume(i1 %lcmp.mod71)
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv248.i.epil.init
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !70
  %i.dz = sitofp i16 %i.dy to float
  %i.ea = fdiv nsz float %i.dz, 3.276700e+04      ; 3 uses
  %i.eb = fcmp nsz oge float %i.ea, 0.000000e+00
  %i.ec = fneg nsz float %i.ea
  %i.ed = select nsz i1 %i.eb, float %i.ea, float %i.ec ; 2 uses
  %i.ee = fcmp nsz ogt float %i.ed, %.0181235.i.epil.init
  %..0181.i.epil = select nsz i1 %i.ee, float %i.ed, float %.0181235.i.epil.init
  br label %.loopexit.i

.loopexit.i.loopexit64.unr-lcssa:                 ; preds = %.lr.ph234.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph234.i.epil.preheader

.lr.ph234.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit64.unr-lcssa, %.lr.ph234.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph234.preheader.i ], [ %indvars.iv.next.i.1, %.loopexit.i.loopexit64.unr-lcssa ]
  %.1232.i.epil.init = phi float [ 0.000000e+00, %.lr.ph234.preheader.i ], [ %i.dw, %.loopexit.i.loopexit64.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i32 %smax.i to i1
  call void @llvm.assume(i1 %lcmp.mod67)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i.epil.init
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !72 ; 4 uses
  %i.eh = fcmp nsz oge float %i.eg, 0.000000e+00
  %i.ei = fneg nsz float %i.eg
  %i.ej = call nsz float @llvm.fabs.f32(float %i.eg)
  %i.ek = fcmp nsz ule float %i.ej, %.1232.i.epil.init
  %.1.mux.i.epil = select i1 %i.eh, float %i.eg, float %i.ei
  %i.el = select i1 %i.ek, float %.1232.i.epil.init, float %.1.mux.i.epil
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph234.i.epil.preheader, %.loopexit.i.loopexit64.unr-lcssa, %.lr.ph237.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.preheader.i, %.preheader228.i, %bb.l
  %.2.i = phi nsz float [ 0.000000e+00, %bb.l ], [ %..0181.i.epil, %.lr.ph237.i.epil.preheader ], [ 0.000000e+00, %.preheader.i ], [ 0.000000e+00, %.preheader228.i ], [ %..0181.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %i.dw, %.loopexit.i.loopexit64.unr-lcssa ], [ %i.el, %.lr.ph234.i.epil.preheader ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.en = load i32, ptr %i.em, align 8, !tbaa !73
  switch i32 %i.en, label %bb.p [
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.m:                                             ; preds = %.loopexit.i
  %i.eo = call nsz float @llvm.sqrt.f32(float %.2.i)
  br label %bb.p

bb.n:                                             ; preds = %.loopexit.i
  %i.ep = call nsz float @cbrtf(float noundef %.2.i) #15
  br label %bb.p

bb.o:                                             ; preds = %.loopexit.i
  %i.eq = fadd nsz float %.2.i, 1.000000e+00
  %i.er = call nsz float @llvm.log.f32(float %i.eq)
  %i.es = fdiv nsz float %i.er, f0x3F317218
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %.loopexit.i
  %.3.i = phi nsz float [ %.2.i, %.loopexit.i ], [ %i.eo, %bb.m ], [ %i.ep, %bb.n ], [ %i.es, %bb.o ] ; 2 uses
  %i.et = fcmp nsz ogt float %.3.i, 0.000000e+00
  %i.eu = fpext nsz float %.3.i to double
  %i.ev = fdiv nsz double 1.000000e+00, %i.eu
  %.0183.i = select nsz i1 %i.et, double %i.ev, double %i.ai
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  %.1184.i = phi nsz double [ %.0183.i, %bb.p ], [ %i.ai, %bb.k ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !68
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph242.i, label %._crit_edge.i

.lr.ph242.i:                                      ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.fa = getelementptr inbounds nuw i8, ptr %i.z, i64 92
  %i.fb = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.fc = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.fd = shufflevector <2 x i32> %i.ab, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = sitofp <2 x i32> %i.fd to <2 x double>  ; 3 uses
  %i.ff = sub nsw i32 0, %i.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 10 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.z, i64 44 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.z, i64 52 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 5 uses
  %i.fn = insertelement <2 x double> poison, double %.1184.i, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.r

._crit_edge.i.loopexit:                           ; preds = %draw_dot.exit.i
  %i.fp = shufflevector <2 x i32> %i.jj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.q
  %i.fq = phi <2 x i32> [ undef, %bb.q ], [ %i.fp, %._crit_edge.i.loopexit ]
  store <2 x i32> %i.fq, ptr %i.ad, align 8, !tbaa !34
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  %i.fr = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.fs = call ptr @av_frame_clone(ptr noundef %i.fr) #14 ; 2 uses
  %.not209.i = icmp eq ptr %i.fs, null
  br i1 %.not209.i, label %filter_frame.exit, label %bb.bm

bb.r:                                             ; preds = %draw_dot.exit.i, %.lr.ph242.i
  %indvars.iv254.i = phi i64 [ 0, %.lr.ph242.i ], [ %indvars.iv.next255.i, %draw_dot.exit.i ] ; 3 uses
  %i.ft = phi ptr [ %i.r, %.lr.ph242.i ], [ %i.uu, %draw_dot.exit.i ]
  %.0185240.i = phi i32 [ %i.ag, %.lr.ph242.i ], [ %i.uz, %draw_dot.exit.i ] ; 6 uses
  %.0186239.i = phi i32 [ %i.ae, %.lr.ph242.i ], [ %i.va, %draw_dot.exit.i ] ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 116
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !67
  switch i32 %i.fv, label %bb.u [
    i32 1, label %bb.s
    i32 3, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %.idx266.i = shl nuw nsw i64 %indvars.iv254.i, 2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx266.i
  %i.fx = load <2 x i16>, ptr %i.fw, align 2, !tbaa !70
  %i.fy = sitofp <2 x i16> %i.fx to <2 x float>
  %i.fz = fdiv nsz <2 x float> %i.fy, splat (float 3.276700e+04)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %.idx.i = shl nuw nsw i64 %indvars.iv254.i, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.gb = load <2 x float>, ptr %i.ga, align 4, !tbaa !72
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.gc = phi <2 x float> [ undef, %bb.r ], [ %i.fz, %bb.s ], [ %i.gb, %bb.t ] ; 9 uses
  %i.gd = load i32, ptr %i.ez, align 8, !tbaa !73
  switch i32 %i.gd, label %bb.y [
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.ge = fcmp nsz ogt <2 x float> %i.gc, zeroinitializer
  %i.gf = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gc)
  %i.gg = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gf) ; 2 uses
  %i.gh = fneg nsz <2 x float> %i.gg
  %i.gi = select <2 x i1> %i.ge, <2 x float> %i.gg, <2 x float> %i.gh
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.gj = fcmp nsz ogt <2 x float> %i.gc, zeroinitializer
  %i.gk = fcmp nsz oge <2 x float> %i.gc, zeroinitializer
  %i.gl = fneg nsz <2 x float> %i.gc
  %i.gm = select <2 x i1> %i.gk, <2 x float> %i.gc, <2 x float> %i.gl ; 2 uses
  %i.gn = extractelement <2 x float> %i.gm, i64 0
  %i.go = call nsz float @cbrtf(float noundef %i.gn) #15
  %i.gp = extractelement <2 x float> %i.gm, i64 1
  %i.gq = call nsz float @cbrtf(float noundef %i.gp) #15
  %i.gr = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gs = insertelement <2 x float> %i.gr, float %i.gq, i64 1 ; 2 uses
  %i.gt = fneg nsz <2 x float> %i.gs
  %i.gu = select <2 x i1> %i.gj, <2 x float> %i.gs, <2 x float> %i.gt
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.gv = fcmp nsz ogt <2 x float> %i.gc, zeroinitializer
  %i.gw = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gc)
  %i.gx = fadd nsz <2 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = call nsz <2 x float> @llvm.log.v2f32(<2 x float> %i.gx) ; 2 uses
  %i.gz = fneg nsz <2 x float> %i.gy
  %i.ha = select <2 x i1> %i.gv, <2 x float> %i.gy, <2 x float> %i.gz
  %i.hb = fdiv nsz <2 x float> %i.ha, splat (float f0x3F317218)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.hc = phi <2 x float> [ %i.gc, %bb.u ], [ %i.gi, %bb.v ], [ %i.gu, %bb.w ], [ %i.hb, %bb.x ] ; 2 uses
  %i.hd = load i32, ptr %i.fa, align 4, !tbaa !74
  %i.he = fneg nsz <2 x float> %i.hc
  %i.hf = insertelement <2 x i32> poison, i32 %i.hd, i64 0
  %i.hg = shufflevector <2 x i32> %i.hf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hh = and <2 x i32> %i.hg, <i32 1, i32 2>
  %i.hi = icmp eq <2 x i32> %i.hh, zeroinitializer
  %i.hj = select <2 x i1> %i.hi, <2 x float> %i.hc, <2 x float> %i.he ; 4 uses
  %i.hk = load i32, ptr %i.fb, align 8, !tbaa !75
  %.not212.i = icmp eq i32 %i.hk, 0
  %i.hl = insertelement <2 x i1> poison, i1 %.not212.i, i64 0
  %i.hm = shufflevector <2 x i1> %i.hl, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.hn = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ho = select <2 x i1> %i.hm, <2 x float> %i.hj, <2 x float> %i.hn ; 4 uses
  %i.hp = load i32, ptr %i.fc, align 8, !tbaa !47
  switch i32 %i.hp, label %bb.ab [
    i32 0, label %bb.z
    i32 1, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %shift = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x float> %shift, %i.ho
  %i.hq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.hr = fpext nsz float %i.hq to double
  %i.hs = fmul nsz double %.1184.i, %i.hr
  %i.ht = fmul nsz double %i.hs, 5.000000e-01
  %shift57 = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop58 = fadd nsz <2 x float> %shift57, %i.hj
  %1 = extractelement <2 x float> %foldExtExtBinop58, i64 0
  %i.hu = fpext nsz float %1 to double
  %i.hv = fmul nsz double %.1184.i, %i.hu
  %i.hw = fmul nsz double %i.hv, 5.000000e-01
  %i.hx = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ht, i64 1
  %i.hy = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.hw, i64 0
  %i.hz = fsub nsz <2 x double> %i.hx, %i.hy
  %i.ia = fmul nsz <2 x double> %i.hz, %i.fe
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ib = fpext <2 x float> %i.ho to <2 x double>
  %i.ic = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.fo, <2 x double> splat (double 1.000000e+00))
  %i.id = fmul nsz <2 x double> %i.ic, %i.fe
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.ie = fpext <2 x float> %i.ho to <2 x double>
  %i.if = fmul nsz <2 x double> %i.fo, %i.ie
  %i.ig = fptrunc <2 x double> %i.if to <2 x float> ; 2 uses
  %i.ih = fpext <2 x float> %i.ig to <2 x double> ; 2 uses
  %i.ii = fmul nsz <2 x double> %i.ih, splat (double -5.000000e-01)
  %i.ij = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ih, <2 x double> splat (double 1.000000e+00))
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float>
  %i.il = call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ik)
  %i.im = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.in = fmul nsz <2 x float> %i.il, %i.im       ; 2 uses
  %i.io = extractelement <2 x float> %i.in, i64 0 ; 2 uses
  %i.ip = extractelement <2 x float> %i.in, i64 1 ; 2 uses
  %i.iq = fadd nsz float %i.io, %i.ip             ; 2 uses
  %i.ir = fcmp nsz ogt float %i.iq, 0.000000e+00
  %i.is = select i1 %i.ir, i32 %i.ac, i32 %i.ff
  %i.it = sitofp nsz i32 %i.is to float
  %i.iu = fsub nsz float %i.io, %i.ip
  %i.iv = fmul nsz float %i.iu, %i.it
  %i.iw = fpext nsz float %i.iv to double
  %i.ix = load i32, ptr %i.fg, align 4, !tbaa !48 ; 2 uses
  %i.iy = sitofp nsz i32 %i.ix to double
  %i.iz = sitofp nsz i32 %i.ix to float
  %i.ja = call nsz float @llvm.fabs.f32(float %i.iq)
  %i.jb = fmul nsz float %i.ja, %i.iz
  %i.jc = fpext nsz float %i.jb to double
  %i.jd = fneg nsz double %i.jc
  %i.je = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jf = insertelement <2 x double> %i.je, double %i.iw, i64 1
  %i.jg = insertelement <2 x double> %i.fe, double %i.iy, i64 0
  %i.jh = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> splat (double f0x3FE6666666666666), <2 x double> %i.jg)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ji = phi <2 x double> [ %i.ia, %bb.z ], [ %i.id, %bb.aa ], [ %i.jh, %bb.ab ]
  %i.jj = fptoui <2 x double> %i.ji to <2 x i32>  ; 11 uses
  %i.jk = load i32, ptr %i.fh, align 4, !tbaa !76
  switch i32 %i.jk, label %bb.ap [
    i32 0, label %bb.ad
    i32 1, label %bb.ai
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.jl = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !34
  %i.jo = sext i32 %i.jn to i64
  %i.jp = load double, ptr %i.ah, align 8, !tbaa !62
  %i.jq = fcmp nsz ogt double %i.jp, 1.000000e+00
  %i.jr = load i32, ptr %i.fg, align 4, !tbaa !48 ; 2 uses
  br i1 %i.jq, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.js = extractelement <2 x i32> %i.jj, i64 0   ; 2 uses
  %.not.i.i = icmp ugt i32 %i.jr, %i.js
  br i1 %.not.i.i, label %bb.af, label %draw_dot.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.jt = load i32, ptr %i.fi, align 8, !tbaa !49
  %i.ju = extractelement <2 x i32> %i.jj, i64 1   ; 2 uses
  %.not57.i.i = icmp ugt i32 %i.jt, %i.ju
  br i1 %.not57.i.i, label %bb.ah, label %draw_dot.exit.i

bb.ag:                                            ; preds = %bb.ad
  %i.jv = add nsw i32 %i.jr, -1
  %i.jw = extractelement <2 x i32> %i.jj, i64 0
  %..i.i = call i32 @llvm.umin.i32(i32 %i.jw, i32 %i.jv)
  %i.jx = load i32, ptr %i.fi, align 8, !tbaa !49
  %i.jy = add nsw i32 %i.jx, -1
  %i.jz = extractelement <2 x i32> %i.jj, i64 1
  %i.ka = call i32 @llvm.umin.i32(i32 %i.jz, i32 %i.jy)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.045.i.i = phi i32 [ %i.js, %bb.af ], [ %..i.i, %bb.ag ]
  %.0.i.i = phi i32 [ %i.ju, %bb.af ], [ %i.ka, %bb.ag ]
  %i.kb = load ptr, ptr %i.jl, align 8, !tbaa !33
  %i.kc = zext i32 %.045.i.i to i64
  %i.kd = mul nsw i64 %i.kc, %i.jo
  %i.ke = getelementptr inbounds i8, ptr %i.kb, i64 %i.kd
  %i.kf = shl i32 %.0.i.i, 2
  %i.kg = zext i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kg ; 5 uses
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !50
  %i.kj = zext i8 %i.ki to i32
  %i.kk = load i32, ptr %i.fj, align 4, !tbaa !34
  %i.kl = add nsw i32 %i.kk, %i.kj
  %.58.i.i = call i32 @llvm.smin.i32(i32 %i.kl, i32 255)
  %i.km = trunc i32 %.58.i.i to i8
  store i8 %i.km, ptr %i.kh, align 1, !tbaa !50
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 1 ; 2 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !50
  %i.kp = zext i8 %i.ko to i32
  %i.kq = load i32, ptr %i.fk, align 8, !tbaa !34
  %i.kr = add nsw i32 %i.kq, %i.kp
  %i.ks = call i32 @llvm.smin.i32(i32 %i.kr, i32 255)
  %i.kt = trunc i32 %i.ks to i8
  store i8 %i.kt, ptr %i.kn, align 1, !tbaa !50
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kh, i64 2 ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !50
  %i.kw = zext i8 %i.kv to i32
  %i.kx = load i32, ptr %i.fl, align 4, !tbaa !34
  %i.ky = add nsw i32 %i.kx, %i.kw
  %i.kz = call i32 @llvm.smin.i32(i32 %i.ky, i32 255)
  %i.la = trunc i32 %i.kz to i8
  store i8 %i.la, ptr %i.ku, align 1, !tbaa !50
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kh, i64 3 ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !50
  %i.ld = zext i8 %i.lc to i32
  %i.le = load i32, ptr %i.fm, align 8, !tbaa !34
  %i.lf = add nsw i32 %i.le, %i.ld
  %i.lg = call i32 @llvm.smin.i32(i32 %i.lf, i32 255)
  %i.lh = trunc i32 %i.lg to i8
  store i8 %i.lh, ptr %i.lb, align 1, !tbaa !50
  br label %draw_dot.exit.i

bb.ai:                                            ; preds = %bb.ac
  %i.li = extractelement <2 x i32> %i.jj, i64 1   ; 3 uses
  %i.lj = sub nsw i32 %.0186239.i, %i.li
  %i.lk = call i32 @llvm.abs.i32(i32 %i.lj, i1 true) ; 4 uses
  %i.ll = icmp sgt i32 %.0186239.i, %i.li
  %i.lm = select i1 %i.ll, i32 1, i32 -1
  %i.ln = extractelement <2 x i32> %i.jj, i64 0   ; 3 uses
  %i.lo = sub nsw i32 %.0185240.i, %i.ln
  %i.lp = call i32 @llvm.abs.i32(i32 %i.lo, i1 true) ; 4 uses
  %i.lq = icmp sgt i32 %.0185240.i, %i.ln
  %i.lr = select i1 %i.lq, i32 1, i32 -1
  %i.ls = icmp samesign ugt i32 %i.lk, %i.lp
  %i.lt = sub nsw i32 0, %i.lp
  %i.lu = select i1 %i.ls, i32 %i.lk, i32 %i.lt
  %i.lv = sdiv i32 %i.lu, 2
  %i.lw = sub nsw i32 0, %i.lk
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ao, %bb.ai
  %.041.i.i = phi i32 [ %i.ln, %bb.ai ], [ %.142.i.i, %bb.ao ] ; 5 uses
  %.039.i.i = phi i32 [ %i.li, %bb.ai ], [ %.140.i.i, %bb.ao ] ; 5 uses
  %.0.i213.i = phi i32 [ %i.lv, %bb.ai ], [ %.2.i.i, %bb.ao ] ; 3 uses
  %i.lx = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 64
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !34
  %i.ma = sext i32 %i.lz to i64
  %i.mb = load double, ptr %i.ah, align 8, !tbaa !62
  %i.mc = fcmp nsz ogt double %i.mb, 1.000000e+00
  %i.md = load i32, ptr %i.fg, align 4, !tbaa !48 ; 2 uses
  br i1 %i.mc, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i = icmp ult i32 %.041.i.i, %i.md
  br i1 %.not.i.i.i, label %bb.al, label %draw_dot.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.me = load i32, ptr %i.fi, align 8, !tbaa !49
  %.not57.i.i.i = icmp ult i32 %.039.i.i, %i.me
  br i1 %.not57.i.i.i, label %bb.an, label %draw_dot.exit.i.i

bb.am:                                            ; preds = %bb.aj
  %i.mf = add nsw i32 %i.md, -1
  %..i.i.i = call i32 @llvm.umin.i32(i32 %.041.i.i, i32 %i.mf)
  %i.mg = load i32, ptr %i.fi, align 8, !tbaa !49
  %i.mh = add nsw i32 %i.mg, -1
  %i.mi = call i32 @llvm.umin.i32(i32 %.039.i.i, i32 %i.mh)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.045.i.i.i = phi i32 [ %.041.i.i, %bb.al ], [ %..i.i.i, %bb.am ]
  %.0.i.i.i = phi i32 [ %.039.i.i, %bb.al ], [ %i.mi, %bb.am ]
  %i.mj = load ptr, ptr %i.lx, align 8, !tbaa !33
  %i.mk = zext i32 %.045.i.i.i to i64
  %i.ml = mul nsw i64 %i.mk, %i.ma
  %i.mm = getelementptr inbounds i8, ptr %i.mj, i64 %i.ml
  %i.mn = shl i32 %.0.i.i.i, 2
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mo ; 5 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !50
  %i.mr = zext i8 %i.mq to i32
  %i.ms = load i32, ptr %i.fj, align 4, !tbaa !34
  %i.mt = add nsw i32 %i.ms, %i.mr
  %.58.i.i.i = call i32 @llvm.smin.i32(i32 %i.mt, i32 255)
  %i.mu = trunc i32 %.58.i.i.i to i8
  store i8 %i.mu, ptr %i.mp, align 1, !tbaa !50
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 1 ; 2 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !50
  %i.mx = zext i8 %i.mw to i32
  %i.my = load i32, ptr %i.fk, align 8, !tbaa !34
end_hunk_0
begin_hunk_1_@fade:bb.a

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.an = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.an, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.aq = mul nsw i64 %indvars.iv, %i.ad
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.at = load i32, ptr %i.as, align 8, !tbaa !44
  %i.au = shl nsw i32 %i.at, 2
  %i.av = sext i32 %i.au to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ar, i8 0, i64 %i.av, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = mul nsw i64 %indvars.iv.next, %i.ad
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !44
  %i.bc = shl nsw i32 %i.bb, 2
  %i.bd = sext i32 %i.bc to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.bd, i1 false)
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !83

bb.d:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !34
  %.not87 = icmp eq i32 %i.bf, 0
  br i1 %.not87, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !34
  %.not88 = icmp ne i32 %i.bh, 0
  %i.bi = icmp slt i32 %i.n, %i.s
  %or.cond = select i1 %.not88, i1 %i.bi, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.old = icmp slt i32 %i.n, %i.s
  br i1 %.old, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.e, %.thread
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.bk = mul nsw i32 %i.f, %i.n
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.br = sext i32 %i.f to i64
  %.pre = load i32, ptr %i.bn, align 8, !tbaa !49
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bs = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.bu, %._crit_edge ] ; 2 uses
  %.075107 = phi i32 [ %i.n, %.preheader.lr.ph ], [ %i.bw, %._crit_edge ]
  %.076106 = phi ptr [ %i.bm, %.preheader.lr.ph ], [ %i.bv, %._crit_edge ] ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph105, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %i.bu = phi i32 [ %i.bs, %.preheader ], [ %i.cr, %bb.m ]
  %i.bv = getelementptr inbounds i8, ptr %.076106, i64 %i.br
  %i.bw = add nsw i32 %.075107, 1                 ; 2 uses
  %exitcond113.not = icmp eq i32 %i.bw, %i.s
  br i1 %exitcond113.not, label %.loopexit, label %.preheader, !llvm.loop !84

.lr.ph105:                                        ; preds = %.preheader, %bb.m
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.076106, i64 %indvars.iv110 ; 5 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !50  ; 2 uses
  %.not89 = icmp eq i8 %i.by, 0
  br i1 %.not89, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph105
  %i.bz = zext i8 %i.by to i32
  %i.ca = load i32, ptr %i.t, align 4, !tbaa !34
  %i.cb = sub nsw i32 %i.bz, %i.ca
  %spec.select97 = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %spec.select = trunc i32 %spec.select97 to i8
  store i8 %spec.select, ptr %i.bx, align 1, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph105
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !50  ; 2 uses
  %.not90 = icmp eq i8 %i.cd, 0
  br i1 %.not90, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = zext i8 %i.cd to i32
  %i.cf = load i32, ptr %i.bo, align 8, !tbaa !34
  %i.cg = sub nsw i32 %i.ce, %i.cf
  %spec.select9398 = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %spec.select93 = trunc i32 %spec.select9398 to i8
  store i8 %spec.select93, ptr %i.cc, align 1, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !50  ; 2 uses
  %.not91 = icmp eq i8 %i.ci, 0
  br i1 %.not91, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = zext i8 %i.ci to i32
  %i.ck = load i32, ptr %i.bp, align 4, !tbaa !34
  %i.cl = sub nsw i32 %i.cj, %i.ck
  %spec.select9499 = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 0)
  %spec.select94 = trunc i32 %spec.select9499 to i8
  store i8 %spec.select94, ptr %i.ch, align 1, !tbaa !50
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 3 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !50  ; 2 uses
  %.not92 = icmp eq i8 %i.cn, 0
  br i1 %.not92, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = zext i8 %i.cn to i32
  %i.cp = load i32, ptr %i.bq, align 8, !tbaa !34
  %i.cq = sub nsw i32 %i.co, %i.cp
  %spec.select95100 = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %spec.select95 = trunc i32 %spec.select95100 to i8
  store i8 %spec.select95, ptr %i.cm, align 1, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 4 ; 2 uses
  %i.cr = load i32, ptr %i.bn, align 8, !tbaa !49 ; 2 uses
  %i.cs = shl nsw i32 %i.cr, 2
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next111, %i.ct
  br i1 %i.cu, label %.lr.ph105, label %._crit_edge, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %._crit_edge, %.preheader101, %.thread, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!21 = !{!"double", !5, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"AudioVectorScopeContext", !10, i64 0, !20, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !5, i64 44, !5, i64 60, !21, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !22, i64 104, !6, i64 112}
!24 = !{!23, !6, i64 112}
!25 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!26 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!27 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!28 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!29 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!30 = !{!"AVFilterFormatsConfig", !28, i64 0, !28, i64 8, !29, i64 16, !28, i64 24, !28, i64 32, !28, i64 40}
!31 = !{!"AVFilterLink", !25, i64 0, !13, i64 8, !25, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !26, i64 72, !22, i64 96, !27, i64 104, !6, i64 112, !6, i64 116, !30, i64 120, !30, i64 168}
!32 = !{!31, !25, i64 16}
!33 = !{!12, !12, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!23, !6, i64 24}
!36 = !{!23, !6, i64 96}
!37 = !{!23, !6, i64 100}
!38 = !{!23, !20, i64 8}
!39 = !{!"p2 omnipotent char", !14, i64 0}
!40 = !{!"long", !5, i64 0}
!41 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!42 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!43 = !{!"AVFrame", !5, i64 0, !5, i64 64, !39, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !22, i64 124, !40, i64 136, !40, i64 144, !22, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !41, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !40, i64 304, !42, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !9, i64 376, !26, i64 384, !40, i64 408, !6, i64 416}
!44 = !{!43, !6, i64 104}
!45 = !{!43, !6, i64 108}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!23, !6, i64 32}
!48 = !{!23, !6, i64 20}
!49 = !{!23, !6, i64 16}
!50 = !{!5, !5, i64 0}
!51 = !{!"p1 _ZTS21AVFilterFormatsConfig", !9, i64 0}
!52 = !{!51, !51, i64 0}
!53 = distinct !{!53, !46}
!54 = distinct !{!54, !46}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = !{!18, !15, i64 32}
!58 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!18, !15, i64 56}
!61 = !{!20, !20, i64 0}
!62 = !{!23, !21, i64 80}
!63 = !{!31, !6, i64 40}
!64 = !{!31, !6, i64 44}
!65 = !{!43, !40, i64 136}
!66 = !{!43, !40, i64 408}
!67 = !{!43, !6, i64 116}
!68 = !{!43, !6, i64 112}
!69 = !{!"short", !5, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"float", !5, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!23, !6, i64 40}
!74 = !{!23, !6, i64 92}
!75 = !{!23, !6, i64 88}
!76 = !{!23, !6, i64 36}
!77 = !{!40, !40, i64 0}
!78 = !{!31, !6, i64 64}
!79 = !{!23, !6, i64 108}
!80 = !{!23, !6, i64 104}
!81 = !{!31, !25, i64 0}
!82 = !{!23, !6, i64 28}
!83 = distinct !{!83, !46}
!84 = distinct !{!84, !46}
!85 = distinct !{!85, !46}
end_hunk_1
