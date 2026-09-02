Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/undistort.dispatch?download=true
inline.NumInlined: 812
inline.NumDeleted: 244
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv20initWideAngleProjMapERKNS_11_InputArrayES2_NS_5Size_IiEEiiRKNS_12_OutputArrayES7_NS_14UndistortTypesEd:bb.a
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i266: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body256

bb.ay:                                            ; preds = %bb.au, %bb.at
  %i.ha = phi <2 x double> [ %i.gt, %bb.au ], [ %i.gf, %bb.at ]
  %i.hb = fptrunc <2 x double> %i.ha to <2 x float> ; 4 uses
  %i.hc = fcmp ogt <2 x float> %i.fg, %i.hb
  %i.hd = select <2 x i1> %i.hc, <2 x float> %i.hb, <2 x float> %i.fg ; 4 uses
  %i.he = fcmp olt <2 x float> %i.ff, %i.hb
  %i.hf = select <2 x i1> %i.he, <2 x float> %i.hb, <2 x float> %i.ff ; 4 uses
  %i.hg = add nuw nsw i32 %.0188473, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hg, 9
  br i1 %exitcond.not, label %bb.ao, label %bb.ap, !llvm.loop !224

bb.az:                                            ; preds = %bb.aq
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ar
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn218.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hi, %bb.ba ], [ %i.hh, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %.body256

bb.bc:                                            ; preds = %bb.av
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body256

bb.bd:                                            ; preds = %bb.al
  %i.hk = load double, ptr %i.a, align 16, !tbaa !68
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hn = load <2 x double>, ptr %i.hm, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hp = load <2 x double>, ptr %i.ho, align 16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !68
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ht = load <2 x double>, ptr %i.hl, align 8, !tbaa !68 ; 2 uses
  %i.hu = load <2 x double>, ptr %i.hs, align 16, !tbaa !68 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.hz = load i32, ptr %i.r, align 4, !tbaa !67
  %i.ia = load ptr, ptr %i.t, align 8, !tbaa !66  ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !68
  %i.ic = icmp slt i32 %i.hz, 2
  %i.id = load i64, ptr %i.v, align 8
  %.sink.idx.i273 = select i1 %i.ic, i64 0, i64 %i.id
  %.sink.i274 = getelementptr inbounds nuw i8, ptr %i.ia, i64 %.sink.idx.i273
  %i.ie = getelementptr inbounds nuw i8, ptr %.sink.i274, i64 8
  %i.if = load double, ptr %i.ie, align 8, !tbaa !68
  %i.ig = fpext <2 x float> %i.ae to <2 x double>
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ii = load double, ptr %i.ih, align 16, !tbaa !68 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !68 ; 2 uses
  %i.il = call double @cos(double noundef %i.ii) #23 ; 4 uses
  %i.im = fadd double %i.il, 0.000000e+00
  %i.in = load double, ptr %i.hy, align 8, !tbaa !68
  %i.io = load double, ptr %i.hx, align 16, !tbaa !68
  %i.ip = load <2 x double>, ptr %i.hw, align 8
  %i.iq = load <2 x double>, ptr %i.hv, align 16
  %i.ir = call double @sin(double noundef %i.ii) #23 ; 5 uses
  %i.is = call double @cos(double noundef %i.ik) #23 ; 5 uses
  %i.it = call double @sin(double noundef %i.ik) #23 ; 4 uses
  %i.iu = fneg double %i.ir
  %i.iv = fneg double %i.it                       ; 2 uses
  %i.iw = fadd double %i.is, 0.000000e+00
  %i.ix = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.iy = insertelement <2 x double> %i.ix, double %i.is, i64 1
  %i.iz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.iw, i64 0
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> zeroinitializer, <2 x double> %i.iz) ; 2 uses
  %i.jb = fadd double %i.ir, 0.000000e+00
  %i.jc = insertelement <2 x double> poison, double %i.il, i64 0 ; 2 uses
  %i.jd = insertelement <2 x double> %i.jc, double %i.ir, i64 1
  %i.je = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jd, <2 x double> zeroinitializer, <2 x double> %i.je) ; 2 uses
  %i.jg = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.iv, i64 1
  %i.jh = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x double> %i.jf, double %i.jb, i64 0
  %i.jj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.jh, <2 x double> %i.ji) ; 4 uses
  %i.jk = fadd double %i.it, 0.000000e+00
  %i.jl = insertelement <4 x double> <double poison, double 0.000000e+00, double poison, double 0.000000e+00>, double %i.is, i64 0
  %i.jm = insertelement <4 x double> %i.jl, double %i.it, i64 2
  %i.jn = insertelement <4 x double> poison, double %i.iu, i64 0
  %i.jo = insertelement <4 x double> %i.jn, double %i.ir, i64 2
  %i.jp = insertelement <4 x double> %i.jo, double %i.is, i64 3
  %i.jq = shufflevector <4 x double> %i.jp, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jr = shufflevector <2 x double> %i.jf, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.js = fneg <2 x double> %i.jj                 ; 3 uses
  %i.jt = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jv = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jw = call double @llvm.fmuladd.f64(double %i.it, double 0.000000e+00, double 0.000000e+00) ; 2 uses
  %i.jx = call double @llvm.fmuladd.f64(double %i.il, double 0.000000e+00, double %i.jw)
  %i.jy = insertelement <4 x double> poison, double %i.jx, i64 0
  %i.jz = insertelement <4 x double> %i.jy, double %i.im, i64 1
  %i.ka = shufflevector <4 x double> %i.jz, <4 x double> %i.jr, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.kb = insertelement <4 x double> %i.ka, double %i.jk, i64 3
  %i.kc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jm, <4 x double> %i.jq, <4 x double> %i.kb) ; 6 uses
  %i.kd = call double @llvm.fmuladd.f64(double %i.ir, double 0.000000e+00, double %i.jw)
  %i.ke = call double @llvm.fmuladd.f64(double %i.is, double %i.il, double %i.kd) ; 4 uses
  %i.kf = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ke, i64 1 ; 4 uses
  %i.kg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.jt, <2 x double> zeroinitializer) ; 2 uses
  %i.kh = extractelement <2 x double> %i.kg, i64 0 ; 2 uses
  %i.ki = call double @llvm.fmuladd.f64(double %i.ke, double 0.000000e+00, double %i.kh)
  %i.kj = insertelement <2 x double> %i.kg, double %i.ki, i64 0
  %i.kk = fadd <2 x double> %i.kj, <double -0.000000e+00, double 0.000000e+00>
  %i.kl = shufflevector <4 x double> %i.kc, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.km = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.kf, <2 x double> zeroinitializer) ; 2 uses
  %i.kn = shufflevector <4 x double> %i.kc, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ko = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ke, i64 0 ; 2 uses
  %i.kp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kn, <2 x double> %i.ko, <2 x double> %i.km)
  %i.kq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.kf, <2 x double> zeroinitializer) ; 2 uses
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.ko, <2 x double> %i.kq)
  %i.ks = shufflevector <4 x double> %i.kc, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.ks, <2 x double> %i.kk)
  %i.ku = shufflevector <4 x double> %i.kc, <4 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.ku, <2 x double> %i.kp)
  %i.kw = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.kw, <2 x double> %i.kr)
  %i.ky = fadd double %i.kh, 0.000000e+00
  %i.kz = extractelement <4 x double> %i.kc, i64 3
  %i.la = fadd double %i.kz, %i.ky
  %i.lb = shufflevector <2 x double> %i.jj, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lc = shufflevector <4 x double> %i.kc, <4 x double> %i.lb, <2 x i32> <i32 1, i32 4>
  %i.ld = shufflevector <2 x double> %i.km, <2 x double> %i.kq, <2 x i32> <i32 0, i32 2>
  %i.le = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lc, <2 x double> zeroinitializer, <2 x double> %i.ld)
  %i.lf = insertelement <2 x double> %i.ku, double %i.ke, i64 1
  %i.lg = fadd <2 x double> %i.lf, %i.le          ; 2 uses
  %i.lh = icmp sgt i32 %i.ey, 0
  br i1 %i.lh, label %.lr.ph485, label %._crit_edge486.split

