Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetFilter?download=true
inline.NumInlined: 4553
inline.NumDeleted: 1964
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter17meanCurvatureImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %i.jt = load ptr, ptr %i.jp, align 8, !tbaa !45, !noalias !575
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !575
  invoke void %i.jv(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc35 unwind label %bb.ap, !inline_history !6

.noexc35:                                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !575
  %i.jw = load ptr, ptr %i.aw, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.jx = load ptr, ptr %i.bb, align 8, !tbaa !229
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !228, !noalias !577 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !45, !noalias !577
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !577
  invoke void %i.kb(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc36 unwind label %bb.ap, !inline_history !6

.noexc36:                                         ; preds = %.noexc35
  %i.kc = invoke noundef float @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEENT_9ValueTypeERKSJ_RKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(96) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc37 unwind label %bb.ap

.noexc37:                                         ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i: ; preds = %.noexc37, %.noexc34
  %.0.i.i = phi float [ %i.jn, %.noexc34 ], [ %i.kc, %.noexc37 ]
  %i.kd = load float, ptr %i.bc, align 8, !tbaa !231
  %i.ke = fsub float %.0.i.i, %i.kd
  %i.kf = load float, ptr %i.bd, align 4, !tbaa !232
  %i.kg = fmul float %i.ke, %i.kf                 ; 5 uses
  %i.kh = fcmp ogt float %i.kg, 0.000000e+00
  br i1 %i.kh, label %bb.ak, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.ak:                                            ; preds = %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.ki = fcmp olt float %i.kg, 1.000000e+00
  br i1 %i.ki, label %bb.al, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.kj = call nnan float @llvm.fmuladd.f32(float %i.kg, float -2.000000e+00, float 3.000000e+00)
  %i.kk = fmul nnan float %i.kg, %i.kj
  %i.kl = fmul nnan float %i.kg, %i.kk
  br label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i: ; preds = %bb.al, %bb.ak, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.km = phi float [ 1.000000e+00, %bb.ak ], [ %i.kl, %bb.al ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i ] ; 3 uses
  %i.kn = fsub float 1.000000e+00, %i.km          ; 2 uses
  %i.ko = load i8, ptr %i.be, align 8, !tbaa !233, !range !71, !noundef !72
  %i.kp = trunc nuw i8 %i.ko to i1                ; 2 uses
  %.0110 = select i1 %i.kp, float %i.kn, float %i.km ; 2 uses
  %.0 = select i1 %i.kp, float %i.km, float %i.kn
  %i.kq = fcmp ogt float %.0110, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.kq, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.av, align 8, !tbaa !201
  br label %bb.aq

bb.am:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kr = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc38 unwind label %.loopexit115 ; 3 uses

.noexc38:                                         ; preds = %bb.am
  %i.ks = load i32, ptr %i.av, align 8, !tbaa !201 ; 4 uses
  %i.kt = lshr i32 %i.ks, 6
  %i.ku = lshr i32 %i.ks, 3
  %i.kv = and i32 %i.ku, 7
  %i.kw = and i32 %i.ks, 7
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 80
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !124
  %i.kz = add nsw i32 %i.ky, %i.kt
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 84
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !124
  %i.lc = add nsw i32 %i.lb, %i.kv
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kr, i64 88
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !124
  %i.lf = add nsw i32 %i.le, %i.kw
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.lc to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.kz to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.bf, align 8
  store i32 %i.lf, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !69
  %i.lg = load ptr, ptr %i.bg, align 8, !tbaa !238
  %i.lh = zext i32 %i.ks to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4, !tbaa !47
  %i.lk = load ptr, ptr %i.bh, align 8, !tbaa !240
  store float %i.lj, ptr %i.lk, align 4, !tbaa !47
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.bf)
          to label %bb.an unwind label %.loopexit115

bb.an:                                            ; preds = %.noexc38
  %i.ll = load i32, ptr %i.av, align 8, !tbaa !201 ; 2 uses
  %i.lm = load ptr, ptr %i.bg, align 8, !tbaa !238
  %i.ln = zext i32 %i.ll to i64                   ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !47 ; 2 uses
  %i.lq = load ptr, ptr %i.bh, align 8, !tbaa !240 ; 17 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.lt = load <4 x float>, ptr %i.ls, align 4, !tbaa !47 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !47 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 20
  %i.lx = load <4 x float>, ptr %i.lr, align 4, !tbaa !47 ; 2 uses
  %i.ly = load float, ptr %i.lw, align 4, !tbaa !47 ; 2 uses
  %i.lz = shufflevector <4 x float> %i.lx, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ma = shufflevector <4 x float> %i.lt, <4 x float> %i.lx, <2 x i32> <i32 0, i32 5>
  %i.mb = fsub <2 x float> %i.lz, %i.ma
  %i.mc = fpext <2 x float> %i.mb to <2 x double>
  %i.md = fmul <2 x double> %i.mc, <double 5.000000e-01, double 1.000000e+00> ; 3 uses
  %i.me = fsub float %i.lv, %i.ly
  %i.mf = fpext float %i.me to double
  %i.mg = fmul double %i.mf, 5.000000e-01         ; 4 uses
  %i.mh = insertelement <2 x double> %i.md, double 5.000000e-01, i64 1
  %i.mi = fmul <2 x double> %i.md, %i.mh          ; 3 uses
  %i.mj = extractelement <2 x double> %i.mi, i64 1 ; 3 uses
  %i.mk = fmul double %i.mj, %i.mj                ; 2 uses
  %i.ml = fmul double %i.mg, %i.mg                ; 2 uses
  %i.mm = extractelement <2 x double> %i.mi, i64 0
  %i.mn = fadd double %i.mm, %i.mk
  %i.mo = fadd double %i.mn, %i.ml                ; 2 uses
  %i.mp = fcmp ugt double %i.mo, 1.000000e-15
  br i1 %i.mp, label %bb.ao, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit

bb.ao:                                            ; preds = %bb.an
  %i.mq = shufflevector <4 x float> %i.lt, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.mr = load float, ptr %i.lq, align 4, !tbaa !47 ; 2 uses
  %i.ms = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mu = shufflevector <4 x float> %i.lt, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.mv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> splat (float -2.000000e+00), <2 x float> %i.mu)
  %i.mw = fadd <2 x float> %i.mq, %i.mv
  %i.mx = fpext <2 x float> %i.mw to <2 x double> ; 3 uses
  %i.my = extractelement <2 x double> %i.mx, i64 1
  %i.mz = extractelement <2 x double> %i.mx, i64 0
  %i.na = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.mx)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !47
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !47
  %i.nf = fsub float %i.nc, %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lq, i64 28
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !47
  %i.ni = fadd float %i.nf, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lq, i64 36
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !47
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !47
  %i.no = fsub float %i.nl, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.lq, i64 44
  %i.nq = load float, ptr %i.np, align 4, !tbaa !47
  %i.nr = fadd float %i.no, %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lq, i64 52
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !47
  %i.nu = fsub float %i.nr, %i.nt
  %i.nv = call float @llvm.fmuladd.f32(float %i.mr, float -2.000000e+00, float %i.lv)
  %i.nw = fadd float %i.ly, %i.nv
  %i.nx = fpext float %i.nw to double             ; 2 uses
  %i.ny = fadd double %i.my, %i.nx
  %i.nz = fadd double %i.mz, %i.nx
  %i.oa = fmul double %i.mk, %i.nz
  %i.ob = load float, ptr %i.nj, align 4, !tbaa !47
  %i.oc = fsub float %i.ni, %i.ob
  %i.od = fpext float %i.oc to double
  %i.oe = fmul double %i.od, 2.500000e-01
  %i.of = fpext float %i.nu to double
  %i.og = fmul double %i.of, 2.500000e-01
  %i.oh = fmul double %i.mg, %i.og
  %i.oi = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.oj = insertelement <2 x double> %i.oi, double %i.oe, i64 1
  %i.ok = insertelement <2 x double> poison, double %i.oa, i64 0
  %i.ol = insertelement <2 x double> %i.ok, double %i.oh, i64 1
  %i.om = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %i.oj, <2 x double> %i.ol) ; 2 uses
  %i.on = extractelement <2 x double> %i.om, i64 0
  %i.oo = call double @llvm.fmuladd.f64(double %i.ml, double %i.na, double %i.on)
  %i.op = fmul double %i.mj, %i.mg
  %i.oq = getelementptr inbounds nuw i8, ptr %i.lq, i64 72
  %i.or = load float, ptr %i.oq, align 4, !tbaa !47
  %i.os = getelementptr inbounds nuw i8, ptr %i.lq, i64 64
  %i.ot = load float, ptr %i.os, align 4, !tbaa !47
  %i.ou = fsub float %i.or, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %i.lq, i64 60
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !47
  %i.ox = fadd float %i.ou, %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.lq, i64 68
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !47
  %i.pa = fsub float %i.ox, %i.oz
  %i.pb = fpext float %i.pa to double
  %i.pc = fmul double %i.pb, 2.500000e-01
  %i.pd = fmul double %i.op, %i.pc
  %i.pe = extractelement <2 x double> %i.om, i64 1
  %i.pf = extractelement <2 x double> %i.md, i64 0
  %i.pg = call double @llvm.fmuladd.f64(double %i.pf, double %i.pe, double %i.pd)
  %i.ph = call double @llvm.fmuladd.f64(double %i.pg, double -2.000000e+00, double %i.oo)
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.mo) ; 2 uses
  %i.pi = load float, ptr %i.z, align 8, !tbaa !250
  %i.pj = fpext float %i.pi to double
  %i.pk = fmul double %i.ph, %i.pj
  %i.pl = fmul double %sqrt.i.i, %sqrt.i.i
  %i.pm = fmul double %i.pl, 2.000000e+00
  %i.pn = fdiv double %i.pk, %i.pm
  %i.po = fptrunc double %i.pn to float
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit: ; preds = %bb.an, %bb.ao
  %i.pp = phi float [ %i.po, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.pq = call float @llvm.fmuladd.f32(float %i.u, float %i.pp, float %i.lp)
  %i.pr = fmul float %.0110, %i.pq
  %i.ps = call float @llvm.fmuladd.f32(float %.0, float %i.lp, float %i.pr)
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ln
  store float %i.ps, ptr %i.pt, align 4, !tbaa !47
  br label %bb.aq

bb.ap:                                            ; preds = %.invoke, %.noexc36, %.noexc35, %bb.aj, %.lr.ph
  %i.pu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.at

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit
  %i.pv = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.ll, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit ]
  %i.pw = load ptr, ptr %i.bi, align 8, !tbaa !244 ; 8 uses
  %i.px = add i32 %i.pv, 1                        ; 4 uses
  %i.py = lshr i32 %i.px, 6                       ; 3 uses
  %i.pz = icmp ugt i32 %i.px, 511
  br i1 %i.pz, label %._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qa = and i32 %i.px, 63
  %i.qb = zext nneg i32 %i.py to i64              ; 8 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.qb
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !209 ; 2 uses
  %i.qe = zext nneg i32 %i.qa to i64              ; 2 uses
  %i.qf = shl nuw i64 1, %i.qe
  %i.qg = and i64 %i.qd, %i.qf
  %.not.i.i.i.i = icmp eq i64 %i.qg, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.qh = shl nsw i64 -1, %i.qe
  %i.qi = and i64 %i.qd, %i.qh                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.qi, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i40.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i40.preheader:                       ; preds = %bb.as
  %exitcond.not.i.i.i.i183 = icmp eq i32 %i.py, 7
  br i1 %exitcond.not.i.i.i.i183, label %._crit_edge, label %.lr.ph185

.lr.ph.i.i.i.i40:                                 ; preds = %.lr.ph185
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph185.1

.lr.ph185.1:                                      ; preds = %.lr.ph.i.i.i.i40
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.qb, 2 ; 3 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.next.i.i.i.i.1
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.qk, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i40.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.1:                               ; preds = %.lr.ph185.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph185.2

.lr.ph185.2:                                      ; preds = %.lr.ph.i.i.i.i40.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.qb, 3 ; 3 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.next.i.i.i.i.2
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.qm, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i40.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.2:                               ; preds = %.lr.ph185.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph185.3

.lr.ph185.3:                                      ; preds = %.lr.ph.i.i.i.i40.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.qb, 4 ; 3 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.next.i.i.i.i.3
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.qo, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i40.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.3:                               ; preds = %.lr.ph185.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph185.4

.lr.ph185.4:                                      ; preds = %.lr.ph.i.i.i.i40.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.qb, 5 ; 3 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.next.i.i.i.i.4
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.qq, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i40.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.4:                               ; preds = %.lr.ph185.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph185.5

.lr.ph185.5:                                      ; preds = %.lr.ph.i.i.i.i40.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.qb, 6 ; 3 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.next.i.i.i.i.5
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.qs, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i40.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.5:                               ; preds = %.lr.ph185.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph185.6

.lr.ph185.6:                                      ; preds = %.lr.ph.i.i.i.i40.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.qb, 7 ; 2 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.next.i.i.i.i.6
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.qu, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph185:                                        ; preds = %.lr.ph.i.i.i.i40.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.qb, 1 ; 3 uses
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %indvars.iv.next.i.i.i.i
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.qw, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i40, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph185.6, %.lr.ph185.5, %.lr.ph185.4, %.lr.ph185.3, %.lr.ph185.2, %.lr.ph185.1, %.lr.ph185
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph185 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph185.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph185.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph185.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph185.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph185.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph185.6 ]
  %.lcssa194 = phi i64 [ %i.qw, %.lr.ph185 ], [ %i.qk, %.lr.ph185.1 ], [ %i.qm, %.lr.ph185.2 ], [ %i.qo, %.lr.ph185.3 ], [ %i.qq, %.lr.ph185.4 ], [ %i.qs, %.lr.ph185.5 ], [ %i.qu, %.lr.ph185.6 ]
  %i.qx = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.as
  %.016.lcssa.i.i.i.i = phi i32 [ %i.py, %bb.as ], [ %i.qx, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.qi, %bb.as ], [ %.lcssa194, %.critedge.loopexit.i.i.i.i ]
  %i.qy = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.qz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.ra = trunc nuw nsw i64 %i.qz to i32
  %i.rb = or disjoint i32 %i.qy, %i.ra
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.ar, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.rb, %.critedge.i.i.i.i ], [ %i.px, %bb.ar ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.av, align 8, !tbaa !201
  %.not111.a = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not111.a, label %._crit_edge, label %.lr.ph

bb.at:                                            ; preds = %.loopexit115, %.loopexit.split-lp116, %bb.ap
  %.pn25 = phi { ptr, i32 } [ %i.pu, %bb.ap ], [ %lpad.loopexit117, %.loopexit115 ], [ %lpad.loopexit.split-lp118, %.loopexit.split-lp116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

.body:                                            ; preds = %bb.q, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.at
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.cr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn25, %bb.at ], [ %i.dd, %bb.q ]
  call void @_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS1_10BoxSamplerEfED2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #18
  br label %bb.au

bb.au:                                            ; preds = %.body, %bb.h
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %.body ], [ %i.bp, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body56

bb.av:                                            ; preds = %_ZN7openvdb5v13_05tools15LevelSetTrackerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !132 ; 2 uses
  %i.re = load i64, ptr %1, align 8, !tbaa !131
  %i.rf = icmp ult i64 %i.rd, %i.re
  br i1 %i.rf, label %.lr.ph133, label %.loopexit113

.lr.ph133:                                        ; preds = %bb.av
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.rj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph133, %._crit_edge130
  %.sroa.7.0131 = phi i64 [ %i.rd, %.lr.ph133 ], [ %i.sw, %._crit_edge130 ] ; 3 uses
  %i.rm = load ptr, ptr %i.rg, align 8, !tbaa !193, !nonnull !72, !align !194 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 56
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !195
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !98
  %i.rr = mul i64 %i.rq, %.sroa.7.0131
  %i.rs = getelementptr [16 x i8], ptr %i.ro, i64 %i.rr ; 6 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ru = load atomic i32, ptr %i.rt seq_cst, align 4
  %.not.i.i43 = icmp eq i32 %i.ru, 0
  br i1 %.not.i.i43, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.rs)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44 unwind label %bb.be

_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44: ; preds = %bb.ax, %bb.aw
  %i.rv = load ptr, ptr %i.rs, align 8, !tbaa !69 ; 2 uses
  %i.rw = icmp eq ptr %i.rv, null
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter17meanCurvatureImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %i.sm = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26
          to label %bb.bc unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.sm, ptr %i.rs, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47: ; preds = %bb.bb
  %i.sn = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.rx release, align 1
  br label %.body56

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46: ; preds = %bb.bc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45
  %i.so = phi ptr [ %i.sm, %bb.bc ], [ %i.sk, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45 ]
  store atomic i8 0, ptr %i.rx release, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46
  %i.sp = phi ptr [ %i.so, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46 ], [ %i.rv, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.sq = load ptr, ptr %i.rg, align 8, !tbaa !193, !nonnull !72, !align !194
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !197
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %.sroa.7.0131
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !198
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.su)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.bd
  %i.sv = load i32, ptr %i.rh, align 8, !tbaa !201
  %.not112128 = icmp eq i32 %i.sv, 512
  br i1 %.not112128, label %._crit_edge130, label %.lr.ph129

._crit_edge130:                                   ; preds = %.lr.ph188.6, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81, %.lr.ph.i.i.i.i75.preheader, %.lr.ph.i.i.i.i75, %.lr.ph.i.i.i.i75.1, %.lr.ph.i.i.i.i75.2, %.lr.ph.i.i.i.i75.3, %.lr.ph.i.i.i.i75.4, %.lr.ph.i.i.i.i75.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.sw = add nuw i64 %.sroa.7.0131, 1            ; 2 uses
  %i.sx = load i64, ptr %1, align 8, !tbaa !131
  %i.sy = icmp ult i64 %i.sw, %i.sx
  br i1 %i.sy, label %bb.aw, label %.loopexit113, !llvm.loop !574

bb.be:                                            ; preds = %bb.ax
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.loopexit:                                        ; preds = %.lr.ph129, %.noexc64
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body56

.lr.ph129:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81
  %i.ta = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc64 unwind label %.loopexit ; 3 uses

.noexc64:                                         ; preds = %.lr.ph129
  %i.tb = load i32, ptr %i.rh, align 8, !tbaa !201 ; 4 uses
  %i.tc = lshr i32 %i.tb, 6
  %i.td = lshr i32 %i.tb, 3
  %i.te = and i32 %i.td, 7
  %i.tf = and i32 %i.tb, 7
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ta, i64 80
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !124
  %i.ti = add nsw i32 %i.th, %i.tc
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ta, i64 84
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !124
  %i.tl = add nsw i32 %i.tk, %i.te
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ta, i64 88
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !124
  %i.to = add nsw i32 %i.tn, %i.tf
  %.sroa.2.0.insert.ext.i.i.i.i59 = zext i32 %i.tl to i64
  %.sroa.2.0.insert.shift.i.i.i.i60 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i59, 32
  %.sroa.0.0.insert.ext.i9.i.i.i61 = zext i32 %i.ti to i64
  %.sroa.0.0.insert.insert.i10.i.i.i62 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i60, %.sroa.0.0.insert.ext.i9.i.i.i61
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i62, ptr %i.ri, align 8
  store i32 %i.to, ptr %.sroa.4.0..sroa_idx.i63, align 8, !tbaa !69
  %i.tp = load ptr, ptr %i.rj, align 8, !tbaa !238
  %i.tq = zext i32 %i.tb to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.tq
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !47
  %i.tt = load ptr, ptr %i.rk, align 8, !tbaa !240
  store float %i.ts, ptr %i.tt, align 4, !tbaa !47
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.ri)
          to label %bb.bg unwind label %.loopexit

bb.bg:                                            ; preds = %.noexc64
  %i.tu = load i32, ptr %i.rh, align 8, !tbaa !201 ; 2 uses
  %i.tv = load ptr, ptr %i.rj, align 8, !tbaa !238
  %i.tw = zext i32 %i.tu to i64                   ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tv, i64 %i.tw
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !47
  %i.tz = load ptr, ptr %i.rk, align 8, !tbaa !240 ; 17 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  %i.uc = load <4 x float>, ptr %i.ub, align 4, !tbaa !47 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !47 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 20
  %i.ug = load <4 x float>, ptr %i.ua, align 4, !tbaa !47 ; 2 uses
  %i.uh = load float, ptr %i.uf, align 4, !tbaa !47 ; 2 uses
  %i.ui = shufflevector <4 x float> %i.ug, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.uj = shufflevector <4 x float> %i.uc, <4 x float> %i.ug, <2 x i32> <i32 0, i32 5>
  %i.uk = fsub <2 x float> %i.ui, %i.uj
  %i.ul = fpext <2 x float> %i.uk to <2 x double>
  %i.um = fmul <2 x double> %i.ul, <double 5.000000e-01, double 1.000000e+00> ; 3 uses
  %i.un = fsub float %i.ue, %i.uh
  %i.uo = fpext float %i.un to double
  %i.up = fmul double %i.uo, 5.000000e-01         ; 4 uses
  %i.uq = insertelement <2 x double> %i.um, double 5.000000e-01, i64 1
  %i.ur = fmul <2 x double> %i.um, %i.uq          ; 3 uses
  %i.us = extractelement <2 x double> %i.ur, i64 1 ; 3 uses
  %i.ut = fmul double %i.us, %i.us                ; 2 uses
  %i.uu = fmul double %i.up, %i.up                ; 2 uses
  %i.uv = extractelement <2 x double> %i.ur, i64 0
  %i.uw = fadd double %i.uv, %i.ut
  %i.ux = fadd double %i.uw, %i.uu                ; 2 uses
  %i.uy = fcmp ugt double %i.ux, 1.000000e-15
  br i1 %i.uy, label %bb.bh, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68

