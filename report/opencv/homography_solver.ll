Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_solver?download=true
inline.NumInlined: 1025
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 130
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZNK2cv4usac26AffineNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a
  %i.fp = fadd <2 x double> %i.do, %i.fo
  %i.fq = fmul double %i.ep, %i.dv
  %i.fr = fadd double %i.fq, 0.000000e+00
  %i.fs = call double @llvm.fmuladd.f64(double %i.er, double 0.000000e+00, double %i.fg)
  %i.ft = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fr, i64 1
  %i.fv = fadd <2 x double> %i.dt, %i.fu
  %i.fw = load <2 x float>, ptr %i.eg, align 4, !tbaa !67
  %i.fx = fpext <2 x float> %i.fw to <2 x double>
  %i.fy = fmul <2 x double> %i.ek, %i.fx          ; 2 uses
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ga = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gb = shufflevector <2 x double> %i.el, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.gc = fmul <2 x double> %i.ga, %i.gb          ; 2 uses
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.fz, <2 x double> %i.gd)
  %i.gf = fadd <2 x double> %i.dq, %i.ge
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.fz, <2 x double> %i.gc)
  %i.gh = fadd <2 x double> %i.dr, %i.gg
  %i.gi = fmul <2 x double> %i.es, %i.et
  %i.gj = fadd <2 x double> %i.gi, <double -0.000000e+00, double 0.000000e+00>
  %i.gk = fadd <2 x double> %i.dp, %i.gj
  %i.gl = fmul double %i.dv, %i.dv
  %i.gm = fadd double %.sroa.149.1, %i.gl
  %i.gn = fmul <2 x double> %i.ga, %i.et
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> zeroinitializer, <2 x double> %i.gn)
  %i.gp = fadd <2 x double> %i.ds, %i.go
  br label %.loopexit221