.lr.ph485:                                        ; preds = %bb.bd
  %i.li = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.lj = getelementptr inbounds nuw i8, ptr %37, i64 128
  %i.lk = icmp sgt i32 %3, 0
  %i.ll = fdiv float 1.000000e+00, %.sroa.speculated410 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.lo = icmp eq i32 %7, 0                       ; 3 uses
  br i1 %i.lk, label %.lr.ph.preheader, label %._crit_edge486.split

.lr.ph.preheader:                                 ; preds = %.lr.ph485
  %i.lp = insertelement <2 x double> %i.ip, double %i.in, i64 1
  %i.lq = insertelement <2 x double> %i.iq, double %i.io, i64 1
  %i.lr = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ls = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lt = insertelement <2 x double> poison, double %i.if, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.ib, i64 1
  %i.lv = shufflevector <2 x double> %i.ht, <2 x double> %i.hu, <2 x i32> <i32 1, i32 3>
  %i.lw = shufflevector <2 x double> %i.ht, <2 x double> %i.hu, <2 x i32> <i32 0, i32 2>
  %i.lx = extractelement <2 x double> %i.lg, i64 0
  %i.ly = extractelement <2 x double> %i.lg, i64 1
  %i.lz = icmp eq i32 %7, 0
  br label %.lr.ph

._crit_edge486.split:                             ; preds = %._crit_edge, %.lr.ph485, %bb.bd
  %i.ma = icmp eq i32 %4, 37
  br i1 %i.ma, label %bb.bx, label %bb.cq

bb.be:                                            ; preds = %bb.al
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.bf:                                            ; preds = %bb.by, %bb.ce
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.body293

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv493 = phi i64 [ %indvars.iv.next494, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.md = load ptr, ptr %i.li, align 8, !tbaa !66
  %i.me = load i64, ptr %i.lj, align 8, !tbaa !73
  %i.mf = mul i64 %i.me, %indvars.iv493
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mf ; 2 uses
  %i.mh = trunc nuw nsw i64 %indvars.iv493 to i32
  %i.mi = uitofp nneg i32 %i.mh to float
  %i.mj = fsub nnan float %i.mi, %i.fb
  %i.mk = fmul float %i.ll, %i.mj                 ; 2 uses
  %i.ml = fpext float %i.mk to double             ; 7 uses
  %i.mm = fmul double %i.ml, %i.ml
  %i.mn = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.mo = insertelement <2 x double> poison, double %i.ml, i64 1
  br label %bb.bg

._crit_edge:                                      ; preds = %bb.bw
  %indvars.iv.next494 = add nuw nsw i64 %indvars.iv493, 1 ; 2 uses
  %exitcond497.not = icmp eq i64 %indvars.iv.next494, %.sroa.6407.0.insert.ext
  br i1 %exitcond497.not, label %._crit_edge486.split, label %.lr.ph, !llvm.loop !225

bb.bg:                                            ; preds = %.lr.ph, %bb.bw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bw ] ; 4 uses
  %i.mp = trunc nuw nsw i64 %indvars.iv to i32
  %i.mq = uitofp nneg i32 %i.mp to float
  %i.mr = fsub nnan float %i.mq, %i.ah
  %i.ms = fmul float %i.ll, %i.mr                 ; 2 uses
  %i.mt = fpext float %i.ms to double             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.mu = call double @llvm.fmuladd.f64(double %i.mt, double %i.mt, double %i.mm)
  %i.mv = fadd double %i.mu, 1.000000e+00         ; 3 uses
  %i.mw = fdiv double 1.000000e+00, %i.mv         ; 3 uses
  %i.mx = call double @llvm.fmuladd.f64(double %i.ds, double %i.mv, double %i.du)
  %i.my = call double @sqrt(double noundef %i.mx) #23 ; 2 uses
  %i.mz = fsub double %i.my, %i.dv                ; 2 uses
  %i.na = fmul double %i.mw, %i.mz                ; 4 uses
  %i.nb = fmul double %i.mv, %i.ds
  %i.nc = fdiv double %i.nb, %i.my
  %i.nd = fneg double %i.mz
  %i.ne = call double @llvm.fmuladd.f64(double %i.nd, double 2.000000e+00, double %i.nc)
  %i.nf = fmul double %i.mw, %i.ne
  %i.ng = fmul double %i.mw, %i.nf
  %i.nh = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = insertelement <2 x double> %i.mo, double %i.mt, i64 0 ; 7 uses
  %i.nk = fmul <2 x double> %i.ni, %i.nj          ; 4 uses
  br i1 %i.lz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nm = fmul <2 x double> %i.nl, %i.nj          ; 3 uses
  %i.nn = insertelement <2 x double> poison, double %i.na, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.nj, <2 x double> %i.no) ; 3 uses
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> %i.nm, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.nq, ptr %11, align 16
  %i.nr = shufflevector <2 x double> %i.nm, <2 x double> %i.np, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.nr, ptr %i.lm, align 16
  %i.ns = fmul double %i.na, %i.mt
  %i.nt = fmul double %i.na, %i.ml
  br label %.noexc278