bb.bh:                                            ; preds = %bb.bg
  %i.uz = shufflevector <4 x float> %i.uc, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.va = load float, ptr %i.tz, align 4, !tbaa !47 ; 2 uses
  %i.vb = insertelement <2 x float> poison, float %i.va, i64 0
  %i.vc = shufflevector <2 x float> %i.vb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vd = shufflevector <4 x float> %i.uc, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ve = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vc, <2 x float> splat (float -2.000000e+00), <2 x float> %i.vd)
  %i.vf = fadd <2 x float> %i.uz, %i.ve
  %i.vg = fpext <2 x float> %i.vf to <2 x double> ; 3 uses
  %i.vh = extractelement <2 x double> %i.vg, i64 1
  %i.vi = extractelement <2 x double> %i.vg, i64 0
  %i.vj = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.vg)
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !47
  %i.vm = getelementptr inbounds nuw i8, ptr %i.tz, i64 32
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !47
  %i.vo = fsub float %i.vl, %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tz, i64 28
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !47
  %i.vr = fadd float %i.vo, %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tz, i64 36
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tz, i64 56
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !47
  %i.vv = getelementptr inbounds nuw i8, ptr %i.tz, i64 48
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !47
  %i.vx = fsub float %i.vu, %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.tz, i64 44
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !47
  %i.wa = fadd float %i.vx, %i.vz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.tz, i64 52
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !47
  %i.wd = fsub float %i.wa, %i.wc
  %i.we = call float @llvm.fmuladd.f32(float %i.va, float -2.000000e+00, float %i.ue)
  %i.wf = fadd float %i.uh, %i.we
  %i.wg = fpext float %i.wf to double             ; 2 uses
  %i.wh = fadd double %i.vh, %i.wg
  %i.wi = fadd double %i.vi, %i.wg
  %i.wj = fmul double %i.ut, %i.wi
  %i.wk = load float, ptr %i.vs, align 4, !tbaa !47
  %i.wl = fsub float %i.vr, %i.wk
  %i.wm = fpext float %i.wl to double
  %i.wn = fmul double %i.wm, 2.500000e-01
  %i.wo = fpext float %i.wd to double
  %i.wp = fmul double %i.wo, 2.500000e-01
  %i.wq = fmul double %i.up, %i.wp
  %i.wr = insertelement <2 x double> poison, double %i.wh, i64 0
  %i.ws = insertelement <2 x double> %i.wr, double %i.wn, i64 1
  %i.wt = insertelement <2 x double> poison, double %i.wj, i64 0
  %i.wu = insertelement <2 x double> %i.wt, double %i.wq, i64 1
  %i.wv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ur, <2 x double> %i.ws, <2 x double> %i.wu) ; 2 uses
  %i.ww = extractelement <2 x double> %i.wv, i64 0
  %i.wx = call double @llvm.fmuladd.f64(double %i.uu, double %i.vj, double %i.ww)
  %i.wy = fmul double %i.us, %i.up
  %i.wz = getelementptr inbounds nuw i8, ptr %i.tz, i64 72
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !47
  %i.xb = getelementptr inbounds nuw i8, ptr %i.tz, i64 64
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !47
  %i.xd = fsub float %i.xa, %i.xc
  %i.xe = getelementptr inbounds nuw i8, ptr %i.tz, i64 60
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !47
  %i.xg = fadd float %i.xd, %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.tz, i64 68
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !47
  %i.xj = fsub float %i.xg, %i.xi
  %i.xk = fpext float %i.xj to double
  %i.xl = fmul double %i.xk, 2.500000e-01
  %i.xm = fmul double %i.wy, %i.xl
  %i.xn = extractelement <2 x double> %i.wv, i64 1
  %i.xo = extractelement <2 x double> %i.um, i64 0
  %i.xp = call double @llvm.fmuladd.f64(double %i.xo, double %i.xn, double %i.xm)
  %i.xq = call double @llvm.fmuladd.f64(double %i.xp, double -2.000000e+00, double %i.wx)
  %sqrt.i.i67 = call double @llvm.sqrt.f64(double %i.ux) ; 2 uses
  %i.xr = load float, ptr %i.z, align 8, !tbaa !250
  %i.xs = fpext float %i.xr to double
  %i.xt = fmul double %i.xq, %i.xs
  %i.xu = fmul double %sqrt.i.i67, %sqrt.i.i67
  %i.xv = fmul double %i.xu, 2.000000e+00
  %i.xw = fdiv double %i.xt, %i.xv
  %i.xx = fptrunc double %i.xw to float
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68: ; preds = %bb.bg, %bb.bh
  %i.xy = phi float [ %i.xx, %bb.bh ], [ 0.000000e+00, %bb.bg ]
  %i.xz = call float @llvm.fmuladd.f32(float %i.u, float %i.xy, float %i.ty)
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.tw
  store float %i.xz, ptr %i.ya, align 4, !tbaa !47
  %i.yb = load ptr, ptr %i.rl, align 8, !tbaa !244 ; 8 uses
  %i.yc = add i32 %i.tu, 1                        ; 4 uses
  %i.yd = lshr i32 %i.yc, 6                       ; 3 uses
  %i.ye = icmp ugt i32 %i.yc, 511
  br i1 %i.ye, label %._crit_edge130, label %bb.bi

bb.bi:                                            ; preds = %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68
  %i.yf = and i32 %i.yc, 63
  %i.yg = zext nneg i32 %i.yd to i64              ; 8 uses
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.yg
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !209 ; 2 uses
  %i.yj = zext nneg i32 %i.yf to i64              ; 2 uses
  %i.yk = shl nuw i64 1, %i.yj
  %i.yl = and i64 %i.yi, %i.yk
  %.not.i.i.i.i69 = icmp eq i64 %i.yl, 0
  br i1 %.not.i.i.i.i69, label %bb.bj, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81

bb.bj:                                            ; preds = %bb.bi
  %i.ym = shl nsw i64 -1, %i.yj
  %i.yn = and i64 %i.yi, %i.ym                    ; 2 uses
  %.not2226.i.i.i.i71 = icmp eq i64 %i.yn, 0
  br i1 %.not2226.i.i.i.i71, label %.lr.ph.i.i.i.i75.preheader, label %.critedge.i.i.i.i72

.lr.ph.i.i.i.i75.preheader:                       ; preds = %bb.bj
  %exitcond.not.i.i.i.i77186 = icmp eq i32 %i.yd, 7
  br i1 %exitcond.not.i.i.i.i77186, label %._crit_edge130, label %.lr.ph188

.lr.ph.i.i.i.i75:                                 ; preds = %.lr.ph188
  %exitcond.not.i.i.i.i77 = icmp eq i64 %indvars.iv.next.i.i.i.i78, 7
  br i1 %exitcond.not.i.i.i.i77, label %._crit_edge130, label %.lr.ph188.1

.lr.ph188.1:                                      ; preds = %.lr.ph.i.i.i.i75
  %indvars.iv.next.i.i.i.i78.1 = add nuw nsw i64 %i.yg, 2 ; 3 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv.next.i.i.i.i78.1
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.1 = icmp eq i64 %i.yp, 0
  br i1 %.not22.i.i.i.i79.1, label %.lr.ph.i.i.i.i75.1, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.1:                               ; preds = %.lr.ph188.1
  %exitcond.not.i.i.i.i77.1 = icmp eq i64 %indvars.iv.next.i.i.i.i78.1, 7
  br i1 %exitcond.not.i.i.i.i77.1, label %._crit_edge130, label %.lr.ph188.2

.lr.ph188.2:                                      ; preds = %.lr.ph.i.i.i.i75.1
  %indvars.iv.next.i.i.i.i78.2 = add nuw nsw i64 %i.yg, 3 ; 3 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv.next.i.i.i.i78.2
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.2 = icmp eq i64 %i.yr, 0
  br i1 %.not22.i.i.i.i79.2, label %.lr.ph.i.i.i.i75.2, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.2:                               ; preds = %.lr.ph188.2
  %exitcond.not.i.i.i.i77.2 = icmp eq i64 %indvars.iv.next.i.i.i.i78.2, 7
  br i1 %exitcond.not.i.i.i.i77.2, label %._crit_edge130, label %.lr.ph188.3

.lr.ph188.3:                                      ; preds = %.lr.ph.i.i.i.i75.2
  %indvars.iv.next.i.i.i.i78.3 = add nuw nsw i64 %i.yg, 4 ; 3 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv.next.i.i.i.i78.3
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.3 = icmp eq i64 %i.yt, 0
  br i1 %.not22.i.i.i.i79.3, label %.lr.ph.i.i.i.i75.3, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.3:                               ; preds = %.lr.ph188.3
  %exitcond.not.i.i.i.i77.3 = icmp eq i64 %indvars.iv.next.i.i.i.i78.3, 7
  br i1 %exitcond.not.i.i.i.i77.3, label %._crit_edge130, label %.lr.ph188.4

.lr.ph188.4:                                      ; preds = %.lr.ph.i.i.i.i75.3
  %indvars.iv.next.i.i.i.i78.4 = add nuw nsw i64 %i.yg, 5 ; 3 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv.next.i.i.i.i78.4
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.4 = icmp eq i64 %i.yv, 0
  br i1 %.not22.i.i.i.i79.4, label %.lr.ph.i.i.i.i75.4, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.4:                               ; preds = %.lr.ph188.4
  %exitcond.not.i.i.i.i77.4 = icmp eq i64 %indvars.iv.next.i.i.i.i78.4, 7
  br i1 %exitcond.not.i.i.i.i77.4, label %._crit_edge130, label %.lr.ph188.5

.lr.ph188.5:                                      ; preds = %.lr.ph.i.i.i.i75.4
  %indvars.iv.next.i.i.i.i78.5 = add nuw nsw i64 %i.yg, 6 ; 3 uses
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv.next.i.i.i.i78.5
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.5 = icmp eq i64 %i.yx, 0
  br i1 %.not22.i.i.i.i79.5, label %.lr.ph.i.i.i.i75.5, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.5:                               ; preds = %.lr.ph188.5
  %exitcond.not.i.i.i.i77.5 = icmp eq i64 %indvars.iv.next.i.i.i.i78.5, 7
  br i1 %exitcond.not.i.i.i.i77.5, label %._crit_edge130, label %.lr.ph188.6

.lr.ph188.6:                                      ; preds = %.lr.ph.i.i.i.i75.5
  %indvars.iv.next.i.i.i.i78.6 = add nuw nsw i64 %i.yg, 7 ; 2 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv.next.i.i.i.i78.6
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.6 = icmp eq i64 %i.yz, 0
  br i1 %.not22.i.i.i.i79.6, label %._crit_edge130, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph188:                                        ; preds = %.lr.ph.i.i.i.i75.preheader
  %indvars.iv.next.i.i.i.i78 = add nuw nsw i64 %i.yg, 1 ; 3 uses
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv.next.i.i.i.i78
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79 = icmp eq i64 %i.zb, 0
  br i1 %.not22.i.i.i.i79, label %.lr.ph.i.i.i.i75, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.critedge.loopexit.i.i.i.i80:                     ; preds = %.lr.ph188.6, %.lr.ph188.5, %.lr.ph188.4, %.lr.ph188.3, %.lr.ph188.2, %.lr.ph188.1, %.lr.ph188
  %indvars.iv.next.i.i.i.i78.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i78, %.lr.ph188 ], [ %indvars.iv.next.i.i.i.i78.1, %.lr.ph188.1 ], [ %indvars.iv.next.i.i.i.i78.2, %.lr.ph188.2 ], [ %indvars.iv.next.i.i.i.i78.3, %.lr.ph188.3 ], [ %indvars.iv.next.i.i.i.i78.4, %.lr.ph188.4 ], [ %indvars.iv.next.i.i.i.i78.5, %.lr.ph188.5 ], [ %indvars.iv.next.i.i.i.i78.6, %.lr.ph188.6 ]
  %.lcssa = phi i64 [ %i.zb, %.lr.ph188 ], [ %i.yp, %.lr.ph188.1 ], [ %i.yr, %.lr.ph188.2 ], [ %i.yt, %.lr.ph188.3 ], [ %i.yv, %.lr.ph188.4 ], [ %i.yx, %.lr.ph188.5 ], [ %i.yz, %.lr.ph188.6 ]
  %i.zc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i78.lcssa to i32
  br label %.critedge.i.i.i.i72

.critedge.i.i.i.i72:                              ; preds = %.critedge.loopexit.i.i.i.i80, %bb.bj
  %.016.lcssa.i.i.i.i73 = phi i32 [ %i.yd, %bb.bj ], [ %i.zc, %.critedge.loopexit.i.i.i.i80 ]
  %.0.lcssa.i.i.i.i74 = phi i64 [ %i.yn, %bb.bj ], [ %.lcssa, %.critedge.loopexit.i.i.i.i80 ]
  %i.zd = shl nuw nsw i32 %.016.lcssa.i.i.i.i73, 6
  %i.ze = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i74, i1 true)
  %i.zf = trunc nuw nsw i64 %i.ze to i32
  %i.zg = or disjoint i32 %i.zd, %i.zf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81: ; preds = %bb.bi, %.critedge.i.i.i.i72
  %.118.i.i.i.i70 = phi i32 [ %i.zg, %.critedge.i.i.i.i72 ], [ %i.yc, %bb.bi ] ; 2 uses
  store i32 %.118.i.i.i.i70, ptr %i.rh, align 8, !tbaa !201
  %.not112 = icmp eq i32 %.118.i.i.i.i70, 512
  br i1 %.not112, label %._crit_edge130, label %.lr.ph129

.loopexit113:                                     ; preds = %._crit_edge130, %bb.av, %_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS1_10BoxSamplerEfED2Ev.exit
  %i.zh = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i.i82, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %.loopexit113
  %i.zj = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !245
  %i.zl = ptrtoint ptr %i.zk to i64
  %i.zm = ptrtoint ptr %i.zi to i64
  %i.zn = sub i64 %i.zl, %i.zm
  call void @_ZdlPvm(ptr noundef nonnull %i.zi, i64 noundef %i.zn) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.bk, %.loopexit113
  %i.zo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.zo, align 8, !tbaa !45
  %i.zp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !189 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.zq, null
  br i1 %.not.i.i83, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.zo, ptr %i.a, align 8, !tbaa !191
  %i.zs = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.zr, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i84 unwind label %bb.bm, !inline_history !192 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i84: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit

bb.bm:                                            ; preds = %bb.bl
  %i.zt = landingpad { ptr, i32 }
          catch ptr null
  %i.zu = extractvalue { ptr, i32 } %i.zt, 0
  call void @__clang_call_terminate(ptr %i.zu) #27, !inline_history !192
  unreachable

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

.body56:                                          ; preds = %bb.bf, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47, %bb.be, %bb.au
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %bb.au ], [ %i.sn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47 ], [ %lpad.phi, %bb.bf ], [ %i.sz, %bb.be ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.openvdb::v13_0::math::CurvatureStencil", align 8 ; 19 uses
  %6 = alloca %"class.openvdb::v13_0::tools::AlphaMask", align 8 ; 15 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter", align 8 ; 9 uses
  %8 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter", align 8 ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !69
  %i.jh = and i32 %i.dp, -128
  %i.ji = and i32 %i.ds, -128
  %.sroa.2.0.insert.ext.i.i.i107 = zext i32 %i.jh to i64
  %.sroa.2.0.insert.shift.i.i.i108 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i107, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.et to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i108, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.eu, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 44
  store i32 %i.ji, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !69
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !210
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i, %bb.x, %bb.ah
  %.in = phi ptr [ %i.jf, %bb.ah ], [ %i.gm, %bb.x ], [ %i.ff, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i ]
  %i.jk = load ptr, ptr %.in, align 8, !tbaa !69
  %i.jl = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.jk, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(96) %i.dv)
          to label %.noexc46 unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc46

.noexc46:                                         ; preds = %.invoke, %bb.w, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i, %bb.ai, %bb.ag, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.es, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i ], [ %i.jf, %bb.ag ], [ %i.jl, %.invoke ], [ %i.gm, %bb.w ], [ %i.ig, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.jm, %bb.ai ]
  %i.jn = load float, ptr %.1.i.i, align 4, !tbaa !47
  br label %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i