.loopexit221:                                     ; preds = %.preheader220, %bb.k
  %.sroa.149.2 = phi double [ %.sroa.149.1, %bb.k ], [ %i.gm, %.preheader220 ] ; 2 uses
  %i.gq = phi <2 x double> [ %i.dh, %bb.k ], [ %i.eo, %.preheader220 ] ; 2 uses
  %i.gr = phi <2 x double> [ %i.di, %bb.k ], [ %i.fd, %.preheader220 ] ; 2 uses
  %i.gs = phi <2 x double> [ %i.dj, %bb.k ], [ %i.ew, %.preheader220 ] ; 2 uses
  %i.gt = phi <2 x double> [ %i.dk, %bb.k ], [ %i.ey, %.preheader220 ] ; 2 uses
  %i.gu = phi <2 x double> [ %i.dl, %bb.k ], [ %i.ff, %.preheader220 ] ; 2 uses
  %i.gv = phi <2 x double> [ %i.dm, %bb.k ], [ %i.fk, %.preheader220 ] ; 2 uses
  %i.gw = phi <2 x double> [ %i.dn, %bb.k ], [ %i.fm, %.preheader220 ] ; 2 uses
  %i.gx = phi <2 x double> [ %i.do, %bb.k ], [ %i.fp, %.preheader220 ] ; 2 uses
  %i.gy = phi <2 x double> [ %i.dp, %bb.k ], [ %i.gk, %.preheader220 ] ; 2 uses
  %i.gz = phi <2 x double> [ %i.dq, %bb.k ], [ %i.gf, %.preheader220 ] ; 2 uses
  %i.ha = phi <2 x double> [ %i.dr, %bb.k ], [ %i.gh, %.preheader220 ] ; 2 uses
  %i.hb = phi <2 x double> [ %i.ds, %bb.k ], [ %i.gp, %.preheader220 ] ; 2 uses
  %i.hc = phi <2 x double> [ %i.dt, %bb.k ], [ %i.fv, %.preheader220 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !230

.loopexit.loopexit:                               ; preds = %.preheader218
  %i.hd = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ci, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit221, %.loopexit.loopexit, %.preheader222, %.preheader219
  %.sroa.149.3 = phi double [ 0.000000e+00, %.preheader222 ], [ 0.000000e+00, %.preheader219 ], [ %i.dc, %.loopexit.loopexit ], [ %.sroa.149.2, %.loopexit221 ]
  %i.he = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bf, %.loopexit.loopexit ], [ %i.gq, %.loopexit221 ] ; 2 uses
  %i.hf = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.br, %.loopexit.loopexit ], [ %i.gr, %.loopexit221 ] ; 3 uses
  %i.hg = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bu, %.loopexit.loopexit ], [ %i.gs, %.loopexit221 ] ; 3 uses
  %i.hh = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bp, %.loopexit.loopexit ], [ %i.gt, %.loopexit221 ] ; 2 uses
  %i.hi = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bx, %.loopexit.loopexit ], [ %i.gu, %.loopexit221 ] ; 3 uses
  %i.hj = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cg, %.loopexit.loopexit ], [ %i.gv, %.loopexit221 ] ; 2 uses
  %i.hk = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.hd, %.loopexit.loopexit ], [ %i.gw, %.loopexit221 ] ; 3 uses
  %i.hl = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cm, %.loopexit.loopexit ], [ %i.gx, %.loopexit221 ] ; 2 uses
  %i.hm = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.da, %.loopexit.loopexit ], [ %i.gy, %.loopexit221 ] ; 2 uses
  %i.hn = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cd, %.loopexit.loopexit ], [ %i.gz, %.loopexit221 ]
  %i.ho = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cv, %.loopexit.loopexit ], [ %i.ha, %.loopexit221 ]
  %i.hp = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.dg, %.loopexit.loopexit ], [ %i.hb, %.loopexit221 ]
  %i.hq = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.ct, %.loopexit.loopexit ], [ %i.hc, %.loopexit221 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %10, i8 0, i64 48, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store <2 x double> %i.he, ptr %12, align 16, !tbaa !61
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <2 x double> %i.hf, ptr %i.hr, align 16, !tbaa !61
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 32
  store <2 x double> %i.hg, ptr %i.hs, align 16, !tbaa !61
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.hu = extractelement <2 x double> %i.he, i64 1
  store double %i.hu, ptr %i.ht, align 16, !tbaa !61
  %i.hv = getelementptr inbounds nuw i8, ptr %12, i64 56
  store <2 x double> %i.hh, ptr %i.hv, align 8, !tbaa !61
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 72
  store <2 x double> %i.hi, ptr %i.hw, align 8, !tbaa !61
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.hy = extractelement <2 x double> %i.hq, i64 0 ; 2 uses
  store double %i.hy, ptr %i.hx, align 8, !tbaa !61
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.ia = shufflevector <2 x double> %i.hf, <2 x double> %i.hh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ia, ptr %i.hz, align 16, !tbaa !61
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 112
  store <2 x double> %i.hj, ptr %i.ib, align 16, !tbaa !61
  %i.ic = getelementptr inbounds nuw i8, ptr %12, i64 128
  store <2 x double> %i.hk, ptr %i.ic, align 16, !tbaa !61
  %i.id = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.ie = shufflevector <2 x double> %i.hf, <2 x double> %i.hi, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ie, ptr %i.id, align 16, !tbaa !61
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.ig = extractelement <2 x double> %i.hj, i64 1
  store double %i.ig, ptr %i.if, align 16, !tbaa !61
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 168
  store <2 x double> %i.hl, ptr %i.ih, align 8, !tbaa !61
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 184
  %i.ij = extractelement <2 x double> %i.hq, i64 1 ; 2 uses
  store double %i.ij, ptr %i.ii, align 8, !tbaa !61
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 192
  %i.il = shufflevector <2 x double> %i.hg, <2 x double> %i.hi, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.il, ptr %i.ik, align 16, !tbaa !61
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.in = shufflevector <2 x double> %i.hk, <2 x double> %i.hl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.in, ptr %i.im, align 16, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 224
  store <2 x double> %i.hm, ptr %i.io, align 16, !tbaa !61
  %i.ip = getelementptr inbounds nuw i8, ptr %12, i64 240
  %i.iq = extractelement <2 x double> %i.hg, i64 1
  store double %i.iq, ptr %i.ip, align 16, !tbaa !61
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 248
  store double %i.hy, ptr %i.ir, align 8, !tbaa !61
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 256
  %i.it = extractelement <2 x double> %i.hk, i64 1
  store double %i.it, ptr %i.is, align 16, !tbaa !61
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 264
  store double %i.ij, ptr %i.iu, align 8, !tbaa !61
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 272
  %i.iw = extractelement <2 x double> %i.hm, i64 1
  store double %i.iw, ptr %i.iv, align 16, !tbaa !61
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 280
  store double %.sroa.149.3, ptr %i.ix, align 8, !tbaa !61
  %i.iy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 -1056833530, ptr %11, align 8, !tbaa !78
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.iz, align 8, !tbaa !79
  store i64 25769803782, ptr %i.iy, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store <2 x double> %i.hn, ptr %14, align 16, !tbaa !61
  %i.ja = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <2 x double> %i.ho, ptr %i.ja, align 16, !tbaa !61
  %i.jb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <2 x double> %i.hp, ptr %i.jb, align 16, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 -1056833530, ptr %13, align 8, !tbaa !78
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %14, ptr %i.jd, align 8, !tbaa !79
  store i64 25769803777, ptr %i.jc, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 -1040056314, ptr %15, align 8, !tbaa !78
  store ptr %10, ptr %i.je, align 8, !tbaa !79
  %i.jf = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 25769803777, ptr %i.jf, align 8, !tbaa !52
  %i.jg = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 0)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %i.jg, label %bb.p, label %bb.x