bb.bi:                                            ; preds = %bb.bg
  %i.nu = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nv = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nw = fmul <2 x double> %i.nv, %i.nj
  %i.nx = fmul <2 x double> %i.nw, %i.ea          ; 2 uses
  %i.ny = fcmp ogt <2 x double> %i.nx, splat (double 1.000000e+00)
  %i.nz = select <2 x i1> %i.ny, <2 x double> splat (double 1.000000e+00), <2 x double> %i.nx ; 2 uses
  %i.oa = fcmp olt <2 x double> %i.nz, splat (double -1.000000e+00)
  %i.ob = select <2 x i1> %i.oa, <2 x double> splat (double -1.000000e+00), <2 x double> %i.nz ; 4 uses
  %i.oc = extractelement <2 x double> %i.ob, i64 0
  %i.od = extractelement <2 x double> %i.ob, i64 1
  %i.oe = fneg <2 x double> %i.ob
  %i.of = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oe, <2 x double> %i.ob, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.og = extractelement <2 x double> %i.of, i64 0
  %i.oh = call double @sqrt(double noundef %i.og) #23
  %i.oi = extractelement <2 x double> %i.of, i64 1
  %i.oj = call double @sqrt(double noundef %i.oi) #23
  %i.ok = insertelement <2 x double> poison, double %i.oj, i64 0
  %i.ol = insertelement <2 x double> %i.ok, double %i.oh, i64 1
  %i.om = fdiv <2 x double> %i.ea, %i.ol          ; 2 uses
  %i.on = fmul <2 x double> %i.nk, %i.om
  %i.oo = shufflevector <2 x double> %i.om, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.op = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.oq = fmul <2 x double> %i.on, %i.op          ; 3 uses
  %i.or = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.nj, <2 x double> %i.nv)
  %i.os = fmul <2 x double> %i.or, %i.oo          ; 3 uses
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> %i.oq, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ot, ptr %11, align 16
  %i.ou = shufflevector <2 x double> %i.oq, <2 x double> %i.os, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ou, ptr %i.lm, align 16
  %i.ov = call double @asin(double noundef %i.oc) #23
  %i.ow = call double @asin(double noundef %i.od) #23
  br label %.noexc278