bb.aj:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.jo = load ptr, ptr %i.ay, align 8, !tbaa !223
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !228, !noalias !588 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !588
  %i.jq = sitofp i32 %i.dm to double
  %i.jr = sitofp i32 %i.dp to double
  %i.js = sitofp i32 %i.ds to double
  store double %i.jq, ptr %2, align 8, !tbaa !113, !alias.scope !589, !noalias !588
  store double %i.jr, ptr %i.az, align 8, !tbaa !113, !alias.scope !589, !noalias !588
  store double %i.js, ptr %i.ba, align 8, !tbaa !113, !alias.scope !589, !noalias !588
  %i.jt = load ptr, ptr %i.jp, align 8, !tbaa !45, !noalias !588
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !588
  invoke void %i.jv(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc47 unwind label %bb.ap, !inline_history !6

.noexc47:                                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !588
  %i.jw = load ptr, ptr %i.aw, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.jx = load ptr, ptr %i.bb, align 8, !tbaa !229
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !228, !noalias !590 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !45, !noalias !590
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !590
  invoke void %i.kb(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc48 unwind label %bb.ap, !inline_history !6

.noexc48:                                         ; preds = %.noexc47
  %i.kc = invoke noundef float @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEENT_9ValueTypeERKSJ_RKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(96) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc49 unwind label %bb.ap

.noexc49:                                         ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i: ; preds = %.noexc49, %.noexc46
  %.0.i.i = phi float [ %i.jn, %.noexc46 ], [ %i.kc, %.noexc49 ]
  %i.kd = load float, ptr %i.bc, align 8, !tbaa !231
  %i.ke = fsub float %.0.i.i, %i.kd
  %i.kf = load float, ptr %i.bd, align 4, !tbaa !232
  %i.kg = fmul float %i.ke, %i.kf                 ; 5 uses
  %i.kh = fcmp ogt float %i.kg, 0.000000e+00
  br i1 %i.kh, label %bb.ak, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.ak:                                            ; preds = %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.ki = fcmp olt float %i.kg, 1.000000e+00
  br i1 %i.ki, label %bb.al, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.kj = call nnan float @llvm.fmuladd.f32(float %i.kg, float -2.000000e+00, float 3.000000e+00)
  %i.kk = fmul nnan float %i.kg, %i.kj
  %i.kl = fmul nnan float %i.kg, %i.kk
  br label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i: ; preds = %bb.al, %bb.ak, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.km = phi float [ 1.000000e+00, %bb.ak ], [ %i.kl, %bb.al ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i ] ; 3 uses
  %i.kn = fsub float 1.000000e+00, %i.km          ; 2 uses
  %i.ko = load i8, ptr %i.be, align 8, !tbaa !233, !range !71, !noundef !72
  %i.kp = trunc nuw i8 %i.ko to i1                ; 2 uses
  %.0136 = select i1 %i.kp, float %i.kn, float %i.km ; 2 uses
  %.0 = select i1 %i.kp, float %i.km, float %i.kn
  %i.kq = fcmp ogt float %.0136, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.kq, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.av, align 8, !tbaa !201
  br label %bb.aq

bb.am:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kr = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc50 unwind label %.loopexit159 ; 3 uses

.noexc50:                                         ; preds = %bb.am
  %i.ks = load i32, ptr %i.av, align 8, !tbaa !201 ; 4 uses
  %i.kt = lshr i32 %i.ks, 6
  %i.ku = lshr i32 %i.ks, 3
  %i.kv = and i32 %i.ku, 7
  %i.kw = and i32 %i.ks, 7
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 80
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !124
  %i.kz = add nsw i32 %i.ky, %i.kt
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 84
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !124
  %i.lc = add nsw i32 %i.lb, %i.kv
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kr, i64 88
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !124
  %i.lf = add nsw i32 %i.le, %i.kw
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.lc to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.kz to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.bf, align 8
  store i32 %i.lf, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !69
  %i.lg = load ptr, ptr %i.bg, align 8, !tbaa !238
  %i.lh = zext i32 %i.ks to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lh
  %i.lj = load float, ptr %i.li, align 4, !tbaa !47
  %i.lk = load ptr, ptr %i.bh, align 8, !tbaa !240
  store float %i.lj, ptr %i.lk, align 4, !tbaa !47
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.bf)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit unwind label %.loopexit159

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc50
  %i.ll = load ptr, ptr %i.bh, align 8, !tbaa !240 ; 19 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 12
  %i.lq = load <4 x float>, ptr %i.ln, align 4, !tbaa !47 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 20
  %i.ls = load float, ptr %i.lo, align 4, !tbaa !47
  %i.lt = load float, ptr %i.lp, align 4, !tbaa !47
  %i.lu = load float, ptr %i.lm, align 4, !tbaa !47
  %i.lv = fsub float %i.ls, %i.lt
  %i.lw = fpext float %i.lv to double
  %i.lx = fmul double %i.lw, 5.000000e-01         ; 5 uses
  %i.ly = fmul double %i.lx, %i.lx                ; 3 uses
  %i.lz = load <2 x float>, ptr %i.lr, align 4, !tbaa !47 ; 3 uses
  %i.ma = insertelement <2 x float> %i.lz, float %i.lu, i64 0
  %i.mb = shufflevector <4 x float> %i.lq, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> %i.lz, <2 x i32> <i32 0, i32 2>
  %i.md = fsub <2 x float> %i.ma, %i.mc
  %i.me = fpext <2 x float> %i.md to <2 x double>
  %i.mf = fmul <2 x double> %i.me, splat (double 5.000000e-01) ; 6 uses
  %i.mg = fmul <2 x double> %i.mf, %i.mf          ; 3 uses
  %i.mh = extractelement <2 x double> %i.mg, i64 0 ; 2 uses
  %i.mi = fadd double %i.mh, %i.ly
  %i.mj = extractelement <2 x double> %i.mg, i64 1 ; 3 uses
  %i.mk = fadd double %i.mi, %i.mj                ; 2 uses
  %i.ml = fcmp ugt double %i.mk, 1.000000e-15
  br i1 %i.ml, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !47
  %i.mo = load float, ptr %i.ll, align 4, !tbaa !47 ; 2 uses
  %i.mp = insertelement <2 x float> poison, float %i.mo, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mr = shufflevector <4 x float> %i.lq, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ms = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> splat (float -2.000000e+00), <2 x float> %i.mr)
  %i.mt = fadd <2 x float> %i.mb, %i.ms
  %i.mu = fpext <2 x float> %i.mt to <2 x double> ; 6 uses
  %i.mv = call float @llvm.fmuladd.f32(float %i.mo, float -2.000000e+00, float %i.mn)
  %i.mw = extractelement <2 x float> %i.lz, i64 0
  %i.mx = fadd float %i.mw, %i.mv
  %i.my = fpext float %i.mx to double             ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.na = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ll, i64 28
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ll, i64 36
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ll, i64 48
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ll, i64 44
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ll, i64 52
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ll, i64 72
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ll, i64 60
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ll, i64 68
  %i.nl = extractelement <2 x double> %i.mu, i64 1
  %i.nm = extractelement <2 x double> %i.mu, i64 0 ; 2 uses
  %i.nn = extractelement <2 x double> %i.mf, i64 0 ; 2 uses
  %i.no = extractelement <2 x double> %i.mf, i64 1 ; 2 uses
  %i.np = fmul double %i.nn, %i.no
  %i.nq = fmul double %i.nn, %i.lx
  %i.nr = fneg double %i.my
  %sqrt.i = call double @llvm.sqrt.f64(double %i.mk) ; 3 uses
  %i.ns = load <2 x float>, ptr %i.x, align 4, !tbaa !47
  %i.nt = fpext <2 x float> %i.ns to <2 x double> ; 2 uses
  %i.nu = load float, ptr %i.mz, align 4, !tbaa !47 ; 2 uses
  %i.nv = load float, ptr %i.na, align 4, !tbaa !47 ; 2 uses
  %i.nw = load float, ptr %i.nb, align 4, !tbaa !47 ; 2 uses
  %i.nx = load float, ptr %i.nc, align 4, !tbaa !47 ; 2 uses
  %i.ny = load float, ptr %i.nd, align 4, !tbaa !47
  %i.nz = load float, ptr %i.ne, align 4, !tbaa !47
  %i.oa = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.ob = insertelement <2 x float> %i.oa, float %i.nu, i64 1
  %i.oc = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.od = insertelement <2 x float> %i.oc, float %i.nv, i64 1
  %i.oe = fsub <2 x float> %i.ob, %i.od
  %i.of = load float, ptr %i.nf, align 4, !tbaa !47
  %i.og = load float, ptr %i.nh, align 4, !tbaa !47
  %i.oh = load float, ptr %i.ni, align 4, !tbaa !47
  %i.oi = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.oj = insertelement <2 x float> %i.oi, float %i.og, i64 1
  %i.ok = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.ol = insertelement <2 x float> %i.ok, float %i.oh, i64 1
  %i.om = fsub <2 x float> %i.oj, %i.ol
  %i.on = insertelement <2 x float> poison, float %i.of, i64 0
  %i.oo = insertelement <2 x float> %i.on, float %i.nw, i64 1
  %i.op = fadd <2 x float> %i.oe, %i.oo
  %i.oq = load float, ptr %i.ng, align 4, !tbaa !47
  %i.or = load float, ptr %i.nj, align 4, !tbaa !47
  %i.os = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.ot = insertelement <2 x float> %i.os, float %i.or, i64 1
  %i.ou = fadd <2 x float> %i.om, %i.ot
  %i.ov = insertelement <2 x float> poison, float %i.oq, i64 0
  %i.ow = insertelement <2 x float> %i.ov, float %i.nx, i64 1
  %i.ox = fsub <2 x float> %i.op, %i.ow
  %i.oy = load float, ptr %i.nk, align 4, !tbaa !47
  %i.oz = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.pa = insertelement <2 x float> %i.oz, float %i.oy, i64 1
  %i.pb = fsub <2 x float> %i.ou, %i.pa
  %i.pc = fpext <2 x float> %i.ox to <2 x double>
  %i.pd = fpext <2 x float> %i.pb to <2 x double>
  %i.pe = fmul <2 x double> %i.pc, splat (double 2.500000e-01) ; 4 uses
  %i.pf = fmul <2 x double> %i.pd, splat (double 2.500000e-01) ; 6 uses
  %i.pg = insertelement <2 x double> poison, double %i.my, i64 0
  %i.ph = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pi = fadd <2 x double> %i.ph, %i.mu          ; 2 uses
  %i.pj = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.mu)
  %i.pk = fmul double %i.lx, %i.no                ; 2 uses
  %i.pl = extractelement <2 x double> %i.pf, i64 1 ; 2 uses
  %i.pm = fmul double %i.pk, %i.pl
  %i.pn = insertelement <2 x double> %i.pf, double %i.ly, i64 0
  %i.po = fneg <2 x double> %i.pf
  %i.pp = shufflevector <2 x double> %i.pi, <2 x double> %i.po, <2 x i32> <i32 0, i32 3>
  %i.pq = fmul <2 x double> %i.pn, %i.pp
  %i.pr = shufflevector <2 x double> %i.mg, <2 x double> %i.mu, <2 x i32> <i32 0, i32 3>
  %i.ps = shufflevector <2 x double> %i.pi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.pt = insertelement <2 x double> %i.ps, double %i.my, i64 1
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pr, <2 x double> %i.pt, <2 x double> %i.pq) ; 2 uses
  %i.pv = extractelement <2 x double> %i.pu, i64 0
  %i.pw = call double @llvm.fmuladd.f64(double %i.mj, double %i.pj, double %i.pv)
  %i.px = extractelement <2 x double> %i.pe, i64 0 ; 3 uses
  %i.py = fneg double %i.px
  %i.pz = fmul double %i.px, %i.py
  %i.qa = call double @llvm.fmuladd.f64(double %i.nm, double %i.my, double %i.pz)
  %i.qb = fmul double %i.ly, %i.qa
  %i.qc = extractelement <2 x double> %i.pu, i64 1
  %i.qd = call double @llvm.fmuladd.f64(double %i.mh, double %i.qc, double %i.qb)
  %i.qe = extractelement <2 x double> %i.pf, i64 0 ; 4 uses
  %i.qf = fneg double %i.qe
  %i.qg = fmul double %i.qe, %i.qf
  %i.qh = call double @llvm.fmuladd.f64(double %i.nm, double %i.nl, double %i.qg)
  %i.qi = call double @llvm.fmuladd.f64(double %i.mj, double %i.qh, double %i.qd)
  %i.qj = fneg <2 x double> %i.mu
  %i.qk = shufflevector <2 x double> %i.pf, <2 x double> %i.pe, <2 x i32> <i32 1, i32 2>
  %i.ql = fmul <2 x double> %i.qk, %i.qj          ; 2 uses
  %i.qm = extractelement <2 x double> %i.ql, i64 0
  %i.qn = call double @llvm.fmuladd.f64(double %i.qe, double %i.px, double %i.qm)
  %i.qo = extractelement <2 x double> %i.ql, i64 1
  %i.qp = call double @llvm.fmuladd.f64(double %i.qe, double %i.pl, double %i.qo)
  %i.qq = fmul double %i.np, %i.qp
  %i.qr = call double @llvm.fmuladd.f64(double %i.pk, double %i.qn, double %i.qq)
  %i.qs = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qt = insertelement <2 x double> %i.qs, double %i.nr, i64 1
  %i.qu = fmul <2 x double> %i.qt, %i.pe
  %i.qv = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qw = insertelement <2 x double> %i.qv, double %i.lx, i64 0
  %i.qx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qw, <2 x double> %i.pf, <2 x double> %i.qu)
  %i.qy = insertelement <2 x double> %i.mf, double %i.nq, i64 1
  %i.qz = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.ra = insertelement <2 x double> %i.qz, double %i.qr, i64 1
  %i.rb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qy, <2 x double> %i.qx, <2 x double> %i.ra)
  %i.rc = insertelement <2 x double> poison, double %i.pw, i64 0
  %i.rd = insertelement <2 x double> %i.rc, double %i.qi, i64 1
  %i.re = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.rd)
  %i.rf = fmul double %sqrt.i, %sqrt.i
  %i.rg = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.rh = insertelement <2 x double> %i.rg, double %i.rf, i64 1 ; 2 uses
  %i.ri = shufflevector <2 x double> %i.rh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rj = fmul <2 x double> %i.rh, %i.ri
  %i.rk = fneg <2 x double> %i.nt
  %i.rl = shufflevector <2 x double> %i.nt, <2 x double> %i.rk, <2 x i32> <i32 0, i32 3>
  %i.rm = fmul <2 x double> %i.re, %i.rl
  %i.rn = fdiv <2 x double> %i.rm, %i.rj          ; 2 uses
  %i.ro = extractelement <2 x double> %i.rn, i64 0 ; 4 uses
  %i.rp = extractelement <2 x double> %i.rn, i64 1
  %i.rq = call double @llvm.fmuladd.f64(double %i.ro, double %i.ro, double %i.rp)
  %i.rr = call double @sqrt(double noundef %i.rq) #18 ; 2 uses
  %i.rs = fsub double %i.ro, %i.rr
  %i.rt = fptrunc double %i.rs to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.rt, i64 0
  %i.ru = fadd double %i.rr, %i.ro
  %i.rv = fptrunc double %i.ru to float
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.rv, i64 1
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit, %bb.an
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.an ], [ zeroinitializer, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit ]
  %i.rw = load i32, ptr %i.av, align 8, !tbaa !201 ; 2 uses
  %i.rx = load ptr, ptr %i.bg, align 8, !tbaa !238
  %i.ry = zext i32 %i.rw to i64                   ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.ry
  %.sroa.04.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !47 ; 2 uses
  %i.sb = fmul float %i.u, %.sroa.04.0.vec.extract ; 2 uses
  %i.sc = fcmp olt float %i.sb, 0.000000e+00
  %.sroa.speculated = select i1 %i.sc, float %i.sb, float 0.000000e+00
  %i.sd = fadd float %i.sa, %.sroa.speculated
  %i.se = fmul float %.0136, %i.sd
  %i.sf = call float @llvm.fmuladd.f32(float %.0, float %i.sa, float %i.se)
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ry
  store float %i.sf, ptr %i.sg, align 4, !tbaa !47
  br label %bb.aq

bb.ap:                                            ; preds = %.invoke, %.noexc48, %.noexc47, %bb.aj, %.lr.ph
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.at

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %bb.ao
  %i.si = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.rw, %bb.ao ]
  %i.sj = load ptr, ptr %i.bi, align 8, !tbaa !244 ; 8 uses
  %i.sk = add i32 %i.si, 1                        ; 4 uses
  %i.sl = lshr i32 %i.sk, 6                       ; 3 uses
  %i.sm = icmp ugt i32 %i.sk, 511
  br i1 %i.sm, label %._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.sn = and i32 %i.sk, 63
  %i.so = zext nneg i32 %i.sl to i64              ; 8 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.so
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !209 ; 2 uses
  %i.sr = zext nneg i32 %i.sn to i64              ; 2 uses
  %i.ss = shl nuw i64 1, %i.sr
  %i.st = and i64 %i.sq, %i.ss
  %.not.i.i.i.i = icmp eq i64 %i.st, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.su = shl nsw i64 -1, %i.sr
  %i.sv = and i64 %i.sq, %i.su                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.sv, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i52.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i52.preheader:                       ; preds = %bb.as
  %exitcond.not.i.i.i.i228 = icmp eq i32 %i.sl, 7
  br i1 %exitcond.not.i.i.i.i228, label %._crit_edge, label %.lr.ph230

.lr.ph.i.i.i.i52:                                 ; preds = %.lr.ph230
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph.i.i.i.i52
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.so, 2 ; 3 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.1
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.sx, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i52.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.1:                               ; preds = %.lr.ph230.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph230.2

.lr.ph230.2:                                      ; preds = %.lr.ph.i.i.i.i52.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.so, 3 ; 3 uses
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.2
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.sz, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i52.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.2:                               ; preds = %.lr.ph230.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph230.3

.lr.ph230.3:                                      ; preds = %.lr.ph.i.i.i.i52.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.so, 4 ; 3 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next.i.i.i.i.3
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.tb, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i52.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.3:                               ; preds = %.lr.ph230.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %prol.iter245.cmp.not = icmp eq i32 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol, !llvm.loop !586

.lr.ph.i.i.i.i.i.i65.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i65.prol, %.lr.ph.i.i.i.i.i.i65.preheader
  %.01.i.i.i.i.i.i66.unr = phi i32 [ %.sroa.0.02.i.i.i.i61, %.lr.ph.i.i.i.i.i.i65.preheader ], [ %i.up, %.lr.ph.i.i.i.i.i.i65.prol ]
  %i.uq = icmp ult i32 %.sroa.0.02.i.i.i.i61, 8
  br i1 %i.uq, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64, label %.lr.ph.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i65:                             ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65
  %.01.i.i.i.i.i.i66 = phi i32 [ %i.ur, %.lr.ph.i.i.i.i.i.i65 ], [ %.01.i.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.ur = add nsw i32 %.01.i.i.i.i.i.i66, -8
  call void @llvm.x86.sse2.pause()
  %i.us = icmp sgt i32 %.01.i.i.i.i.i.i66, 8
  br i1 %i.us, label %.lr.ph.i.i.i.i.i.i65, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64, !llvm.loop !3

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64: ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65, %bb.az
  %i.ut = shl i32 %.sroa.0.02.i.i.i.i61, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i60
  %i.uu = call noundef i32 @sched_yield() #18     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62: ; preds = %bb.ba, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64
  %.sroa.0.1.i.i.i.i63 = phi i32 [ %i.ut, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64 ], [ %.sroa.0.02.i.i.i.i61, %bb.ba ]
  %i.uv = atomicrmw xchg ptr %i.uk, i8 1 seq_cst, align 1
  %i.uw = trunc i8 %i.uv to i1
  br i1 %i.uw, label %.lr.ph.i.i.i.i60, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62, %bb.ay
  %i.ux = load ptr, ptr %i.uf, align 8, !tbaa !69 ; 2 uses
  %i.uy = icmp eq ptr %i.ux, null
  br i1 %i.uy, label %bb.bb, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58

bb.bb:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57
  %i.uz = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26
          to label %bb.bc unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i59 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.uz, ptr %i.uf, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i59: ; preds = %bb.bb
  %i.va = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.uk release, align 1
  br label %.body68

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58: ; preds = %bb.bc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57
  %i.vb = phi ptr [ %i.uz, %bb.bc ], [ %i.ux, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57 ]
  store atomic i8 0, ptr %i.uk release, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i56, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58
  %i.vc = phi ptr [ %i.vb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58 ], [ %i.ui, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i56 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.vd = load ptr, ptr %i.tt, align 8, !tbaa !193, !nonnull !72, !align !194
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !197
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %.sroa.7.0175
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !198
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.vh)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.bd
  %i.vi = load i32, ptr %i.tu, align 8, !tbaa !201
  %.not156172 = icmp eq i32 %i.vi, 512
  br i1 %.not156172, label %._crit_edge174, label %.lr.ph173

._crit_edge174:                                   ; preds = %.lr.ph233.6, %bb.bi, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95, %.lr.ph.i.i.i.i89.preheader, %.lr.ph.i.i.i.i89, %.lr.ph.i.i.i.i89.1, %.lr.ph.i.i.i.i89.2, %.lr.ph.i.i.i.i89.3, %.lr.ph.i.i.i.i89.4, %.lr.ph.i.i.i.i89.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.vj = add nuw i64 %.sroa.7.0175, 1            ; 2 uses
  %i.vk = load i64, ptr %1, align 8, !tbaa !131
  %i.vl = icmp ult i64 %i.vj, %i.vk
  br i1 %i.vl, label %bb.aw, label %.loopexit157, !llvm.loop !587

bb.be:                                            ; preds = %bb.ax
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.loopexit:                                        ; preds = %.lr.ph173, %.noexc76
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body68

.lr.ph173:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95
  %i.vn = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc76 unwind label %.loopexit ; 3 uses

.noexc76:                                         ; preds = %.lr.ph173
  %i.vo = load i32, ptr %i.tu, align 8, !tbaa !201 ; 4 uses
  %i.vp = lshr i32 %i.vo, 6
  %i.vq = lshr i32 %i.vo, 3
  %i.vr = and i32 %i.vq, 7
  %i.vs = and i32 %i.vo, 7
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vn, i64 80
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !124
  %i.vv = add nsw i32 %i.vu, %i.vp
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vn, i64 84
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !124
  %i.vy = add nsw i32 %i.vx, %i.vr
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vn, i64 88
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !124
  %i.wb = add nsw i32 %i.wa, %i.vs
  %.sroa.2.0.insert.ext.i.i.i.i71 = zext i32 %i.vy to i64
  %.sroa.2.0.insert.shift.i.i.i.i72 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i71, 32
  %.sroa.0.0.insert.ext.i9.i.i.i73 = zext i32 %i.vv to i64
  %.sroa.0.0.insert.insert.i10.i.i.i74 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i72, %.sroa.0.0.insert.ext.i9.i.i.i73
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i74, ptr %i.tv, align 8
  store i32 %i.wb, ptr %.sroa.4.0..sroa_idx.i75, align 8, !tbaa !69
  %i.wc = load ptr, ptr %i.tw, align 8, !tbaa !238
  %i.wd = zext i32 %i.vo to i64
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %i.wd
  %i.wf = load float, ptr %i.we, align 4, !tbaa !47
  %i.wg = load ptr, ptr %i.tx, align 8, !tbaa !240
  store float %i.wf, ptr %i.wg, align 4, !tbaa !47
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.tv)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78 unwind label %.loopexit

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78: ; preds = %.noexc76
  %i.wh = load ptr, ptr %i.tx, align 8, !tbaa !240 ; 19 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wh, i64 12
  %i.wm = load <4 x float>, ptr %i.wj, align 4, !tbaa !47 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wh, i64 20
  %i.wo = load float, ptr %i.wk, align 4, !tbaa !47
  %i.wp = load float, ptr %i.wl, align 4, !tbaa !47
  %i.wq = load float, ptr %i.wi, align 4, !tbaa !47
  %i.wr = fsub float %i.wo, %i.wp
  %i.ws = fpext float %i.wr to double
  %i.wt = fmul double %i.ws, 5.000000e-01         ; 5 uses
  %i.wu = fmul double %i.wt, %i.wt                ; 3 uses
  %i.wv = load <2 x float>, ptr %i.wn, align 4, !tbaa !47 ; 3 uses
  %i.ww = insertelement <2 x float> %i.wv, float %i.wq, i64 0
  %i.wx = shufflevector <4 x float> %i.wm, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.wy = shufflevector <2 x float> %i.wx, <2 x float> %i.wv, <2 x i32> <i32 0, i32 2>
  %i.wz = fsub <2 x float> %i.ww, %i.wy
  %i.xa = fpext <2 x float> %i.wz to <2 x double>
  %i.xb = fmul <2 x double> %i.xa, splat (double 5.000000e-01) ; 6 uses
  %i.xc = fmul <2 x double> %i.xb, %i.xb          ; 3 uses
  %i.xd = extractelement <2 x double> %i.xc, i64 0 ; 2 uses
  %i.xe = fadd double %i.xd, %i.wu
  %i.xf = extractelement <2 x double> %i.xc, i64 1 ; 3 uses
  %i.xg = fadd double %i.xe, %i.xf                ; 2 uses
  %i.xh = fcmp ugt double %i.xg, 1.000000e-15
  br i1 %i.xh, label %bb.bg, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82