bb.o:                                             ; preds = %.loopexit
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jj = load <2 x double>, ptr %i.ji, align 16
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !61
  %i.jn = load ptr, ptr %i.o, align 8, !tbaa !82
  %.not217 = icmp eq ptr %i.jn, null              ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.sel147 = select i1 %.not217, ptr %i.jo, ptr %7
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.sroa.sel = select i1 %.not217, ptr %i.jp, ptr %8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.jq = load double, ptr %.sroa.sel147, align 8, !tbaa !61 ; 2 uses
  %i.jr = load double, ptr %.sroa.sel, align 8, !tbaa !61 ; 5 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.gep203 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.sel.sroa.sel = select i1 %.not217, ptr %.sroa.gep203, ptr %.sroa.gep
  %i.js = load double, ptr %.sroa.sel.sroa.sel, align 8, !tbaa !61 ; 2 uses
  %i.jt = fmul double %i.js, 0.000000e+00
  %i.ju = fdiv double %i.jt, %i.jr
  %.sroa.gep207 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.gep208 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.sel147.sroa.sel = select i1 %.not217, ptr %.sroa.gep208, ptr %.sroa.gep207
  %i.jv = load double, ptr %.sroa.sel147.sroa.sel, align 8, !tbaa !61 ; 2 uses
  %.sroa.gep209 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.gep210 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.sroa.sel147.sroa.sel211 = select i1 %.not217, ptr %.sroa.gep210, ptr %.sroa.gep209
  %i.jw = load double, ptr %.sroa.sel147.sroa.sel211, align 8, !tbaa !61 ; 3 uses
  %i.jx = fdiv double %i.js, %i.jr
  %.sroa.gep204 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.gep205 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.sel.sroa.sel206 = select i1 %.not217, ptr %.sroa.gep205, ptr %.sroa.gep204
  %i.jy = load double, ptr %.sroa.sel.sroa.sel206, align 8, !tbaa !61 ; 2 uses
  %i.jz = fmul double %i.jy, 0.000000e+00
  %i.ka = fdiv double %i.jz, %i.jr
  %i.kb = fdiv double %i.jy, %i.jr
  %i.kc = fmul double %i.jq, 0.000000e+00         ; 2 uses
  %i.kd = call double @llvm.fmuladd.f64(double %i.jv, double 0.000000e+00, double 1.000000e+00)
  %i.ke = call double @llvm.fmuladd.f64(double %i.jw, double 0.000000e+00, double %i.kd)
  %i.kf = load <2 x double>, ptr %10, align 16, !tbaa !61
  %i.kg = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ki = fdiv <2 x double> %i.kf, %i.kh
  %i.kj = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kl = fsub <2 x double> %i.ki, %i.kk          ; 3 uses
  %i.km = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.kn = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ko = fmul <2 x double> %i.kn, %i.kl
  %18 = extractelement <2 x double> %i.kl, i64 1
  store <2 x double> %i.ko, ptr %17, align 16, !tbaa !61
  %i.kp = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.kq = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.kr = load <2 x double>, ptr %i.jk, align 8, !tbaa !61
  %i.ks = fdiv <2 x double> %i.kr, %i.kh
  %i.kt = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = fsub <2 x double> %i.ks, %i.ku          ; 3 uses
  %i.kw = fmul <2 x double> %i.kn, %i.kv
  %i.kx = insertelement <2 x double> %i.jj, double %i.jm, i64 1
  %i.ky = fdiv <2 x double> %i.kx, %i.kh
  %i.kz = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lb = shufflevector <2 x double> %i.kl, <2 x double> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.lc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.lb, <2 x double> %i.ky) ; 2 uses
  %19 = extractelement <2 x double> %i.lc, i64 0
  %20 = call double @llvm.fmuladd.f64(double %i.jw, double %18, double %19)
  %21 = fsub double %20, %i.jx
  store double %21, ptr %i.kp, align 16, !tbaa !61
  %i.ld = extractelement <2 x double> %i.kv, i64 1
  %22 = extractelement <2 x double> %i.lc, i64 1
  %23 = call double @llvm.fmuladd.f64(double %i.jw, double %i.ld, double %22)
  %i.le = fsub double %23, %i.kb
  store <2 x double> %i.kw, ptr %i.kq, align 8, !tbaa !61
  %i.lf = getelementptr inbounds nuw i8, ptr %17, i64 40
  store double %i.le, ptr %i.lf, align 8, !tbaa !61
  %i.lg = getelementptr inbounds nuw i8, ptr %17, i64 48
  store double %i.kc, ptr %i.lg, align 16, !tbaa !61
  %i.lh = getelementptr inbounds nuw i8, ptr %17, i64 56
  store double %i.kc, ptr %i.lh, align 8, !tbaa !61
  %i.li = getelementptr inbounds nuw i8, ptr %17, i64 64
  store double %i.ke, ptr %i.li, align 16, !tbaa !61
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %16, align 16, !tbaa !52
  %i.lj = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 153, ptr %i.lj, align 16, !tbaa !85
  %i.lk = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ll = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lk, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ll, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.p
  %i.lm = getelementptr inbounds nuw i8, ptr %16, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.lm, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %17, i64 noundef 0)
          to label %.noexc187 unwind label %bb.w