.noexc278:                                        ; preds = %bb.bi, %bb.bh
  %.sink28.i377 = phi double [ %i.ow, %bb.bi ], [ %i.nt, %bb.bh ]
  %.sink27.in.i378 = phi double [ %i.ov, %bb.bi ], [ %i.ns, %bb.bh ]
  %i.ox = phi <2 x double> [ %i.oq, %bb.bi ], [ %i.nm, %bb.bh ] ; 6 uses
  %i.oy = phi <2 x double> [ %i.os, %bb.bi ], [ %i.np, %bb.bh ] ; 7 uses
  %43 = insertelement <2 x double> poison, double %.sink28.i377, i64 0
  %44 = insertelement <2 x double> %43, double %.sink27.in.i378, i64 1
  %45 = fptrunc <2 x double> %44 to <2 x float>
  %46 = fpext <2 x float> %45 to <2 x double>
  %47 = insertelement <2 x double> %i.mn, double %i.mt, i64 1 ; 3 uses
  %48 = fsub <2 x double> %46, %47                ; 5 uses
  %foldExtExtBinop537 = fmul <2 x double> %48, %48
  %49 = extractelement <2 x double> %foldExtExtBinop537, i64 0
  %50 = extractelement <2 x double> %48, i64 1    ; 2 uses
  %i.oz = call double @llvm.fmuladd.f64(double %50, double %50, double %49)
  %i.pa = fcmp olt double %i.oz, f0x3D719799812DEA11
  br i1 %i.pa, label %._crit_edge.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc278
  %i.pb = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pc = shufflevector <2 x double> %i.ox, <2 x double> %i.oy, <2 x i32> <i32 0, i32 3>
  %i.pd = fmul <2 x double> %i.pb, %i.pc
  %foldExtExtBinop537.a = fmul <2 x double> %i.oy, %i.oy
  %i.pe = extractelement <2 x double> %foldExtExtBinop537.a, i64 1
  %i.pf = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pg = shufflevector <2 x double> %i.ox, <2 x double> %i.oy, <2 x i32> <i32 0, i32 3>
  %i.ph = fmul <2 x double> %i.pf, %i.pg
  %i.pi = shufflevector <2 x double> %i.oy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = shufflevector <2 x double> %i.oy, <2 x double> %i.ox, <2 x i32> <i32 0, i32 3>
  %i.pk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> %i.pj, <2 x double> %i.pd) ; 3 uses
  %i.pl = extractelement <2 x double> %i.pk, i64 1 ; 2 uses
  %i.pm = fneg double %i.pl                       ; 3 uses
  %i.pn = extractelement <2 x double> %i.ox, i64 1 ; 2 uses
  %i.po = call double @llvm.fmuladd.f64(double %i.pn, double %i.pn, double %i.pe) ; 2 uses
  %i.pp = fmul double %i.pl, %i.pm
  %i.pq = extractelement <2 x double> %i.pk, i64 0
  %i.pr = call double @llvm.fmuladd.f64(double %i.pq, double %i.po, double %i.pp) ; 2 uses
  %i.ps = fcmp une double %i.pr, 0.000000e+00
  %i.pt = fdiv double 1.000000e+00, %i.pr
  %i.pu = select i1 %i.ps, double %i.pt, double 0.000000e+00
  %i.pv = insertelement <2 x double> poison, double %i.po, i64 0
  %i.pw = insertelement <2 x double> %i.pv, double %i.pm, i64 1
  %i.px = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.py = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pz = fmul <2 x double> %i.pw, %i.py
  %i.qa = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.qb = shufflevector <2 x double> %i.qa, <2 x double> %i.pk, <2 x i32> <i32 0, i32 2>
  %i.qc = fmul <2 x double> %i.py, %i.qb
  %i.qd = shufflevector <2 x double> %i.oy, <2 x double> %i.ox, <2 x i32> <i32 0, i32 3>
  %51 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qd, <2 x double> %51, <2 x double> %i.ph) ; 2 uses
  %i.qf = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qg = fmul <2 x double> %i.qf, %i.qc
  %i.qh = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pz, <2 x double> %i.qh, <2 x double> %i.qg)
  %i.qj = fsub <2 x double> %i.nj, %i.qi          ; 3 uses
  %i.qk = extractelement <2 x double> %i.qj, i64 1 ; 2 uses
  %i.ql = fptrunc double %i.qk to float
  %i.qm = fptrunc <2 x double> %i.qj to <2 x float> ; 2 uses
  %i.qn = fpext <2 x float> %i.qm to <2 x double> ; 9 uses
  %foldExtExtBinop539 = fmul <2 x double> %i.qn, %i.qn
  %i.qo = extractelement <2 x double> %foldExtExtBinop539, i64 1
  %i.qp = extractelement <2 x double> %i.qn, i64 0 ; 2 uses
  %i.qq = call double @llvm.fmuladd.f64(double %i.qp, double %i.qp, double %i.qo)
  %i.qr = fadd double %i.qq, 1.000000e+00         ; 3 uses
  %i.qs = fdiv double 1.000000e+00, %i.qr         ; 3 uses
  %i.qt = call double @llvm.fmuladd.f64(double %i.ds, double %i.qr, double %i.du)
  %i.qu = call double @sqrt(double noundef %i.qt) #23 ; 2 uses
  %i.qv = fsub double %i.qu, %i.dv                ; 2 uses
  %i.qw = fmul double %i.qv, %i.qs                ; 2 uses
  %i.qx = fmul double %i.qr, %i.ds
  %i.qy = fdiv double %i.qx, %i.qu
  %i.qz = fneg double %i.qv
  %i.ra = call double @llvm.fmuladd.f64(double %i.qz, double 2.000000e+00, double %i.qy)
  %i.rb = fmul double %i.qs, %i.ra
  %i.rc = fmul double %i.qs, %i.rb
  %i.rd = insertelement <2 x double> poison, double %i.rc, i64 0
  %i.re = shufflevector <2 x double> %i.rd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rf = fmul <2 x double> %i.re, %i.qn          ; 4 uses
  br i1 %i.lo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.rg = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.rh = fmul <2 x double> %i.rf, %i.rg
  %i.ri = insertelement <2 x double> poison, double %i.qw, i64 0
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.qn, <2 x double> %i.rj)
  %i.rl = fmul <2 x double> %i.rj, %i.rg
  br label %.noexc279

bb.bl:                                            ; preds = %bb.bj
  %i.rm = insertelement <2 x double> poison, double %i.qw, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ro = fmul <2 x double> %i.rn, %i.qn
  %i.rp = fmul <2 x double> %i.ro, %i.ea          ; 2 uses
  %i.rq = fcmp ogt <2 x double> %i.rp, splat (double 1.000000e+00)
  %i.rr = select <2 x i1> %i.rq, <2 x double> splat (double 1.000000e+00), <2 x double> %i.rp ; 2 uses
  %i.rs = fcmp olt <2 x double> %i.rr, splat (double -1.000000e+00)
  %i.rt = select <2 x i1> %i.rs, <2 x double> splat (double -1.000000e+00), <2 x double> %i.rr ; 4 uses
  %i.ru = extractelement <2 x double> %i.rt, i64 0
  %i.rv = extractelement <2 x double> %i.rt, i64 1
  %i.rw = fneg <2 x double> %i.rt
  %i.rx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rw, <2 x double> %i.rt, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.ry = extractelement <2 x double> %i.rx, i64 0
  %i.rz = call double @sqrt(double noundef %i.ry) #23
  %i.sa = extractelement <2 x double> %i.rx, i64 1
  %i.sb = call double @sqrt(double noundef %i.sa) #23
  %i.sc = insertelement <2 x double> poison, double %i.rz, i64 0
  %i.sd = insertelement <2 x double> %i.sc, double %i.sb, i64 1
  %i.se = fdiv <2 x double> %i.ea, %i.sd          ; 2 uses
  %i.sf = shufflevector <2 x double> %i.rf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sg = fmul <2 x double> %i.sf, %i.se
  %i.sh = fmul <2 x double> %i.sg, %i.qn
  %i.si = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.qn, <2 x double> %i.rn)
  %i.sj = fmul <2 x double> %i.si, %i.se
  %i.sk = call double @asin(double noundef %i.ru) #23
  %i.sl = call double @asin(double noundef %i.rv) #23
  %i.sm = insertelement <2 x double> poison, double %i.sl, i64 0
  %i.sn = insertelement <2 x double> %i.sm, double %i.sk, i64 1
  br label %.noexc279

.noexc279:                                        ; preds = %bb.bl, %bb.bk
  %i.so = phi <2 x double> [ %i.rl, %bb.bk ], [ %i.sn, %bb.bl ]
  %i.sp = phi <2 x double> [ %i.rh, %bb.bk ], [ %i.sh, %bb.bl ] ; 4 uses
  %i.sq = phi <2 x double> [ %i.rk, %bb.bk ], [ %i.sj, %bb.bl ] ; 4 uses
  %i.sr = fptrunc <2 x double> %i.so to <2 x float>
  %i.ss = fpext <2 x float> %i.sr to <2 x double>
  %i.st = fsub <2 x double> %i.ss, %47            ; 5 uses
  %i.su = fmul <2 x double> %i.st, %i.st
  %i.sv = extractelement <2 x double> %i.su, i64 0
  %i.sw = extractelement <2 x double> %i.st, i64 1 ; 2 uses
  %i.sx = call double @llvm.fmuladd.f64(double %i.sw, double %i.sw, double %i.sv)
  %i.sy = fcmp olt double %i.sx, f0x3D719799812DEA11
  %i.sz = extractelement <2 x float> %i.qm, i64 0
  br i1 %i.sy, label %._crit_edge.i, label %bb.bm