bb.bg:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !47
  %i.xk = load float, ptr %i.wh, align 4, !tbaa !47 ; 2 uses
  %i.xl = insertelement <2 x float> poison, float %i.xk, i64 0
  %i.xm = shufflevector <2 x float> %i.xl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xn = shufflevector <4 x float> %i.wm, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.xo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xm, <2 x float> splat (float -2.000000e+00), <2 x float> %i.xn)
  %i.xp = fadd <2 x float> %i.wx, %i.xo
  %i.xq = fpext <2 x float> %i.xp to <2 x double> ; 6 uses
  %i.xr = call float @llvm.fmuladd.f32(float %i.xk, float -2.000000e+00, float %i.xj)
  %i.xs = extractelement <2 x float> %i.wv, i64 0
  %i.xt = fadd float %i.xs, %i.xr
  %i.xu = fpext float %i.xt to double             ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wh, i64 40
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wh, i64 28
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wh, i64 36
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wh, i64 56
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wh, i64 48
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wh, i64 44
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wh, i64 52
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wh, i64 72
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wh, i64 64
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wh, i64 60
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wh, i64 68
  %i.yh = extractelement <2 x double> %i.xq, i64 1
  %i.yi = extractelement <2 x double> %i.xq, i64 0 ; 2 uses
  %i.yj = extractelement <2 x double> %i.xb, i64 0 ; 2 uses
  %i.yk = extractelement <2 x double> %i.xb, i64 1 ; 2 uses
  %i.yl = fmul double %i.yj, %i.yk
  %i.ym = fmul double %i.yj, %i.wt
  %i.yn = fneg double %i.xu
  %sqrt.i104 = call double @llvm.sqrt.f64(double %i.xg) ; 3 uses
  %i.yo = load <2 x float>, ptr %i.x, align 4, !tbaa !47
  %i.yp = fpext <2 x float> %i.yo to <2 x double> ; 2 uses
  %i.yq = load float, ptr %i.xv, align 4, !tbaa !47 ; 2 uses
  %i.yr = load float, ptr %i.xw, align 4, !tbaa !47 ; 2 uses
  %i.ys = load float, ptr %i.xx, align 4, !tbaa !47 ; 2 uses
  %i.yt = load float, ptr %i.xy, align 4, !tbaa !47 ; 2 uses
  %i.yu = load float, ptr %i.xz, align 4, !tbaa !47
  %i.yv = load float, ptr %i.ya, align 4, !tbaa !47
  %i.yw = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.yx = insertelement <2 x float> %i.yw, float %i.yq, i64 1
  %i.yy = insertelement <2 x float> poison, float %i.yv, i64 0
  %i.yz = insertelement <2 x float> %i.yy, float %i.yr, i64 1
  %i.za = fsub <2 x float> %i.yx, %i.yz
  %i.zb = load float, ptr %i.yb, align 4, !tbaa !47
  %i.zc = load float, ptr %i.yd, align 4, !tbaa !47
  %i.zd = load float, ptr %i.ye, align 4, !tbaa !47
  %i.ze = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.zf = insertelement <2 x float> %i.ze, float %i.zc, i64 1
  %i.zg = insertelement <2 x float> poison, float %i.yr, i64 0
  %i.zh = insertelement <2 x float> %i.zg, float %i.zd, i64 1
  %i.zi = fsub <2 x float> %i.zf, %i.zh
  %i.zj = insertelement <2 x float> poison, float %i.zb, i64 0
  %i.zk = insertelement <2 x float> %i.zj, float %i.ys, i64 1
  %i.zl = fadd <2 x float> %i.za, %i.zk
  %i.zm = load float, ptr %i.yc, align 4, !tbaa !47
  %i.zn = load float, ptr %i.yf, align 4, !tbaa !47
  %i.zo = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.zp = insertelement <2 x float> %i.zo, float %i.zn, i64 1
  %i.zq = fadd <2 x float> %i.zi, %i.zp
  %i.zr = insertelement <2 x float> poison, float %i.zm, i64 0
  %i.zs = insertelement <2 x float> %i.zr, float %i.yt, i64 1
  %i.zt = fsub <2 x float> %i.zl, %i.zs
  %i.zu = load float, ptr %i.yg, align 4, !tbaa !47
  %i.zv = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.zw = insertelement <2 x float> %i.zv, float %i.zu, i64 1
  %i.zx = fsub <2 x float> %i.zq, %i.zw
  %i.zy = fpext <2 x float> %i.zt to <2 x double>
  %i.zz = fpext <2 x float> %i.zx to <2 x double>
  %i.aaa = fmul <2 x double> %i.zy, splat (double 2.500000e-01) ; 4 uses
  %i.aab = fmul <2 x double> %i.zz, splat (double 2.500000e-01) ; 6 uses
  %i.aac = insertelement <2 x double> poison, double %i.xu, i64 0
  %i.aad = shufflevector <2 x double> %i.aac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aae = fadd <2 x double> %i.aad, %i.xq        ; 2 uses
  %i.aaf = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.xq)
  %i.aag = fmul double %i.wt, %i.yk               ; 2 uses
  %i.aah = extractelement <2 x double> %i.aab, i64 1 ; 2 uses
  %i.aai = fmul double %i.aag, %i.aah
  %i.aaj = insertelement <2 x double> %i.aab, double %i.wu, i64 0
  %i.aak = fneg <2 x double> %i.aab
  %i.aal = shufflevector <2 x double> %i.aae, <2 x double> %i.aak, <2 x i32> <i32 0, i32 3>
  %i.aam = fmul <2 x double> %i.aaj, %i.aal
  %i.aan = shufflevector <2 x double> %i.xc, <2 x double> %i.xq, <2 x i32> <i32 0, i32 3>
  %i.aao = shufflevector <2 x double> %i.aae, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aap = insertelement <2 x double> %i.aao, double %i.xu, i64 1
  %i.aaq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aan, <2 x double> %i.aap, <2 x double> %i.aam) ; 2 uses
  %i.aar = extractelement <2 x double> %i.aaq, i64 0
  %i.aas = call double @llvm.fmuladd.f64(double %i.xf, double %i.aaf, double %i.aar)
  %i.aat = extractelement <2 x double> %i.aaa, i64 0 ; 3 uses
  %i.aau = fneg double %i.aat
  %i.aav = fmul double %i.aat, %i.aau
  %i.aaw = call double @llvm.fmuladd.f64(double %i.yi, double %i.xu, double %i.aav)
  %i.aax = fmul double %i.wu, %i.aaw
  %i.aay = extractelement <2 x double> %i.aaq, i64 1
  %i.aaz = call double @llvm.fmuladd.f64(double %i.xd, double %i.aay, double %i.aax)
  %i.aba = extractelement <2 x double> %i.aab, i64 0 ; 4 uses
  %i.abb = fneg double %i.aba
  %i.abc = fmul double %i.aba, %i.abb
  %i.abd = call double @llvm.fmuladd.f64(double %i.yi, double %i.yh, double %i.abc)
  %i.abe = call double @llvm.fmuladd.f64(double %i.xf, double %i.abd, double %i.aaz)
  %i.abf = fneg <2 x double> %i.xq
  %i.abg = shufflevector <2 x double> %i.aab, <2 x double> %i.aaa, <2 x i32> <i32 1, i32 2>
  %i.abh = fmul <2 x double> %i.abg, %i.abf       ; 2 uses
  %i.abi = extractelement <2 x double> %i.abh, i64 0
  %i.abj = call double @llvm.fmuladd.f64(double %i.aba, double %i.aat, double %i.abi)
  %i.abk = extractelement <2 x double> %i.abh, i64 1
  %i.abl = call double @llvm.fmuladd.f64(double %i.aba, double %i.aah, double %i.abk)
  %i.abm = fmul double %i.yl, %i.abl
  %i.abn = call double @llvm.fmuladd.f64(double %i.aag, double %i.abj, double %i.abm)
  %i.abo = shufflevector <2 x double> %i.xb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abp = insertelement <2 x double> %i.abo, double %i.yn, i64 1
  %i.abq = fmul <2 x double> %i.abp, %i.aaa
  %i.abr = shufflevector <2 x double> %i.aaa, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.abs = insertelement <2 x double> %i.abr, double %i.wt, i64 0
  %i.abt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abs, <2 x double> %i.aab, <2 x double> %i.abq)
  %i.abu = insertelement <2 x double> %i.xb, double %i.ym, i64 1
  %i.abv = insertelement <2 x double> poison, double %i.aai, i64 0
  %i.abw = insertelement <2 x double> %i.abv, double %i.abn, i64 1
  %i.abx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abu, <2 x double> %i.abt, <2 x double> %i.abw)
  %i.aby = insertelement <2 x double> poison, double %i.aas, i64 0
  %i.abz = insertelement <2 x double> %i.aby, double %i.abe, i64 1
  %i.aca = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abx, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.abz)
  %i.acb = fmul double %sqrt.i104, %sqrt.i104
  %i.acc = insertelement <2 x double> poison, double %sqrt.i104, i64 0
  %i.acd = insertelement <2 x double> %i.acc, double %i.acb, i64 1 ; 2 uses
  %i.ace = shufflevector <2 x double> %i.acd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.acf = fmul <2 x double> %i.acd, %i.ace
  %i.acg = fneg <2 x double> %i.yp
  %i.ach = shufflevector <2 x double> %i.yp, <2 x double> %i.acg, <2 x i32> <i32 0, i32 3>
  %i.aci = fmul <2 x double> %i.aca, %i.ach
  %i.acj = fdiv <2 x double> %i.aci, %i.acf       ; 2 uses
  %i.ack = extractelement <2 x double> %i.acj, i64 0 ; 4 uses
  %i.acl = extractelement <2 x double> %i.acj, i64 1
  %i.acm = call double @llvm.fmuladd.f64(double %i.ack, double %i.ack, double %i.acl)
  %i.acn = call double @sqrt(double noundef %i.acm) #18 ; 2 uses
  %i.aco = fsub double %i.ack, %i.acn
  %i.acp = fptrunc double %i.aco to float
  %.sroa.0.0.vec.insert.i80 = insertelement <2 x float> poison, float %i.acp, i64 0
  %i.acq = fadd double %i.acn, %i.ack
  %i.acr = fptrunc double %i.acq to float
  %.sroa.0.4.vec.insert.i81 = insertelement <2 x float> %.sroa.0.0.vec.insert.i80, float %i.acr, i64 1
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82: ; preds = %bb.bg, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78
  %.sroa.0.0.i79 = phi <2 x float> [ %.sroa.0.4.vec.insert.i81, %bb.bg ], [ zeroinitializer, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78 ]
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i79, i64 0 ; 2 uses
  %i.acs = fcmp olt float %.sroa.0.0.vec.extract, 0.000000e+00
  %.pre181 = load i32, ptr %i.tu, align 8, !tbaa !201 ; 2 uses
  br i1 %i.acs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82
  %i.act = load ptr, ptr %i.tw, align 8, !tbaa !238
  %i.acu = zext i32 %.pre181 to i64               ; 2 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.act, i64 %i.acu
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !47
  %i.acx = call float @llvm.fmuladd.f32(float %i.u, float %.sroa.0.0.vec.extract, float %i.acw)
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.acu
  store float %i.acx, ptr %i.acy, align 4, !tbaa !47
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82
  %i.acz = load ptr, ptr %i.ty, align 8, !tbaa !244 ; 8 uses
  %i.ada = add i32 %.pre181, 1                    ; 4 uses
  %i.adb = lshr i32 %i.ada, 6                     ; 3 uses
  %i.adc = icmp ugt i32 %i.ada, 511
  br i1 %i.adc, label %._crit_edge174, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.add = and i32 %i.ada, 63
  %i.ade = zext nneg i32 %i.adb to i64            ; 8 uses
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %i.ade
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !209 ; 2 uses
  %i.adh = zext nneg i32 %i.add to i64            ; 2 uses
  %i.adi = shl nuw i64 1, %i.adh
  %i.adj = and i64 %i.adg, %i.adi
  %.not.i.i.i.i83 = icmp eq i64 %i.adj, 0
  br i1 %.not.i.i.i.i83, label %bb.bk, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95

bb.bk:                                            ; preds = %bb.bj
  %i.adk = shl nsw i64 -1, %i.adh
  %i.adl = and i64 %i.adg, %i.adk                 ; 2 uses
  %.not2226.i.i.i.i85 = icmp eq i64 %i.adl, 0
  br i1 %.not2226.i.i.i.i85, label %.lr.ph.i.i.i.i89.preheader, label %.critedge.i.i.i.i86

.lr.ph.i.i.i.i89.preheader:                       ; preds = %bb.bk
  %exitcond.not.i.i.i.i91231 = icmp eq i32 %i.adb, 7
  br i1 %exitcond.not.i.i.i.i91231, label %._crit_edge174, label %.lr.ph233

.lr.ph.i.i.i.i89:                                 ; preds = %.lr.ph233
  %exitcond.not.i.i.i.i91 = icmp eq i64 %indvars.iv.next.i.i.i.i92, 7
  br i1 %exitcond.not.i.i.i.i91, label %._crit_edge174, label %.lr.ph233.1

.lr.ph233.1:                                      ; preds = %.lr.ph.i.i.i.i89
  %indvars.iv.next.i.i.i.i92.1 = add nuw nsw i64 %i.ade, 2 ; 3 uses
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %indvars.iv.next.i.i.i.i92.1
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.1 = icmp eq i64 %i.adn, 0
  br i1 %.not22.i.i.i.i93.1, label %.lr.ph.i.i.i.i89.1, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.1:                               ; preds = %.lr.ph233.1
  %exitcond.not.i.i.i.i91.1 = icmp eq i64 %indvars.iv.next.i.i.i.i92.1, 7
  br i1 %exitcond.not.i.i.i.i91.1, label %._crit_edge174, label %.lr.ph233.2

.lr.ph233.2:                                      ; preds = %.lr.ph.i.i.i.i89.1
  %indvars.iv.next.i.i.i.i92.2 = add nuw nsw i64 %i.ade, 3 ; 3 uses
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %indvars.iv.next.i.i.i.i92.2
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.2 = icmp eq i64 %i.adp, 0
  br i1 %.not22.i.i.i.i93.2, label %.lr.ph.i.i.i.i89.2, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.2:                               ; preds = %.lr.ph233.2
  %exitcond.not.i.i.i.i91.2 = icmp eq i64 %indvars.iv.next.i.i.i.i92.2, 7
  br i1 %exitcond.not.i.i.i.i91.2, label %._crit_edge174, label %.lr.ph233.3

.lr.ph233.3:                                      ; preds = %.lr.ph.i.i.i.i89.2
  %indvars.iv.next.i.i.i.i92.3 = add nuw nsw i64 %i.ade, 4 ; 3 uses
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %indvars.iv.next.i.i.i.i92.3
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.3 = icmp eq i64 %i.adr, 0
  br i1 %.not22.i.i.i.i93.3, label %.lr.ph.i.i.i.i89.3, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.3:                               ; preds = %.lr.ph233.3
  %exitcond.not.i.i.i.i91.3 = icmp eq i64 %indvars.iv.next.i.i.i.i92.3, 7
  br i1 %exitcond.not.i.i.i.i91.3, label %._crit_edge174, label %.lr.ph233.4

.lr.ph233.4:                                      ; preds = %.lr.ph.i.i.i.i89.3
  %indvars.iv.next.i.i.i.i92.4 = add nuw nsw i64 %i.ade, 5 ; 3 uses
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %indvars.iv.next.i.i.i.i92.4
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.4 = icmp eq i64 %i.adt, 0
  br i1 %.not22.i.i.i.i93.4, label %.lr.ph.i.i.i.i89.4, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6Filter17meanCurvatureImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
bb.aj:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.jm = load ptr, ptr %i.aw, align 8, !tbaa !223
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !228, !noalias !734 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !734
  %i.jo = sitofp i32 %i.dk to double
  %i.jp = sitofp i32 %i.dn to double
  %i.jq = sitofp i32 %i.dq to double
  store double %i.jo, ptr %2, align 8, !tbaa !113, !alias.scope !735, !noalias !734
  store double %i.jp, ptr %i.ax, align 8, !tbaa !113, !alias.scope !735, !noalias !734
  store double %i.jq, ptr %i.ay, align 8, !tbaa !113, !alias.scope !735, !noalias !734
  %i.jr = load ptr, ptr %i.jn, align 8, !tbaa !45, !noalias !734
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !734
  invoke void %i.jt(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc35 unwind label %bb.ap, !inline_history !11

.noexc35:                                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !734
  %i.ju = load ptr, ptr %i.au, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.jv = load ptr, ptr %i.az, align 8, !tbaa !229
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !228, !noalias !736 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !45, !noalias !736
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 64
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !736
  invoke void %i.jz(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc36 unwind label %bb.ap, !inline_history !11

.noexc36:                                         ; preds = %.noexc35
  %i.ka = invoke noundef float @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEENT_9ValueTypeERKSJ_RKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(96) %i.ju, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc37 unwind label %bb.ap

.noexc37:                                         ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i: ; preds = %.noexc37, %.noexc34
  %.0.i.i = phi float [ %i.jl, %.noexc34 ], [ %i.ka, %.noexc37 ]
  %i.kb = load float, ptr %i.ba, align 8, !tbaa !354
  %i.kc = fsub float %.0.i.i, %i.kb
  %i.kd = load float, ptr %i.bb, align 4, !tbaa !355
  %i.ke = fmul float %i.kc, %i.kd                 ; 5 uses
  %i.kf = fcmp ogt float %i.ke, 0.000000e+00
  br i1 %i.kf, label %bb.ak, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.ak:                                            ; preds = %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.kg = fcmp olt float %i.ke, 1.000000e+00
  br i1 %i.kg, label %bb.al, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.kh = call nnan float @llvm.fmuladd.f32(float %i.ke, float -2.000000e+00, float 3.000000e+00)
  %i.ki = fmul nnan float %i.ke, %i.kh
  %i.kj = fmul nnan float %i.ke, %i.ki
  br label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i: ; preds = %bb.al, %bb.ak, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.kk = phi float [ 1.000000e+00, %bb.ak ], [ %i.kj, %bb.al ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i ] ; 3 uses
  %i.kl = fsub float 1.000000e+00, %i.kk          ; 2 uses
  %i.km = load i8, ptr %i.bc, align 8, !tbaa !356, !range !71, !noundef !72
  %i.kn = trunc nuw i8 %i.km to i1                ; 2 uses
  %.0109 = select i1 %i.kn, float %i.kl, float %i.kk ; 2 uses
  %.0 = select i1 %i.kn, float %i.kk, float %i.kl
  %i.ko = fcmp ogt float %.0109, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.ko, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.at, align 8, !tbaa !201
  br label %bb.aq

bb.am:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kp = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc38 unwind label %.loopexit114 ; 3 uses

.noexc38:                                         ; preds = %bb.am
  %i.kq = load i32, ptr %i.at, align 8, !tbaa !201 ; 4 uses
  %i.kr = lshr i32 %i.kq, 6
  %i.ks = lshr i32 %i.kq, 3
  %i.kt = and i32 %i.ks, 7
  %i.ku = and i32 %i.kq, 7
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 80
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !124
  %i.kx = add nsw i32 %i.kw, %i.kr
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 84
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !124
  %i.la = add nsw i32 %i.kz, %i.kt
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 88
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !124
  %i.ld = add nsw i32 %i.lc, %i.ku
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.la to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.kx to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.bd, align 8
  store i32 %i.ld, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !69
  %i.le = load ptr, ptr %i.be, align 8, !tbaa !360
  %i.lf = zext i32 %i.kq to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !113
  %i.li = load ptr, ptr %i.bf, align 8, !tbaa !362
  store double %i.lh, ptr %i.li, align 8, !tbaa !113
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.bd)
          to label %bb.an unwind label %.loopexit114

bb.an:                                            ; preds = %.noexc38
  %i.lj = load i32, ptr %i.at, align 8, !tbaa !201 ; 2 uses
  %i.lk = load ptr, ptr %i.be, align 8, !tbaa !360
  %i.ll = zext i32 %i.lj to i64                   ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !113 ; 2 uses
  %i.lo = load ptr, ptr %i.bf, align 8, !tbaa !362 ; 18 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.ls = load <4 x double>, ptr %i.lq, align 8, !tbaa !113 ; 2 uses
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !113
  %i.lu = load double, ptr %i.lp, align 8, !tbaa !113
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lo, i64 48
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !113 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !113 ; 2 uses
  %i.lz = fsub double %i.lw, %i.ly
  %i.ma = fmul double %i.lz, 5.000000e-01         ; 4 uses
  %i.mb = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.lt, i64 1
  %i.md = shufflevector <4 x double> %i.ls, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.me = fsub <2 x double> %i.mc, %i.md
  %i.mf = fmul <2 x double> %i.me, splat (double 5.000000e-01) ; 4 uses
  %i.mg = fmul <2 x double> %i.mf, %i.mf          ; 2 uses
  %i.mh = fmul double %i.ma, %i.ma                ; 2 uses
  %i.mi = extractelement <2 x double> %i.mg, i64 0 ; 2 uses
  %i.mj = extractelement <2 x double> %i.mg, i64 1 ; 2 uses
  %i.mk = fadd double %i.mi, %i.mj
  %i.ml = fadd double %i.mk, %i.mh                ; 2 uses
  %i.mm = fcmp ugt double %i.ml, 1.000000e-15
  br i1 %i.mm, label %bb.ao, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit

bb.ao:                                            ; preds = %bb.an
  %i.mn = load double, ptr %i.lo, align 8, !tbaa !113 ; 2 uses
  %i.mo = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mq = shufflevector <4 x double> %i.ls, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> splat (double -2.000000e+00), <2 x double> %i.mq)
  %i.ms = fadd <2 x double> %i.md, %i.mr          ; 2 uses
  %i.mt = call double @llvm.fmuladd.f64(double %i.mn, double -2.000000e+00, double %i.lw)
  %i.mu = fadd double %i.ly, %i.mt                ; 2 uses
  %i.mv = extractelement <2 x double> %i.ms, i64 1 ; 2 uses
  %i.mw = fadd double %i.mv, %i.mu
  %i.mx = extractelement <2 x double> %i.ms, i64 0 ; 2 uses
  %i.my = fadd double %i.mx, %i.mu
  %i.mz = fmul double %i.mj, %i.my
  %i.na = call double @llvm.fmuladd.f64(double %i.mi, double %i.mw, double %i.mz)
  %i.nb = fadd double %i.mx, %i.mv
  %i.nc = call double @llvm.fmuladd.f64(double %i.mh, double %i.nb, double %i.na)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lo, i64 80
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !113
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lo, i64 64
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !113
  %i.nh = fsub double %i.ne, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lo, i64 56
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !113
  %i.nk = fadd double %i.nh, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lo, i64 72
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !113
  %i.nn = fsub double %i.nk, %i.nm
  %i.no = fmul double %i.nn, 2.500000e-01
  %i.np = getelementptr inbounds nuw i8, ptr %i.lo, i64 112
  %i.nq = load double, ptr %i.np, align 8, !tbaa !113
  %i.nr = getelementptr inbounds nuw i8, ptr %i.lo, i64 96
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !113
  %i.nt = fsub double %i.nq, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.lo, i64 88
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !113
  %i.nw = fadd double %i.nt, %i.nv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lo, i64 104
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !113
  %i.nz = fsub double %i.nw, %i.ny
  %i.oa = fmul double %i.nz, 2.500000e-01
  %i.ob = fmul double %i.ma, %i.oa
  %i.oc = extractelement <2 x double> %i.mf, i64 1 ; 2 uses
  %i.od = call double @llvm.fmuladd.f64(double %i.oc, double %i.no, double %i.ob)
  %i.oe = fmul double %i.oc, %i.ma
  %i.of = getelementptr inbounds nuw i8, ptr %i.lo, i64 144
  %i.og = load double, ptr %i.of, align 8, !tbaa !113
  %i.oh = getelementptr inbounds nuw i8, ptr %i.lo, i64 128
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !113
  %i.oj = fsub double %i.og, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lo, i64 120
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !113
  %i.om = fadd double %i.oj, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %i.lo, i64 136
  %i.oo = load double, ptr %i.on, align 8, !tbaa !113
  %i.op = fsub double %i.om, %i.oo
  %i.oq = fmul double %i.op, 2.500000e-01
  %i.or = fmul double %i.oe, %i.oq
  %i.os = extractelement <2 x double> %i.mf, i64 0
  %i.ot = call double @llvm.fmuladd.f64(double %i.os, double %i.od, double %i.or)
  %i.ou = call double @llvm.fmuladd.f64(double %i.ot, double -2.000000e+00, double %i.nc)
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.ml) ; 2 uses
  %i.ov = load double, ptr %i.z, align 8, !tbaa !373
  %i.ow = fmul double %i.ov, %i.ou
  %i.ox = fmul double %sqrt.i.i, %sqrt.i.i
  %i.oy = fmul double %i.ox, 2.000000e+00
  %i.oz = fdiv double %i.ow, %i.oy
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit: ; preds = %bb.ao, %bb.an
  %i.pa = phi double [ %i.oz, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.pb = call double @llvm.fmuladd.f64(double %i.u, double %i.pa, double %i.ln)
  %i.pc = fpext float %.0 to double
  %i.pd = fpext float %.0109 to double
  %i.pe = fmul double %i.pb, %i.pd
  %i.pf = call double @llvm.fmuladd.f64(double %i.pc, double %i.ln, double %i.pe)
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ll
  store double %i.pf, ptr %i.pg, align 8, !tbaa !113
  br label %bb.aq

bb.ap:                                            ; preds = %.invoke, %.noexc36, %.noexc35, %bb.aj, %.lr.ph
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.at

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit
  %i.pi = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.lj, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit ]
  %i.pj = load ptr, ptr %i.bg, align 8, !tbaa !244 ; 8 uses
  %i.pk = add i32 %i.pi, 1                        ; 4 uses
  %i.pl = lshr i32 %i.pk, 6                       ; 3 uses
  %i.pm = icmp ugt i32 %i.pk, 511
  br i1 %i.pm, label %._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.pn = and i32 %i.pk, 63
  %i.po = zext nneg i32 %i.pl to i64              ; 8 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.po
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !209 ; 2 uses
  %i.pr = zext nneg i32 %i.pn to i64              ; 2 uses
  %i.ps = shl nuw i64 1, %i.pr
  %i.pt = and i64 %i.pq, %i.ps
  %.not.i.i.i.i = icmp eq i64 %i.pt, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.pu = shl nsw i64 -1, %i.pr
  %i.pv = and i64 %i.pq, %i.pu                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.pv, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i40.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i40.preheader:                       ; preds = %bb.as
  %exitcond.not.i.i.i.i182 = icmp eq i32 %i.pl, 7
  br i1 %exitcond.not.i.i.i.i182, label %._crit_edge, label %.lr.ph184