.noexc187:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ln = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.lo, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !78
  store ptr %16, ptr %i.ln, align 8, !tbaa !79
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %.noexc187
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body

bb.r:                                             ; preds = %.noexc187
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.lq = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #17
          to label %.noexc194 unwind label %.body195.thread ; 4 uses

.noexc194:                                        ; preds = %bb.r
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.lq, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc194
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 208 ; 2 uses
  %i.ls = load ptr, ptr %3, align 8, !tbaa !72    ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !73 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !74
  store ptr %i.lq, ptr %3, align 8, !tbaa !72
  store ptr %i.lr, ptr %i.lt, align 8, !tbaa !73
  store ptr %i.lr, ptr %i.lv, align 8, !tbaa !74
  %.not4.i.i.i.i.i = icmp eq ptr %i.ls, %i.lu
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i:   ; preds = %.noexc194
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  %i.lz = call ptr @__cxa_begin_catch(ptr %i.ly) #18 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  %i.ma = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body195 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.mb = landingpad { ptr, i32 }
          catch ptr null
  %i.mc = extractvalue { ptr, i32 } %i.mb, 0
  call void @__clang_call_terminate(ptr %i.mc) #20
  unreachable

bb.u:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body195.thread:                                  ; preds = %bb.r
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.body188

.body195:                                         ; preds = %bb.s
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef 208) #19
  br label %.body188

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i ], [ %i.ls, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #18
  %i.me = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.me, %i.lu
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.not.i.i1.i.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.mf = ptrtoint ptr %i.lw to i64
  %i.mg = ptrtoint ptr %i.ls to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.mh) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.v
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.x

