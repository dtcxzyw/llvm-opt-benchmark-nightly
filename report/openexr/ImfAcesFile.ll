inline.NumInlined: 91
inline.NumDeleted: 25
begin_hunk_0_@_ZN7Imf_3_413AcesInputFile4Data19initColorConversionEv:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.098.0 = phi float [ %i.r, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.6100.0 = phi float [ %i.s, %bb.d ], [ %i.k, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.t = load atomic i8, ptr @_ZGVZN7Imf_3_418acesChromaticitiesEvE7acesChr acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZN7Imf_3_418acesChromaticitiesEv.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.v = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7Imf_3_418acesChromaticitiesEvE7acesChr) #12
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_ZN7Imf_3_418acesChromaticitiesEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store <2 x float> <float 7.347000e-01, float 2.653000e-01>, ptr %1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store <2 x float> <float f0x38D1B717, float -7.700000e-02>, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store <2 x float> <float 3.216800e-01, float 3.376700e-01>, ptr %4, align 8, !tbaa !9
  invoke void @_ZN7Imf_3_414ChromaticitiesC1ERKN9Imath_3_24Vec2IfEES5_S5_S5_(ptr noundef nonnull align 4 dereferenceable(32) @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.w = call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7Imf_3_418acesChromaticitiesEvE7acesChr) #12
  br label %_ZN7Imf_3_418acesChromaticitiesEv.exit

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7Imf_3_418acesChromaticitiesEvE7acesChr) #12
  resume { ptr, i32 } %i.x