.lr.ph.i.i.i.i40:                                 ; preds = %.lr.ph184
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph184.1

.lr.ph184.1:                                      ; preds = %.lr.ph.i.i.i.i40
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.po, 2 ; 3 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv.next.i.i.i.i.1
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.px, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i40.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.1:                               ; preds = %.lr.ph184.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph184.2

.lr.ph184.2:                                      ; preds = %.lr.ph.i.i.i.i40.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.po, 3 ; 3 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv.next.i.i.i.i.2
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.pz, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i40.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.2:                               ; preds = %.lr.ph184.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph184.3

.lr.ph184.3:                                      ; preds = %.lr.ph.i.i.i.i40.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.po, 4 ; 3 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv.next.i.i.i.i.3
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.qb, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i40.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.3:                               ; preds = %.lr.ph184.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph184.4

.lr.ph184.4:                                      ; preds = %.lr.ph.i.i.i.i40.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.po, 5 ; 3 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv.next.i.i.i.i.4
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.qd, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i40.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.4:                               ; preds = %.lr.ph184.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph184.5

.lr.ph184.5:                                      ; preds = %.lr.ph.i.i.i.i40.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.po, 6 ; 3 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv.next.i.i.i.i.5
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.qf, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i40.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.5:                               ; preds = %.lr.ph184.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph184.6

.lr.ph184.6:                                      ; preds = %.lr.ph.i.i.i.i40.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.po, 7 ; 2 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv.next.i.i.i.i.6
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.qh, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph184:                                        ; preds = %.lr.ph.i.i.i.i40.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.po, 1 ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv.next.i.i.i.i
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.qj, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i40, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph184.6, %.lr.ph184.5, %.lr.ph184.4, %.lr.ph184.3, %.lr.ph184.2, %.lr.ph184.1, %.lr.ph184
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph184 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph184.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph184.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph184.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph184.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph184.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph184.6 ]
  %.lcssa193 = phi i64 [ %i.qj, %.lr.ph184 ], [ %i.px, %.lr.ph184.1 ], [ %i.pz, %.lr.ph184.2 ], [ %i.qb, %.lr.ph184.3 ], [ %i.qd, %.lr.ph184.4 ], [ %i.qf, %.lr.ph184.5 ], [ %i.qh, %.lr.ph184.6 ]
  %i.qk = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.as
  %.016.lcssa.i.i.i.i = phi i32 [ %i.pl, %bb.as ], [ %i.qk, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.pv, %bb.as ], [ %.lcssa193, %.critedge.loopexit.i.i.i.i ]
  %i.ql = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.qm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.qn = trunc nuw nsw i64 %i.qm to i32
  %i.qo = or disjoint i32 %i.ql, %i.qn
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.ar, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.qo, %.critedge.i.i.i.i ], [ %i.pk, %bb.ar ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.at, align 8, !tbaa !201
  %.not110.a = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not110.a, label %._crit_edge, label %.lr.ph

bb.at:                                            ; preds = %.loopexit114, %.loopexit.split-lp115, %bb.ap
  %.pn25 = phi { ptr, i32 } [ %i.ph, %bb.ap ], [ %lpad.loopexit116, %.loopexit114 ], [ %lpad.loopexit.split-lp117, %.loopexit.split-lp115 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

.body:                                            ; preds = %bb.q, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.at
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.cp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn25, %bb.at ], [ %i.db, %bb.q ]
  call void @_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEfED2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #18
  br label %bb.au

bb.au:                                            ; preds = %.body, %bb.h
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %.body ], [ %i.bn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body56

bb.av:                                            ; preds = %_ZN7openvdb5v13_05tools15LevelSetTrackerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !318 ; 2 uses
  %i.qr = load i64, ptr %1, align 8, !tbaa !317
  %i.qs = icmp ult i64 %i.qq, %i.qr
  br i1 %i.qs, label %.lr.ph132, label %.loopexit112

.lr.ph132:                                        ; preds = %bb.av
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.qw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph132, %._crit_edge129
  %.sroa.7.0130 = phi i64 [ %i.qq, %.lr.ph132 ], [ %i.sj, %._crit_edge129 ] ; 3 uses
  %i.qz = load ptr, ptr %i.qt, align 8, !tbaa !349, !nonnull !72, !align !194 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 56
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !350
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !302
  %i.re = mul i64 %i.rd, %.sroa.7.0130
  %i.rf = getelementptr [16 x i8], ptr %i.rb, i64 %i.re ; 6 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load atomic i32, ptr %i.rg seq_cst, align 4
  %.not.i.i43 = icmp eq i32 %i.rh, 0
  br i1 %.not.i.i43, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i44, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.rf)
          to label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i44 unwind label %bb.be

_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i44: ; preds = %bb.ax, %bb.aw
  %i.ri = load ptr, ptr %i.rf, align 8, !tbaa !69 ; 2 uses
  %i.rj = icmp eq ptr %i.ri, null
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6Filter17meanCurvatureImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %.sroa.0.1.i.i.i.i51 = phi i32 [ %i.rt, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52 ], [ %.sroa.0.02.i.i.i.i49, %bb.ba ]
  %i.rv = atomicrmw xchg ptr %i.rk, i8 1 seq_cst, align 1
  %i.rw = trunc i8 %i.rv to i1
  br i1 %i.rw, label %.lr.ph.i.i.i.i48, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50, %bb.ay
  %i.rx = load ptr, ptr %i.rf, align 8, !tbaa !69 ; 2 uses
  %i.ry = icmp eq ptr %i.rx, null
  br i1 %i.ry, label %bb.bb, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46

bb.bb:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45
  %i.rz = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #26
          to label %bb.bc unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.rz, ptr %i.rf, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47: ; preds = %bb.bb
  %i.sa = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.rk release, align 1
  br label %.body56

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46: ; preds = %bb.bc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45
  %i.sb = phi ptr [ %i.rz, %bb.bc ], [ %i.rx, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45 ]
  store atomic i8 0, ptr %i.rk release, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i44, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46
  %i.sc = phi ptr [ %i.sb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46 ], [ %i.ri, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i44 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.sd = load ptr, ptr %i.qt, align 8, !tbaa !349, !nonnull !72, !align !194
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 40
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !351
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %.sroa.7.0130
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !352
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.sh)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.bd
  %i.si = load i32, ptr %i.qu, align 8, !tbaa !201
  %.not111127 = icmp eq i32 %i.si, 512
  br i1 %.not111127, label %._crit_edge129, label %.lr.ph128

._crit_edge129:                                   ; preds = %.lr.ph187.6, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit81, %.lr.ph.i.i.i.i75.preheader, %.lr.ph.i.i.i.i75, %.lr.ph.i.i.i.i75.1, %.lr.ph.i.i.i.i75.2, %.lr.ph.i.i.i.i75.3, %.lr.ph.i.i.i.i75.4, %.lr.ph.i.i.i.i75.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.sj = add nuw i64 %.sroa.7.0130, 1            ; 2 uses
  %i.sk = load i64, ptr %1, align 8, !tbaa !317
  %i.sl = icmp ult i64 %i.sj, %i.sk
  br i1 %i.sl, label %bb.aw, label %.loopexit112, !llvm.loop !733

bb.be:                                            ; preds = %bb.ax
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.loopexit:                                        ; preds = %.lr.ph128, %.noexc64
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body56

.lr.ph128:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit81
  %i.sn = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc64 unwind label %.loopexit ; 3 uses

.noexc64:                                         ; preds = %.lr.ph128
  %i.so = load i32, ptr %i.qu, align 8, !tbaa !201 ; 4 uses
  %i.sp = lshr i32 %i.so, 6
  %i.sq = lshr i32 %i.so, 3
  %i.sr = and i32 %i.sq, 7
  %i.ss = and i32 %i.so, 7
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 80
  %i.su = load i32, ptr %i.st, align 8, !tbaa !124
  %i.sv = add nsw i32 %i.su, %i.sp
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sn, i64 84
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !124
  %i.sy = add nsw i32 %i.sx, %i.sr
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sn, i64 88
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !124
  %i.tb = add nsw i32 %i.ta, %i.ss
  %.sroa.2.0.insert.ext.i.i.i.i59 = zext i32 %i.sy to i64
  %.sroa.2.0.insert.shift.i.i.i.i60 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i59, 32
  %.sroa.0.0.insert.ext.i9.i.i.i61 = zext i32 %i.sv to i64
  %.sroa.0.0.insert.insert.i10.i.i.i62 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i60, %.sroa.0.0.insert.ext.i9.i.i.i61
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i62, ptr %i.qv, align 8
  store i32 %i.tb, ptr %.sroa.4.0..sroa_idx.i63, align 8, !tbaa !69
  %i.tc = load ptr, ptr %i.qw, align 8, !tbaa !360
  %i.td = zext i32 %i.so to i64
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.td
  %i.tf = load double, ptr %i.te, align 8, !tbaa !113
  %i.tg = load ptr, ptr %i.qx, align 8, !tbaa !362
  store double %i.tf, ptr %i.tg, align 8, !tbaa !113
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.qv)
          to label %bb.bg unwind label %.loopexit

bb.bg:                                            ; preds = %.noexc64
  %i.th = load i32, ptr %i.qu, align 8, !tbaa !201 ; 2 uses
  %i.ti = load ptr, ptr %i.qw, align 8, !tbaa !360
  %i.tj = zext i32 %i.th to i64                   ; 2 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %i.tj
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !113
  %i.tm = load ptr, ptr %i.qx, align 8, !tbaa !362 ; 18 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.tq = load <4 x double>, ptr %i.to, align 8, !tbaa !113 ; 2 uses
  %i.tr = load double, ptr %i.tp, align 8, !tbaa !113
  %i.ts = load double, ptr %i.tn, align 8, !tbaa !113
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tm, i64 48
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !113 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !113 ; 2 uses
  %i.tx = fsub double %i.tu, %i.tw
  %i.ty = fmul double %i.tx, 5.000000e-01         ; 4 uses
  %i.tz = insertelement <2 x double> poison, double %i.ts, i64 0
  %i.ua = insertelement <2 x double> %i.tz, double %i.tr, i64 1
  %i.ub = shufflevector <4 x double> %i.tq, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.uc = fsub <2 x double> %i.ua, %i.ub
  %i.ud = fmul <2 x double> %i.uc, splat (double 5.000000e-01) ; 4 uses
  %i.ue = fmul <2 x double> %i.ud, %i.ud          ; 2 uses
  %i.uf = fmul double %i.ty, %i.ty                ; 2 uses
  %i.ug = extractelement <2 x double> %i.ue, i64 0 ; 2 uses
  %i.uh = extractelement <2 x double> %i.ue, i64 1 ; 2 uses
  %i.ui = fadd double %i.ug, %i.uh
  %i.uj = fadd double %i.ui, %i.uf                ; 2 uses
  %i.uk = fcmp ugt double %i.uj, 1.000000e-15
  br i1 %i.uk, label %bb.bh, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68

bb.bh:                                            ; preds = %bb.bg
  %i.ul = load double, ptr %i.tm, align 8, !tbaa !113 ; 2 uses
  %i.um = insertelement <2 x double> poison, double %i.ul, i64 0
  %i.un = shufflevector <2 x double> %i.um, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uo = shufflevector <4 x double> %i.tq, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.up = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.un, <2 x double> splat (double -2.000000e+00), <2 x double> %i.uo)
  %i.uq = fadd <2 x double> %i.ub, %i.up          ; 2 uses
  %i.ur = call double @llvm.fmuladd.f64(double %i.ul, double -2.000000e+00, double %i.tu)
  %i.us = fadd double %i.tw, %i.ur                ; 2 uses
  %i.ut = extractelement <2 x double> %i.uq, i64 1 ; 2 uses
  %i.uu = fadd double %i.ut, %i.us
  %i.uv = extractelement <2 x double> %i.uq, i64 0 ; 2 uses
  %i.uw = fadd double %i.uv, %i.us
  %i.ux = fmul double %i.uh, %i.uw
  %i.uy = call double @llvm.fmuladd.f64(double %i.ug, double %i.uu, double %i.ux)
  %i.uz = fadd double %i.uv, %i.ut
  %i.va = call double @llvm.fmuladd.f64(double %i.uf, double %i.uz, double %i.uy)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tm, i64 80
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !113
  %i.vd = getelementptr inbounds nuw i8, ptr %i.tm, i64 64
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !113
  %i.vf = fsub double %i.vc, %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.tm, i64 56
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !113
  %i.vi = fadd double %i.vf, %i.vh
  %i.vj = getelementptr inbounds nuw i8, ptr %i.tm, i64 72
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !113
  %i.vl = fsub double %i.vi, %i.vk
  %i.vm = fmul double %i.vl, 2.500000e-01
  %i.vn = getelementptr inbounds nuw i8, ptr %i.tm, i64 112
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !113
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tm, i64 96
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !113
  %i.vr = fsub double %i.vo, %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %i.tm, i64 88
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !113
  %i.vu = fadd double %i.vr, %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.tm, i64 104
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !113
  %i.vx = fsub double %i.vu, %i.vw
  %i.vy = fmul double %i.vx, 2.500000e-01
  %i.vz = fmul double %i.ty, %i.vy
  %i.wa = extractelement <2 x double> %i.ud, i64 1 ; 2 uses
  %i.wb = call double @llvm.fmuladd.f64(double %i.wa, double %i.vm, double %i.vz)
  %i.wc = fmul double %i.wa, %i.ty
  %i.wd = getelementptr inbounds nuw i8, ptr %i.tm, i64 144
  %i.we = load double, ptr %i.wd, align 8, !tbaa !113
  %i.wf = getelementptr inbounds nuw i8, ptr %i.tm, i64 128
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !113
  %i.wh = fsub double %i.we, %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.tm, i64 120
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !113
  %i.wk = fadd double %i.wh, %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %i.tm, i64 136
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !113
  %i.wn = fsub double %i.wk, %i.wm
  %i.wo = fmul double %i.wn, 2.500000e-01
  %i.wp = fmul double %i.wc, %i.wo
  %i.wq = extractelement <2 x double> %i.ud, i64 0
  %i.wr = call double @llvm.fmuladd.f64(double %i.wq, double %i.wb, double %i.wp)
  %i.ws = call double @llvm.fmuladd.f64(double %i.wr, double -2.000000e+00, double %i.va)
  %sqrt.i.i67 = call double @llvm.sqrt.f64(double %i.uj) ; 2 uses
  %i.wt = load double, ptr %i.z, align 8, !tbaa !373
  %i.wu = fmul double %i.wt, %i.ws
  %i.wv = fmul double %sqrt.i.i67, %sqrt.i.i67
  %i.ww = fmul double %i.wv, 2.000000e+00
  %i.wx = fdiv double %i.wu, %i.ww
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68: ; preds = %bb.bh, %bb.bg
  %i.wy = phi double [ %i.wx, %bb.bh ], [ 0.000000e+00, %bb.bg ]
  %i.wz = call double @llvm.fmuladd.f64(double %i.u, double %i.wy, double %i.tl)
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.tj
  store double %i.wz, ptr %i.xa, align 8, !tbaa !113
  %i.xb = load ptr, ptr %i.qy, align 8, !tbaa !244 ; 8 uses
  %i.xc = add i32 %i.th, 1                        ; 4 uses
  %i.xd = lshr i32 %i.xc, 6                       ; 3 uses
  %i.xe = icmp ugt i32 %i.xc, 511
  br i1 %i.xe, label %._crit_edge129, label %bb.bi

bb.bi:                                            ; preds = %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68
  %i.xf = and i32 %i.xc, 63
  %i.xg = zext nneg i32 %i.xd to i64              ; 8 uses
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.xg
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !209 ; 2 uses
  %i.xj = zext nneg i32 %i.xf to i64              ; 2 uses
  %i.xk = shl nuw i64 1, %i.xj
  %i.xl = and i64 %i.xi, %i.xk
  %.not.i.i.i.i69 = icmp eq i64 %i.xl, 0
  br i1 %.not.i.i.i.i69, label %bb.bj, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit81

bb.bj:                                            ; preds = %bb.bi
  %i.xm = shl nsw i64 -1, %i.xj
  %i.xn = and i64 %i.xi, %i.xm                    ; 2 uses
  %.not2226.i.i.i.i71 = icmp eq i64 %i.xn, 0
  br i1 %.not2226.i.i.i.i71, label %.lr.ph.i.i.i.i75.preheader, label %.critedge.i.i.i.i72

.lr.ph.i.i.i.i75.preheader:                       ; preds = %bb.bj
  %exitcond.not.i.i.i.i77185 = icmp eq i32 %i.xd, 7
  br i1 %exitcond.not.i.i.i.i77185, label %._crit_edge129, label %.lr.ph187

.lr.ph.i.i.i.i75:                                 ; preds = %.lr.ph187
  %exitcond.not.i.i.i.i77 = icmp eq i64 %indvars.iv.next.i.i.i.i78, 7
  br i1 %exitcond.not.i.i.i.i77, label %._crit_edge129, label %.lr.ph187.1

.lr.ph187.1:                                      ; preds = %.lr.ph.i.i.i.i75
  %indvars.iv.next.i.i.i.i78.1 = add nuw nsw i64 %i.xg, 2 ; 3 uses
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i.i.i.i78.1
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.1 = icmp eq i64 %i.xp, 0
  br i1 %.not22.i.i.i.i79.1, label %.lr.ph.i.i.i.i75.1, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.1:                               ; preds = %.lr.ph187.1
  %exitcond.not.i.i.i.i77.1 = icmp eq i64 %indvars.iv.next.i.i.i.i78.1, 7
  br i1 %exitcond.not.i.i.i.i77.1, label %._crit_edge129, label %.lr.ph187.2

.lr.ph187.2:                                      ; preds = %.lr.ph.i.i.i.i75.1
  %indvars.iv.next.i.i.i.i78.2 = add nuw nsw i64 %i.xg, 3 ; 3 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i.i.i.i78.2
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.2 = icmp eq i64 %i.xr, 0
  br i1 %.not22.i.i.i.i79.2, label %.lr.ph.i.i.i.i75.2, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.2:                               ; preds = %.lr.ph187.2
  %exitcond.not.i.i.i.i77.2 = icmp eq i64 %indvars.iv.next.i.i.i.i78.2, 7
  br i1 %exitcond.not.i.i.i.i77.2, label %._crit_edge129, label %.lr.ph187.3