bb.bm:                                            ; preds = %.noexc279
  %i.ta = extractelement <2 x double> %i.sp, i64 1 ; 3 uses
  %i.tb = fmul double %i.ta, %i.ta
  %i.tc = extractelement <2 x double> %i.sq, i64 1 ; 3 uses
  %i.td = fmul double %i.ta, %i.tc
  %i.te = extractelement <2 x double> %i.sp, i64 0 ; 3 uses
  %i.tf = extractelement <2 x double> %i.sq, i64 0 ; 3 uses
  %i.tg = call double @llvm.fmuladd.f64(double %i.tf, double %i.te, double %i.td) ; 2 uses
  %i.th = fmul double %i.tc, %i.tc
  %i.ti = shufflevector <2 x double> %i.st, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tj = shufflevector <2 x double> %i.sq, <2 x double> %i.sp, <2 x i32> <i32 1, i32 3>
  %i.tk = fmul <2 x double> %i.ti, %i.tj
  %i.tl = shufflevector <2 x double> %i.sp, <2 x double> %i.sq, <2 x i32> <i32 0, i32 2>
  %i.tm = shufflevector <2 x double> %i.st, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %i.tm, <2 x double> %i.tk) ; 2 uses
  %i.to = fneg double %i.tg                       ; 3 uses
  %i.tp = call double @llvm.fmuladd.f64(double %i.tf, double %i.tf, double %i.tb) ; 2 uses
  %i.tq = call double @llvm.fmuladd.f64(double %i.te, double %i.te, double %i.th) ; 2 uses
  %i.tr = fmul double %i.tg, %i.to
  %i.ts = call double @llvm.fmuladd.f64(double %i.tp, double %i.tq, double %i.tr) ; 2 uses
  %i.tt = fcmp une double %i.ts, 0.000000e+00
  %i.tu = fdiv double 1.000000e+00, %i.ts
  %i.tv = select i1 %i.tt, double %i.tu, double 0.000000e+00
  %i.tw = insertelement <2 x double> poison, double %i.tv, i64 0
  %i.tx = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ty = insertelement <2 x double> poison, double %i.to, i64 0
  %i.tz = insertelement <2 x double> %i.ty, double %i.tq, i64 1
  %i.ua = fmul <2 x double> %i.tx, %i.tz
  %i.ub = insertelement <2 x double> poison, double %i.tp, i64 0
  %i.uc = insertelement <2 x double> %i.ub, double %i.to, i64 1
  %i.ud = fmul <2 x double> %i.uc, %i.tx
  %i.ue = shufflevector <2 x double> %i.tn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uf = fmul <2 x double> %i.ue, %i.ud
  %i.ug = shufflevector <2 x double> %i.tn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> %i.ug, <2 x double> %i.uf) ; 2 uses
  %i.ui = extractelement <2 x double> %i.uh, i64 0
  %i.uj = fsub double %i.qk, %i.ui                ; 3 uses
  %shift = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop543 = fsub <2 x double> %i.qj, %shift ; 2 uses
  %i.uk = fptrunc double %i.uj to float
  %i.ul = insertelement <2 x double> %foldExtExtBinop543, double %i.uj, i64 1
  %i.um = fptrunc <2 x double> %i.ul to <2 x float> ; 2 uses
  %i.un = fpext <2 x float> %i.um to <2 x double> ; 9 uses
  %foldExtExtBinop545 = fmul <2 x double> %i.un, %i.un
  %i.uo = extractelement <2 x double> %foldExtExtBinop545, i64 1
  %i.up = extractelement <2 x double> %i.un, i64 0 ; 2 uses
  %i.uq = call double @llvm.fmuladd.f64(double %i.up, double %i.up, double %i.uo)
  %i.ur = fadd double %i.uq, 1.000000e+00         ; 3 uses
  %i.us = fdiv double 1.000000e+00, %i.ur         ; 3 uses
  %i.ut = call double @llvm.fmuladd.f64(double %i.ds, double %i.ur, double %i.du)
  %i.uu = call double @sqrt(double noundef %i.ut) #23 ; 2 uses
  %i.uv = fsub double %i.uu, %i.dv                ; 2 uses
  %i.uw = fmul double %i.uv, %i.us                ; 2 uses
  %i.ux = fmul double %i.ur, %i.ds
  %i.uy = fdiv double %i.ux, %i.uu
  %i.uz = fneg double %i.uv
  %i.va = call double @llvm.fmuladd.f64(double %i.uz, double 2.000000e+00, double %i.uy)
  %i.vb = fmul double %i.us, %i.va
  %i.vc = fmul double %i.us, %i.vb
  %i.vd = insertelement <2 x double> poison, double %i.vc, i64 0
  %i.ve = shufflevector <2 x double> %i.vd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vf = fmul <2 x double> %i.ve, %i.un          ; 4 uses
  br i1 %i.lo, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.vg = shufflevector <2 x double> %i.un, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vh = fmul <2 x double> %i.vf, %i.vg
  %i.vi = insertelement <2 x double> poison, double %i.uw, i64 0
  %i.vj = shufflevector <2 x double> %i.vi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.un, <2 x double> %i.vj)
  %i.vl = fmul <2 x double> %i.vj, %i.vg
  br label %.noexc280

