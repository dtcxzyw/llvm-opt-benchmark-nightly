Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3CpuNarrowPhase?download=true
inline.NumInlined: 585
inline.NumDeleted: 221
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z20b3FindSeparatingAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_RK20b3AlignedObjectArrayIS2_ESB_RKS8_I9b3GpuFaceERKS8_IiESB_SB_SF_SI_RS2_:bb.a
  %i.jk = fneg <2 x float> %i.ix
  store <2 x float> %i.jk, ptr %18, align 16, !tbaa !80
  %i.jl = fneg float %i.je
  store float %i.jl, ptr %i.gv, align 8, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.jm = invoke noundef zeroext i1 @_Z13b3TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.jm, label %bb.o, label %.thread259

bb.n:                                             ; preds = %bb.l
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.ae

bb.o:                                             ; preds = %bb.m
  %i.jo = load float, ptr %i.b, align 4, !tbaa !99 ; 2 uses
  %i.jp = fcmp olt float %i.jo, %.4103284
  br i1 %i.jp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !98
  br label %bb.q

.thread259:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.ac

bb.q:                                             ; preds = %bb.o, %bb.p
  %.6105.ph = phi float [ %.4103284, %bb.o ], [ %i.jo, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.jq = add nuw nsw i32 %.091285, 1             ; 2 uses
  %exitcond306.not = icmp eq i32 %i.jq, %i.gs
  br i1 %exitcond306.not, label %.preheader, label %bb.j, !llvm.loop !172

bb.r:                                             ; preds = %.lr.ph302, %._crit_edge295
  %i.jr = phi i32 [ %i.gy, %.lr.ph302 ], [ %i.pi, %._crit_edge295 ]
  %i.js = phi i32 [ %.pre, %.lr.ph302 ], [ %i.pj, %._crit_edge295 ] ; 2 uses
  %i.jt = phi i32 [ %.pre, %.lr.ph302 ], [ %i.pk, %._crit_edge295 ] ; 2 uses
  %.089301 = phi i32 [ 0, %.lr.ph302 ], [ %i.pl, %._crit_edge295 ] ; 2 uses
  %.8299 = phi float [ %.4103.lcssa, %.lr.ph302 ], [ %.9.lcssa, %._crit_edge295 ] ; 2 uses
  %i.ju = load i32, ptr %i.gz, align 4, !tbaa !107
  %i.jv = add nsw i32 %i.ju, %.089301
  %i.jw = load ptr, ptr %i.ha, align 8, !tbaa !53
  %i.jx = sext i32 %i.jv to i64
  %i.jy = getelementptr inbounds [16 x i8], ptr %i.jw, i64 %i.jx ; 2 uses
  %i.jz = load float, ptr %i.i, align 4, !tbaa !99 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.kb = load <2 x float>, ptr %i.g, align 4, !tbaa !99 ; 5 uses
  %i.kc = load <2 x float>, ptr %i.ka, align 4, !tbaa !99 ; 4 uses
  %i.kd = load <2 x float>, ptr %i.jy, align 4, !tbaa !99 ; 4 uses
  %i.ke = shufflevector <2 x float> %i.kc, <2 x float> %i.kd, <2 x i32> <i32 1, i32 2>
  %i.kf = fmul <2 x float> %i.ke, %i.kb
  %i.kg = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ki = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.kd, <2 x float> %i.kf) ; 2 uses
  %i.kj = load float, ptr %3, align 16, !tbaa !99 ; 3 uses
  %i.kk = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kl = insertelement <2 x float> %i.kk, float %i.kj, i64 1 ; 2 uses
  %i.km = fneg <2 x float> %i.kl                  ; 3 uses
  %i.kn = fneg <2 x float> %i.kb                  ; 2 uses
  %i.ko = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kp = shufflevector <2 x float> %i.ko, <2 x float> %i.kb, <2 x i32> <i32 0, i32 2>
  %i.kq = fneg <2 x float> %i.kp
  %i.kr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.km, <2 x float> %i.kc, <2 x float> %i.ki) ; 4 uses
  %i.ks = extractelement <2 x float> %i.kc, i64 0 ; 2 uses
  %i.kt = fmul float %i.ks, %i.kj
  %i.ku = extractelement <2 x float> %i.kc, i64 1 ; 2 uses
  %i.kv = call float @llvm.fmuladd.f32(float %i.jz, float %i.ku, float %i.kt)
  %i.kw = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kx = insertelement <2 x float> %i.kw, float %i.kv, i64 0
  %i.ky = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.kd, <2 x float> %i.kx) ; 3 uses
  %i.kz = fneg float %i.ks
  %i.la = extractelement <2 x float> %i.kb, i64 0 ; 2 uses
  %i.lb = fmul float %i.la, %i.kz
  %i.lc = extractelement <2 x float> %i.km, i64 1 ; 2 uses
  %i.ld = extractelement <2 x float> %i.kd, i64 0
  %i.le = call float @llvm.fmuladd.f32(float %i.lc, float %i.ld, float %i.lb)
  %i.lf = extractelement <2 x float> %i.km, i64 0 ; 2 uses
  %i.lg = call float @llvm.fmuladd.f32(float %i.lf, float %i.ku, float %i.le) ; 2 uses
  %i.lh = extractelement <2 x float> %i.kr, i64 0
  %i.li = fmul float %i.jz, %i.lh
  %i.lj = call float @llvm.fmuladd.f32(float %i.lg, float %i.lc, float %i.li)
  %i.lk = extractelement <2 x float> %i.kr, i64 1
  %i.ll = call float @llvm.fmuladd.f32(float %i.lk, float %i.lf, float %i.lj)
  %i.lm = extractelement <2 x float> %i.ky, i64 0
  %i.ln = call float @llvm.fmuladd.f32(float %i.lm, float %i.la, float %i.ll) ; 2 uses
  %i.lo = shufflevector <2 x float> %i.kr, <2 x float> %i.ky, <2 x i32> <i32 1, i32 2>
  %i.lp = fmul <2 x float> %i.kh, %i.lo
  %i.lq = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ls = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.kn, <2 x float> %i.lp)
  %i.lt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ky, <2 x float> %i.kq, <2 x float> %i.ls)
  %i.lu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.kl, <2 x float> %i.lt) ; 3 uses
  %.not155289 = icmp sgt i32 %i.jt, 0
  br i1 %.not155289, label %.lr.ph294.preheader, label %._crit_edge295