bb.w:                                             ; preds = %.noexc, %bb.p
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body188:                                         ; preds = %.body195, %.body195.thread
  %eh.lpad-body189 = phi { ptr, i32 } [ %i.ma, %.body195 ], [ %i.md, %.body195.thread ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #18
  br label %.body

.body:                                            ; preds = %.body188, %bb.w, %bb.q
  %.pn182 = phi { ptr, i32 } [ %i.lp, %bb.q ], [ %i.mi, %bb.w ], [ %eh.lpad-body189, %.body188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.y

bb.x:                                             ; preds = %bb.n, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %.0160 = phi i32 [ 1, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.aa

bb.y:                                             ; preds = %.body, %bb.o
  %.pn182.pn = phi { ptr, i32 } [ %.pn182, %.body ], [ %i.jh, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.d
  %.pn182.pn.pn = phi { ptr, i32 } [ %.pn182.pn, %bb.y ], [ %i.n, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn182.pn.pn

bb.aa:                                            ; preds = %bb.a, %bb.x
  %.1 = phi i32 [ %.0160, %bb.x ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac26AffineNonMinimalSolverImpl28getMinimumRequiredSampleSizeEv(ptr noundef nonnull align 8 dereferenceable(377) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac26AffineNonMinimalSolverImpl23getMaxNumberOfSolutionsEv(ptr noundef nonnull align 8 dereferenceable(377) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv4usac26AffineNonMinimalSolverImpl8estimateERKSt6vectorIbSaIbEERS2_INS_3MatESaIS7_EERKS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(377) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac26AffineNonMinimalSolverImpl21enforceRankConstraintEb(ptr noundef nonnull align 8 dereferenceable(377) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZN2cv4usac26CovarianceAffineSolverImpl8estimateERKSt6vectorIbSaIbEERS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a
  br i1 %i.ek, label %.preheader131, label %.preheader130.preheader

.preheader130.preheader:                          ; preds = %bb.c
  %i.ey = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.es, <2 x double> zeroinitializer)
  %i.fa = load <2 x double>, ptr %i.i, align 8, !tbaa !61
  %i.fb = fadd <2 x double> %i.fa, %i.ez
  store <2 x double> %i.fb, ptr %i.i, align 8, !tbaa !61
  %i.fc = fadd <2 x double> %i.es, zeroinitializer ; 2 uses
  %i.fd = fmul <2 x double> %i.es, zeroinitializer ; 4 uses
  %i.fe = load <2 x double>, ptr %i.j, align 8, !tbaa !61
  %i.ff = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fd, <2 x i32> <i32 3, i32 1>
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> zeroinitializer, <2 x double> %i.ff)
  %i.fh = load <2 x double>, ptr %i.k, align 8, !tbaa !61
  %i.fi = fadd <2 x double> %i.fh, %i.fg
  store <2 x double> %i.fi, ptr %i.k, align 8, !tbaa !61
  %i.fj = insertelement <2 x double> %i.es, double 0.000000e+00, i64 0
  %i.fk = insertelement <2 x double> %i.fd, double 0.000000e+00, i64 1
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.fj, <2 x double> %i.fk) ; 2 uses
  %i.fm = shufflevector <2 x double> %i.fc, <2 x double> %i.fl, <2 x i32> <i32 0, i32 2>
  %i.fn = fadd <2 x double> %i.fe, %i.fm
  store <2 x double> %i.fn, ptr %i.j, align 8, !tbaa !61
  %i.fo = load <2 x double>, ptr %i.l, align 8, !tbaa !61
  %i.fp = shufflevector <2 x double> %i.fl, <2 x double> %i.fc, <2 x i32> <i32 1, i32 3>
  %i.fq = fadd <2 x double> %i.fo, %i.fp
  store <2 x double> %i.fq, ptr %i.l, align 8, !tbaa !61
  %i.fr = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> zeroinitializer, <2 x double> %i.fd)
  %i.ft = load <2 x double>, ptr %i.m, align 8, !tbaa !61
  %i.fu = fadd <2 x double> %i.ft, %i.fs
  store <2 x double> %i.fu, ptr %i.m, align 8, !tbaa !61
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.et, double 0.000000e+00, double 0.000000e+00)
  %i.fw = load double, ptr %i.n, align 8, !tbaa !61
  %i.fx = fadd double %i.fw, %i.fv
  store double %i.fx, ptr %i.n, align 8, !tbaa !61
  %i.fy = load <2 x double>, ptr %i.p, align 8, !tbaa !61
  %i.fz = fadd <2 x double> %i.fd, zeroinitializer ; 2 uses
  %i.ga = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.fz, <2 x i32> <i32 0, i32 2>
  %i.gb = fadd <2 x double> %i.fy, %i.ga
  store <2 x double> %i.gb, ptr %i.p, align 8, !tbaa !61
  %i.gc = load <2 x double>, ptr %i.q, align 8, !tbaa !61
  %i.gd = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fz, <2 x i32> <i32 3, i32 1>
  %i.ge = fadd <2 x double> %i.gc, %i.gd
  store <2 x double> %i.ge, ptr %i.q, align 8, !tbaa !61
  %i.gf = extractelement <2 x double> %i.ex, i64 0
  %i.gg = load <2 x double>, ptr %i.o, align 8, !tbaa !61
  %i.gh = fmul <2 x double> %i.ey, %i.es
  %i.gi = fadd <2 x double> %i.gh, <double -0.000000e+00, double 0.000000e+00>
  %i.gj = load <2 x double>, ptr %i.r, align 8, !tbaa !61
  %i.gk = fadd <2 x double> %i.gj, %i.gi
  store <2 x double> %i.gk, ptr %i.r, align 8, !tbaa !61
  %i.gl = fadd double %i.eu, 0.000000e+00
  %i.gm = load double, ptr %i.s, align 8, !tbaa !61
  %i.gn = fadd double %i.gm, %i.gl
  store double %i.gn, ptr %i.s, align 8, !tbaa !61
  %i.go = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gp = fmul <2 x double> %i.go, %i.es
  %i.gq = fmul double %i.et, %i.et
  %i.gr = fadd double %i.et, 0.000000e+00
  %i.gs = load <2 x double>, ptr %i.u, align 8, !tbaa !61
  %i.gt = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gr, i64 1
  %i.gv = fadd <2 x double> %i.gs, %i.gu
  store <2 x double> %i.gv, ptr %i.u, align 8, !tbaa !61
  %i.gw = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> zeroinitializer, <2 x double> %i.gp)
  %i.gy = load <2 x double>, ptr %i.t, align 8, !tbaa !61
  %i.gz = fadd <2 x double> %i.gy, %i.gx
  store <2 x double> %i.gz, ptr %i.t, align 8, !tbaa !61
  %i.ha = load <2 x double>, ptr %i.v, align 8, !tbaa !61
  %i.hb = fmul <2 x double> %i.go, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0
  %foldExtExtBinop = fadd <2 x double> %i.hb, %i.ex
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.et, double %i.gf, double %i.hc)
  %i.he = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.hg = fadd <2 x double> %i.gg, %i.hf
  store <2 x double> %i.hg, ptr %i.o, align 8, !tbaa !61
  %i.hh = shufflevector <2 x double> %i.es, <2 x double> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.hi = insertelement <2 x double> %i.ex, double 0.000000e+00, i64 1
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.hi, <2 x double> %i.hb) ; 2 uses
  %i.hk = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.hj, <2 x i32> <i32 0, i32 2>
  %i.hl = fadd <2 x double> %i.ha, %i.hk
  store <2 x double> %i.hl, ptr %i.v, align 8, !tbaa !61
  %i.hm = load double, ptr %i.w, align 8, !tbaa !61
  %i.hn = extractelement <2 x double> %i.hj, i64 1
  %i.ho = fadd double %i.hm, %i.hn
  store double %i.ho, ptr %i.w, align 8, !tbaa !61
  br label %.loopexit

.preheader131:                                    ; preds = %bb.c
  %i.hp = extractelement <2 x double> %i.ex, i64 1 ; 2 uses
  %i.hq = fneg double %i.hp                       ; 2 uses
  %i.hr = fneg <2 x double> %i.es                 ; 3 uses
  %i.hs = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ht = fmul <2 x double> %i.hs, %i.es
  %i.hu = load <2 x double>, ptr %i.i, align 8, !tbaa !61
  %i.hv = fsub <2 x double> %i.hu, %i.ht
  store <2 x double> %i.hv, ptr %i.i, align 8, !tbaa !61
  %i.hw = fmul <2 x double> %i.es, splat (double -0.000000e+00) ; 4 uses
  %i.hx = load <2 x double>, ptr %i.x, align 8, !tbaa !61 ; 2 uses
  %i.hy = fmul double %i.eu, -0.000000e+00
  %i.hz = extractelement <2 x double> %i.hw, i64 1
  %i.ia = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> zeroinitializer, <2 x double> %i.hw) ; 2 uses
  %i.ic = shufflevector <2 x double> %i.es, <2 x double> %i.ib, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.id = fsub <2 x double> %i.hx, %i.ic
  %i.ie = fadd <2 x double> %i.hx, %i.ic
  %i.if = shufflevector <2 x double> %i.id, <2 x double> %i.ie, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.if, ptr %i.x, align 8, !tbaa !61
  %i.ig = load <2 x double>, ptr %i.y, align 8, !tbaa !61
  %i.ih = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ii = insertelement <2 x double> %i.ih, double %i.hy, i64 1
  %i.ij = fadd <2 x double> %i.ig, %i.ii
  store <2 x double> %i.ij, ptr %i.y, align 8, !tbaa !61
  %i.ik = fmul double %i.hp, -0.000000e+00        ; 2 uses
  %i.il = fmul double %i.et, %i.et
  %i.im = load <2 x double>, ptr %i.z, align 8, !tbaa !61
  %i.in = insertelement <2 x double> %i.es, double %i.il, i64 0
  %i.io = fsub <2 x double> %i.im, %i.in
  store <2 x double> %i.io, ptr %i.z, align 8, !tbaa !61
  %i.ip = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> zeroinitializer, <2 x double> %i.hw)
  %i.ir = load <2 x double>, ptr %i.aa, align 8, !tbaa !61
  %i.is = fadd <2 x double> %i.ir, %i.iq
  store <2 x double> %i.is, ptr %i.aa, align 8, !tbaa !61
  %i.it = fmul double %i.et, -0.000000e+00
  %i.iu = load double, ptr %i.ab, align 8, !tbaa !61
  %i.iv = fadd double %i.iu, %i.it
  store double %i.iv, ptr %i.ab, align 8, !tbaa !61
  %i.iw = load <2 x double>, ptr %i.ad, align 8, !tbaa !61
  %i.ix = shufflevector <2 x double> %i.hw, <2 x double> <double -1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.iy = fadd <2 x double> %i.iw, %i.ix
  store <2 x double> %i.iy, ptr %i.ad, align 8, !tbaa !61
  %i.iz = load double, ptr %i.ae, align 8, !tbaa !61
  %i.ja = fadd double %i.iz, %i.hz
  store double %i.ja, ptr %i.ae, align 8, !tbaa !61
  %i.jb = extractelement <2 x double> %i.ex, i64 0 ; 2 uses
  %i.jc = fsub double %i.ik, %i.jb
  %i.jd = load <2 x double>, ptr %i.ac, align 8, !tbaa !61
  %i.je = fmul <2 x double> %i.hs, %i.es
  %i.jf = load <2 x double>, ptr %i.af, align 8, !tbaa !61
  %i.jg = fsub <2 x double> %i.jf, %i.je
  store <2 x double> %i.jg, ptr %i.af, align 8, !tbaa !61
  %i.jh = load double, ptr %i.ag, align 8, !tbaa !61
  %i.ji = fsub double %i.jh, %i.eu
  store double %i.ji, ptr %i.ag, align 8, !tbaa !61
  %i.jj = fmul double %i.et, %i.et
  %i.jk = load <2 x double>, ptr %i.ai, align 8, !tbaa !61
  %i.jl = insertelement <2 x double> %i.es, double %i.jj, i64 0
  %i.jm = fsub <2 x double> %i.jk, %i.jl
  store <2 x double> %i.jm, ptr %i.ai, align 8, !tbaa !61
  %i.jn = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x double> %i.jo, %i.es
  %i.jq = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> splat (double -0.000000e+00), <2 x double> %i.jp)
  %i.js = load <2 x double>, ptr %i.ah, align 8, !tbaa !61
  %i.jt = fadd <2 x double> %i.js, %i.jr
  store <2 x double> %i.jt, ptr %i.ah, align 8, !tbaa !61
  %i.ju = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.jv = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.jq, <2 x double> %i.jv) ; 2 uses
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jy = insertelement <2 x double> %i.jx, double %i.jc, i64 1
  %i.jz = fadd <2 x double> %i.jd, %i.jy
  store <2 x double> %i.jz, ptr %i.ac, align 8, !tbaa !61
  %i.ka = load <2 x double>, ptr %i.aj, align 8, !tbaa !61
  %i.kb = shufflevector <2 x double> <double -1.000000e+00, double poison>, <2 x double> %i.jw, <2 x i32> <i32 0, i32 2>
  %i.kc = fadd <2 x double> %i.ka, %i.kb
  store <2 x double> %i.kc, ptr %i.aj, align 8, !tbaa !61
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.jb, double -0.000000e+00, double %i.hq)
  %i.ke = load double, ptr %i.ak, align 8, !tbaa !61
  %i.kf = fadd double %i.ke, %i.kd
  store double %i.kf, ptr %i.ak, align 8, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader130.preheader, %.preheader131, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !233