bb.bo:                                            ; preds = %bb.bm
  %i.vm = insertelement <2 x double> poison, double %i.uw, i64 0
  %i.vn = shufflevector <2 x double> %i.vm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vo = fmul <2 x double> %i.vn, %i.un
  %i.vp = fmul <2 x double> %i.vo, %i.ea          ; 2 uses
  %i.vq = fcmp ogt <2 x double> %i.vp, splat (double 1.000000e+00)
  %i.vr = select <2 x i1> %i.vq, <2 x double> splat (double 1.000000e+00), <2 x double> %i.vp ; 2 uses
  %i.vs = fcmp olt <2 x double> %i.vr, splat (double -1.000000e+00)
  %i.vt = select <2 x i1> %i.vs, <2 x double> splat (double -1.000000e+00), <2 x double> %i.vr ; 4 uses
  %i.vu = extractelement <2 x double> %i.vt, i64 0
  %i.vv = extractelement <2 x double> %i.vt, i64 1
  %i.vw = fneg <2 x double> %i.vt
  %i.vx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vw, <2 x double> %i.vt, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.vy = extractelement <2 x double> %i.vx, i64 0
  %i.vz = call double @sqrt(double noundef %i.vy) #23
  %i.wa = extractelement <2 x double> %i.vx, i64 1
  %i.wb = call double @sqrt(double noundef %i.wa) #23
  %i.wc = insertelement <2 x double> poison, double %i.vz, i64 0
  %i.wd = insertelement <2 x double> %i.wc, double %i.wb, i64 1
  %i.we = fdiv <2 x double> %i.ea, %i.wd          ; 2 uses
  %i.wf = shufflevector <2 x double> %i.vf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.wg = fmul <2 x double> %i.wf, %i.we
  %i.wh = fmul <2 x double> %i.wg, %i.un
  %i.wi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.un, <2 x double> %i.vn)
  %i.wj = fmul <2 x double> %i.wi, %i.we
  %i.wk = call double @asin(double noundef %i.vu) #23
  %i.wl = call double @asin(double noundef %i.vv) #23
  %i.wm = insertelement <2 x double> poison, double %i.wl, i64 0
  %i.wn = insertelement <2 x double> %i.wm, double %i.wk, i64 1
  br label %.noexc280

.noexc280:                                        ; preds = %bb.bo, %bb.bn
  %i.wo = phi <2 x double> [ %i.vl, %bb.bn ], [ %i.wn, %bb.bo ]
  %i.wp = phi <2 x double> [ %i.vh, %bb.bn ], [ %i.wh, %bb.bo ] ; 4 uses
  %i.wq = phi <2 x double> [ %i.vk, %bb.bn ], [ %i.wj, %bb.bo ] ; 4 uses
  %i.wr = extractelement <2 x double> %i.wp, i64 1 ; 4 uses
  store double %i.wr, ptr %i.lm, align 16
  %i.ws = fptrunc <2 x double> %i.wo to <2 x float>
  %i.wt = fpext <2 x float> %i.ws to <2 x double>
  %i.wu = fsub <2 x double> %i.wt, %47            ; 5 uses
  %i.wv = fmul <2 x double> %i.wu, %i.wu
  %i.ww = extractelement <2 x double> %i.wv, i64 0
  %i.wx = extractelement <2 x double> %i.wu, i64 1 ; 2 uses
  %i.wy = call double @llvm.fmuladd.f64(double %i.wx, double %i.wx, double %i.ww)
  %i.wz = fcmp olt double %i.wy, f0x3D719799812DEA11
  %i.xa = extractelement <2 x float> %i.um, i64 0
  br i1 %i.wz, label %._crit_edge.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc280
  %i.xb = fmul double %i.wr, %i.wr
  %i.xc = extractelement <2 x double> %i.wq, i64 1 ; 3 uses
  %i.xd = fmul double %i.wr, %i.xc
  %i.xe = extractelement <2 x double> %i.wp, i64 0 ; 3 uses
  %i.xf = extractelement <2 x double> %i.wq, i64 0 ; 3 uses
  %i.xg = call double @llvm.fmuladd.f64(double %i.xf, double %i.xe, double %i.xd) ; 2 uses
  %i.xh = fmul double %i.xc, %i.xc
  %i.xi = shufflevector <2 x double> %i.wu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xj = shufflevector <2 x double> %i.wq, <2 x double> %i.wp, <2 x i32> <i32 1, i32 3>
  %i.xk = fmul <2 x double> %i.xi, %i.xj
  %i.xl = shufflevector <2 x double> %i.wp, <2 x double> %i.wq, <2 x i32> <i32 0, i32 2>
  %i.xm = shufflevector <2 x double> %i.wu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xl, <2 x double> %i.xm, <2 x double> %i.xk) ; 2 uses
  %i.xo = fneg double %i.xg                       ; 3 uses
  %i.xp = call double @llvm.fmuladd.f64(double %i.xf, double %i.xf, double %i.xb) ; 2 uses
  %i.xq = call double @llvm.fmuladd.f64(double %i.xe, double %i.xe, double %i.xh) ; 2 uses
  %i.xr = fmul double %i.xg, %i.xo
  %i.xs = call double @llvm.fmuladd.f64(double %i.xp, double %i.xq, double %i.xr) ; 2 uses
  %i.xt = fcmp une double %i.xs, 0.000000e+00
  %i.xu = fdiv double 1.000000e+00, %i.xs
  %i.xv = select i1 %i.xt, double %i.xu, double 0.000000e+00
  %i.xw = insertelement <2 x double> poison, double %i.xv, i64 0
  %i.xx = shufflevector <2 x double> %i.xw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xy = insertelement <2 x double> poison, double %i.xo, i64 0
  %i.xz = insertelement <2 x double> %i.xy, double %i.xq, i64 1
  %i.ya = fmul <2 x double> %i.xx, %i.xz
  %i.yb = insertelement <2 x double> poison, double %i.xp, i64 0
  %i.yc = insertelement <2 x double> %i.yb, double %i.xo, i64 1
  %i.yd = fmul <2 x double> %i.yc, %i.xx
  %i.ye = shufflevector <2 x double> %i.xn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yf = fmul <2 x double> %i.ye, %i.yd
  %i.yg = shufflevector <2 x double> %i.xn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.yh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ya, <2 x double> %i.yg, <2 x double> %i.yf) ; 2 uses
  %i.yi = extractelement <2 x double> %i.yh, i64 0
  %i.yj = fsub double %i.uj, %i.yi                ; 3 uses
  %shift549 = shufflevector <2 x double> %i.yh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop550 = fsub <2 x double> %foldExtExtBinop543, %shift549 ; 2 uses
  %i.yk = extractelement <2 x double> %foldExtExtBinop550, i64 0
  %i.yl = fptrunc double %i.yj to float
  %i.ym = insertelement <2 x double> %foldExtExtBinop550, double %i.yj, i64 1
  %i.yn = fptrunc <2 x double> %i.ym to <2 x float> ; 2 uses
  %i.yo = fpext <2 x float> %i.yn to <2 x double> ; 10 uses
  %foldExtExtBinop552 = fmul <2 x double> %i.yo, %i.yo
  %i.yp = extractelement <2 x double> %foldExtExtBinop552, i64 1
  %i.yq = extractelement <2 x double> %i.yo, i64 0 ; 2 uses
  %i.yr = call double @llvm.fmuladd.f64(double %i.yq, double %i.yq, double %i.yp)
  %i.ys = fadd double %i.yr, 1.000000e+00         ; 3 uses
  %i.yt = fdiv double 1.000000e+00, %i.ys         ; 3 uses
  %i.yu = call double @llvm.fmuladd.f64(double %i.ds, double %i.ys, double %i.du)
  %i.yv = call double @sqrt(double noundef %i.yu) #23 ; 2 uses
  %i.yw = fsub double %i.yv, %i.dv                ; 2 uses
  %i.yx = fmul double %i.yw, %i.yt                ; 2 uses
  %i.yy = fmul double %i.ys, %i.ds
  %i.yz = fdiv double %i.yy, %i.yv
  %i.za = fneg double %i.yw
  %i.zb = call double @llvm.fmuladd.f64(double %i.za, double 2.000000e+00, double %i.yz)
  %i.zc = fmul double %i.yt, %i.zb
  %i.zd = fmul double %i.yt, %i.zc
  %i.ze = insertelement <2 x double> poison, double %i.zd, i64 0
  %i.zf = shufflevector <2 x double> %i.ze, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zg = fmul <2 x double> %i.zf, %i.yo          ; 4 uses
  br i1 %i.lo, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.zh = shufflevector <2 x double> %i.yo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.zi = fmul <2 x double> %i.zg, %i.zh
  %i.zj = insertelement <2 x double> poison, double %i.yx, i64 0
  %i.zk = shufflevector <2 x double> %i.zj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zg, <2 x double> %i.yo, <2 x double> %i.zk)
  %i.zm = fmul <2 x double> %i.zk, %i.yo
  br label %.noexc281