.lr.ph294.preheader:                              ; preds = %bb.r
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lw = insertelement <2 x float> %i.lv, float %i.ln, i64 1
  %i.lx = extractelement <2 x float> %i.lu, i64 0
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %bb.z
  %i.ly = phi i32 [ %i.pg, %bb.z ], [ %i.js, %.lr.ph294.preheader ]
  %.0292 = phi i32 [ %i.ph, %bb.z ], [ 0, %.lr.ph294.preheader ] ; 2 uses
  %.9290 = phi float [ %.13265, %bb.z ], [ %.8299, %.lr.ph294.preheader ] ; 3 uses
  %i.lz = load i32, ptr %i.hc, align 4, !tbaa !107
  %i.ma = add nsw i32 %i.lz, %.0292
  %i.mb = load ptr, ptr %i.hd, align 8, !tbaa !53
  %i.mc = sext i32 %i.ma to i64
  %i.md = getelementptr inbounds [16 x i8], ptr %i.mb, i64 %i.mc ; 2 uses
  %.sroa.5.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.me = load <4 x float>, ptr %5, align 16
  %.sroa.0204.0.copyload = load float, ptr %i.md, align 16 ; 3 uses
  %i.mf = load <2 x float>, ptr %.sroa.5.0..sroa_idx205, align 4 ; 6 uses
  %i.mg = load <2 x float>, ptr %i.j, align 4, !tbaa !99 ; 3 uses
  %i.mh = extractelement <2 x float> %i.mg, i64 1
  %i.mi = fneg float %i.mh                        ; 3 uses
  %i.mj = load float, ptr %i.j, align 4, !tbaa !99
  %i.mk = load <2 x float>, ptr %5, align 16, !tbaa !99 ; 3 uses
  %i.ml = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mm = insertelement <2 x float> %i.ml, float %.sroa.0204.0.copyload, i64 1 ; 2 uses
  %i.mn = fmul <2 x float> %i.mm, %i.mg
  %i.mo = insertelement <2 x float> poison, float %.sroa.0204.0.copyload, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> %i.mf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mq = shufflevector <2 x float> %i.mg, <2 x float> %i.mk, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mr = fmul <2 x float> %i.mp, %i.mq
  %i.ms = shufflevector <4 x float> %i.me, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 4 uses
  %i.mt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> %i.mp, <2 x float> %i.mn)
  %i.mu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> %i.mf, <2 x float> %i.mr)
  %i.mv = fneg <2 x float> %i.mk                  ; 4 uses
  %i.mw = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mx = insertelement <2 x float> %i.mw, float %i.mi, i64 0 ; 2 uses
  %i.my = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mx, <2 x float> %i.mf, <2 x float> %i.mt) ; 3 uses
  %i.mz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> %i.mm, <2 x float> %i.mu) ; 3 uses
  %i.na = extractelement <2 x float> %i.mf, i64 0
  %i.nb = fneg float %i.na
  %i.nc = fmul float %i.mj, %i.nb
  %i.nd = extractelement <2 x float> %i.mv, i64 0
  %i.ne = call float @llvm.fmuladd.f32(float %i.nd, float %.sroa.0204.0.copyload, float %i.nc)
  %i.nf = extractelement <2 x float> %i.mf, i64 1
  %i.ng = call float @llvm.fmuladd.f32(float %i.mi, float %i.nf, float %i.ne)
  %i.nh = shufflevector <2 x float> %i.mz, <2 x float> %i.my, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ni = fmul <2 x float> %i.ms, %i.nh
  %i.nj = fmul <2 x float> %i.ms, %i.mz
  %i.nk = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.nl = shufflevector <2 x float> %i.nk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nl, <2 x float> %i.mx, <2 x float> %i.ni)
  %i.nn = insertelement <2 x float> %i.mw, float %i.mi, i64 1 ; 2 uses
  %i.no = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nl, <2 x float> %i.nn, <2 x float> %i.nj)
  %i.np = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.my, <2 x float> %i.nn, <2 x float> %i.nm)
  %i.nq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nh, <2 x float> %i.mv, <2 x float> %i.no)
  %i.nr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mz, <2 x float> %i.mk, <2 x float> %i.np) ; 2 uses
  %i.ns = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.my, <2 x float> %i.mq, <2 x float> %i.nq) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.nt = fneg <2 x float> %i.ns
  %i.nu = fmul <2 x float> %i.lw, %i.nt
  %i.nv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.nr, <2 x float> %i.nu) ; 5 uses
  %i.nw = extractelement <2 x float> %i.nr, i64 1
  %i.nx = fneg float %i.nw
  %i.ny = fmul float %i.lx, %i.nx
  %i.nz = extractelement <2 x float> %i.ns, i64 0
  %i.oa = call float @llvm.fmuladd.f32(float %i.ln, float %i.nz, float %i.ny) ; 4 uses
  %i.ob = extractelement <2 x float> %i.nv, i64 0 ; 3 uses
  %i.oc = call noundef float @llvm.fabs.f32(float %i.ob)
  %i.od = fpext float %i.oc to double
  %i.oe = fcmp ogt double %i.od, f0x3EB0C6F7A0B5ED8D
  br i1 %i.oe, label %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread, label %bb.s

bb.s:                                             ; preds = %.lr.ph294
  %i.of = extractelement <2 x float> %i.nv, i64 1
  %i.og = call noundef float @llvm.fabs.f32(float %i.of)
  %i.oh = fpext float %i.og to double
  %i.oi = fcmp ogt double %i.oh, f0x3EB0C6F7A0B5ED8D
  br i1 %i.oi, label %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread, label %_Z14b3IsAlmostZeroRK9b3Vector3.exit

_Z14b3IsAlmostZeroRK9b3Vector3.exit:              ; preds = %bb.s
  %i.oj = call noundef float @llvm.fabs.f32(float %i.oa)
  %i.ok = fpext float %i.oj to double
  %i.ol = fcmp ule double %i.ok, f0x3EB0C6F7A0B5ED8D
  br i1 %i.ol, label %.thread262, label %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread

.thread262:                                       ; preds = %_Z14b3IsAlmostZeroRK9b3Vector3.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.z

_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread:       ; preds = %bb.s, %.lr.ph294, %_Z14b3IsAlmostZeroRK9b3Vector3.exit
  %foldExtExtBinop337 = fmul <2 x float> %i.nv, %i.nv
  %i.om = extractelement <2 x float> %foldExtExtBinop337, i64 1
  %i.on = call float @llvm.fmuladd.f32(float %i.ob, float %i.ob, float %i.om)
  %i.oo = call noundef float @llvm.fmuladd.f32(float %i.oa, float %i.oa, float %i.on)
  %i.op = call noundef float @llvm.sqrt.f32(float %i.oo)
  %i.oq = fdiv float 1.000000e+00, %i.op          ; 2 uses
  %i.or = insertelement <2 x float> poison, float %i.oq, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = fmul <2 x float> %i.nv, %i.os           ; 4 uses
  %i.ou = fmul float %i.oa, %i.oq                 ; 3 uses
  %.sroa.3.12.vec.insert.i.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ou, i64 0
  store <2 x float> %i.ot, ptr %19, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i.i, ptr %i.he, align 8, !tbaa !80
  %shift339 = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop340 = fmul <2 x float> %i.dy, %shift339
  %i.ov = extractelement <2 x float> %foldExtExtBinop340, i64 0
  %i.ow = extractelement <2 x float> %i.ot, i64 0
  %i.ox = call float @llvm.fmuladd.f32(float %i.dx, float %i.ow, float %i.ov)
  %i.oy = call noundef float @llvm.fmuladd.f32(float %i.hf, float %i.ou, float %i.ox)
  %i.oz = fcmp olt float %i.oy, 0.000000e+00
  br i1 %i.oz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread
  %i.pa = fneg <2 x float> %i.ot
  store <2 x float> %i.pa, ptr %19, align 16, !tbaa !80
  %i.pb = fneg float %i.ou
  store float %i.pb, ptr %i.he, align 8, !tbaa !80
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.pc = invoke noundef zeroext i1 @_Z13b3TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %i.pc, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.pe = load float, ptr %i.c, align 4, !tbaa !99 ; 2 uses
  %i.pf = fcmp olt float %i.pe, %.9290
  br i1 %i.pf, label %bb.y, label %.thread267

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !98
  br label %.thread267