.noexc:                                           ; preds = %._crit_edge
  %i.kg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kh = load <2 x double>, ptr %i.kg, align 16
  %i.ki = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.kj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !124 ; 3 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !61 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !125 ; 3 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !61 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !61 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !61 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !61 ; 2 uses
  %i.ky = load double, ptr %i.kr, align 8, !tbaa !61 ; 2 uses
  %i.kz = fmul double %i.ky, 0.000000e+00
  %i.la = fdiv double %i.kz, %i.kq
  %i.lb = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.lc = insertelement <2 x double> %i.lb, double %i.kx, i64 1
  %i.ld = fmul <2 x double> %i.lc, <double 1.000000e+00, double 0.000000e+00>
  %i.le = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lg = fdiv <2 x double> %i.ld, %i.lf          ; 2 uses
  %i.lh = fdiv double %i.kx, %i.kq
  %i.li = fmul double %i.kn, 0.000000e+00         ; 2 uses
  %i.lj = call double @llvm.fmuladd.f64(double %i.kt, double 0.000000e+00, double 1.000000e+00)
  %i.lk = call double @llvm.fmuladd.f64(double %i.kv, double 0.000000e+00, double %i.lj)
  %i.ll = load <2 x double>, ptr %6, align 16, !tbaa !61
  %i.lm = fdiv <2 x double> %i.ll, %i.lf
  %i.ln = insertelement <2 x double> poison, double %i.la, i64 0
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lp = fsub <2 x double> %i.lm, %i.lo          ; 3 uses
  %i.lq = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ls = fmul <2 x double> %i.lr, %i.lp
  %14 = extractelement <2 x double> %i.lp, i64 1
  %15 = extractelement <2 x double> %i.lg, i64 0
  store <2 x double> %i.ls, ptr %13, align 16, !tbaa !61
  %i.lt = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.lu = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.lv = load <2 x double>, ptr %i.ki, align 8, !tbaa !61
  %i.lw = fdiv <2 x double> %i.lv, %i.lf
  %i.lx = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ly = fsub <2 x double> %i.lw, %i.lx          ; 3 uses
  %i.lz = fmul <2 x double> %i.lr, %i.ly
  %i.ma = insertelement <2 x double> %i.kh, double %i.kk, i64 1
  %i.mb = fdiv <2 x double> %i.ma, %i.lf
  %i.mc = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.me = shufflevector <2 x double> %i.lp, <2 x double> %i.ly, <2 x i32> <i32 0, i32 2>
  %i.mf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.me, <2 x double> %i.mb) ; 2 uses
  %16 = extractelement <2 x double> %i.mf, i64 0
  %17 = call double @llvm.fmuladd.f64(double %i.kv, double %14, double %16)
  %18 = fsub double %17, %15
  store double %18, ptr %i.lt, align 16, !tbaa !61
  %i.mg = extractelement <2 x double> %i.ly, i64 1
  %19 = extractelement <2 x double> %i.mf, i64 1
  %20 = call double @llvm.fmuladd.f64(double %i.kv, double %i.mg, double %19)
  %i.mh = fsub double %20, %i.lh
  store <2 x double> %i.lz, ptr %i.lu, align 8, !tbaa !61
  %i.mi = getelementptr inbounds nuw i8, ptr %13, i64 40
  store double %i.mh, ptr %i.mi, align 8, !tbaa !61
  %i.mj = getelementptr inbounds nuw i8, ptr %13, i64 48
  store double %i.li, ptr %i.mj, align 16, !tbaa !61
  %i.mk = getelementptr inbounds nuw i8, ptr %13, i64 56
  store double %i.li, ptr %i.mk, align 8, !tbaa !61
  %i.ml = getelementptr inbounds nuw i8, ptr %13, i64 64
  store double %i.lk, ptr %i.ml, align 16, !tbaa !61
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %12, align 16, !tbaa !52
  %i.mm = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 153, ptr %i.mm, align 16, !tbaa !85
  %i.mn = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.mo = getelementptr inbounds nuw i8, ptr %12, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mn, i8 0, i64 48, i1 false)
  call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.mo, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.mp = getelementptr inbounds nuw i8, ptr %12, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.mp, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %13, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.mq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.mr, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !78
  store ptr %12, ptr %i.mq, align 8, !tbaa !79
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.mt = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #17
          to label %.noexc112 unwind label %.body113.thread ; 4 uses