bb.br:                                            ; preds = %bb.bp
  %i.zn = insertelement <2 x double> poison, double %i.yx, i64 0
  %i.zo = shufflevector <2 x double> %i.zn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zp = fmul <2 x double> %i.zo, %i.yo
  %i.zq = fmul <2 x double> %i.zp, %i.ea          ; 2 uses
  %i.zr = fcmp ogt <2 x double> %i.zq, splat (double 1.000000e+00)
  %i.zs = select <2 x i1> %i.zr, <2 x double> splat (double 1.000000e+00), <2 x double> %i.zq ; 2 uses
  %i.zt = fcmp olt <2 x double> %i.zs, splat (double -1.000000e+00)
  %i.zu = select <2 x i1> %i.zt, <2 x double> splat (double -1.000000e+00), <2 x double> %i.zs ; 4 uses
  %i.zv = extractelement <2 x double> %i.zu, i64 0
  %i.zw = extractelement <2 x double> %i.zu, i64 1
  %i.zx = fneg <2 x double> %i.zu
  %i.zy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zx, <2 x double> %i.zu, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.zz = extractelement <2 x double> %i.zy, i64 0
  %i.aaa = call double @sqrt(double noundef %i.zz) #23
  %i.aab = extractelement <2 x double> %i.zy, i64 1
  %i.aac = call double @sqrt(double noundef %i.aab) #23
  %i.aad = insertelement <2 x double> poison, double %i.aaa, i64 0
  %i.aae = insertelement <2 x double> %i.aad, double %i.aac, i64 1
  %i.aaf = fdiv <2 x double> %i.ea, %i.aae        ; 2 uses
  %i.aag = shufflevector <2 x double> %i.zg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aah = fmul <2 x double> %i.aag, %i.aaf
  %i.aai = fmul <2 x double> %i.aah, %i.yo
  %i.aaj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zg, <2 x double> %i.yo, <2 x double> %i.zo)
  %i.aak = fmul <2 x double> %i.aaj, %i.aaf
  %i.aal = call double @asin(double noundef %i.zv) #23
  %i.aam = call double @asin(double noundef %i.zw) #23
  %i.aan = insertelement <2 x double> poison, double %i.aal, i64 0
  %i.aao = insertelement <2 x double> %i.aan, double %i.aam, i64 1
  br label %.noexc281

.noexc281:                                        ; preds = %bb.br, %bb.bq
  %i.aap = phi <2 x double> [ %i.zi, %bb.bq ], [ %i.aai, %bb.br ] ; 7 uses
  %i.aaq = phi <2 x double> [ %i.zl, %bb.bq ], [ %i.aak, %bb.br ] ; 8 uses
  %i.aar = phi <2 x double> [ %i.zm, %bb.bq ], [ %i.aao, %bb.br ]
  %i.aas = extractelement <2 x double> %i.aaq, i64 0
  store double %i.aas, ptr %11, align 16
  %i.aat = extractelement <2 x double> %i.aap, i64 0 ; 2 uses
  store double %i.aat, ptr %i.ln, align 8
  %i.aau = fptrunc <2 x double> %i.aar to <2 x float>
  %i.aav = fpext <2 x float> %i.aau to <2 x double> ; 2 uses
  %i.aaw = extractelement <2 x double> %i.aav, i64 0
  %i.aax = fsub double %i.aaw, %i.mt              ; 4 uses
  %i.aay = extractelement <2 x double> %i.aav, i64 1
  %i.aaz = fsub double %i.aay, %i.ml              ; 4 uses
  %i.aba = fmul double %i.aaz, %i.aaz
  %i.abb = call double @llvm.fmuladd.f64(double %i.aax, double %i.aax, double %i.aba)
  %i.abc = fcmp olt double %i.abb, f0x3D719799812DEA11
  %i.abd = extractelement <2 x float> %i.yn, i64 0
  br i1 %i.abc, label %._crit_edge.i, label %bb.bs