_ZN7Imf_3_418acesChromaticitiesEv.exit:           ; preds = %bb.e, %bb.f, %bb.h
  %i.y = load <4 x float>, ptr @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, align 16, !tbaa !9 ; 5 uses
  store <4 x float> %i.y, ptr %10, align 16, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aa = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, i64 16), align 16, !tbaa !9 ; 3 uses
  store <2 x float> %i.aa, ptr %i.z, align 16, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.ad = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, i64 24), align 8, !tbaa !9 ; 3 uses
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7Imf_3_418acesChromaticitiesEvE7acesChr, i64 28), align 4, !tbaa !36 ; 2 uses
  %i.af = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  store float %i.af, ptr %i.ab, align 8, !tbaa !34
  store float %i.ae, ptr %i.ac, align 4, !tbaa !36
  %i.ag = load float, ptr %5, align 16, !tbaa !34
  %i.ah = extractelement <4 x float> %i.y, i64 0
  %i.ai = fcmp oeq float %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = extractelement <4 x float> %i.y, i64 1
  %i.am = fcmp oeq float %i.ak, %i.al
  %i.an = select i1 %i.ai, i1 %i.am, i1 false
  br i1 %i.an, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN7Imf_3_418acesChromaticitiesEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !34
  %i.aq = extractelement <4 x float> %i.y, i64 2
  %i.ar = fcmp oeq float %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.at = load float, ptr %i.as, align 4
  %i.au = extractelement <4 x float> %i.y, i64 3
  %i.av = fcmp oeq float %i.at, %i.au
  %i.aw = select i1 %i.ar, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !34
  %i.az = extractelement <2 x float> %i.aa, i64 0
  %i.ba = fcmp oeq float %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = extractelement <2 x float> %i.aa, i64 1
  %i.be = fcmp oeq float %i.bc, %i.bd
  %i.bf = select i1 %i.ba, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load float, ptr %i.m, align 8, !tbaa !34
  %i.bh = fcmp oeq float %i.bg, %i.af
  %i.bi = load float, ptr %i.n, align 4
  %i.bj = fcmp oeq float %i.bi, %i.ae
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %_ZN7Imf_3_418acesChromaticitiesEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.bl, align 8, !tbaa !37
  %i.bm = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !41
  %i.bp = call noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !43
  %i.bt = insertelement <2 x float> %i.ad, float %.sroa.098.0, i64 1 ; 2 uses
  %i.bu = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bv = insertelement <2 x float> %i.bu, float %.sroa.6100.0, i64 1 ; 3 uses
  %i.bw = fdiv <2 x float> %i.bt, %i.bv           ; 4 uses
  %i.bx = fsub <2 x float> splat (float 1.000000e+00), %i.bt
  %i.by = fsub <2 x float> %i.bx, %i.bv
  %i.bz = fdiv <2 x float> %i.by, %i.bv           ; 4 uses
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> zeroinitializer, <2 x float> zeroinitializer)
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> zeroinitializer, <2 x float> %i.ca)
  %i.cc = fadd <2 x float> %i.cb, splat (float 1.000000e+00) ; 3 uses
  %i.cd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> splat (float 3.890000e-02), <2 x float> splat (float -6.850000e-02))
  %i.ce = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> splat (float 1.029600e+00), <2 x float> %i.cd)
  %i.cf = fadd <2 x float> %i.ce, zeroinitializer
  %i.cg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> splat (float f0x3F652546), <2 x float> splat (float 2.664000e-01))
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> splat (float -1.614000e-01), <2 x float> %i.cg)
  %i.ci = fadd <2 x float> %i.ch, zeroinitializer
  %i.cj = fdiv <2 x float> %i.ci, %i.cc           ; 2 uses
  %i.ck = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> splat (float f0xBF400D1B), <2 x float> splat (float 1.713500e+00))
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> splat (float 3.670000e-02), <2 x float> %i.ck)
  %i.cm = fadd <2 x float> %i.cl, zeroinitializer
  %i.cn = fdiv <2 x float> %i.cm, %i.cc           ; 2 uses
  %i.co = fdiv <2 x float> %i.cf, %i.cc           ; 2 uses
  %i.cp = extractelement <2 x float> %i.cj, i64 0
  %i.cq = extractelement <2 x float> %i.cj, i64 1
  %i.cr = fdiv float %i.cp, %i.cq                 ; 3 uses
  %i.cs = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.ct = shufflevector <2 x float> %i.cn, <2 x float> %i.co, <2 x i32> <i32 1, i32 3>
  %i.cu = fdiv <2 x float> %i.cs, %i.ct           ; 4 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  %i.cw = fmul float %i.cr, f0x3F652546
  %i.cx = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x float> %i.cx, float %i.cr, i64 1
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.da = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> <float 3.890000e-02, float 2.664000e-01, float -6.850000e-02, float -1.614000e-01>, <4 x float> zeroinitializer) ; 4 uses
  %i.db = fmul float %i.cv, 0.000000e+00
  %i.dc = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 0> ; 2 uses
  %i.dd = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.dc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.de = fmul <4 x float> %i.dd, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float f0x3F400D1B>
  %i.df = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, %i.de ; 2 uses
  %i.dg = fmul <4 x float> %i.df, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.470540e-01>
  %i.dh = insertelement <4 x float> %i.dc, float %i.cr, i64 1
  %i.di = shufflevector <4 x float> %i.da, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dj = insertelement <2 x float> %i.di, float %i.cw, i64 1
  %i.dk = fadd <2 x float> %i.dj, zeroinitializer ; 2 uses
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 3 uses
  %i.dm = shufflevector <4 x float> %i.dh, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> <float 1.029600e+00, float 0.000000e+00, float 0.000000e+00, float 9.869930e-01>, <4 x float> %i.dg) ; 4 uses
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> %i.df, <4 x i32> <i32 3, i32 7, i32 7, i32 7>
  %i.dp = fmul <4 x float> %i.do, <float 1.000000e+00, float 5.183600e-01, float 4.004300e-02, float 0.000000e+00>
  %i.dq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> <float 1.599630e-01, float 4.323050e-01, float -8.529000e-03, float 0.000000e+00>, <4 x float> %i.dp) ; 3 uses
  %i.dr = extractelement <4 x float> %i.dq, i64 0
  %i.ds = fadd float %i.dr, 0.000000e+00          ; 4 uses
  %i.dt = extractelement <4 x float> %i.dq, i64 1
  %i.du = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dq, <4 x float> %i.du, <4 x i32> <i32 2, i32 4, i32 3, i32 4>
  %i.dw = fmul <4 x float> %i.dv, <float 1.000000e+00, float 1.713500e+00, float 1.000000e+00, float 1.713500e+00>
  %i.dx = fadd <4 x float> %i.dw, <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.dy = extractelement <2 x float> %i.dk, i64 0
  %i.dz = shufflevector <4 x float> %i.dl, <4 x float> %i.da, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  %i.ea = fadd <4 x float> %i.dz, <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.eb = call float @llvm.fmuladd.f32(float %i.dy, float 4.929100e-02, float %i.dt)
  %i.ec = fadd float %i.eb, 0.000000e+00          ; 4 uses
  %i.ed = fmul <4 x float> %i.dx, <float 1.000000e+00, float -1.470540e-01, float 1.000000e+00, float 5.183600e-01>
  %i.ee = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> <float 9.684870e-01, float 9.869930e-01, float 0.000000e+00, float 4.323050e-01>, <4 x float> %i.ed) ; 3 uses
  %i.ef = extractelement <4 x float> %i.ee, i64 0
  %i.eg = fadd float %i.ef, 0.000000e+00          ; 4 uses
  %i.eh = extractelement <4 x float> %i.ee, i64 2
  %i.ei = fadd float %i.eh, 0.000000e+00          ; 4 uses
  %i.ej = shufflevector <4 x float> %i.da, <4 x float> %i.ea, <4 x i32> <i32 2, i32 5, i32 2, i32 5>
  %i.ek = fadd <4 x float> %i.ej, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.el = shufflevector <4 x float> %i.ee, <4 x float> %i.dx, <4 x i32> <i32 1, i32 5, i32 3, i32 5>
  %i.em = fmul <4 x float> %i.el, <float 1.000000e+00, float 4.004300e-02, float 1.000000e+00, float 0.000000e+00>
  %i.en = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> <float 1.599630e-01, float -8.529000e-03, float 4.929100e-02, float 0.000000e+00>, <4 x float> %i.em) ; 2 uses
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> %i.du, <4 x i32> <i32 1, i32 4, i32 3, i32 4>
  %i.ep = fmul <4 x float> %i.eo, <float 1.000000e+00, float 3.670000e-02, float 1.000000e+00, float 3.670000e-02>
  %i.eq = fadd <4 x float> %i.ep, <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.er = shufflevector <4 x float> %i.ek, <4 x float> %i.da, <4 x i32> <i32 0, i32 7, i32 0, i32 7>
  %i.es = fadd <4 x float> %i.er, <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.et = fmul <4 x float> %i.eq, <float 1.000000e+00, float -1.470540e-01, float 1.000000e+00, float 5.183600e-01>
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> <float 9.684870e-01, float 9.869930e-01, float 0.000000e+00, float 4.323050e-01>, <4 x float> %i.et) ; 2 uses
  %i.ev = shufflevector <4 x float> %i.dn, <4 x float> %i.es, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  %i.ew = fadd <4 x float> %i.ev, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.ex = shufflevector <4 x float> %i.eu, <4 x float> %i.eq, <4 x i32> <i32 1, i32 5, i32 3, i32 5>
  %i.ey = fmul <4 x float> %i.ex, <float 1.000000e+00, float 4.004300e-02, float 1.000000e+00, float 0.000000e+00>
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> <float 1.599630e-01, float -8.529000e-03, float 4.929100e-02, float 0.000000e+00>, <4 x float> %i.ey) ; 3 uses
  %i.fa = extractelement <4 x float> %i.ez, i64 0
  %i.fb = fadd float %i.fa, 0.000000e+00          ; 4 uses
  %i.fc = extractelement <4 x float> %i.ez, i64 2
  %i.fd = fadd float %i.fc, 0.000000e+00          ; 4 uses
  %13 = call float @llvm.fabs.f32(float %i.db)    ; 3 uses
  %14 = fneg float %13
  %15 = shufflevector <4 x float> %i.ew, <4 x float> %i.dn, <4 x i32> <i32 0, i32 5, i32 0, i32 5>
  %16 = fadd <4 x float> %15, <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %17 = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.fe = insertelement <4 x float> %17, float %14, i64 1
  %i.ff = insertelement <4 x float> %i.fe, float %13, i64 3
  %i.fg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> <float 9.684870e-01, float 9.869930e-01, float 0.000000e+00, float 4.323050e-01>, <4 x float> %i.ff) ; 3 uses
  %i.fh = extractelement <4 x float> %i.fg, i64 0
  %i.fi = fadd float %i.fh, 0.000000e+00          ; 4 uses
  %i.fj = extractelement <4 x float> %i.fg, i64 2
  %i.fk = fadd float %i.fj, 0.000000e+00          ; 4 uses
  %i.fl = shufflevector <4 x float> %i.dn, <4 x float> %16, <4 x i32> <i32 2, i32 5, i32 2, i32 5>
  %i.fm = fadd <4 x float> %i.fl, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.fn = insertelement <4 x float> poison, float %13, i64 0
  %i.fo = shufflevector <4 x float> %i.fg, <4 x float> %i.fn, <4 x i32> <i32 1, i32 4, i32 3, i32 4>
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> <float 1.599630e-01, float -8.529000e-03, float 4.929100e-02, float 0.000000e+00>, <4 x float> %i.fo) ; 4 uses
  %i.fq = extractelement <4 x float> %i.fp, i64 0
  %i.fr = fadd float %i.fq, 0.000000e+00          ; 4 uses
  %i.fs = extractelement <4 x float> %i.fp, i64 2
  %i.ft = fadd float %i.fs, 0.000000e+00          ; 4 uses
  %i.fu = extractelement <4 x float> %i.fp, i64 1
  %i.fv = extractelement <4 x float> %i.fm, i64 0 ; 2 uses
  %i.fw = call float @llvm.fmuladd.f32(float %i.fv, float 9.684870e-01, float %i.fu)
  %i.fx = fadd float %i.fw, 0.000000e+00          ; 4 uses
  %i.fy = extractelement <4 x float> %i.fp, i64 3
  %i.fz = call float @llvm.fmuladd.f32(float %i.fv, float 0.000000e+00, float %i.fy)
  %i.ga = fadd float %i.fz, 1.000000e+00          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @_ZN7Imf_3_48RGBtoXYZERKNS_14ChromaticitiesEf(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Matrix44") align 4 %11, ptr noundef nonnull align 4 dereferenceable(32) %5, float noundef 1.000000e+00)
  %i.gb = load float, ptr %11, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !9, !noalias !44 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !9, !noalias !44 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.gp = load float, ptr %i.go, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.gq = shufflevector <4 x float> %i.eu, <4 x float> %i.en, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.gr = fadd <4 x float> %i.gq, zeroinitializer ; 5 uses
  %i.gs = extractelement <4 x float> %i.gr, i64 1 ; 3 uses
  %i.gt = fmul float %i.gs, %i.gd
  %i.gu = call float @llvm.fmuladd.f32(float %i.gb, float %i.ds, float %i.gt)
  %i.gv = call float @llvm.fmuladd.f32(float %i.gf, float %i.fb, float %i.gu)
  %i.gw = call float @llvm.fmuladd.f32(float %i.gh, float %i.fr, float %i.gv)
  %i.gx = extractelement <4 x float> %i.gr, i64 3 ; 3 uses
  %i.gy = fmul float %i.gx, %i.gd
  %i.gz = call float @llvm.fmuladd.f32(float %i.gb, float %i.ec, float %i.gy)
  %i.ha = call float @llvm.fmuladd.f32(float %i.gf, float %i.fd, float %i.gz)
  %i.hb = call float @llvm.fmuladd.f32(float %i.gh, float %i.ft, float %i.ha)
  %i.hc = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.hd = insertelement <4 x float> %i.hc, float %i.gl, i64 1
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hf = fmul <4 x float> %i.gr, %i.he           ; 4 uses
  %i.hg = extractelement <4 x float> %i.hf, i64 0
  %i.hh = call float @llvm.fmuladd.f32(float %i.gb, float %i.eg, float %i.hg)
  %i.hi = call float @llvm.fmuladd.f32(float %i.gf, float %i.fi, float %i.hh)
  %i.hj = call float @llvm.fmuladd.f32(float %i.gh, float %i.fx, float %i.hi)
  %i.hk = extractelement <4 x float> %i.hf, i64 2
  %i.hl = call float @llvm.fmuladd.f32(float %i.gb, float %i.ei, float %i.hk)
  %i.hm = call float @llvm.fmuladd.f32(float %i.gf, float %i.fk, float %i.hl)
  %i.hn = call float @llvm.fmuladd.f32(float %i.gh, float %i.ga, float %i.hm)
  %i.ho = extractelement <4 x float> %i.hf, i64 1
  %i.hp = call float @llvm.fmuladd.f32(float %i.gj, float %i.ds, float %i.ho)
  %i.hq = call float @llvm.fmuladd.f32(float %i.gn, float %i.fb, float %i.hp)
  %i.hr = call float @llvm.fmuladd.f32(float %i.gp, float %i.fr, float %i.hq)
  %i.hs = extractelement <4 x float> %i.hf, i64 3
  %i.ht = call float @llvm.fmuladd.f32(float %i.gj, float %i.ec, float %i.hs)
  %i.hu = call float @llvm.fmuladd.f32(float %i.gn, float %i.fd, float %i.ht)
  %i.hv = call float @llvm.fmuladd.f32(float %i.gp, float %i.ft, float %i.hu)
  %i.hw = extractelement <4 x float> %i.gr, i64 0 ; 3 uses
  %i.hx = fmul float %i.hw, %i.gl
  %i.hy = call float @llvm.fmuladd.f32(float %i.gj, float %i.eg, float %i.hx)
  %i.hz = call float @llvm.fmuladd.f32(float %i.gn, float %i.fi, float %i.hy)
  %i.ia = call float @llvm.fmuladd.f32(float %i.gp, float %i.fx, float %i.hz)
  %i.ib = extractelement <4 x float> %i.gr, i64 2 ; 3 uses
  %i.ic = fmul float %i.ib, %i.gl
  %i.id = call float @llvm.fmuladd.f32(float %i.gj, float %i.ei, float %i.ic)
  %i.ie = call float @llvm.fmuladd.f32(float %i.gn, float %i.fk, float %i.id)
  %i.if = call float @llvm.fmuladd.f32(float %i.gp, float %i.ga, float %i.ie)
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.il = load float, ptr %i.ik, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.in = load float, ptr %i.im, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.io = fmul float %i.gs, %i.ij
  %i.ip = call float @llvm.fmuladd.f32(float %i.ih, float %i.ds, float %i.io)
  %i.iq = call float @llvm.fmuladd.f32(float %i.il, float %i.fb, float %i.ip)
  %i.ir = call float @llvm.fmuladd.f32(float %i.in, float %i.fr, float %i.iq)
  %i.is = fmul float %i.gx, %i.ij
  %i.it = call float @llvm.fmuladd.f32(float %i.ih, float %i.ec, float %i.is)
  %i.iu = call float @llvm.fmuladd.f32(float %i.il, float %i.fd, float %i.it)
  %i.iv = call float @llvm.fmuladd.f32(float %i.in, float %i.ft, float %i.iu)
  %i.iw = fmul float %i.hw, %i.ij
  %i.ix = call float @llvm.fmuladd.f32(float %i.ih, float %i.eg, float %i.iw)
  %i.iy = call float @llvm.fmuladd.f32(float %i.il, float %i.fi, float %i.ix)
  %i.iz = call float @llvm.fmuladd.f32(float %i.in, float %i.fx, float %i.iy)
  %i.ja = fmul float %i.ib, %i.ij
  %i.jb = call float @llvm.fmuladd.f32(float %i.ih, float %i.ei, float %i.ja)
  %i.jc = call float @llvm.fmuladd.f32(float %i.il, float %i.fk, float %i.jb)
  %i.jd = call float @llvm.fmuladd.f32(float %i.in, float %i.ga, float %i.jc)
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.jf = load float, ptr %i.je, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !9, !noalias !44 ; 4 uses
  %i.jm = fmul float %i.gs, %i.jh
  %i.jn = call float @llvm.fmuladd.f32(float %i.jf, float %i.ds, float %i.jm)
  %i.jo = call float @llvm.fmuladd.f32(float %i.jj, float %i.fb, float %i.jn)
  %i.jp = call float @llvm.fmuladd.f32(float %i.jl, float %i.fr, float %i.jo)
  %i.jq = fmul float %i.gx, %i.jh
  %i.jr = call float @llvm.fmuladd.f32(float %i.jf, float %i.ec, float %i.jq)
  %i.js = call float @llvm.fmuladd.f32(float %i.jj, float %i.fd, float %i.jr)
  %i.jt = call float @llvm.fmuladd.f32(float %i.jl, float %i.ft, float %i.js)
  %i.ju = fmul float %i.hw, %i.jh
  %i.jv = call float @llvm.fmuladd.f32(float %i.jf, float %i.eg, float %i.ju)
  %i.jw = call float @llvm.fmuladd.f32(float %i.jj, float %i.fi, float %i.jv)
  %i.jx = call float @llvm.fmuladd.f32(float %i.jl, float %i.fx, float %i.jw)
  %i.jy = fmul float %i.ib, %i.jh
  %i.jz = call float @llvm.fmuladd.f32(float %i.jf, float %i.ei, float %i.jy)
  %i.ka = call float @llvm.fmuladd.f32(float %i.jj, float %i.fk, float %i.jz)
  %i.kb = call float @llvm.fmuladd.f32(float %i.jl, float %i.ga, float %i.ka)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  call void @_ZN7Imf_3_48XYZtoRGBERKNS_14ChromaticitiesEf(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Matrix44") align 4 %12, ptr noundef nonnull align 4 dereferenceable(32) %10, float noundef 1.000000e+00)
  %i.kc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.kd = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.kg = load <4 x float>, ptr %12, align 16, !tbaa !9, !noalias !47 ; 4 uses
  %i.kh = load <4 x float>, ptr %i.kc, align 16, !tbaa !9, !noalias !47 ; 4 uses
  %i.ki = insertelement <4 x float> poison, float %i.hb, i64 0
  %i.kj = shufflevector <4 x float> %i.ki, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kk = fmul <4 x float> %i.kj, %i.kh
  %i.kl = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.km, <4 x float> %i.kg, <4 x float> %i.kk)
  %i.ko = load <4 x float>, ptr %i.kd, align 16, !tbaa !9, !noalias !47 ; 4 uses
  %i.kp = insertelement <4 x float> poison, float %i.hj, i64 0
  %i.kq = shufflevector <4 x float> %i.kp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kq, <4 x float> %i.ko, <4 x float> %i.kn)
  %i.ks = load <4 x float>, ptr %i.ke, align 16, !tbaa !9, !noalias !47 ; 4 uses
  %i.kt = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.ku = shufflevector <4 x float> %i.kt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ku, <4 x float> %i.ks, <4 x float> %i.kr)
  store <4 x float> %i.kv, ptr %i.kf, align 4, !tbaa !9
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.kx = insertelement <4 x float> poison, float %i.hv, i64 0
  %i.ky = shufflevector <4 x float> %i.kx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kz = fmul <4 x float> %i.ky, %i.kh
  %i.la = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.lb = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lb, <4 x float> %i.kg, <4 x float> %i.kz)
  %i.ld = insertelement <4 x float> poison, float %i.ia, i64 0
  %i.le = shufflevector <4 x float> %i.ld, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.ko, <4 x float> %i.lc)
  %i.lg = insertelement <4 x float> poison, float %i.if, i64 0
  %i.lh = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.li = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lh, <4 x float> %i.ks, <4 x float> %i.lf)
  store <4 x float> %i.li, ptr %i.kw, align 4, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.lk = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.ll = shufflevector <4 x float> %i.lk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lm = fmul <4 x float> %i.ll, %i.kh
  %i.ln = insertelement <4 x float> poison, float %i.ir, i64 0
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lo, <4 x float> %i.kg, <4 x float> %i.lm)
  %i.lq = insertelement <4 x float> poison, float %i.iz, i64 0
  %i.lr = shufflevector <4 x float> %i.lq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ls = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lr, <4 x float> %i.ko, <4 x float> %i.lp)
  %i.lt = insertelement <4 x float> poison, float %i.jd, i64 0
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lu, <4 x float> %i.ks, <4 x float> %i.ls)
  store <4 x float> %i.lv, ptr %i.lj, align 4, !tbaa !9
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.lx = insertelement <4 x float> poison, float %i.jt, i64 0
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lz = fmul <4 x float> %i.ly, %i.kh
  %i.ma = insertelement <4 x float> poison, float %i.jp, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mb, <4 x float> %i.kg, <4 x float> %i.lz)
  %i.md = insertelement <4 x float> poison, float %i.jx, i64 0
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.me, <4 x float> %i.ko, <4 x float> %i.mc)
  %i.mg = insertelement <4 x float> poison, float %i.kb, i64 0
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mh, <4 x float> %i.ks, <4 x float> %i.mf)
  store <4 x float> %i.mi, ptr %i.lw, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

declare noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_413RgbaInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN7Imf_3_417hasChromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(32) ptr @_ZN7Imf_3_414chromaticitiesERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3
end_hunk_0