.noexc112:                                        ; preds = %bb.e
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.mt, ptr noundef nonnull align 8 dereferenceable(208) %12)
          to label %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc112
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 208 ; 2 uses
  %i.mv = load ptr, ptr %2, align 8, !tbaa !72    ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !73 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !74
  store ptr %i.mt, ptr %2, align 8, !tbaa !72
  store ptr %i.mu, ptr %i.mw, align 8, !tbaa !73
  store ptr %i.mu, ptr %i.my, align 8, !tbaa !74
  %.not4.i.i.i.i.i = icmp eq ptr %i.mv, %i.mx
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i:   ; preds = %.noexc112
  %i.na = landingpad { ptr, i32 }
          catch ptr null
  %i.nb = extractvalue { ptr, i32 } %i.na, 0
  %i.nc = call ptr @__cxa_begin_catch(ptr %i.nb) #18 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  %i.nd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body113 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ne = landingpad { ptr, i32 }
          catch ptr null
  %i.nf = extractvalue { ptr, i32 } %i.ne, 0
  call void @__clang_call_terminate(ptr %i.nf) #20
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body113.thread:                                  ; preds = %bb.e
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.body106

.body113:                                         ; preds = %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef 208) #19
  br label %.body106

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i ], [ %i.mv, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #18
  %i.nh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nh, %i.mx
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.not.i.i1.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.ni = ptrtoint ptr %i.mz to i64
  %i.nj = ptrtoint ptr %i.mv to i64
  %i.nk = sub i64 %i.ni, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.nk) #19
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.j