bb.bs:                                            ; preds = %.noexc281
  %i.abe = shufflevector <2 x double> %i.aap, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.abf = shufflevector <2 x double> %i.aap, <2 x double> %i.aaq, <2 x i32> <i32 1, i32 3>
  %i.abg = fmul <2 x double> %i.abe, %i.abf
  %i.abh = shufflevector <2 x double> %i.aaq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.abi = shufflevector <2 x double> %i.aaq, <2 x double> %i.aap, <2 x i32> <i32 0, i32 2>
  %i.abj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abh, <2 x double> %i.abi, <2 x double> %i.abg) ; 2 uses
  %i.abk = insertelement <2 x double> %i.aaq, double %i.aaz, i64 0
  %i.abl = shufflevector <2 x double> %i.aap, <2 x double> %i.aaq, <2 x i32> <i32 1, i32 3>
  %i.abm = fmul <2 x double> %i.abk, %i.abl
  %i.abn = extractelement <2 x double> %i.abj, i64 1 ; 2 uses
  %i.abo = fneg double %i.abn                     ; 2 uses
  %i.abp = fmul double %i.abn, %i.abo
  %i.abq = extractelement <2 x double> %i.abj, i64 0 ; 2 uses
  %i.abr = shufflevector <2 x double> %i.aaq, <2 x double> %i.aap, <2 x i32> <i32 0, i32 2>
  %i.abs = insertelement <2 x double> poison, double %i.aax, i64 0
  %i.abt = shufflevector <2 x double> %i.abs, <2 x double> %i.aap, <2 x i32> <i32 0, i32 2>
  %i.abu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abr, <2 x double> %i.abt, <2 x double> %i.abm) ; 2 uses
  %i.abv = extractelement <2 x double> %i.abu, i64 1 ; 2 uses
  %i.abw = call double @llvm.fmuladd.f64(double %i.abq, double %i.abv, double %i.abp) ; 2 uses
  %i.abx = fcmp une double %i.abw, 0.000000e+00
  %i.aby = fdiv double 1.000000e+00, %i.abw
  %i.abz = select i1 %i.abx, double %i.aby, double 0.000000e+00 ; 3 uses
  %i.aca = fmul double %i.abv, %i.abz
  %i.acb = fmul double %i.abz, %i.abo             ; 2 uses
  %i.acc = fmul double %i.abq, %i.abz
  %i.acd = extractelement <2 x double> %i.aaq, i64 1
  %i.ace = fmul double %i.aaz, %i.acd
  %i.acf = call double @llvm.fmuladd.f64(double %i.aat, double %i.aax, double %i.ace) ; 2 uses
  %i.acg = fmul double %i.acf, %i.acb
  %i.ach = extractelement <2 x double> %i.abu, i64 0 ; 2 uses
  %i.aci = call double @llvm.fmuladd.f64(double %i.aca, double %i.ach, double %i.acg)
  %i.acj = fmul double %i.acf, %i.acc
  %i.ack = call double @llvm.fmuladd.f64(double %i.acb, double %i.ach, double %i.acj)
  %i.acl = fsub double %i.yk, %i.aci
  %i.acm = fsub double %i.yj, %i.ack
  %i.acn = fptrunc double %i.acl to float         ; 2 uses
  %i.aco = fptrunc double %i.acm to float         ; 2 uses
  %i.acp = invoke fastcc <2 x float> @_ZN2cvL17mapPointSphericalERKNS_6Point_IfEEfPNS_3VecIdLi4EEENS_14UndistortTypesE(float %i.acn, float %i.aco, float noundef %.sroa.speculated418, ptr noundef nonnull %11, i32 noundef %7)
          to label %.noexc282 unwind label %.loopexit

.noexc282:                                        ; preds = %bb.bs
  %i.acq = fpext <2 x float> %i.acp to <2 x double> ; 2 uses
  %i.acr = extractelement <2 x double> %i.acq, i64 0
  %i.acs = fsub double %i.acr, %i.mt              ; 2 uses
  %i.act = extractelement <2 x double> %i.acq, i64 1
  %i.acu = fsub double %i.act, %i.ml              ; 2 uses
  %i.acv = fmul double %i.acu, %i.acu
  %i.acw = call double @llvm.fmuladd.f64(double %i.acs, double %i.acs, double %i.acv)
  %i.acx = fcmp olt double %i.acw, f0x3D719799812DEA11
  br i1 %i.acx, label %._crit_edge.i, label %bb.bt

._crit_edge.i:                                    ; preds = %.noexc282, %.noexc281, %.noexc280, %.noexc279, %.noexc278
  %.pre-phi77.i = phi float [ %i.ql, %.noexc279 ], [ %i.aco, %.noexc282 ], [ %i.yl, %.noexc281 ], [ %i.uk, %.noexc280 ], [ %i.mk, %.noexc278 ]
  %.pre-phi.i = phi float [ %i.sz, %.noexc279 ], [ %i.acn, %.noexc282 ], [ %i.abd, %.noexc281 ], [ %i.xa, %.noexc280 ], [ %i.ms, %.noexc278 ]
  %.sroa.058.0.vec.insert.i = insertelement <2 x float> poison, float %.pre-phi.i, i64 0
  %.sroa.058.4.vec.insert.i = insertelement <2 x float> %.sroa.058.0.vec.insert.i, float %.pre-phi77.i, i64 1
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i, %.noexc282
  %.sroa.058.0.i = phi <2 x float> [ %.sroa.058.4.vec.insert.i, %._crit_edge.i ], [ splat (float f0xFF7FFFFF), %.noexc282 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.sroa.042.0.vec.extract = extractelement <2 x float> %.sroa.058.0.i, i64 0 ; 2 uses
  %i.acy = fcmp ole float %.sroa.042.0.vec.extract, f0xFF7FFFFF
  %.sroa.042.4.vec.extract58 = extractelement <2 x float> %.sroa.058.0.i, i64 1 ; 2 uses
  %i.acz = fcmp ole float %.sroa.042.4.vec.extract58, f0xFF7FFFFF
  %or.cond13 = select i1 %i.acy, i1 %i.acz, i1 false
  br i1 %or.cond13, label %bb.bu, label %bb.bv
end_hunk_0