.thread267:                                       ; preds = %bb.y, %bb.x
  %.11.ph = phi float [ %.9290, %bb.x ], [ %i.pe, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %.pre307 = load i32, ptr %i.hb, align 8, !tbaa !106
  br label %bb.z

bb.z:                                             ; preds = %.thread267, %.thread262
  %i.pg = phi i32 [ %i.ly, %.thread262 ], [ %.pre307, %.thread267 ] ; 4 uses
  %.13265 = phi float [ %.9290, %.thread262 ], [ %.11.ph, %.thread267 ] ; 2 uses
  %i.ph = add nuw nsw i32 %.0292, 1               ; 2 uses
  %.not155 = icmp slt i32 %i.ph, %i.pg
  br i1 %.not155, label %.lr.ph294, label %._crit_edge295.loopexit, !llvm.loop !173

._crit_edge295.loopexit:                          ; preds = %bb.z
  %.pre308 = load i32, ptr %i.gx, align 8, !tbaa !106
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit, %bb.r
  %i.pi = phi i32 [ %i.jr, %bb.r ], [ %.pre308, %._crit_edge295.loopexit ] ; 2 uses
  %i.pj = phi i32 [ %i.js, %bb.r ], [ %i.pg, %._crit_edge295.loopexit ]
  %i.pk = phi i32 [ %i.jt, %bb.r ], [ %i.pg, %._crit_edge295.loopexit ]
  %.9.lcssa = phi float [ %.8299, %bb.r ], [ %.13265, %._crit_edge295.loopexit ]
  %i.pl = add nuw nsw i32 %.089301, 1             ; 2 uses
  %.not156.not = icmp slt i32 %i.pl, %i.pi
  br i1 %.not156.not, label %bb.r, label %._crit_edge303, !llvm.loop !174

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ac

._crit_edge303:                                   ; preds = %._crit_edge295, %.preheader
  %i.pm = fneg float %i.dx
  %i.pn = fneg <2 x float> %i.dy                  ; 2 uses
  %i.po = load <2 x float>, ptr %14, align 16, !tbaa !80 ; 3 uses
  %shift342 = shufflevector <2 x float> %i.po, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop343 = fmul <2 x float> %shift342, %i.pn
  %i.pp = extractelement <2 x float> %foldExtExtBinop343, i64 0
  %i.pq = extractelement <2 x float> %i.po, i64 0
  %i.pr = call float @llvm.fmuladd.f32(float %i.pm, float %i.pq, float %i.pp)
  %i.ps = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.pt = load float, ptr %i.ps, align 8, !tbaa !80 ; 2 uses
  %i.pu = extractelement <2 x float> %i.pn, i64 1
  %i.pv = call noundef float @llvm.fmuladd.f32(float %i.pu, float %i.pt, float %i.pr)
  %i.pw = fcmp ogt float %i.pv, 0.000000e+00
  br i1 %i.pw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge303
  %i.px = fneg <2 x float> %i.po
  %i.py = fneg float %i.pt
  %.sroa.3.12.vec.insert.i.i196 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.py, i64 0
  store <2 x float> %i.px, ptr %14, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i196, ptr %i.ps, align 8, !tbaa !80
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %.thread259, %.thread253, %._crit_edge303, %bb.ab
  %.15 = phi i1 [ false, %.thread253 ], [ false, %.thread259 ], [ true, %._crit_edge303 ], [ true, %bb.ab ], [ false, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.pz = landingpad { ptr, i32 }
          catch ptr null
  %i.qa = extractvalue { ptr, i32 } %i.pz, 0
  call void @__clang_call_terminate(ptr %i.qa) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.ac
  ret i1 %.15

bb.ae:                                            ; preds = %bb.w, %bb.f, %bb.n
  %.pn157.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.f ], [ %i.pd, %bb.w ], [ %i.jn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit199 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit199:                   ; preds = %bb.ae
  resume { ptr, i32 } %.pn157.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z20b3ClipHullHullSingleiiRK9b3Vector3RK12b3QuaternionS1_S4_iiPK20b3AlignedObjectArrayI15b3RigidBodyDataEPS5_I14b3Contact4DataERiRKS5_I22b3ConvexPolyhedronDataESH_RKS5_IS_ESK_RKS5_I9b3GpuFaceERKS5_IiESK_SK_SO_SR_RKS5_I12b3CollidableESV_S1_i(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull align 8 dereferenceable(25) %16, ptr noundef nonnull align 8 dereferenceable(25) %17, ptr noundef nonnull align 8 dereferenceable(25) %18, ptr noundef nonnull align 8 dereferenceable(25) %19, ptr noundef nonnull align 8 dereferenceable(25) %20, ptr noundef nonnull align 8 dereferenceable(25) %21, ptr noundef nonnull align 8 dereferenceable(25) %22, ptr noundef nonnull align 16 dereferenceable(16) %23, i32 noundef %24) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %25 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %26 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %27 = alloca [1024 x %class.b3Vector3], align 16 ; 8 uses
  %28 = alloca [1024 x %class.b3Vector3], align 16 ; 4 uses
  %29 = alloca [1024 x %class.b3Vector3], align 16 ; 4 uses
  %30 = alloca %class.b3Vector3, align 16         ; 7 uses
  %31 = alloca %class.b3Transform, align 16       ; 18 uses
  %32 = alloca %class.b3Transform, align 16       ; 18 uses
  %33 = alloca %class.b3Quaternion, align 16      ; 6 uses
  %34 = alloca %class.b3Quaternion, align 16      ; 6 uses
  %35 = alloca %class.b3Vector3, align 16         ; 8 uses
  %36 = alloca %struct.b3Int4, align 16           ; 8 uses
  %37 = alloca %struct.b3Contact4Data, align 16   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sext i32 %6 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = sext i32 %7 to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.h
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.k = load <4 x float>, ptr %23, align 16      ; 2 uses
  %i.l = extractelement <4 x float> %i.k, i64 2
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.l, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %30, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %30, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.m, align 8
  %i.n = load i32, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !80
  %i.o = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.p = load <4 x float>, ptr %2, align 16       ; 2 uses
  %i.q = extractelement <4 x float> %i.p, i64 2
  %.sroa.0.4.vec.insert.i91 = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i92 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.q, i64 0
  %i.r = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i91, ptr %i.r, align 16
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i92, ptr %.sroa.4119.0..sroa_idx, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %31, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %31, i64 12
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %31, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %31, i64 24
end_hunk_0
begin_hunk_1_@_Z21b3ClipHullAgainstHullRK9b3Vector3RK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiESC_SG_SJ_S8_i:bb.a
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !41
  %i.cb = add nsw i32 %i.ca, %i.bu
  %i.cc = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.cd ; 3 uses
  %.sroa.26.48.copyload.i = load float, ptr %.sroa.26.48..sroa_idx.i, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load <2 x float>, ptr %5, align 16
  %i.ci = load <2 x float>, ptr %6, align 16, !tbaa !80 ; 2 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0> ; 4 uses
  %i.ck = load <3 x float>, ptr %6, align 16, !tbaa !80
  %i.cl = shufflevector <3 x float> %i.ck, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %foldExtExtBinop = fmul <4 x float> %i.cj, %i.cj
  %i.cm = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.cn = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cm)
  %i.cp = load <2 x float>, ptr %i.am, align 8, !tbaa !80 ; 2 uses
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cr = load float, ptr %i.am, align 8, !tbaa !80 ; 2 uses
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.co)
  %i.ct = extractelement <2 x float> %i.cp, i64 1 ; 3 uses
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cs)
  %i.cv = fdiv float 2.000000e+00, %i.cu
  %i.cw = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cy = fmul <4 x float> %i.cl, %i.cx           ; 4 uses
  %i.cz = extractelement <4 x float> %i.cy, i64 2
  %i.da = fmul float %i.ct, %i.cz                 ; 2 uses
  %i.db = fmul <4 x float> %i.cj, %i.cy           ; 5 uses
  %shift = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop89 = fmul <4 x float> %i.cj, %shift
  %i.dc = extractelement <4 x float> %foldExtExtBinop89, i64 0 ; 2 uses
  %i.dd = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.de = fmul <4 x float> %i.cq, %i.dd           ; 3 uses
  %i.df = fadd <4 x float> %i.db, %i.de           ; 3 uses
  %i.dg = extractelement <4 x float> %i.df, i64 0
  %i.dh = fsub float 1.000000e+00, %i.dg
  %foldExtExtBinop91 = fsub <4 x float> %i.db, %i.de
  %i.di = extractelement <4 x float> %foldExtExtBinop91, i64 3
  %i.dj = extractelement <4 x float> %i.df, i64 2
  %i.dk = fsub float 1.000000e+00, %i.dj
  %i.dl = fsub float %i.dc, %i.da
  %foldExtExtBinop93 = fsub <4 x float> %i.db, %i.de
  %i.dm = extractelement <4 x float> %foldExtExtBinop93, i64 1
  %i.dn = fadd float %i.dc, %i.da
  %shift95 = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop96 = fadd <4 x float> %shift95, %i.db
  %i.do = extractelement <4 x float> %foldExtExtBinop96, i64 0
  %i.dp = fsub float 1.000000e+00, %i.do
  %i.dq = load float, ptr %i.ce, align 16, !tbaa !80 ; 2 uses
  %i.dr = load float, ptr %i.cf, align 4, !tbaa !80 ; 2 uses
  %i.ds = load float, ptr %i.cg, align 8, !tbaa !80 ; 2 uses
  %i.dt = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.dk, i64 1
  %i.dx = fmul <2 x float> %i.du, %i.dw
  %i.dy = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <4 x float> %i.df, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.eb = insertelement <2 x float> %i.ea, float %i.dh, i64 0
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.eb, <2 x float> %i.dx)
  %i.ed = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <2 x float> %i.ea, float %i.dl, i64 1
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.ec)
  %i.eh = fmul float %i.dr, %i.dn
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.dm, float %i.eh)
  %i.ej = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.dp, float %i.ei)
  %i.ek = fadd <2 x float> %i.ch, %i.eg
  %i.el = fadd float %.sroa.26.48.copyload.i, %i.ej
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.el, i64 0
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv78 ; 2 uses
  store <2 x float> %i.ek, ptr %i.em, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !80
  %exitcond84.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge75, label %bb.c, !llvm.loop !185