.lr.ph187.3:                                      ; preds = %.lr.ph.i.i.i.i75.2
  %indvars.iv.next.i.i.i.i78.3 = add nuw nsw i64 %i.xg, 4 ; 3 uses
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i.i.i.i78.3
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.3 = icmp eq i64 %i.xt, 0
  br i1 %.not22.i.i.i.i79.3, label %.lr.ph.i.i.i.i75.3, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.3:                               ; preds = %.lr.ph187.3
  %exitcond.not.i.i.i.i77.3 = icmp eq i64 %indvars.iv.next.i.i.i.i78.3, 7
  br i1 %exitcond.not.i.i.i.i77.3, label %._crit_edge129, label %.lr.ph187.4

.lr.ph187.4:                                      ; preds = %.lr.ph.i.i.i.i75.3
  %indvars.iv.next.i.i.i.i78.4 = add nuw nsw i64 %i.xg, 5 ; 3 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i.i.i.i78.4
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.4 = icmp eq i64 %i.xv, 0
  br i1 %.not22.i.i.i.i79.4, label %.lr.ph.i.i.i.i75.4, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.4:                               ; preds = %.lr.ph187.4
  %exitcond.not.i.i.i.i77.4 = icmp eq i64 %indvars.iv.next.i.i.i.i78.4, 7
  br i1 %exitcond.not.i.i.i.i77.4, label %._crit_edge129, label %.lr.ph187.5

.lr.ph187.5:                                      ; preds = %.lr.ph.i.i.i.i75.4
  %indvars.iv.next.i.i.i.i78.5 = add nuw nsw i64 %i.xg, 6 ; 3 uses
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i.i.i.i78.5
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.5 = icmp eq i64 %i.xx, 0
  br i1 %.not22.i.i.i.i79.5, label %.lr.ph.i.i.i.i75.5, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.5:                               ; preds = %.lr.ph187.5
  %exitcond.not.i.i.i.i77.5 = icmp eq i64 %indvars.iv.next.i.i.i.i78.5, 7
  br i1 %exitcond.not.i.i.i.i77.5, label %._crit_edge129, label %.lr.ph187.6

.lr.ph187.6:                                      ; preds = %.lr.ph.i.i.i.i75.5
  %indvars.iv.next.i.i.i.i78.6 = add nuw nsw i64 %i.xg, 7 ; 2 uses
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i.i.i.i78.6
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.6 = icmp eq i64 %i.xz, 0
  br i1 %.not22.i.i.i.i79.6, label %._crit_edge129, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph187:                                        ; preds = %.lr.ph.i.i.i.i75.preheader
  %indvars.iv.next.i.i.i.i78 = add nuw nsw i64 %i.xg, 1 ; 3 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %indvars.iv.next.i.i.i.i78
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79 = icmp eq i64 %i.yb, 0
  br i1 %.not22.i.i.i.i79, label %.lr.ph.i.i.i.i75, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.critedge.loopexit.i.i.i.i80:                     ; preds = %.lr.ph187.6, %.lr.ph187.5, %.lr.ph187.4, %.lr.ph187.3, %.lr.ph187.2, %.lr.ph187.1, %.lr.ph187
  %indvars.iv.next.i.i.i.i78.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i78, %.lr.ph187 ], [ %indvars.iv.next.i.i.i.i78.1, %.lr.ph187.1 ], [ %indvars.iv.next.i.i.i.i78.2, %.lr.ph187.2 ], [ %indvars.iv.next.i.i.i.i78.3, %.lr.ph187.3 ], [ %indvars.iv.next.i.i.i.i78.4, %.lr.ph187.4 ], [ %indvars.iv.next.i.i.i.i78.5, %.lr.ph187.5 ], [ %indvars.iv.next.i.i.i.i78.6, %.lr.ph187.6 ]
  %.lcssa = phi i64 [ %i.yb, %.lr.ph187 ], [ %i.xp, %.lr.ph187.1 ], [ %i.xr, %.lr.ph187.2 ], [ %i.xt, %.lr.ph187.3 ], [ %i.xv, %.lr.ph187.4 ], [ %i.xx, %.lr.ph187.5 ], [ %i.xz, %.lr.ph187.6 ]
  %i.yc = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i78.lcssa to i32
  br label %.critedge.i.i.i.i72

.critedge.i.i.i.i72:                              ; preds = %.critedge.loopexit.i.i.i.i80, %bb.bj
  %.016.lcssa.i.i.i.i73 = phi i32 [ %i.xd, %bb.bj ], [ %i.yc, %.critedge.loopexit.i.i.i.i80 ]
  %.0.lcssa.i.i.i.i74 = phi i64 [ %i.xn, %bb.bj ], [ %.lcssa, %.critedge.loopexit.i.i.i.i80 ]
  %i.yd = shl nuw nsw i32 %.016.lcssa.i.i.i.i73, 6
  %i.ye = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i74, i1 true)
  %i.yf = trunc nuw nsw i64 %i.ye to i32
  %i.yg = or disjoint i32 %i.yd, %i.yf
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit81

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit81: ; preds = %bb.bi, %.critedge.i.i.i.i72
  %.118.i.i.i.i70 = phi i32 [ %i.yg, %.critedge.i.i.i.i72 ], [ %i.xc, %bb.bi ] ; 2 uses
  store i32 %.118.i.i.i.i70, ptr %i.qu, align 8, !tbaa !201
  %.not111 = icmp eq i32 %.118.i.i.i.i70, 512
  br i1 %.not111, label %._crit_edge129, label %.lr.ph128

.loopexit112:                                     ; preds = %._crit_edge129, %bb.av, %_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEfED2Ev.exit
  %i.yh = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !362 ; 3 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.yi, null
  br i1 %.not.i.i.i.i82, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %.loopexit112
  %i.yj = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !364
  %i.yl = ptrtoint ptr %i.yk to i64
  %i.ym = ptrtoint ptr %i.yi to i64
  %i.yn = sub i64 %i.yl, %i.ym
  call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef %i.yn) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.bk, %.loopexit112
  %i.yo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.yo, align 8, !tbaa !45
  %i.yp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !365 ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.yq, null
  br i1 %.not.i.i83, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.yo, ptr %i.a, align 8, !tbaa !367
  %i.ys = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.yr, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.bm, !inline_history !368 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit

bb.bm:                                            ; preds = %bb.bl
  %i.yt = landingpad { ptr, i32 }
          catch ptr null
  %i.yu = extractvalue { ptr, i32 } %i.yt, 0
  call void @__clang_call_terminate(ptr %i.yu) #27, !inline_history !368
  unreachable

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

.body56:                                          ; preds = %bb.bf, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47, %bb.be, %bb.au
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %bb.au ], [ %i.sa, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47 ], [ %lpad.phi, %bb.bf ], [ %i.sm, %bb.be ]
  call void @_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 6 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.openvdb::v13_0::math::CurvatureStencil.135", align 8 ; 19 uses
  %6 = alloca %"class.openvdb::v13_0::tools::AlphaMask.127", align 8 ; 15 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter", align 8 ; 9 uses
  %8 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %9 = alloca %"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter", align 8 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !282
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %i.ip = or disjoint i32 %i.io, %i.im            ; 2 uses
  %i.iq = lshr i32 %i.dq, 7
  %i.ir = and i32 %i.iq, 31
  %i.is = or disjoint i32 %i.ip, %i.ir            ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 262144
  %i.iu = lshr i32 %i.ip, 6
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !209
  %i.iy = and i32 %i.is, 63
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl nuw i64 1, %i.iz
  %i.jb = and i64 %i.ix, %i.ja
  %.not.i.i107 = icmp eq i64 %i.jb, 0
  %i.jc = zext nneg i32 %i.is to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.jc ; 3 uses
  br i1 %.not.i.i107, label %.noexc45, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !69
  %i.jf = and i32 %i.dn, -128
  %i.jg = and i32 %i.dq, -128
  %.sroa.2.0.insert.ext.i.i.i108 = zext i32 %i.jf to i64
  %.sroa.2.0.insert.shift.i.i.i109 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i108, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.er to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i109, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.es, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  store i32 %i.jg, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !69
  %i.jh = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  store ptr %i.je, ptr %i.jh, align 8, !tbaa !210
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i, %bb.x, %bb.ah
  %.in = phi ptr [ %i.jd, %bb.ah ], [ %i.gk, %bb.x ], [ %i.fd, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i ]
  %i.ji = load ptr, ptr %.in, align 8, !tbaa !69
  %i.jj = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.ji, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(96) %i.dt)
          to label %.noexc45 unwind label %bb.ap

bb.ai:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc45

.noexc45:                                         ; preds = %.invoke, %bb.w, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i, %bb.ai, %bb.ag, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.eq, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i ], [ %i.jd, %bb.ag ], [ %i.jj, %.invoke ], [ %i.gk, %bb.w ], [ %i.ie, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.jk, %bb.ai ]
  %i.jl = load float, ptr %.1.i.i, align 4, !tbaa !47
  br label %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i

bb.aj:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.jm = load ptr, ptr %i.aw, align 8, !tbaa !223
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !228, !noalias !747 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !747
  %i.jo = sitofp i32 %i.dk to double
  %i.jp = sitofp i32 %i.dn to double
  %i.jq = sitofp i32 %i.dq to double
  store double %i.jo, ptr %2, align 8, !tbaa !113, !alias.scope !748, !noalias !747
  store double %i.jp, ptr %i.ax, align 8, !tbaa !113, !alias.scope !748, !noalias !747
  store double %i.jq, ptr %i.ay, align 8, !tbaa !113, !alias.scope !748, !noalias !747
  %i.jr = load ptr, ptr %i.jn, align 8, !tbaa !45, !noalias !747
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !747
  invoke void %i.jt(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc46 unwind label %bb.ap, !inline_history !11

.noexc46:                                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !747
  %i.ju = load ptr, ptr %i.au, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.jv = load ptr, ptr %i.az, align 8, !tbaa !229
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !228, !noalias !749 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !45, !noalias !749
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 64
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !749
  invoke void %i.jz(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc47 unwind label %bb.ap, !inline_history !11

.noexc47:                                         ; preds = %.noexc46
  %i.ka = invoke noundef float @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEENT_9ValueTypeERKSJ_RKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(96) %i.ju, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc48 unwind label %bb.ap

.noexc48:                                         ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i

_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i: ; preds = %.noexc48, %.noexc45
  %.0.i.i = phi float [ %i.jl, %.noexc45 ], [ %i.ka, %.noexc48 ]
  %i.kb = load float, ptr %i.ba, align 8, !tbaa !354
  %i.kc = fsub float %.0.i.i, %i.kb
  %i.kd = load float, ptr %i.bb, align 4, !tbaa !355
  %i.ke = fmul float %i.kc, %i.kd                 ; 5 uses
  %i.kf = fcmp ogt float %i.ke, 0.000000e+00
  br i1 %i.kf, label %bb.ak, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.ak:                                            ; preds = %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.kg = fcmp olt float %i.ke, 1.000000e+00
  br i1 %i.kg, label %bb.al, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.kh = call nnan float @llvm.fmuladd.f32(float %i.ke, float -2.000000e+00, float 3.000000e+00)
  %i.ki = fmul nnan float %i.ke, %i.kh
  %i.kj = fmul nnan float %i.ke, %i.ki
  br label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i: ; preds = %bb.al, %bb.ak, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.kk = phi float [ 1.000000e+00, %bb.ak ], [ %i.kj, %bb.al ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i ] ; 3 uses
  %i.kl = fsub float 1.000000e+00, %i.kk          ; 2 uses
  %i.km = load i8, ptr %i.bc, align 8, !tbaa !356, !range !71, !noundef !72
  %i.kn = trunc nuw i8 %i.km to i1                ; 2 uses
  %.0137 = select i1 %i.kn, float %i.kl, float %i.kk ; 2 uses
  %.0 = select i1 %i.kn, float %i.kk, float %i.kl
  %i.ko = fcmp ogt float %.0137, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.ko, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.at, align 8, !tbaa !201
  br label %bb.aq

bb.am:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kp = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc49 unwind label %.loopexit164 ; 3 uses

.noexc49:                                         ; preds = %bb.am
  %i.kq = load i32, ptr %i.at, align 8, !tbaa !201 ; 4 uses
  %i.kr = lshr i32 %i.kq, 6
  %i.ks = lshr i32 %i.kq, 3
  %i.kt = and i32 %i.ks, 7
  %i.ku = and i32 %i.kq, 7
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 80
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !124
  %i.kx = add nsw i32 %i.kw, %i.kr
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 84
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !124
  %i.la = add nsw i32 %i.kz, %i.kt
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 88
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !124
  %i.ld = add nsw i32 %i.lc, %i.ku
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.la to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i9.i.i.i = zext i32 %i.kx to i64
  %.sroa.0.0.insert.insert.i10.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i9.i.i.i
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i, ptr %i.bd, align 8
  store i32 %i.ld, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !69
  %i.le = load ptr, ptr %i.be, align 8, !tbaa !360
  %i.lf = zext i32 %i.kq to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !113
  %i.li = load ptr, ptr %i.bf, align 8, !tbaa !362
  store double %i.lh, ptr %i.li, align 8, !tbaa !113
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.bd)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit unwind label %.loopexit164

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit: ; preds = %.noexc49
  %i.lj = load ptr, ptr %i.bf, align 8, !tbaa !362 ; 7 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.ln = load <4 x double>, ptr %i.ll, align 8, !tbaa !113 ; 2 uses
  %i.lo = load double, ptr %i.lk, align 8, !tbaa !113
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !113 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ls = load double, ptr %i.lm, align 8, !tbaa !113
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !113 ; 2 uses
  %i.lu = fsub double %i.lq, %i.lt
  %i.lv = fmul double %i.lu, 5.000000e-01         ; 5 uses
  %i.lw = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.lx = insertelement <2 x double> %i.lw, double %i.ls, i64 1
  %i.ly = shufflevector <4 x double> %i.ln, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lz = fsub <2 x double> %i.lx, %i.ly
  %i.ma = fmul <2 x double> %i.lz, splat (double 5.000000e-01) ; 6 uses
  %i.mb = fmul <2 x double> %i.ma, %i.ma          ; 2 uses
  %i.mc = fmul double %i.lv, %i.lv                ; 3 uses
  %i.md = extractelement <2 x double> %i.mb, i64 0 ; 3 uses
  %i.me = extractelement <2 x double> %i.mb, i64 1 ; 3 uses
  %i.mf = fadd double %i.md, %i.me
  %i.mg = fadd double %i.mf, %i.mc                ; 2 uses
  %i.mh = fcmp ugt double %i.mg, 1.000000e-15
  br i1 %i.mh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %i.mi = load double, ptr %i.lj, align 8, !tbaa !113 ; 2 uses
  %i.mj = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = shufflevector <4 x double> %i.ln, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ml)
  %i.mn = fadd <2 x double> %i.ly, %i.mm          ; 5 uses
  %i.mo = call double @llvm.fmuladd.f64(double %i.mi, double -2.000000e+00, double %i.lq)
  %i.mp = fadd double %i.lt, %i.mo                ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lj, i64 56
  %i.mr = extractelement <2 x double> %i.mn, i64 1 ; 4 uses
  %i.ms = extractelement <2 x double> %i.mn, i64 0 ; 3 uses
  %i.mt = extractelement <2 x double> %i.ma, i64 0 ; 2 uses
  %i.mu = fmul double %i.mt, %i.lv
  %i.mv = fneg double %i.mr
  %i.mw = extractelement <2 x double> %i.ma, i64 1 ; 2 uses
  %i.mx = fmul double %i.mt, %i.mw
  %i.my = fneg double %i.mp
  %sqrt.i = call double @llvm.sqrt.f64(double %i.mg) ; 3 uses
  %i.mz = load <2 x double>, ptr %i.x, align 8
  %i.na = load double, ptr %i.z, align 8, !tbaa !373
  %i.nb = fneg double %i.na
  %i.nc = load <12 x double>, ptr %i.mq, align 8, !tbaa !113 ; 8 uses
  %i.nd = shufflevector <12 x double> %i.nc, <12 x double> poison, <2 x i32> <i32 7, i32 3>
  %i.ne = shufflevector <12 x double> %i.nc, <12 x double> poison, <2 x i32> <i32 5, i32 1>
  %i.nf = fsub <2 x double> %i.nd, %i.ne
  %i.ng = shufflevector <12 x double> %i.nc, <12 x double> poison, <2 x i32> <i32 3, i32 11>
  %i.nh = shufflevector <12 x double> %i.nc, <12 x double> poison, <2 x i32> <i32 1, i32 9>
  %i.ni = fsub <2 x double> %i.ng, %i.nh
  %i.nj = shufflevector <12 x double> %i.nc, <12 x double> poison, <2 x i32> <i32 4, i32 0>
  %i.nk = fadd <2 x double> %i.nf, %i.nj
  %i.nl = shufflevector <12 x double> %i.nc, <12 x double> poison, <2 x i32> <i32 0, i32 8>
  %i.nm = fadd <2 x double> %i.ni, %i.nl
  %i.nn = shufflevector <12 x double> %i.nc, <12 x double> poison, <2 x i32> <i32 6, i32 2>
  %i.no = fsub <2 x double> %i.nk, %i.nn
  %i.np = shufflevector <12 x double> %i.nc, <12 x double> poison, <2 x i32> <i32 2, i32 10>
  %i.nq = fsub <2 x double> %i.nm, %i.np
  %i.nr = fmul <2 x double> %i.no, splat (double 2.500000e-01) ; 4 uses
  %i.ns = fmul <2 x double> %i.nq, splat (double 2.500000e-01) ; 6 uses
  %i.nt = fadd double %i.mr, %i.mp
  %i.nu = fadd double %i.ms, %i.mp
  %i.nv = fmul double %i.me, %i.nu
  %i.nw = call double @llvm.fmuladd.f64(double %i.md, double %i.nt, double %i.nv)
  %i.nx = fadd double %i.ms, %i.mr
  %i.ny = call double @llvm.fmuladd.f64(double %i.mc, double %i.nx, double %i.nw)
  %i.nz = fmul double %i.mw, %i.lv                ; 2 uses
  %i.oa = extractelement <2 x double> %i.ns, i64 1 ; 4 uses
  %i.ob = fmul double %i.nz, %i.oa
  %i.oc = fneg double %i.oa
  %i.od = fmul double %i.oa, %i.oc
  %i.oe = call double @llvm.fmuladd.f64(double %i.mr, double %i.mp, double %i.od)
  %i.of = extractelement <2 x double> %i.nr, i64 0 ; 3 uses
  %i.og = fneg double %i.of
  %i.oh = fmul double %i.of, %i.og
  %i.oi = call double @llvm.fmuladd.f64(double %i.ms, double %i.mp, double %i.oh)
  %i.oj = fmul double %i.me, %i.oi
  %i.ok = call double @llvm.fmuladd.f64(double %i.md, double %i.oe, double %i.oj)
  %i.ol = extractelement <2 x double> %i.ns, i64 0
  %i.om = shufflevector <2 x double> %i.ns, <2 x double> %i.mn, <2 x i32> <i32 0, i32 2>
  %i.on = fneg <2 x double> %i.om
  %i.oo = fmul <2 x double> %i.ns, %i.on
  %i.op = shufflevector <2 x double> %i.mn, <2 x double> %i.ns, <2 x i32> <i32 0, i32 2>
  %i.oq = shufflevector <2 x double> %i.mn, <2 x double> %i.nr, <2 x i32> <i32 1, i32 2>
  %i.or = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.op, <2 x double> %i.oq, <2 x double> %i.oo) ; 2 uses
  %i.os = extractelement <2 x double> %i.or, i64 0
  %i.ot = call double @llvm.fmuladd.f64(double %i.mc, double %i.os, double %i.ok)
  %i.ou = fmul double %i.of, %i.mv
  %i.ov = call double @llvm.fmuladd.f64(double %i.ol, double %i.oa, double %i.ou)
  %i.ow = fmul double %i.mu, %i.ov
  %i.ox = extractelement <2 x double> %i.or, i64 1
  %i.oy = call double @llvm.fmuladd.f64(double %i.nz, double %i.ox, double %i.ow)
  %i.oz = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.pa = insertelement <2 x double> %i.oz, double %i.my, i64 1
  %i.pb = fmul <2 x double> %i.pa, %i.nr
  %i.pc = shufflevector <2 x double> %i.ma, <2 x double> %i.nr, <2 x i32> <i32 1, i32 2>
  %i.pd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pc, <2 x double> %i.ns, <2 x double> %i.pb)
  %i.pe = insertelement <2 x double> %i.ma, double %i.mx, i64 1
  %i.pf = insertelement <2 x double> poison, double %i.ob, i64 0
  %i.pg = insertelement <2 x double> %i.pf, double %i.oy, i64 1
  %i.ph = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pe, <2 x double> %i.pd, <2 x double> %i.pg)
  %i.pi = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.pj = insertelement <2 x double> %i.pi, double %i.ot, i64 1
  %i.pk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.pj)
  %i.pl = fmul double %sqrt.i, %sqrt.i
  %i.pm = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.pn = insertelement <2 x double> %i.pm, double %i.pl, i64 1 ; 2 uses
  %i.po = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pp = fmul <2 x double> %i.pn, %i.po
  %i.pq = insertelement <2 x double> %i.mz, double %i.nb, i64 1
  %i.pr = fmul <2 x double> %i.pq, %i.pk
  %i.ps = fdiv <2 x double> %i.pr, %i.pp          ; 2 uses
  %i.pt = extractelement <2 x double> %i.ps, i64 0 ; 3 uses
  %i.pu = extractelement <2 x double> %i.ps, i64 1
  %i.pv = call double @llvm.fmuladd.f64(double %i.pt, double %i.pt, double %i.pu)
  %i.pw = call double @sqrt(double noundef %i.pv) #18
  %i.px = fsub double %i.pt, %i.pw
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %.sroa.0.0.i = phi double [ %i.px, %bb.an ], [ 0.000000e+00, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit ]
  %i.py = load i32, ptr %i.at, align 8, !tbaa !201 ; 2 uses
  %i.pz = load ptr, ptr %i.be, align 8, !tbaa !360
  %i.qa = zext i32 %i.py to i64                   ; 2 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.qa
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !113 ; 2 uses
  %i.qd = fmul double %i.u, %.sroa.0.0.i          ; 2 uses
  %i.qe = fcmp olt double %i.qd, 0.000000e+00
  %.sroa.speculated = select i1 %i.qe, double %i.qd, double 0.000000e+00
  %i.qf = fadd double %i.qc, %.sroa.speculated
  %i.qg = fpext float %.0 to double
  %i.qh = fpext float %.0137 to double
  %i.qi = fmul double %i.qf, %i.qh
  %i.qj = call double @llvm.fmuladd.f64(double %i.qg, double %i.qc, double %i.qi)
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.qa
  store double %i.qj, ptr %i.qk, align 8, !tbaa !113
  br label %bb.aq