.body106:                                         ; preds = %.body113, %.body113.thread
  %eh.lpad-body107 = phi { ptr, i32 } [ %i.nd, %.body113 ], [ %i.ng, %.body113.thread ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #18
  br label %.body

.body:                                            ; preds = %.body106, %bb.d
  %.pn96 = phi { ptr, i32 } [ %i.ms, %bb.d ], [ %eh.lpad-body107, %.body106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn96

bb.j:                                             ; preds = %._crit_edge, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %.081 = phi i32 [ 1, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret i32 %.081
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac26CovarianceAffineSolverImpl21enforceRankConstraintEb(ptr noundef nonnull align 8 dereferenceable(768) %0, i1 noundef zeroext %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4usac26CovarianceAffineSolverImpl5resetEv(ptr noundef nonnull align 8 dereferenceable(768) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader:
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %scevgep, i8 0, i64 336, i1 false)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.b, %.sroa.0.0.copyload.i
  br i1 %.not.i.i.i14, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.b, i8 0, i64 %i.f, i1 false)
  %.not27.i.i.i = icmp eq i32 %.sroa.2.0.copyload.i, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split

bb.b:                                             ; preds = %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader
  %.not25.i.i.i = icmp eq i32 %.sroa.2.0.copyload.i, 0
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i.sink24 = phi ptr [ %.sroa.0.0.copyload.i, %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  %i.g = sub i32 64, %.sroa.2.0.copyload.i
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 -1, %i.h
  %i.j = xor i64 %i.i, -1
  %i.k = load i64, ptr %.sroa.0.0.copyload.i.sink24, align 8, !tbaa !89
  %i.l = and i64 %i.k, %i.j
  store i64 %i.l, ptr %.sroa.0.0.copyload.i.sink24, align 8, !tbaa !89
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit:    ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit.sink.split, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4usac26CovarianceAffineSolverImplC2ERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.55", align 8    ; 12 uses
  %3 = alloca %"struct.cv::Ptr.74", align 8       ; 7 uses
  tail call void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv4usac26CovarianceAffineSolverImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
end_hunk_1