bb.d:                                             ; preds = %._crit_edge75
  %i.en = invoke noundef i32 @_Z21b3ClipFaceAgainstHullRK9b3Vector3PK22b3ConvexPolyhedronDataS1_RK12b3QuaternionPS_iS8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiES8_i(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef %7, i32 noundef %.060.lcssa, ptr noundef %8, i32 noundef %9, float noundef %10, float noundef %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef %18, i32 noundef %19)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit64 unwind label %bb.h

bb.f:                                             ; preds = %bb.d, %._crit_edge75
  %.061 = phi i32 [ 0, %._crit_edge75 ], [ %i.en, %bb.d ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  tail call void @__clang_call_terminate(ptr %i.eq) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.f
  ret i32 %.061

bb.h:                                             ; preds = %bb.e
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  tail call void @__clang_call_terminate(ptr %i.es) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit64:                    ; preds = %bb.e
  resume { ptr, i32 } %i.eo
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z16b3ReduceContactsPK9b3Vector3iRS0_P6b3Int4(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 5
  br i1 %i.b, label %bb.s, label %.new

.new:                                             ; preds = %bb.b
  %i.c = tail call i32 @llvm.umin.i32(i32 %1, i32 64) ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 126
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod217 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next.1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.15.8.vec.extract182.epil = extractelement <2 x float> %.sroa.15.8.vec.insert184.1, i64 0
  %i.f = load <2 x float>, ptr %i.d, align 16, !tbaa !80
  %i.g = fadd <2 x float> %i.ci, %i.f
  %i.h = load float, ptr %i.e, align 8, !tbaa !80
  %i.i = fadd float %.sroa.15.8.vec.extract182.epil, %i.h
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa214 = phi <2 x float> [ %i.ci, %.unr-lcssa ], [ %i.g, %.epil.preheader ] ; 2 uses
  %.lcssa = phi float [ %i.ck, %.unr-lcssa ], [ %i.i, %.epil.preheader ]
  %i.j = uitofp nneg i32 %i.c to float
  %i.k = fdiv float 1.000000e+00, %i.j            ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load float, ptr %2, align 16, !tbaa !80  ; 3 uses
  %i.o = extractelement <2 x float> %.lcssa214, i64 0
  %i.p = fmul float %i.k, %i.o                    ; 2 uses
  %i.q = extractelement <2 x float> %.lcssa214, i64 1
  %i.r = fmul float %i.k, %i.q                    ; 2 uses
  %i.s = fmul float %i.k, %.lcssa                 ; 2 uses
  %i.t = load float, ptr %0, align 16, !tbaa !80
  %i.u = fsub float %i.t, %i.p                    ; 2 uses
  %i.v = load <2 x float>, ptr %i.l, align 4, !tbaa !80
  %i.w = insertelement <2 x float> poison, float %i.r, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.s, i64 1
  %i.y = fsub <2 x float> %i.v, %i.x              ; 3 uses
  %i.z = load <2 x float>, ptr %i.m, align 4, !tbaa !80 ; 5 uses
  %i.aa = fneg <2 x float> %i.y
  %i.ab = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %i.n, i64 1 ; 2 uses
  %i.ad = fmul <2 x float> %i.ac, %i.aa
  %i.ae = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.af = insertelement <2 x float> %i.ae, float %i.u, i64 1
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.af, <2 x float> %i.ad) ; 6 uses
  %i.ah = fneg float %i.u
  %i.ai = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  %i.aj = fmul float %i.ai, %i.ah
  %i.ak = extractelement <2 x float> %i.y, i64 0
  %i.al = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ak, float %i.aj) ; 4 uses
  %i.am = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.an = fneg float %i.am
  %i.ao = extractelement <2 x float> %i.z, i64 1
  %i.ap = fmul float %i.ao, %i.an
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.al, float %i.ap) ; 2 uses
  %i.ar = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.as = insertelement <2 x float> %i.ar, float %i.al, i64 0
  %i.at = fneg <2 x float> %i.as
  %i.au = insertelement <2 x float> poison, float %i.n, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> %i.z, <2 x i32> <i32 0, i32 2>
  %i.aw = fmul <2 x float> %i.av, %i.at
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ag, <2 x float> %i.aw) ; 3 uses
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> %i.ag, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.az = fmul <2 x float> %i.ay, %i.ay
  %i.ba = insertelement <2 x float> %i.ag, float %i.aq, i64 1 ; 2 uses
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.ba, <2 x float> %i.az)
  %i.bc = insertelement <2 x float> %i.ax, float %i.al, i64 0 ; 2 uses
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bc, <2 x float> %i.bb)
  %4 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bd)
  %i.be = fdiv <2 x float> splat (float 1.000000e+00), %4 ; 4 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ag, %i.be
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bh = fmul float %i.am, %i.bf                 ; 2 uses
  %i.bi = fmul float %i.al, %i.bf                 ; 2 uses
  %5 = extractelement <2 x float> %i.be, i64 1
  %i.bj = fmul float %i.aq, %5                    ; 2 uses
  %i.bk = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = fmul <2 x float> %i.ax, %i.bk           ; 3 uses
  %i.bm = fneg float %i.bg
  %i.bn = fneg float %i.bh
  %i.bo = fneg float %i.bi
  %i.bp = fneg float %i.bj
  %i.bq = fneg <2 x float> %i.bl                  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bu = extractelement <2 x float> %i.bq, i64 0
  %i.bv = extractelement <2 x float> %i.bq, i64 1
  %i.bw = extractelement <2 x float> %i.bl, i64 0
  %i.bx = extractelement <2 x float> %i.bl, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.sroa.15.0188 = phi <2 x float> [ zeroinitializer, %.new ], [ %.sroa.15.8.vec.insert184.1, %bb.d ] ; 2 uses
  %.sroa.0159.0187 = phi <2 x float> [ zeroinitializer, %.new ], [ %i.ci, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.15.8.vec.extract182 = extractelement <2 x float> %.sroa.15.0188, i64 0
  %i.ca = load <2 x float>, ptr %i.by, align 16, !tbaa !80
  %i.cb = fadd <2 x float> %.sroa.0159.0187, %i.ca
  %i.cc = load float, ptr %i.bz, align 8, !tbaa !80
  %i.cd = fadd float %.sroa.15.8.vec.extract182, %i.cc
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ch = load <2 x float>, ptr %i.cf, align 16, !tbaa !80
  %i.ci = fadd <2 x float> %i.cb, %i.ch           ; 3 uses
  %i.cj = load float, ptr %i.cg, align 8, !tbaa !80
  %i.ck = fadd float %i.cd, %i.cj                 ; 2 uses
  %.sroa.15.8.vec.insert184.1 = insertelement <2 x float> %.sroa.15.0188, float %i.ck, i64 0 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !187

bb.e:                                             ; preds = %bb.n
  %i.cl = load i32, ptr %3, align 16, !tbaa !80
  %.not = icmp eq i32 %i.cl, %.1
  br i1 %.not, label %bb.s, label %bb.o

bb.f:                                             ; preds = %bb.c, %bb.n
  %indvars.iv200 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next201, %bb.n ] ; 3 uses
  %.sroa.0.0195 = phi float [ f0x00800000, %bb.c ], [ %.sroa.0.1, %bb.n ] ; 2 uses
  %.sroa.5.0194 = phi float [ f0x00800000, %bb.c ], [ %.sroa.5.1, %bb.n ] ; 2 uses
  %.sroa.8.0193 = phi float [ f0x00800000, %bb.c ], [ %.sroa.8.1, %bb.n ] ; 2 uses
  %.sroa.11.0192 = phi float [ f0x00800000, %bb.c ], [ %.sroa.11.1, %bb.n ] ; 2 uses
  %.053191 = phi i32 [ -1, %bb.c ], [ %.1, %bb.n ]
  %.054190 = phi float [ f0x7F7FFFFF, %bb.c ], [ %.155, %bb.n ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv200 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load float, ptr %i.cn, align 4, !tbaa !80 ; 2 uses
  %i.cp = fcmp olt float %i.co, %.054190          ; 2 uses
  %.155 = select i1 %i.cp, float %i.co, float %.054190
  %i.cq = trunc nuw nsw i64 %indvars.iv200 to i32 ; 5 uses
  %.1 = select i1 %i.cp, i32 %i.cq, i32 %.053191  ; 6 uses
  %i.cr = load float, ptr %i.cm, align 16, !tbaa !80
  %i.cs = fsub float %i.cr, %i.p                  ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !80
  %i.cv = fsub float %i.cu, %i.r                  ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !80
  %i.cy = fsub float %i.cx, %i.s                  ; 4 uses
  %i.cz = fmul float %i.bh, %i.cv
  %i.da = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.cs, float %i.cz)
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.cy, float %i.da) ; 2 uses
  %i.dc = fcmp olt float %i.db, %.sroa.0.0195
  br i1 %i.dc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.cq, ptr %3, align 16, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.1 = phi float [ %i.db, %bb.g ], [ %.sroa.0.0195, %bb.f ]
  %i.dd = fmul float %i.cv, %i.bn
  %i.de = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.cs, float %i.dd)
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.cy, float %i.de) ; 2 uses
  %i.dg = fcmp olt float %i.df, %.sroa.5.0194
  br i1 %i.dg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.cq, ptr %i.br, align 4, !tbaa !80
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.5.1 = phi float [ %i.df, %bb.i ], [ %.sroa.5.0194, %bb.h ]
  %i.dh = fmul float %i.bw, %i.cv
  %i.di = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.cs, float %i.dh)
  %i.dj = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.cy, float %i.di) ; 2 uses
  %i.dk = fcmp olt float %i.dj, %.sroa.8.0193
  br i1 %i.dk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.cq, ptr %i.bs, align 8, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.8.1 = phi float [ %i.dj, %bb.k ], [ %.sroa.8.0193, %bb.j ]
  %i.dl = fmul float %i.cv, %i.bu
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.cs, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.cy, float %i.dm) ; 2 uses
  %i.do = fcmp olt float %i.dn, %.sroa.11.0192
  br i1 %i.do, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.cq, ptr %i.bt, align 4, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.11.1 = phi float [ %i.dn, %bb.m ], [ %.sroa.11.0192, %bb.l ]
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count
  br i1 %exitcond204.not, label %bb.e, label %bb.f, !llvm.loop !188