bb.ap:                                            ; preds = %.invoke, %.noexc47, %.noexc46, %bb.aj, %.lr.ph
  %i.ql = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.at

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %bb.ao
  %i.qm = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.py, %bb.ao ]
  %i.qn = load ptr, ptr %i.bg, align 8, !tbaa !244 ; 8 uses
  %i.qo = add i32 %i.qm, 1                        ; 4 uses
  %i.qp = lshr i32 %i.qo, 6                       ; 3 uses
  %i.qq = icmp ugt i32 %i.qo, 511
  br i1 %i.qq, label %._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qr = and i32 %i.qo, 63
  %i.qs = zext nneg i32 %i.qp to i64              ; 8 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !209 ; 2 uses
  %i.qv = zext nneg i32 %i.qr to i64              ; 2 uses
  %i.qw = shl nuw i64 1, %i.qv
  %i.qx = and i64 %i.qu, %i.qw
  %.not.i.i.i.i = icmp eq i64 %i.qx, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.qy = shl nsw i64 -1, %i.qv
  %i.qz = and i64 %i.qu, %i.qy                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.qz, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i53.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i53.preheader:                       ; preds = %bb.as
  %exitcond.not.i.i.i.i235 = icmp eq i32 %i.qp, 7
  br i1 %exitcond.not.i.i.i.i235, label %._crit_edge, label %.lr.ph237

.lr.ph.i.i.i.i53:                                 ; preds = %.lr.ph237
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph237.1

.lr.ph237.1:                                      ; preds = %.lr.ph.i.i.i.i53
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.qs, 2 ; 3 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next.i.i.i.i.1
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.rb, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i53.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.1:                               ; preds = %.lr.ph237.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph237.2

.lr.ph237.2:                                      ; preds = %.lr.ph.i.i.i.i53.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.qs, 3 ; 3 uses
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next.i.i.i.i.2
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.rd, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i53.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.2:                               ; preds = %.lr.ph237.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph237.3

.lr.ph237.3:                                      ; preds = %.lr.ph.i.i.i.i53.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.qs, 4 ; 3 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next.i.i.i.i.3
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.rf, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i53.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.3:                               ; preds = %.lr.ph237.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph237.4

.lr.ph237.4:                                      ; preds = %.lr.ph.i.i.i.i53.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.qs, 5 ; 3 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next.i.i.i.i.4
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.rh, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i53.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.4:                               ; preds = %.lr.ph237.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph237.5

.lr.ph237.5:                                      ; preds = %.lr.ph.i.i.i.i53.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.qs, 6 ; 3 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next.i.i.i.i.5
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.rj, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i53.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.5:                               ; preds = %.lr.ph237.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph237.6

.lr.ph237.6:                                      ; preds = %.lr.ph.i.i.i.i53.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.qs, 7 ; 2 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv.next.i.i.i.i.6
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.rl, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph237:                                        ; preds = %.lr.ph.i.i.i.i53.preheader
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  br i1 %i.ss, label %.lr.ph.i.i.i.i.i.i66.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i66.preheader:                   ; preds = %bb.az
  %xtraiter250 = and i32 %.sroa.0.02.i.i.i.i62, 7 ; 2 uses
  %lcmp.mod251.not = icmp eq i32 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %.lr.ph.i.i.i.i.i.i66.prol.loopexit, label %.lr.ph.i.i.i.i.i.i66.prol

.lr.ph.i.i.i.i.i.i66.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i66.preheader, %.lr.ph.i.i.i.i.i.i66.prol
  %.01.i.i.i.i.i.i67.prol = phi i32 [ %i.st, %.lr.ph.i.i.i.i.i.i66.prol ], [ %.sroa.0.02.i.i.i.i62, %.lr.ph.i.i.i.i.i.i66.preheader ]
  %prol.iter252 = phi i32 [ %prol.iter252.next, %.lr.ph.i.i.i.i.i.i66.prol ], [ 0, %.lr.ph.i.i.i.i.i.i66.preheader ]
  %i.st = add nsw i32 %.01.i.i.i.i.i.i67.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter252.next = add i32 %prol.iter252, 1   ; 2 uses
  %prol.iter252.cmp.not = icmp eq i32 %prol.iter252.next, %xtraiter250
  br i1 %prol.iter252.cmp.not, label %.lr.ph.i.i.i.i.i.i66.prol.loopexit, label %.lr.ph.i.i.i.i.i.i66.prol, !llvm.loop !745

.lr.ph.i.i.i.i.i.i66.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i66.prol, %.lr.ph.i.i.i.i.i.i66.preheader
  %.01.i.i.i.i.i.i67.unr = phi i32 [ %.sroa.0.02.i.i.i.i62, %.lr.ph.i.i.i.i.i.i66.preheader ], [ %i.st, %.lr.ph.i.i.i.i.i.i66.prol ]
  %i.su = icmp ult i32 %.sroa.0.02.i.i.i.i62, 8
  br i1 %i.su, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65, label %.lr.ph.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i66:                             ; preds = %.lr.ph.i.i.i.i.i.i66.prol.loopexit, %.lr.ph.i.i.i.i.i.i66
  %.01.i.i.i.i.i.i67 = phi i32 [ %i.sv, %.lr.ph.i.i.i.i.i.i66 ], [ %.01.i.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i.i66.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.sv = add nsw i32 %.01.i.i.i.i.i.i67, -8
  call void @llvm.x86.sse2.pause()
  %i.sw = icmp sgt i32 %.01.i.i.i.i.i.i67, 8
  br i1 %i.sw, label %.lr.ph.i.i.i.i.i.i66, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65, !llvm.loop !3

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65: ; preds = %.lr.ph.i.i.i.i.i.i66.prol.loopexit, %.lr.ph.i.i.i.i.i.i66, %bb.az
  %i.sx = shl i32 %.sroa.0.02.i.i.i.i62, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i61
  %i.sy = call noundef i32 @sched_yield() #18     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63: ; preds = %bb.ba, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65
  %.sroa.0.1.i.i.i.i64 = phi i32 [ %i.sx, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65 ], [ %.sroa.0.02.i.i.i.i62, %bb.ba ]
  %i.sz = atomicrmw xchg ptr %i.so, i8 1 seq_cst, align 1
  %i.ta = trunc i8 %i.sz to i1
  br i1 %i.ta, label %.lr.ph.i.i.i.i61, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63, %bb.ay
  %i.tb = load ptr, ptr %i.sj, align 8, !tbaa !69 ; 2 uses
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %bb.bb, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59

bb.bb:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58
  %i.td = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #26
          to label %bb.bc unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i60 ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.td, ptr %i.sj, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i60: ; preds = %bb.bb
  %i.te = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.so release, align 1
  br label %.body69

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59: ; preds = %bb.bc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58
  %i.tf = phi ptr [ %i.td, %bb.bc ], [ %i.tb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58 ]
  store atomic i8 0, ptr %i.so release, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i57, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59
  %i.tg = phi ptr [ %i.tf, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59 ], [ %i.sm, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i57 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.th = load ptr, ptr %i.rx, align 8, !tbaa !349, !nonnull !72, !align !194
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 40
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !351
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %.sroa.7.0180
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !352
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.tl)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.bd
  %i.tm = load i32, ptr %i.ry, align 8, !tbaa !201
  %.not161177 = icmp eq i32 %i.tm, 512
  br i1 %.not161177, label %._crit_edge179, label %.lr.ph178

._crit_edge179:                                   ; preds = %.lr.ph240.6, %.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit97, %.lr.ph.i.i.i.i91.preheader, %.lr.ph.i.i.i.i91, %.lr.ph.i.i.i.i91.1, %.lr.ph.i.i.i.i91.2, %.lr.ph.i.i.i.i91.3, %.lr.ph.i.i.i.i91.4, %.lr.ph.i.i.i.i91.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.tn = add nuw i64 %.sroa.7.0180, 1            ; 2 uses
  %i.to = load i64, ptr %1, align 8, !tbaa !317
  %i.tp = icmp ult i64 %i.tn, %i.to
  br i1 %i.tp, label %bb.aw, label %.loopexit162, !llvm.loop !746

bb.be:                                            ; preds = %bb.ax
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %.body69

.loopexit:                                        ; preds = %.lr.ph178, %.noexc77
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body69

.lr.ph178:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit97
  %i.tr = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc77 unwind label %.loopexit ; 3 uses

.noexc77:                                         ; preds = %.lr.ph178
  %i.ts = load i32, ptr %i.ry, align 8, !tbaa !201 ; 4 uses
  %i.tt = lshr i32 %i.ts, 6
  %i.tu = lshr i32 %i.ts, 3
  %i.tv = and i32 %i.tu, 7
  %i.tw = and i32 %i.ts, 7
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tr, i64 80
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !124
  %i.tz = add nsw i32 %i.ty, %i.tt
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tr, i64 84
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !124
  %i.uc = add nsw i32 %i.ub, %i.tv
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tr, i64 88
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !124
  %i.uf = add nsw i32 %i.ue, %i.tw
  %.sroa.2.0.insert.ext.i.i.i.i72 = zext i32 %i.uc to i64
  %.sroa.2.0.insert.shift.i.i.i.i73 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i72, 32
  %.sroa.0.0.insert.ext.i9.i.i.i74 = zext i32 %i.tz to i64
  %.sroa.0.0.insert.insert.i10.i.i.i75 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i73, %.sroa.0.0.insert.ext.i9.i.i.i74
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i75, ptr %i.rz, align 8
  store i32 %i.uf, ptr %.sroa.4.0..sroa_idx.i76, align 8, !tbaa !69
  %i.ug = load ptr, ptr %i.sa, align 8, !tbaa !360
  %i.uh = zext i32 %i.ts to i64
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.uh
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !113
  %i.uk = load ptr, ptr %i.sb, align 8, !tbaa !362
  store double %i.uj, ptr %i.uk, align 8, !tbaa !113
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.rz)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79 unwind label %.loopexit

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79: ; preds = %.noexc77
  %i.ul = load ptr, ptr %i.sb, align 8, !tbaa !362 ; 7 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 32
  %i.up = load <4 x double>, ptr %i.un, align 8, !tbaa !113 ; 2 uses
  %i.uq = load double, ptr %i.um, align 8, !tbaa !113
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ul, i64 48
  %i.us = load double, ptr %i.ur, align 8, !tbaa !113 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ul, i64 40
  %i.uu = load double, ptr %i.uo, align 8, !tbaa !113
  %i.uv = load double, ptr %i.ut, align 8, !tbaa !113 ; 2 uses
  %i.uw = fsub double %i.us, %i.uv
  %i.ux = fmul double %i.uw, 5.000000e-01         ; 5 uses
  %i.uy = insertelement <2 x double> poison, double %i.uq, i64 0
  %i.uz = insertelement <2 x double> %i.uy, double %i.uu, i64 1
  %i.va = shufflevector <4 x double> %i.up, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vb = fsub <2 x double> %i.uz, %i.va
  %i.vc = fmul <2 x double> %i.vb, splat (double 5.000000e-01) ; 6 uses
  %i.vd = fmul <2 x double> %i.vc, %i.vc          ; 2 uses
  %i.ve = fmul double %i.ux, %i.ux                ; 3 uses
  %i.vf = extractelement <2 x double> %i.vd, i64 0 ; 3 uses
  %i.vg = extractelement <2 x double> %i.vd, i64 1 ; 3 uses
  %i.vh = fadd double %i.vf, %i.vg
  %i.vi = fadd double %i.vh, %i.ve                ; 2 uses
  %i.vj = fcmp ugt double %i.vi, 1.000000e-15
  br i1 %i.vj, label %bb.bg, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79..thread_crit_edge

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79..thread_crit_edge: ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79
  %.pre186.a = load i32, ptr %i.ry, align 8, !tbaa !201
  br label %.thread

bb.bg:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79
  %i.vk = load double, ptr %i.ul, align 8, !tbaa !113 ; 2 uses
  %i.vl = insertelement <2 x double> poison, double %i.vk, i64 0
  %i.vm = shufflevector <2 x double> %i.vl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vn = shufflevector <4 x double> %i.up, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.vo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vm, <2 x double> splat (double -2.000000e+00), <2 x double> %i.vn)
  %i.vp = fadd <2 x double> %i.va, %i.vo          ; 5 uses
  %i.vq = call double @llvm.fmuladd.f64(double %i.vk, double -2.000000e+00, double %i.us)
  %i.vr = fadd double %i.uv, %i.vq                ; 5 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ul, i64 56
  %i.vt = extractelement <2 x double> %i.vp, i64 1 ; 4 uses
  %i.vu = extractelement <2 x double> %i.vp, i64 0 ; 3 uses
  %i.vv = extractelement <2 x double> %i.vc, i64 0 ; 2 uses
  %i.vw = fmul double %i.vv, %i.ux
  %i.vx = fneg double %i.vt
  %i.vy = extractelement <2 x double> %i.vc, i64 1 ; 2 uses
  %i.vz = fmul double %i.vv, %i.vy
  %i.wa = fneg double %i.vr
  %sqrt.i105 = call double @llvm.sqrt.f64(double %i.vi) ; 3 uses
  %i.wb = load <2 x double>, ptr %i.x, align 8
  %i.wc = load double, ptr %i.z, align 8, !tbaa !373
  %i.wd = fneg double %i.wc
  %i.we = load <12 x double>, ptr %i.vs, align 8, !tbaa !113 ; 8 uses
  %i.wf = shufflevector <12 x double> %i.we, <12 x double> poison, <2 x i32> <i32 7, i32 3>
  %i.wg = shufflevector <12 x double> %i.we, <12 x double> poison, <2 x i32> <i32 5, i32 1>
  %i.wh = fsub <2 x double> %i.wf, %i.wg
  %i.wi = shufflevector <12 x double> %i.we, <12 x double> poison, <2 x i32> <i32 3, i32 11>
  %i.wj = shufflevector <12 x double> %i.we, <12 x double> poison, <2 x i32> <i32 1, i32 9>
  %i.wk = fsub <2 x double> %i.wi, %i.wj
  %i.wl = shufflevector <12 x double> %i.we, <12 x double> poison, <2 x i32> <i32 4, i32 0>
  %i.wm = fadd <2 x double> %i.wh, %i.wl
  %i.wn = shufflevector <12 x double> %i.we, <12 x double> poison, <2 x i32> <i32 0, i32 8>
  %i.wo = fadd <2 x double> %i.wk, %i.wn
  %i.wp = shufflevector <12 x double> %i.we, <12 x double> poison, <2 x i32> <i32 6, i32 2>
  %i.wq = fsub <2 x double> %i.wm, %i.wp
  %i.wr = shufflevector <12 x double> %i.we, <12 x double> poison, <2 x i32> <i32 2, i32 10>
  %i.ws = fsub <2 x double> %i.wo, %i.wr
  %i.wt = fmul <2 x double> %i.wq, splat (double 2.500000e-01) ; 4 uses
  %i.wu = fmul <2 x double> %i.ws, splat (double 2.500000e-01) ; 6 uses
  %i.wv = fadd double %i.vt, %i.vr
  %i.ww = fadd double %i.vu, %i.vr
  %i.wx = fmul double %i.vg, %i.ww
  %i.wy = call double @llvm.fmuladd.f64(double %i.vf, double %i.wv, double %i.wx)
  %i.wz = fadd double %i.vu, %i.vt
  %i.xa = call double @llvm.fmuladd.f64(double %i.ve, double %i.wz, double %i.wy)
  %i.xb = fmul double %i.vy, %i.ux                ; 2 uses
  %i.xc = extractelement <2 x double> %i.wu, i64 1 ; 4 uses
  %i.xd = fmul double %i.xb, %i.xc
  %i.xe = fneg double %i.xc
  %i.xf = fmul double %i.xc, %i.xe
  %i.xg = call double @llvm.fmuladd.f64(double %i.vt, double %i.vr, double %i.xf)
  %i.xh = extractelement <2 x double> %i.wt, i64 0 ; 3 uses
  %i.xi = fneg double %i.xh
  %i.xj = fmul double %i.xh, %i.xi
  %i.xk = call double @llvm.fmuladd.f64(double %i.vu, double %i.vr, double %i.xj)
  %i.xl = fmul double %i.vg, %i.xk
  %i.xm = call double @llvm.fmuladd.f64(double %i.vf, double %i.xg, double %i.xl)
  %i.xn = extractelement <2 x double> %i.wu, i64 0
  %i.xo = shufflevector <2 x double> %i.wu, <2 x double> %i.vp, <2 x i32> <i32 0, i32 2>
  %i.xp = fneg <2 x double> %i.xo
  %i.xq = fmul <2 x double> %i.wu, %i.xp
  %i.xr = shufflevector <2 x double> %i.vp, <2 x double> %i.wu, <2 x i32> <i32 0, i32 2>
  %i.xs = shufflevector <2 x double> %i.vp, <2 x double> %i.wt, <2 x i32> <i32 1, i32 2>
  %i.xt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xr, <2 x double> %i.xs, <2 x double> %i.xq) ; 2 uses
  %i.xu = extractelement <2 x double> %i.xt, i64 0
  %i.xv = call double @llvm.fmuladd.f64(double %i.ve, double %i.xu, double %i.xm)
  %i.xw = fmul double %i.xh, %i.vx
  %i.xx = call double @llvm.fmuladd.f64(double %i.xn, double %i.xc, double %i.xw)
  %i.xy = fmul double %i.vw, %i.xx
  %i.xz = extractelement <2 x double> %i.xt, i64 1
  %i.ya = call double @llvm.fmuladd.f64(double %i.xb, double %i.xz, double %i.xy)
  %i.yb = insertelement <2 x double> poison, double %i.ux, i64 0
  %i.yc = insertelement <2 x double> %i.yb, double %i.wa, i64 1
  %i.yd = fmul <2 x double> %i.yc, %i.wt
  %i.ye = shufflevector <2 x double> %i.vc, <2 x double> %i.wt, <2 x i32> <i32 1, i32 2>
  %i.yf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ye, <2 x double> %i.wu, <2 x double> %i.yd)
  %i.yg = insertelement <2 x double> %i.vc, double %i.vz, i64 1
  %i.yh = insertelement <2 x double> poison, double %i.xd, i64 0
  %i.yi = insertelement <2 x double> %i.yh, double %i.ya, i64 1
  %i.yj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yg, <2 x double> %i.yf, <2 x double> %i.yi)
  %i.yk = insertelement <2 x double> poison, double %i.xa, i64 0
  %i.yl = insertelement <2 x double> %i.yk, double %i.xv, i64 1
  %i.ym = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yj, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.yl)
  %i.yn = fmul double %sqrt.i105, %sqrt.i105
  %i.yo = insertelement <2 x double> poison, double %sqrt.i105, i64 0
  %i.yp = insertelement <2 x double> %i.yo, double %i.yn, i64 1 ; 2 uses
  %i.yq = shufflevector <2 x double> %i.yp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.yr = fmul <2 x double> %i.yp, %i.yq
  %i.ys = insertelement <2 x double> %i.wb, double %i.wd, i64 1
  %i.yt = fmul <2 x double> %i.ys, %i.ym
  %i.yu = fdiv <2 x double> %i.yt, %i.yr          ; 2 uses
  %i.yv = extractelement <2 x double> %i.yu, i64 0 ; 3 uses
  %i.yw = extractelement <2 x double> %i.yu, i64 1
  %i.yx = call double @llvm.fmuladd.f64(double %i.yv, double %i.yv, double %i.yw)
  %i.yy = call double @sqrt(double noundef %i.yx) #18
  %i.yz = fsub double %i.yv, %i.yy                ; 2 uses
  %i.za = fcmp olt double %i.yz, 0.000000e+00
  %.pre187 = load i32, ptr %i.ry, align 8, !tbaa !201 ; 3 uses
  br i1 %i.za, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg
  %i.zb = load ptr, ptr %i.sa, align 8, !tbaa !360
  %i.zc = zext i32 %.pre187 to i64                ; 2 uses
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.zb, i64 %i.zc
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !113
  %i.zf = call double @llvm.fmuladd.f64(double %i.u, double %i.yz, double %i.ze)
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.zc
  store double %i.zf, ptr %i.zg, align 8, !tbaa !113
  br label %.thread

.thread:                                          ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79..thread_crit_edge, %bb.bh, %bb.bg
  %i.zh = phi i32 [ %.pre186.a, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79..thread_crit_edge ], [ %.pre187, %bb.bh ], [ %.pre187, %bb.bg ]
  %i.zi = load ptr, ptr %i.sc, align 8, !tbaa !244 ; 8 uses
  %i.zj = add i32 %i.zh, 1                        ; 4 uses
  %i.zk = lshr i32 %i.zj, 6                       ; 3 uses
  %i.zl = icmp ugt i32 %i.zj, 511
  br i1 %i.zl, label %._crit_edge179, label %bb.bi

bb.bi:                                            ; preds = %.thread
  %i.zm = and i32 %i.zj, 63
  %i.zn = zext nneg i32 %i.zk to i64              ; 8 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %i.zn
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !209 ; 2 uses
  %i.zq = zext nneg i32 %i.zm to i64              ; 2 uses
  %i.zr = shl nuw i64 1, %i.zq
  %i.zs = and i64 %i.zp, %i.zr
  %.not.i.i.i.i85 = icmp eq i64 %i.zs, 0
  br i1 %.not.i.i.i.i85, label %bb.bj, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit97

bb.bj:                                            ; preds = %bb.bi
  %i.zt = shl nsw i64 -1, %i.zq
  %i.zu = and i64 %i.zp, %i.zt                    ; 2 uses
  %.not2226.i.i.i.i87 = icmp eq i64 %i.zu, 0
  br i1 %.not2226.i.i.i.i87, label %.lr.ph.i.i.i.i91.preheader, label %.critedge.i.i.i.i88

.lr.ph.i.i.i.i91.preheader:                       ; preds = %bb.bj
  %exitcond.not.i.i.i.i93238 = icmp eq i32 %i.zk, 7
  br i1 %exitcond.not.i.i.i.i93238, label %._crit_edge179, label %.lr.ph240

.lr.ph.i.i.i.i91:                                 ; preds = %.lr.ph240
  %exitcond.not.i.i.i.i93 = icmp eq i64 %indvars.iv.next.i.i.i.i94, 7
  br i1 %exitcond.not.i.i.i.i93, label %._crit_edge179, label %.lr.ph240.1

.lr.ph240.1:                                      ; preds = %.lr.ph.i.i.i.i91
  %indvars.iv.next.i.i.i.i94.1 = add nuw nsw i64 %i.zn, 2 ; 3 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %indvars.iv.next.i.i.i.i94.1
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.1 = icmp eq i64 %i.zw, 0
  br i1 %.not22.i.i.i.i95.1, label %.lr.ph.i.i.i.i91.1, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.1:                               ; preds = %.lr.ph240.1
  %exitcond.not.i.i.i.i93.1 = icmp eq i64 %indvars.iv.next.i.i.i.i94.1, 7
  br i1 %exitcond.not.i.i.i.i93.1, label %._crit_edge179, label %.lr.ph240.2

.lr.ph240.2:                                      ; preds = %.lr.ph.i.i.i.i91.1
  %indvars.iv.next.i.i.i.i94.2 = add nuw nsw i64 %i.zn, 3 ; 3 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %indvars.iv.next.i.i.i.i94.2
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.2 = icmp eq i64 %i.zy, 0
  br i1 %.not22.i.i.i.i95.2, label %.lr.ph.i.i.i.i91.2, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.2:                               ; preds = %.lr.ph240.2
  %exitcond.not.i.i.i.i93.2 = icmp eq i64 %indvars.iv.next.i.i.i.i94.2, 7
  br i1 %exitcond.not.i.i.i.i93.2, label %._crit_edge179, label %.lr.ph240.3

.lr.ph240.3:                                      ; preds = %.lr.ph.i.i.i.i91.2
  %indvars.iv.next.i.i.i.i94.3 = add nuw nsw i64 %i.zn, 4 ; 3 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %indvars.iv.next.i.i.i.i94.3
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.3 = icmp eq i64 %i.aaa, 0
  br i1 %.not22.i.i.i.i95.3, label %.lr.ph.i.i.i.i91.3, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.3:                               ; preds = %.lr.ph240.3
  %exitcond.not.i.i.i.i93.3 = icmp eq i64 %indvars.iv.next.i.i.i.i94.3, 7
  br i1 %exitcond.not.i.i.i.i93.3, label %._crit_edge179, label %.lr.ph240.4

.lr.ph240.4:                                      ; preds = %.lr.ph.i.i.i.i91.3
  %indvars.iv.next.i.i.i.i94.4 = add nuw nsw i64 %i.zn, 5 ; 3 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %indvars.iv.next.i.i.i.i94.4
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.4 = icmp eq i64 %i.aac, 0
  br i1 %.not22.i.i.i.i95.4, label %.lr.ph.i.i.i.i91.4, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.4:                               ; preds = %.lr.ph240.4
  %exitcond.not.i.i.i.i93.4 = icmp eq i64 %indvars.iv.next.i.i.i.i94.4, 7
  br i1 %exitcond.not.i.i.i.i93.4, label %._crit_edge179, label %.lr.ph240.5

.lr.ph240.5:                                      ; preds = %.lr.ph.i.i.i.i91.4
  %indvars.iv.next.i.i.i.i94.5 = add nuw nsw i64 %i.zn, 6 ; 3 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %indvars.iv.next.i.i.i.i94.5
  %i.aae = load i64, ptr %i.aad, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.5 = icmp eq i64 %i.aae, 0
  br i1 %.not22.i.i.i.i95.5, label %.lr.ph.i.i.i.i91.5, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.5:                               ; preds = %.lr.ph240.5
  %exitcond.not.i.i.i.i93.5 = icmp eq i64 %indvars.iv.next.i.i.i.i94.5, 7
  br i1 %exitcond.not.i.i.i.i93.5, label %._crit_edge179, label %.lr.ph240.6

.lr.ph240.6:                                      ; preds = %.lr.ph.i.i.i.i91.5
  %indvars.iv.next.i.i.i.i94.6 = add nuw nsw i64 %i.zn, 7 ; 2 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %indvars.iv.next.i.i.i.i94.6
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.6 = icmp eq i64 %i.aag, 0
  br i1 %.not22.i.i.i.i95.6, label %._crit_edge179, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph240:                                        ; preds = %.lr.ph.i.i.i.i91.preheader
  %indvars.iv.next.i.i.i.i94 = add nuw nsw i64 %i.zn, 1 ; 3 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %indvars.iv.next.i.i.i.i94
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95 = icmp eq i64 %i.aai, 0
  br i1 %.not22.i.i.i.i95, label %.lr.ph.i.i.i.i91, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.critedge.loopexit.i.i.i.i96:                     ; preds = %.lr.ph240.6, %.lr.ph240.5, %.lr.ph240.4, %.lr.ph240.3, %.lr.ph240.2, %.lr.ph240.1, %.lr.ph240
  %indvars.iv.next.i.i.i.i94.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i94, %.lr.ph240 ], [ %indvars.iv.next.i.i.i.i94.1, %.lr.ph240.1 ], [ %indvars.iv.next.i.i.i.i94.2, %.lr.ph240.2 ], [ %indvars.iv.next.i.i.i.i94.3, %.lr.ph240.3 ], [ %indvars.iv.next.i.i.i.i94.4, %.lr.ph240.4 ], [ %indvars.iv.next.i.i.i.i94.5, %.lr.ph240.5 ], [ %indvars.iv.next.i.i.i.i94.6, %.lr.ph240.6 ]
  %.lcssa = phi i64 [ %i.aai, %.lr.ph240 ], [ %i.zw, %.lr.ph240.1 ], [ %i.zy, %.lr.ph240.2 ], [ %i.aaa, %.lr.ph240.3 ], [ %i.aac, %.lr.ph240.4 ], [ %i.aae, %.lr.ph240.5 ], [ %i.aag, %.lr.ph240.6 ]
  %i.aaj = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i94.lcssa to i32
  br label %.critedge.i.i.i.i88

.critedge.i.i.i.i88:                              ; preds = %.critedge.loopexit.i.i.i.i96, %bb.bj
end_hunk_7
begin_hunk_8_@_ZN7openvdb5v13_04math11GradStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE:bb.a
  store i32 %i.p, ptr %.sroa.216.0..sroa_idx, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %i.r = load double, ptr %i.q, align 8, !tbaa !113
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store double %i.r, ptr %i.t, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.u = load i32, ptr %1, align 4, !tbaa !124
  %i.v = load i32, ptr %i.d, align 4, !tbaa !124
  %i.w = add nsw i32 %i.v, -1
  %i.x = load i32, ptr %i.f, align 4, !tbaa !124
  %.sroa.2.0.insert.ext.i33 = zext i32 %i.w to i64
  %.sroa.2.0.insert.shift.i34 = shl nuw i64 %.sroa.2.0.insert.ext.i33, 32
  %.sroa.0.0.insert.ext.i35 = zext i32 %i.u to i64
  %.sroa.0.0.insert.insert.i36 = or disjoint i64 %.sroa.2.0.insert.shift.i34, %.sroa.0.0.insert.ext.i35
  store i64 %.sroa.0.0.insert.insert.i36, ptr %4, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.x, ptr %.sroa.212.0..sroa_idx, align 8
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %4)
  %i.z = load double, ptr %i.y, align 8, !tbaa !113
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store double %i.z, ptr %i.ab, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ac = load i32, ptr %1, align 4, !tbaa !124
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !124
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = load i32, ptr %i.f, align 4, !tbaa !124
  %.sroa.2.0.insert.ext.i39 = zext i32 %i.ae to i64
  %.sroa.2.0.insert.shift.i40 = shl nuw i64 %.sroa.2.0.insert.ext.i39, 32
  %.sroa.0.0.insert.ext.i41 = zext i32 %i.ac to i64
  %.sroa.0.0.insert.insert.i42 = or disjoint i64 %.sroa.2.0.insert.shift.i40, %.sroa.0.0.insert.ext.i41
  store i64 %.sroa.0.0.insert.insert.i42, ptr %5, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.af, ptr %.sroa.28.0..sroa_idx, align 8
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %5)
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !113
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store double %i.ah, ptr %i.aj, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ak = load i64, ptr %1, align 4
  %i.al = load i32, ptr %i.f, align 4, !tbaa !124
  %i.am = add nsw i32 %i.al, -1
  store i64 %i.ak, ptr %6, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.am, ptr %.sroa.24.0..sroa_idx, align 8
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %6)
  %i.ao = load double, ptr %i.an, align 8, !tbaa !113
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store double %i.ao, ptr %i.aq, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ar = load i64, ptr %1, align 4
  %i.as = load i32, ptr %i.f, align 4, !tbaa !124
  %i.at = add nsw i32 %i.as, 1
  store i64 %i.ar, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.at, ptr %.sroa.2.0..sroa_idx, align 8
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordE(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %7)
  %i.av = load double, ptr %i.au, align 8, !tbaa !113
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !362
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store double %i.av, ptr %i.ax, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEENS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !395    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !68
  store i8 0, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.51, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #18 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !69
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.17, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #25
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !69
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #9

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!36, !37}
!llvm.ident = !{!38}
!llvm.errno.tbaa = !{!43}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{!3, !116}
!4 = distinct !{!4, !116}
!5 = distinct !{!5, !116}
!6 = distinct !{null}
!7 = distinct !{!7, !116}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null, null}
!11 = distinct !{null}
!12 = distinct !{!12, !116}
!13 = distinct !{!13, !116}
!14 = distinct !{!14, !116}
!15 = distinct !{!15, !116}
!16 = distinct !{!16, !116}
!17 = distinct !{!17, !116}
!18 = distinct !{!18, !116}
!19 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!20 = distinct !{null, null, null, null}
!21 = distinct !{null, null}
!22 = distinct !{null}
!23 = distinct !{!23, !116}
!24 = distinct !{null}
!25 = distinct !{ptr @_ZNSt12__shared_ptrISt15basic_streambufIcSt11char_traitsIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!26 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io19DelayedLoadMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!27 = distinct !{ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!28 = distinct !{!28, !116}
!29 = distinct !{!29, !116}
!30 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7openvdb5v13_02io14StreamMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!31 = distinct !{null, null, null, null}
!32 = distinct !{null}
!33 = distinct !{null}
!34 = distinct !{!34, !116}
!35 = distinct !{!35, !116}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"omnipotent char", !39, i64 0}
!41 = !{!"int", !40, i64 0}
!42 = !{!"__libc_errno", !41, i64 0}
!43 = !{!42, !41, i64 0}
!44 = !{!"vtable pointer", !39, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"float", !40, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"any pointer", !40, i64 0}
!49 = !{!"p1 _ZTSN7openvdb5v13_04GridINS0_4tree4TreeINS2_8RootNodeINS2_12InternalNodeINS5_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !48, i64 0}
!50 = !{!"p1 _ZTSN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !48, i64 0}
!51 = !{!"p1 _ZTSN7openvdb5v13_04util15NullInterrupterE", !48, i64 0}
!52 = !{!"_ZTSN7openvdb5v13_04math20BiasedGradientSchemeE", !40, i64 0}
!53 = !{!"_ZTSN7openvdb5v13_04math25TemporalIntegrationSchemeE", !40, i64 0}
!54 = !{!"_ZTSN7openvdb5v13_05tools15LevelSetTrackerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE5StateE", !52, i64 0, !53, i64 4, !41, i64 8, !41, i64 12}
!55 = !{!"_ZTSN7openvdb5v13_05tools7lstrack8TrimModeE", !40, i64 0}
!56 = !{!"_ZTSN7openvdb5v13_05tools15LevelSetTrackerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEE", !49, i64 8, !50, i64 16, !51, i64 24, !46, i64 32, !54, i64 36, !55, i64 52}
!57 = !{!"bool", !40, i64 0}
!58 = !{!"_ZTSN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEEE", !56, i64 0, !46, i64 56, !46, i64 60, !57, i64 64}
!59 = !{!58, !57, i64 64}
!60 = !{!56, !50, i64 16}
!61 = !{!58, !46, i64 56}
!62 = !{!58, !46, i64 60}
!63 = !{!"p1 omnipotent char", !48, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !63, i64 0}
!65 = !{!64, !63, i64 0}
!66 = !{!"long", !40, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !64, i64 0, !66, i64 8, !40, i64 16}
!68 = !{!67, !66, i64 8}
!69 = !{!40, !40, i64 0}
!70 = !{!67, !63, i64 0}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!"p1 _ZTSN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEEE", !48, i64 0}
!74 = !{!"_ZTSSt14_Function_base", !40, i64 0, !48, i64 16}
!75 = !{!"_ZTSSt8functionIFvPN7openvdb5v13_05tools14LevelSetFilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESF_NS1_4util15NullInterrupterEE6FilterERKNS5_11LeafManagerISE_E9LeafRangeEEE", !74, i64 0, !48, i64 24}
!76 = !{!"_ZTSN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6FilterE", !73, i64 0, !49, i64 8, !75, i64 16}
!77 = !{!76, !73, i64 0}
!78 = !{!56, !51, i64 24}
!79 = !{!56, !41, i64 48}
!80 = !{!"p1 _ZTSN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEE", !48, i64 0}
!81 = !{!"any p2 pointer", !48, i64 0}
!82 = !{!"p2 _ZTSN7openvdb5v13_04tree8LeafNodeIfLj3EEE", !81, i64 0}
!83 = !{!"_ZTSSt10_Head_baseILm0EPPN7openvdb5v13_04tree8LeafNodeIfLj3EEELb0EE", !82, i64 0}
!84 = !{!"_ZTSSt11_Tuple_implILm0EJPPN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIA_S5_EEE", !83, i64 0}
!85 = !{!"_ZTSSt5tupleIJPPN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIA_S5_EEE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_implIPN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIA_S5_EE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_dataIPN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIA_S5_ELb1ELb1EE", !86, i64 0}
!88 = !{!"_ZTSSt10unique_ptrIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS6_EE", !87, i64 0}
!89 = !{!"p1 _ZTSN7openvdb5v13_04tree10LeafBufferIfLj3EEE", !48, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPN7openvdb5v13_04tree10LeafBufferIfLj3EEELb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJPN7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIA_S4_EEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJPN7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIA_S4_EEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implIN7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIA_S4_EE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataIN7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIA_S4_ELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EE", !94, i64 0}
!96 = !{!"_ZTSSt8functionIFvPN7openvdb5v13_04tree11LeafManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEERKN3tbb6detail2d113blocked_rangeImEEEE", !74, i64 0, !48, i64 24}
!97 = !{!"_ZTSN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEE", !80, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !88, i64 32, !82, i64 40, !95, i64 48, !89, i64 56, !96, i64 64}
!98 = !{!97, !66, i64 24}
!99 = !{!"_ZTSSt5tupleIJSt12_PlaceholderILi1EES0_ILi2EEEE"}
!100 = !{!"_ZTSSt5_BindIFMN7openvdb5v13_05tools14LevelSetFilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESF_NS1_4util15NullInterrupterEE6FilterEFvRKNS5_11LeafManagerISE_E9LeafRangeEESt12_PlaceholderILi1EESR_ILi2EEEE", !40, i64 0, !99, i64 16}
!101 = !{!100, !40, i64 0}
!102 = !{!"p1 _ZTSSt5_BindIFMN7openvdb5v13_05tools14LevelSetFilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESF_NS1_4util15NullInterrupterEE6FilterEFvRKNS5_11LeafManagerISE_E9LeafRangeEESt12_PlaceholderILi1EESR_ILi2EEEE", !48, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{i64 0, i64 16, !69}
!105 = !{!48, !48, i64 0}
!106 = !{!56, !46, i64 32}
!107 = !{!"double", !40, i64 0}
!108 = !{!"_ZTSSt10_Head_baseILm2EdLb0EE", !107, i64 0}
!109 = !{!"_ZTSSt11_Tuple_implILm2EJdEE", !108, i64 0}
!110 = !{!"_ZTSSt11_Tuple_implILm1EJSt12_PlaceholderILi2EEdEE", !109, i64 0}
!111 = !{!"_ZTSSt11_Tuple_implILm0EJSt12_PlaceholderILi1EES0_ILi2EEdEE", !110, i64 0}
!112 = !{!"_ZTSSt5tupleIJSt12_PlaceholderILi1EES0_ILi2EEdEE", !111, i64 0}
!113 = !{!107, !107, i64 0}
!114 = !{!"p1 _ZTSSt5_BindIFMN7openvdb5v13_05tools14LevelSetFilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESF_NS1_4util15NullInterrupterEE6FilterEFvRKNS5_11LeafManagerISE_E9LeafRangeEfESt12_PlaceholderILi1EESR_ILi2EEdEE", !48, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!"_ZTSSt10_Head_baseILm2EiLb0EE", !41, i64 0}
!118 = !{!"_ZTSSt11_Tuple_implILm2EJiEE", !117, i64 0}
!119 = !{!"_ZTSSt11_Tuple_implILm1EJSt12_PlaceholderILi2EEiEE", !118, i64 0}
!120 = !{!"_ZTSSt11_Tuple_implILm0EJSt12_PlaceholderILi1EES0_ILi2EEiEE", !119, i64 0}
!121 = !{!"_ZTSSt5tupleIJSt12_PlaceholderILi1EES0_ILi2EEiEE", !120, i64 0}
!122 = !{!"_ZTSSt5_BindIFMN7openvdb5v13_05tools14LevelSetFilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESF_NS1_4util15NullInterrupterEE6FilterEFvRKNS5_11LeafManagerISE_E9LeafRangeEiESt12_PlaceholderILi1EESR_ILi2EEiEE", !40, i64 0, !121, i64 16}
!123 = !{!122, !40, i64 0}
!124 = !{!41, !41, i64 0}
!125 = !{!"p1 _ZTSSt5_BindIFMN7openvdb5v13_05tools14LevelSetFilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESF_NS1_4util15NullInterrupterEE6FilterEFvRKNS5_11LeafManagerISE_E9LeafRangeEiESt12_PlaceholderILi1EESR_ILi2EEiEE", !48, i64 0}
!126 = !{!125, !125, i64 0}
!127 = !{!76, !49, i64 8}
!128 = !{!74, !48, i64 16}
!129 = !{!97, !66, i64 8}
!130 = !{!"_ZTSN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE9LeafRangeE", !66, i64 0, !66, i64 8, !66, i64 16, !50, i64 24}
!131 = !{!130, !66, i64 0}
!132 = !{!130, !66, i64 8}
!133 = !{!130, !66, i64 16}
!134 = !{!50, !50, i64 0}
!135 = !{!"_ZTSSt13__atomic_baseIjE", !41, i64 0}
!136 = !{!"_ZTSSt6atomicIjE", !135, i64 0}
!137 = !{!"_ZTSN3tbb6detail2d118task_group_context26task_group_context_versionE", !40, i64 0}
!138 = !{!"_ZTSN3tbb6detail2d118task_group_context14context_traitsE", !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0, !57, i64 0}
!139 = !{!"_ZTSSt13__atomic_baseIhE", !40, i64 0}
!140 = !{!"_ZTSSt6atomicIhE", !139, i64 0}
!141 = !{!"_ZTSN3tbb6detail2d118task_group_context5stateE", !40, i64 0}
!142 = !{!"_ZTSSt6atomicIN3tbb6detail2d118task_group_context5stateEE", !141, i64 0}
!143 = !{!"p1 _ZTSN3tbb6detail2r112context_listE", !48, i64 0}
!144 = !{!"p1 _ZTSN3tbb6detail2d119intrusive_list_nodeE", !48, i64 0}
!145 = !{!"_ZTSN3tbb6detail2d119intrusive_list_nodeE", !144, i64 0, !144, i64 8}
!146 = !{!"p1 _ZTSN3tbb6detail2r117tbb_exception_ptrE", !48, i64 0}
!147 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2r117tbb_exception_ptrEE", !146, i64 0}
!148 = !{!"_ZTSSt6atomicIPN3tbb6detail2r117tbb_exception_ptrEE", !147, i64 0}
!149 = !{!"_ZTSN3tbb6detail2d021string_resource_indexE", !40, i64 0}
end_hunk_8