bb.o:                                             ; preds = %bb.e
  %i.dp = load i32, ptr %i.br, align 4, !tbaa !80
  %.not64 = icmp eq i32 %i.dp, %.1
  br i1 %.not64, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dq = load i32, ptr %i.bs, align 8, !tbaa !80
  %.not65 = icmp eq i32 %i.dq, %.1
  br i1 %.not65, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = load i32, ptr %i.bt, align 4, !tbaa !80
  %.not66 = icmp eq i32 %i.dr, %.1
  br i1 %.not66, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.1, ptr %3, align 16, !tbaa !80
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.o, %bb.p, %bb.q, %bb.r, %bb.b, %bb.a
  %.056 = phi i32 [ %1, %bb.b ], [ 0, %bb.a ], [ 4, %bb.r ], [ 4, %bb.q ], [ 4, %bb.p ], [ 4, %bb.o ], [ 4, %bb.e ]
  ret i32 %.056
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(112) ptr @_ZN20b3AlignedObjectArrayI14b3Contact4DataE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(112) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !76
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI14b3Contact4DataE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI14b3Contact4DataE7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI14b3Contact4DataE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayI14b3Contact4DataE8allocateEi.exit.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 112
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI14b3Contact4DataE8allocateEi.exit.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !75   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI14b3Contact4DataE4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.q, ptr noundef nonnull align 16 dereferenceable(112) %i.s, i64 112, i1 false), !tbaa.struct !83
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.t, ptr noundef nonnull align 16 dereferenceable(112) %i.v, i64 112, i1 false), !tbaa.struct !83
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
end_hunk_1
begin_hunk_2_@_Z21b3ClipFaceAgainstHullRK9b3Vector3PK22b3ConvexPolyhedronDataS1_RK12b3QuaternionPS_iS8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiES8_i:bb.a
  %i.hn = extractelement <4 x float> %i.hi, i64 2
  %i.ho = fneg float %i.hn                        ; 3 uses
  %i.hp = extractelement <4 x float> %i.hi, i64 3
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.hp)
  %i.hr = tail call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.hq)
  %i.hs = fdiv float 2.000000e+00, %i.hr          ; 3 uses
  %i.ht = fmul float %i.fi, %i.hs                 ; 2 uses
  %i.hu = fmul float %i.fh, %i.hs                 ; 3 uses
  %i.hv = fmul float %i.fc, %i.hs                 ; 4 uses
  %i.hw = fmul float %i.eu, %i.ht                 ; 2 uses
  %i.hx = fmul float %i.eu, %i.hu                 ; 2 uses
  %i.hy = fmul float %i.eu, %i.hv                 ; 2 uses
  %i.hz = fmul float %i.fi, %i.ht                 ; 2 uses
  %i.ia = fmul float %i.fi, %i.hu                 ; 2 uses
  %i.ib = fmul float %i.fi, %i.hv                 ; 2 uses
  %i.ic = fmul float %i.fh, %i.hu                 ; 2 uses
  %i.id = fmul float %i.fh, %i.hv                 ; 2 uses
  %i.ie = fmul float %i.fc, %i.hv                 ; 2 uses
  %i.if = fadd float %i.ic, %i.ie
  %i.ig = fsub float 1.000000e+00, %i.if
  %i.ih = fsub float %i.ia, %i.hy
  %i.ii = fadd float %i.ib, %i.hx
  %i.ij = fadd float %i.ia, %i.hy
  %i.ik = fadd float %i.hz, %i.ie
  %i.il = fsub float 1.000000e+00, %i.ik
  %i.im = fsub float %i.id, %i.hw
  %i.in = fsub float %i.ib, %i.hx
  %i.io = fadd float %i.id, %i.hw
  %i.ip = fadd float %i.hz, %i.ic
  %i.iq = fsub float 1.000000e+00, %i.ip
  %i.ir = extractelement <3 x float> %i.ev, i64 1 ; 3 uses
  %i.is = fmul float %i.ir, %i.ih
  %i.it = tail call float @llvm.fmuladd.f32(float %.sroa.0178.0.copyload, float %i.ig, float %i.is)
  %i.iu = extractelement <3 x float> %i.ev, i64 2 ; 3 uses
  %i.iv = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.ii, float %i.it)
  %i.iw = fmul float %i.ir, %i.il
  %i.ix = tail call float @llvm.fmuladd.f32(float %.sroa.0178.0.copyload, float %i.ij, float %i.iw)
  %i.iy = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.im, float %i.ix)
  %i.iz = fmul float %i.ir, %i.io
  %i.ja = tail call float @llvm.fmuladd.f32(float %.sroa.0178.0.copyload, float %i.in, float %i.iz)
  %i.jb = tail call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.iq, float %i.ja)
  %i.jc = fadd float %.sroa.23.48.copyload.i, %i.iv
  %i.jd = fadd float %.sroa.25.48.copyload.i, %i.iy
  %i.je = fadd float %.sroa.26.48.copyload.i, %i.jb
  %i.jf = fmul float %i.jd, %i.hm
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.jc, float %i.hk, float %i.jf)
  %i.jh = tail call noundef float @llvm.fmuladd.f32(float %i.je, float %i.ho, float %i.jg) ; 2 uses
  %i.ji = icmp slt i32 %.086193, 2
  br i1 %i.ji, label %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.jj = zext nneg i32 %.086193 to i64           ; 2 uses
  %i.jk = getelementptr [16 x i8], ptr %.084195, i64 %i.jj ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 -16
  %i.jm = load <2 x float>, ptr %i.jl, align 16   ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr i8, ptr %i.jk, i64 -8
  %.sroa.11.0.copyload.i = load float, ptr %.sroa.11.0..sroa_idx.i, align 8 ; 2 uses
  %i.jn = extractelement <2 x float> %i.jm, i64 1
  %i.jo = fmul float %i.jn, %i.hm
  %i.jp = extractelement <2 x float> %i.jm, i64 0
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.jp, float %i.jo)
  %i.jr = tail call noundef float @llvm.fmuladd.f32(float %i.ho, float %.sroa.11.0.copyload.i, float %i.jq)
  %i.js = fsub float %i.jr, %i.jh
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.03590.i = phi float [ %i.js, %bb.e ], [ %i.kc, %bb.l ] ; 5 uses
  %.03689.i = phi i32 [ 0, %bb.e ], [ %.1.i, %bb.l ] ; 7 uses
  %.sroa.11.086.i = phi float [ %.sroa.11.0.copyload.i, %bb.e ], [ %i.ka, %bb.l ] ; 4 uses
  %i.jt = phi <2 x float> [ %i.jm, %bb.e ], [ %i.lh, %bb.l ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %.084195, i64 %indvars.iv.i
  %i.jv = load <4 x float>, ptr %i.ju, align 16   ; 8 uses
  %i.jw = extractelement <4 x float> %i.jv, i64 1
  %i.jx = fmul float %i.jw, %i.hm
  %i.jy = extractelement <4 x float> %i.jv, i64 0
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.jy, float %i.jx)
  %i.ka = extractelement <4 x float> %i.jv, i64 2 ; 4 uses
  %i.kb = tail call noundef float @llvm.fmuladd.f32(float %i.ho, float %i.ka, float %i.jz)
  %i.kc = fsub float %i.kb, %i.jh                 ; 4 uses
  %i.kd = fcmp olt float %.03590.i, 0.000000e+00
  %i.ke = fcmp olt float %i.kc, 0.000000e+00      ; 2 uses
  br i1 %i.kd, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %i.ke, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.kf = add nsw i32 %.03689.i, 1
  %i.kg = sext i32 %.03689.i to i64
  %i.kh = getelementptr inbounds [16 x i8], ptr %.085194, i64 %i.kg
  store <4 x float> %i.jv, ptr %i.kh, align 16
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ki = fsub float %.03590.i, %i.kc
  %i.kj = fdiv float %.03590.i, %i.ki             ; 2 uses
  %i.kk = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.kl = fsub <2 x float> %i.kk, %i.jt
  %i.km = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.kn, <2 x float> %i.jt)
  %i.kp = fsub float %i.ka, %.sroa.11.086.i
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.kp, float %i.kj, float %.sroa.11.086.i)
  %.sroa.3.12.vec.insert.i.i.i133 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kq, i64 0
  %i.kr = add nsw i32 %.03689.i, 1
  %i.ks = sext i32 %.03689.i to i64
  %i.kt = getelementptr inbounds [16 x i8], ptr %.085194, i64 %i.ks ; 2 uses
  store <2 x float> %i.ko, ptr %i.kt, align 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i133, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !80
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  br i1 %i.ke, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ku = fsub float %.03590.i, %i.kc
  %i.kv = fdiv float %.03590.i, %i.ku             ; 2 uses
  %i.kw = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.kx = fsub <2 x float> %i.kw, %i.jt
  %i.ky = insertelement <2 x float> poison, float %i.kv, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.kz, <2 x float> %i.jt)
  %i.lb = fsub float %i.ka, %.sroa.11.086.i
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.lb, float %i.kv, float %.sroa.11.086.i)
  %.sroa.3.12.vec.insert.i.i42.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lc, i64 0
  %i.ld = sext i32 %.03689.i to i64
  %i.le = getelementptr inbounds [16 x i8], ptr %.085194, i64 %i.ld ; 3 uses
  store <2 x float> %i.la, ptr %i.le, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i42.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !80
  %i.lf = add nsw i32 %.03689.i, 2
  %i.lg = getelementptr i8, ptr %i.le, i64 16
  store <4 x float> %i.jv, ptr %i.lg, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.1.i = phi i32 [ %i.kf, %bb.h ], [ %i.kr, %bb.i ], [ %i.lf, %bb.k ], [ %.03689.i, %bb.j ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.jj
  %i.lh = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br i1 %exitcond.not.i, label %_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit, label %bb.f, !llvm.loop !190

_Z10b3ClipFacePK9b3Vector3iRS_fPS_.exit:          ; preds = %bb.l, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ %.1.i, %bb.l ]  ; 2 uses
  br i1 %.not, label %._crit_edge198, label %bb.d, !llvm.loop !191

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.p
  %indvars.iv212 = phi i64 [ 0, %.lr.ph204.preheader ], [ %indvars.iv.next213, %bb.p ] ; 2 uses
  %.083202 = phi i32 [ 0, %.lr.ph204.preheader ], [ %.1, %bb.p ] ; 6 uses
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %.084.lcssa, i64 %indvars.iv212 ; 2 uses
  %i.lj = load <2 x float>, ptr %i.li, align 16, !tbaa !80 ; 3 uses
  %i.lk = extractelement <2 x float> %i.lj, i64 1
  %i.ll = fmul float %i.do, %i.lk
  %i.lm = extractelement <2 x float> %i.lj, i64 0
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.lm, float %i.ll)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lp = load float, ptr %i.lo, align 8, !tbaa !80 ; 2 uses
  %i.lq = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.lp, float %i.ln)
  %i.lr = fadd float %i.eb, %i.lq                 ; 2 uses
  %.inv = fcmp ole float %i.lr, %8
  %.087 = select i1 %.inv, float %8, float %i.lr  ; 2 uses
  %i.ls = icmp slt i32 %.083202, %14
  br i1 %i.ls, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph204
  %i.lt = fcmp ugt float %.087, %9
  br i1 %i.lt, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.3.12.vec.insert6.i136 = insertelement <2 x float> poison, float %i.lp, i64 0
  %.sroa.3.12.vec.insert.i137 = insertelement <2 x float> %.sroa.3.12.vec.insert6.i136, float %.087, i64 1
  %i.lu = add nsw i32 %.083202, 1
  %i.lv = sext i32 %.083202 to i64
  %i.lw = getelementptr inbounds [16 x i8], ptr %13, i64 %i.lv ; 2 uses
  store <2 x float> %i.lj, ptr %i.lw, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i137, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !80
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph204
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 164)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.9, i32 noundef %.083202, i32 noundef %14)
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.1 = phi i32 [ %i.lu, %bb.n ], [ %.083202, %bb.m ], [ %.083202, %bb.o ] ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %.loopexit, label %.lr.ph204, !llvm.loop !192

.loopexit:                                        ; preds = %bb.p, %bb.a, %._crit_edge198, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %._crit_edge198 ], [ 0, %bb.a ], [ %.1, %bb.p ]
  ret i32 %.0
}

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !84}
!1 = distinct !{!1, !84}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS28b3CpuNarrowPhaseInternalData", !11, i64 0}
!13 = !{!"_ZTS16b3CpuNarrowPhase", !12, i64 8, !8, i64 16, !8, i64 20, !8, i64 24}
!14 = !{!13, !12, i64 8}
!15 = !{!"_ZTS18b3AlignedAllocatorI12b3CollidableLj16EE"}
!16 = !{!"p1 _ZTS12b3Collidable", !11, i64 0}
!17 = !{!"bool", !7, i64 0}
!18 = !{!"_ZTS20b3AlignedObjectArrayI12b3CollidableE", !15, i64 0, !8, i64 4, !8, i64 8, !16, i64 16, !17, i64 24}
!19 = !{!18, !16, i64 16}
!20 = !{!"vtable pointer", !6, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTS18b3AlignedAllocatorI6b3AabbLj16EE"}
!23 = !{!"p1 _ZTS6b3Aabb", !11, i64 0}
!24 = !{!"_ZTS20b3AlignedObjectArrayI6b3AabbE", !22, i64 0, !8, i64 4, !8, i64 8, !23, i64 16, !17, i64 24}
!25 = !{!24, !17, i64 24}
!26 = !{!24, !23, i64 16}
!27 = !{!24, !8, i64 4}
!28 = !{!24, !8, i64 8}
!29 = !{!18, !17, i64 24}
!30 = !{!18, !8, i64 4}
!31 = !{!18, !8, i64 8}
!32 = !{!"_ZTS18b3AlignedAllocatorIP15b3ConvexUtilityLj16EE"}
!33 = !{!"any p2 pointer", !11, i64 0}
!34 = !{!"p2 _ZTS15b3ConvexUtility", !33, i64 0}
!35 = !{!"_ZTS20b3AlignedObjectArrayIP15b3ConvexUtilityE", !32, i64 0, !8, i64 4, !8, i64 8, !34, i64 16, !17, i64 24}
!36 = !{!35, !17, i64 24}
!37 = !{!35, !34, i64 16}
!38 = !{!35, !8, i64 4}
!39 = !{!35, !8, i64 8}
!40 = !{!"_ZTS8b3Config", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44}
!41 = !{!8, !8, i64 0}
!42 = !{!"_ZTS18b3AlignedAllocatorI22b3ConvexPolyhedronDataLj16EE"}
!43 = !{!"p1 _ZTS22b3ConvexPolyhedronData", !11, i64 0}
!44 = !{!"_ZTS20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE", !42, i64 0, !8, i64 4, !8, i64 8, !43, i64 16, !17, i64 24}
!45 = !{!44, !17, i64 24}
!46 = !{!44, !43, i64 16}
!47 = !{!44, !8, i64 4}
!48 = !{!44, !8, i64 8}
!49 = !{!"_ZTS18b3AlignedAllocatorI9b3Vector3Lj16EE"}
!50 = !{!"p1 _ZTS9b3Vector3", !11, i64 0}
!51 = !{!"_ZTS20b3AlignedObjectArrayI9b3Vector3E", !49, i64 0, !8, i64 4, !8, i64 8, !50, i64 16, !17, i64 24}
!52 = !{!51, !17, i64 24}
!53 = !{!51, !50, i64 16}
!54 = !{!51, !8, i64 4}
!55 = !{!51, !8, i64 8}
!56 = !{!"_ZTS18b3AlignedAllocatorIiLj16EE"}
!57 = !{!"p1 int", !11, i64 0}
!58 = !{!"_ZTS20b3AlignedObjectArrayIiE", !56, i64 0, !8, i64 4, !8, i64 8, !57, i64 16, !17, i64 24}
!59 = !{!58, !17, i64 24}
!60 = !{!58, !57, i64 16}
!61 = !{!58, !8, i64 4}
!62 = !{!58, !8, i64 8}
!63 = !{!"_ZTS18b3AlignedAllocatorI9b3GpuFaceLj16EE"}
!64 = !{!"p1 _ZTS9b3GpuFace", !11, i64 0}
!65 = !{!"_ZTS20b3AlignedObjectArrayI9b3GpuFaceE", !63, i64 0, !8, i64 4, !8, i64 8, !64, i64 16, !17, i64 24}
!66 = !{!65, !17, i64 24}
!67 = !{!65, !64, i64 16}
!68 = !{!65, !8, i64 4}
!69 = !{!65, !8, i64 8}
!70 = !{!"_ZTS18b3AlignedAllocatorI14b3Contact4DataLj16EE"}
!71 = !{!"p1 _ZTS14b3Contact4Data", !11, i64 0}
!72 = !{!"_ZTS20b3AlignedObjectArrayI14b3Contact4DataE", !70, i64 0, !8, i64 4, !8, i64 8, !71, i64 16, !17, i64 24}
!73 = !{!72, !17, i64 24}
!74 = !{!72, !71, i64 16}
!75 = !{!72, !8, i64 4}
!76 = !{!72, !8, i64 8}
!77 = !{!"_ZTS28b3CpuNarrowPhaseInternalData", !24, i64 0, !18, i64 32, !35, i64 64, !40, i64 96, !44, i64 144, !51, i64 176, !51, i64 208, !58, i64 240, !65, i64 272, !72, i64 304, !8, i64 336}
!78 = !{!77, !8, i64 336}
!79 = !{i8 0, i8 2}
!80 = !{!7, !7, i64 0}
!81 = !{!"short", !7, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{i64 0, i64 64, !80, i64 64, i64 16, !80, i64 80, i64 2, !82, i64 82, i64 2, !82, i64 84, i64 4, !41, i64 88, i64 4, !41, i64 92, i64 4, !41, i64 96, i64 4, !41, i64 100, i64 4, !41, i64 104, i64 4, !41, i64 108, i64 4, !41}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!"_ZTS18b3AlignedAllocatorI15b3RigidBodyDataLj16EE"}
!88 = !{!"p1 _ZTS15b3RigidBodyData", !11, i64 0}
!89 = !{!"_ZTS20b3AlignedObjectArrayI15b3RigidBodyDataE", !87, i64 0, !8, i64 4, !8, i64 8, !88, i64 16, !17, i64 24}
!90 = !{!89, !88, i64 16}
!91 = !{!"_ZTS9b3Vector3", !7, i64 0}
!92 = !{!"_ZTS10b3QuadWord", !7, i64 0}
!93 = !{!"_ZTS12b3Quaternion", !92, i64 0}
!94 = !{!"float", !7, i64 0}
!95 = !{!"_ZTS15b3RigidBodyData", !91, i64 0, !93, i64 16, !91, i64 32, !91, i64 48, !8, i64 64, !94, i64 68, !94, i64 72, !94, i64 76}
!96 = !{!"_ZTS12b3Collidable", !7, i64 0, !7, i64 4, !8, i64 8, !7, i64 12}
!97 = !{!96, !8, i64 8}
!98 = !{i64 0, i64 16, !80}
!99 = !{!94, !94, i64 0}
!100 = !{i64 0, i64 16, !80, i64 16, i64 16, !80, i64 32, i64 16, !80, i64 48, i64 16, !80, i64 64, i64 4, !99, i64 68, i64 4, !41, i64 72, i64 4, !41, i64 76, i64 4, !41, i64 80, i64 4, !41, i64 84, i64 4, !41, i64 88, i64 4, !41, i64 92, i64 4, !41}
!101 = !{!77, !8, i64 100}
!102 = !{!"_ZTS18b3AlignedAllocatorI8b3MyFaceLj16EE"}
!103 = !{!"p1 _ZTS8b3MyFace", !11, i64 0}
!104 = !{!"_ZTS20b3AlignedObjectArrayI8b3MyFaceE", !102, i64 0, !8, i64 4, !8, i64 8, !103, i64 16, !17, i64 24}
!105 = !{!"_ZTS22b3ConvexPolyhedronData", !91, i64 0, !91, i64 16, !91, i64 32, !91, i64 48, !94, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92}
!106 = !{!105, !8, i64 88}
!107 = !{!105, !8, i64 84}
!108 = !{!105, !8, i64 68}
!109 = !{!104, !8, i64 4}
!110 = !{!105, !8, i64 72}
!111 = !{!104, !103, i64 16}
!112 = !{!"_ZTS9b3GpuFace", !91, i64 0, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!113 = !{!112, !8, i64 20}
!114 = !{!112, !8, i64 16}
!115 = !{!105, !8, i64 76}
!116 = !{!105, !8, i64 80}
!117 = !{!40, !8, i64 0}
!118 = !{!40, !8, i64 36}
!119 = !{!40, !8, i64 40}
!120 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41, i64 16, i64 4, !41, i64 20, i64 4, !41, i64 24, i64 4, !41, i64 28, i64 4, !41, i64 32, i64 4, !41, i64 36, i64 4, !41, i64 40, i64 4, !41, i64 44, i64 4, !41}
!121 = !{ptr @_ZN16b3CpuNarrowPhaseD2Ev}
!122 = distinct !{!122, !86}
!123 = distinct !{!123, !84}
!124 = distinct !{!124, !86}
!125 = distinct !{!125, !84}
!126 = !{!"_ZTS18b3AlignedAllocatorI6b3Int4Lj16EE"}
!127 = !{!"p1 _ZTS6b3Int4", !11, i64 0}
!128 = !{!"_ZTS20b3AlignedObjectArrayI6b3Int4E", !126, i64 0, !8, i64 4, !8, i64 8, !127, i64 16, !17, i64 24}
!129 = !{!128, !8, i64 4}
!130 = !{!77, !8, i64 108}
!131 = !{!128, !127, i64 16}
!132 = !{!95, !8, i64 64}
!133 = distinct !{!133, !84}
!134 = distinct !{!134, !84}
!135 = distinct !{!135, !84, !158, !159}
!136 = distinct !{!136, !86}
!137 = distinct !{!137, !84, !158}
!138 = distinct !{!138, !84}
!139 = distinct !{!139, !86}
!140 = distinct !{!140, !84}
!141 = distinct !{!141, !86}
!142 = distinct !{!142, !84}
!143 = distinct !{!143, !84}
!144 = distinct !{!144, !84}
!145 = distinct !{!145, !86}
!146 = distinct !{!146, !84}
!147 = distinct !{!147, !84, !158, !159}
!148 = distinct !{!148, !86}
!149 = distinct !{!149, !84, !158}
!150 = distinct !{!150, !84, !158, !159}
!151 = distinct !{!151, !86}
!152 = distinct !{!152, !84}
!153 = distinct !{!153, !84, !158}
!154 = distinct !{!154, !86}
!155 = distinct !{!155, !84}
!156 = !{!"p1 _ZTS15b3ConvexUtility", !11, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!"llvm.loop.isvectorized", i32 1}
!159 = !{!"llvm.loop.unroll.runtime.disable"}
!160 = !{!"_ZTS15b3ConvexUtility", !91, i64 16, !91, i64 32, !91, i64 48, !91, i64 64, !94, i64 80, !51, i64 88, !104, i64 120, !51, i64 152}
!161 = !{!160, !94, i64 80}
!162 = !{!105, !94, i64 64}
!163 = !{i64 0, i64 16, !80, i64 16, i64 4, !41, i64 20, i64 4, !41, i64 24, i64 4, !41, i64 28, i64 4, !41}
!164 = distinct !{!164, !84}
!165 = !{i64 0, i64 16, !80, i64 16, i64 16, !80}
!166 = distinct !{!166, !84}
!167 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !41, i64 12, i64 4, !80}
!168 = distinct !{!168, !84}
!169 = !{!104, !17, i64 24}
!170 = !{!104, !8, i64 8}
!171 = distinct !{!171, !84}
!172 = distinct !{!172, !84}
end_hunk_2
