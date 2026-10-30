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
  %.0109 = select i1 %i.kp, float %i.kn, float %i.km ; 2 uses
  %.0 = select i1 %i.kp, float %i.km, float %i.kn
  %i.kq = fcmp ogt float %.0109, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.kq, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.av, align 8, !tbaa !201
  br label %bb.aq

bb.am:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kr = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc38 unwind label %.loopexit.split-lp115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

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
          to label %bb.an unwind label %.loopexit.split-lp115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  %i.pi = call double @llvm.sqrt.f64(double %i.mo) ; 2 uses
  %i.pj = load float, ptr %i.z, align 8, !tbaa !250
  %i.pk = fpext float %i.pj to double
  %i.pl = fmul double %i.ph, %i.pk
  %i.pm = fmul double %i.pi, %i.pi
  %i.pn = fmul double %i.pm, 2.000000e+00
  %i.po = fdiv double %i.pl, %i.pn
  %i.pp = fptrunc double %i.po to float
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit: ; preds = %bb.an, %bb.ao
  %i.pq = phi float [ %i.pp, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.pr = call float @llvm.fmuladd.f32(float %i.u, float %i.pq, float %i.lp)
  %i.ps = fmul float %.0109, %i.pr
  %i.pt = call float @llvm.fmuladd.f32(float %.0, float %i.lp, float %i.ps)
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ln
  store float %i.pt, ptr %i.pu, align 4, !tbaa !47
  br label %bb.aq

bb.ap:                                            ; preds = %.invoke, %.noexc36, %.noexc35, %bb.aj, %.lr.ph
  %i.pv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit.split-lp115

.loopexit.split-lp115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc38, %bb.am, %bb.p
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp115

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit
  %i.pw = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.ll, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit ]
  %i.px = load ptr, ptr %i.bi, align 8, !tbaa !244 ; 8 uses
  %i.py = add i32 %i.pw, 1                        ; 4 uses
  %i.pz = lshr i32 %i.py, 6                       ; 3 uses
  %i.qa = icmp ugt i32 %i.py, 511
  br i1 %i.qa, label %._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qb = and i32 %i.py, 63
  %i.qc = zext nneg i32 %i.pz to i64              ; 8 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.qc
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !209 ; 2 uses
  %i.qf = zext nneg i32 %i.qb to i64              ; 2 uses
  %i.qg = shl nuw i64 1, %i.qf
  %i.qh = and i64 %i.qe, %i.qg
  %.not.i.i.i.i = icmp eq i64 %i.qh, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.qi = shl nsw i64 -1, %i.qf
  %i.qj = and i64 %i.qe, %i.qi                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.qj, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i40.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i40.preheader:                       ; preds = %bb.as
  %exitcond.not.i.i.i.i189 = icmp eq i32 %i.pz, 7
  br i1 %exitcond.not.i.i.i.i189, label %._crit_edge, label %.lr.ph191

.lr.ph.i.i.i.i40:                                 ; preds = %.lr.ph191
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph191.1

.lr.ph191.1:                                      ; preds = %.lr.ph.i.i.i.i40
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.qc, 2 ; 3 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.next.i.i.i.i.1
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.ql, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i40.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.1:                               ; preds = %.lr.ph191.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph191.2

.lr.ph191.2:                                      ; preds = %.lr.ph.i.i.i.i40.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.qc, 3 ; 3 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.next.i.i.i.i.2
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.qn, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i40.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.2:                               ; preds = %.lr.ph191.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph191.3

.lr.ph191.3:                                      ; preds = %.lr.ph.i.i.i.i40.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.qc, 4 ; 3 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.next.i.i.i.i.3
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.qp, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i40.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.3:                               ; preds = %.lr.ph191.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph191.4

.lr.ph191.4:                                      ; preds = %.lr.ph.i.i.i.i40.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.qc, 5 ; 3 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.next.i.i.i.i.4
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.qr, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i40.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.4:                               ; preds = %.lr.ph191.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph191.5

.lr.ph191.5:                                      ; preds = %.lr.ph.i.i.i.i40.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.qc, 6 ; 3 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.next.i.i.i.i.5
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.qt, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i40.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.5:                               ; preds = %.lr.ph191.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph191.6

.lr.ph191.6:                                      ; preds = %.lr.ph.i.i.i.i40.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.qc, 7 ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.next.i.i.i.i.6
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.qv, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph191:                                        ; preds = %.lr.ph.i.i.i.i40.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.qc, 1 ; 3 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %indvars.iv.next.i.i.i.i
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.qx, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i40, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph191.6, %.lr.ph191.5, %.lr.ph191.4, %.lr.ph191.3, %.lr.ph191.2, %.lr.ph191.1, %.lr.ph191
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph191 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph191.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph191.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph191.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph191.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph191.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph191.6 ]
  %.lcssa203 = phi i64 [ %i.qx, %.lr.ph191 ], [ %i.ql, %.lr.ph191.1 ], [ %i.qn, %.lr.ph191.2 ], [ %i.qp, %.lr.ph191.3 ], [ %i.qr, %.lr.ph191.4 ], [ %i.qt, %.lr.ph191.5 ], [ %i.qv, %.lr.ph191.6 ]
  %i.qy = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.as
  %.016.lcssa.i.i.i.i = phi i32 [ %i.pz, %bb.as ], [ %i.qy, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.qj, %bb.as ], [ %.lcssa203, %.critedge.loopexit.i.i.i.i ]
  %i.qz = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.ra = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.rb = trunc nuw nsw i64 %i.ra to i32
  %i.rc = or disjoint i32 %i.qz, %i.rb
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.ar, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.rc, %.critedge.i.i.i.i ], [ %i.py, %bb.ar ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.av, align 8, !tbaa !201
  %.not110 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.loopexit.split-lp115:                            ; preds = %.loopexit.split-lp115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap
  %.pn25 = phi { ptr, i32 } [ %i.pv, %bb.ap ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp115.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

.body:                                            ; preds = %bb.q, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %.loopexit.split-lp115
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25, %.loopexit.split-lp115 ], [ %i.dd, %bb.q ], [ %i.cr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ]
  call void @_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS1_10BoxSamplerEfED2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #18
  br label %bb.at

bb.at:                                            ; preds = %.body, %bb.h
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %.body ], [ %i.bp, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body56

bb.au:                                            ; preds = %_ZN7openvdb5v13_05tools15LevelSetTrackerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !132 ; 2 uses
  %i.rf = load i64, ptr %1, align 8, !tbaa !131
  %i.rg = icmp ult i64 %i.re, %i.rf
  br i1 %i.rg, label %.lr.ph132, label %.loopexit112

.lr.ph132:                                        ; preds = %bb.au
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.rk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph132, %._crit_edge129
  %.sroa.7.0130 = phi i64 [ %i.re, %.lr.ph132 ], [ %i.sx, %._crit_edge129 ] ; 3 uses
  %i.rn = load ptr, ptr %i.rh, align 8, !tbaa !193, !nonnull !72, !align !194 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 56
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !195
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !98
  %i.rs = mul i64 %i.rr, %.sroa.7.0130
  %i.rt = getelementptr [16 x i8], ptr %i.rp, i64 %i.rs ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load atomic i32, ptr %i.ru seq_cst, align 4
  %.not.i.i43 = icmp eq i32 %i.rv, 0
  br i1 %.not.i.i43, label %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.rt)
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter17meanCurvatureImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %i.sk = trunc i8 %i.sj to i1
  br i1 %i.sk, label %.lr.ph.i.i.i.i48, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50, %bb.ax
  %i.sl = load ptr, ptr %i.rt, align 8, !tbaa !69 ; 2 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %bb.ba, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46

bb.ba:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45
  %i.sn = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26
          to label %bb.bb unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.sn, ptr %i.rt, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47: ; preds = %bb.ba
  %i.so = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ry release, align 1
  br label %.body56

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46: ; preds = %bb.bb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45
  %i.sp = phi ptr [ %i.sn, %bb.bb ], [ %i.sl, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45 ]
  store atomic i8 0, ptr %i.ry release, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46
  %i.sq = phi ptr [ %i.sp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46 ], [ %i.rw, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.sr = load ptr, ptr %i.rh, align 8, !tbaa !193, !nonnull !72, !align !194
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 40
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !197
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %.sroa.7.0130
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !198
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.sv)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.bc
  %i.sw = load i32, ptr %i.ri, align 8, !tbaa !201
  %.not111127 = icmp eq i32 %i.sw, 512
  br i1 %.not111127, label %._crit_edge129, label %.lr.ph128

._crit_edge129:                                   ; preds = %.lr.ph194.6, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit80, %.lr.ph.i.i.i.i74.preheader, %.lr.ph.i.i.i.i74, %.lr.ph.i.i.i.i74.1, %.lr.ph.i.i.i.i74.2, %.lr.ph.i.i.i.i74.3, %.lr.ph.i.i.i.i74.4, %.lr.ph.i.i.i.i74.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.sx = add nuw i64 %.sroa.7.0130, 1            ; 2 uses
  %i.sy = load i64, ptr %1, align 8, !tbaa !131
  %i.sz = icmp ult i64 %i.sx, %i.sy
  br i1 %i.sz, label %bb.av, label %.loopexit112, !llvm.loop !574

bb.bd:                                            ; preds = %bb.aw
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc64, %.lr.ph128, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body56

.lr.ph128:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit80
  %i.tb = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc64:                                         ; preds = %.lr.ph128
  %i.tc = load i32, ptr %i.ri, align 8, !tbaa !201 ; 4 uses
  %i.td = lshr i32 %i.tc, 6
  %i.te = lshr i32 %i.tc, 3
  %i.tf = and i32 %i.te, 7
  %i.tg = and i32 %i.tc, 7
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 80
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !124
  %i.tj = add nsw i32 %i.ti, %i.td
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tb, i64 84
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !124
  %i.tm = add nsw i32 %i.tl, %i.tf
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tb, i64 88
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !124
  %i.tp = add nsw i32 %i.to, %i.tg
  %.sroa.2.0.insert.ext.i.i.i.i59 = zext i32 %i.tm to i64
  %.sroa.2.0.insert.shift.i.i.i.i60 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i59, 32
  %.sroa.0.0.insert.ext.i9.i.i.i61 = zext i32 %i.tj to i64
  %.sroa.0.0.insert.insert.i10.i.i.i62 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i60, %.sroa.0.0.insert.ext.i9.i.i.i61
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i62, ptr %i.rj, align 8
  store i32 %i.tp, ptr %.sroa.4.0..sroa_idx.i63, align 8, !tbaa !69
  %i.tq = load ptr, ptr %i.rk, align 8, !tbaa !238
  %i.tr = zext i32 %i.tc to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tq, i64 %i.tr
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !47
  %i.tu = load ptr, ptr %i.rl, align 8, !tbaa !240
  store float %i.tt, ptr %i.tu, align 4, !tbaa !47
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.rj)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %.noexc64
  %i.tv = load i32, ptr %i.ri, align 8, !tbaa !201 ; 2 uses
  %i.tw = load ptr, ptr %i.rk, align 8, !tbaa !238
  %i.tx = zext i32 %i.tv to i64                   ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tw, i64 %i.tx
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !47
  %i.ua = load ptr, ptr %i.rl, align 8, !tbaa !240 ; 17 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  %i.ud = load <4 x float>, ptr %i.uc, align 4, !tbaa !47 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !47 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ua, i64 20
  %i.uh = load <4 x float>, ptr %i.ub, align 4, !tbaa !47 ; 2 uses
  %i.ui = load float, ptr %i.ug, align 4, !tbaa !47 ; 2 uses
  %i.uj = shufflevector <4 x float> %i.uh, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.uk = shufflevector <4 x float> %i.ud, <4 x float> %i.uh, <2 x i32> <i32 0, i32 5>
  %i.ul = fsub <2 x float> %i.uj, %i.uk
  %i.um = fpext <2 x float> %i.ul to <2 x double>
  %i.un = fmul <2 x double> %i.um, <double 5.000000e-01, double 1.000000e+00> ; 3 uses
  %i.uo = fsub float %i.uf, %i.ui
  %i.up = fpext float %i.uo to double
  %i.uq = fmul double %i.up, 5.000000e-01         ; 4 uses
  %i.ur = insertelement <2 x double> %i.un, double 5.000000e-01, i64 1
  %i.us = fmul <2 x double> %i.un, %i.ur          ; 3 uses
  %i.ut = extractelement <2 x double> %i.us, i64 1 ; 3 uses
  %i.uu = fmul double %i.ut, %i.ut                ; 2 uses
  %i.uv = fmul double %i.uq, %i.uq                ; 2 uses
  %i.uw = extractelement <2 x double> %i.us, i64 0
  %i.ux = fadd double %i.uw, %i.uu
  %i.uy = fadd double %i.ux, %i.uv                ; 2 uses
  %i.uz = fcmp ugt double %i.uy, 1.000000e-15
  br i1 %i.uz, label %bb.bf, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67

bb.bf:                                            ; preds = %bb.be
  %i.va = shufflevector <4 x float> %i.ud, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.vb = load float, ptr %i.ua, align 4, !tbaa !47 ; 2 uses
  %i.vc = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.vd = shufflevector <2 x float> %i.vc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ve = shufflevector <4 x float> %i.ud, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.vf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vd, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ve)
  %i.vg = fadd <2 x float> %i.va, %i.vf
  %i.vh = fpext <2 x float> %i.vg to <2 x double> ; 3 uses
  %i.vi = extractelement <2 x double> %i.vh, i64 1
  %i.vj = extractelement <2 x double> %i.vh, i64 0
  %i.vk = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.vh)
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ua, i64 40
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !47
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ua, i64 32
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !47
  %i.vp = fsub float %i.vm, %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ua, i64 28
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !47
  %i.vs = fadd float %i.vp, %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ua, i64 36
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ua, i64 56
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !47
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ua, i64 48
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !47
  %i.vy = fsub float %i.vv, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ua, i64 44
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !47
  %i.wb = fadd float %i.vy, %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %i.ua, i64 52
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !47
  %i.we = fsub float %i.wb, %i.wd
  %i.wf = call float @llvm.fmuladd.f32(float %i.vb, float -2.000000e+00, float %i.uf)
  %i.wg = fadd float %i.ui, %i.wf
  %i.wh = fpext float %i.wg to double             ; 2 uses
  %i.wi = fadd double %i.vi, %i.wh
  %i.wj = fadd double %i.vj, %i.wh
  %i.wk = fmul double %i.uu, %i.wj
  %i.wl = load float, ptr %i.vt, align 4, !tbaa !47
  %i.wm = fsub float %i.vs, %i.wl
  %i.wn = fpext float %i.wm to double
  %i.wo = fmul double %i.wn, 2.500000e-01
  %i.wp = fpext float %i.we to double
  %i.wq = fmul double %i.wp, 2.500000e-01
  %i.wr = fmul double %i.uq, %i.wq
  %i.ws = insertelement <2 x double> poison, double %i.wi, i64 0
  %i.wt = insertelement <2 x double> %i.ws, double %i.wo, i64 1
  %i.wu = insertelement <2 x double> poison, double %i.wk, i64 0
  %i.wv = insertelement <2 x double> %i.wu, double %i.wr, i64 1
  %i.ww = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> %i.wt, <2 x double> %i.wv) ; 2 uses
  %i.wx = extractelement <2 x double> %i.ww, i64 0
  %i.wy = call double @llvm.fmuladd.f64(double %i.uv, double %i.vk, double %i.wx)
  %i.wz = fmul double %i.ut, %i.uq
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ua, i64 72
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !47
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ua, i64 64
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !47
  %i.xe = fsub float %i.xb, %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ua, i64 60
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !47
  %i.xh = fadd float %i.xe, %i.xg
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ua, i64 68
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !47
  %i.xk = fsub float %i.xh, %i.xj
  %i.xl = fpext float %i.xk to double
  %i.xm = fmul double %i.xl, 2.500000e-01
  %i.xn = fmul double %i.wz, %i.xm
  %i.xo = extractelement <2 x double> %i.ww, i64 1
  %i.xp = extractelement <2 x double> %i.un, i64 0
  %i.xq = call double @llvm.fmuladd.f64(double %i.xp, double %i.xo, double %i.xn)
  %i.xr = call double @llvm.fmuladd.f64(double %i.xq, double -2.000000e+00, double %i.wy)
  %i.xs = call double @llvm.sqrt.f64(double %i.uy) ; 2 uses
  %i.xt = load float, ptr %i.z, align 8, !tbaa !250
  %i.xu = fpext float %i.xt to double
  %i.xv = fmul double %i.xr, %i.xu
  %i.xw = fmul double %i.xs, %i.xs
  %i.xx = fmul double %i.xw, 2.000000e+00
  %i.xy = fdiv double %i.xv, %i.xx
  %i.xz = fptrunc double %i.xy to float
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67: ; preds = %bb.be, %bb.bf
  %i.ya = phi float [ %i.xz, %bb.bf ], [ 0.000000e+00, %bb.be ]
  %i.yb = call float @llvm.fmuladd.f32(float %i.u, float %i.ya, float %i.tz)
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.tx
  store float %i.yb, ptr %i.yc, align 4, !tbaa !47
  %i.yd = load ptr, ptr %i.rm, align 8, !tbaa !244 ; 8 uses
  %i.ye = add i32 %i.tv, 1                        ; 4 uses
  %i.yf = lshr i32 %i.ye, 6                       ; 3 uses
  %i.yg = icmp ugt i32 %i.ye, 511
  br i1 %i.yg, label %._crit_edge129, label %bb.bg

bb.bg:                                            ; preds = %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67
  %i.yh = and i32 %i.ye, 63
  %i.yi = zext nneg i32 %i.yf to i64              ; 8 uses
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %i.yi
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !209 ; 2 uses
  %i.yl = zext nneg i32 %i.yh to i64              ; 2 uses
  %i.ym = shl nuw i64 1, %i.yl
  %i.yn = and i64 %i.yk, %i.ym
  %.not.i.i.i.i68 = icmp eq i64 %i.yn, 0
  br i1 %.not.i.i.i.i68, label %bb.bh, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit80

bb.bh:                                            ; preds = %bb.bg
  %i.yo = shl nsw i64 -1, %i.yl
  %i.yp = and i64 %i.yk, %i.yo                    ; 2 uses
  %.not2226.i.i.i.i70 = icmp eq i64 %i.yp, 0
  br i1 %.not2226.i.i.i.i70, label %.lr.ph.i.i.i.i74.preheader, label %.critedge.i.i.i.i71

.lr.ph.i.i.i.i74.preheader:                       ; preds = %bb.bh
  %exitcond.not.i.i.i.i76192 = icmp eq i32 %i.yf, 7
  br i1 %exitcond.not.i.i.i.i76192, label %._crit_edge129, label %.lr.ph194

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph194
  %exitcond.not.i.i.i.i76 = icmp eq i64 %indvars.iv.next.i.i.i.i77, 7
  br i1 %exitcond.not.i.i.i.i76, label %._crit_edge129, label %.lr.ph194.1

.lr.ph194.1:                                      ; preds = %.lr.ph.i.i.i.i74
  %indvars.iv.next.i.i.i.i77.1 = add nuw nsw i64 %i.yi, 2 ; 3 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %indvars.iv.next.i.i.i.i77.1
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.1 = icmp eq i64 %i.yr, 0
  br i1 %.not22.i.i.i.i78.1, label %.lr.ph.i.i.i.i74.1, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.1:                               ; preds = %.lr.ph194.1
  %exitcond.not.i.i.i.i76.1 = icmp eq i64 %indvars.iv.next.i.i.i.i77.1, 7
  br i1 %exitcond.not.i.i.i.i76.1, label %._crit_edge129, label %.lr.ph194.2

.lr.ph194.2:                                      ; preds = %.lr.ph.i.i.i.i74.1
  %indvars.iv.next.i.i.i.i77.2 = add nuw nsw i64 %i.yi, 3 ; 3 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %indvars.iv.next.i.i.i.i77.2
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.2 = icmp eq i64 %i.yt, 0
  br i1 %.not22.i.i.i.i78.2, label %.lr.ph.i.i.i.i74.2, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.2:                               ; preds = %.lr.ph194.2
  %exitcond.not.i.i.i.i76.2 = icmp eq i64 %indvars.iv.next.i.i.i.i77.2, 7
  br i1 %exitcond.not.i.i.i.i76.2, label %._crit_edge129, label %.lr.ph194.3

.lr.ph194.3:                                      ; preds = %.lr.ph.i.i.i.i74.2
  %indvars.iv.next.i.i.i.i77.3 = add nuw nsw i64 %i.yi, 4 ; 3 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %indvars.iv.next.i.i.i.i77.3
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.3 = icmp eq i64 %i.yv, 0
  br i1 %.not22.i.i.i.i78.3, label %.lr.ph.i.i.i.i74.3, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.3:                               ; preds = %.lr.ph194.3
  %exitcond.not.i.i.i.i76.3 = icmp eq i64 %indvars.iv.next.i.i.i.i77.3, 7
  br i1 %exitcond.not.i.i.i.i76.3, label %._crit_edge129, label %.lr.ph194.4

.lr.ph194.4:                                      ; preds = %.lr.ph.i.i.i.i74.3
  %indvars.iv.next.i.i.i.i77.4 = add nuw nsw i64 %i.yi, 5 ; 3 uses
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %indvars.iv.next.i.i.i.i77.4
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.4 = icmp eq i64 %i.yx, 0
  br i1 %.not22.i.i.i.i78.4, label %.lr.ph.i.i.i.i74.4, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.4:                               ; preds = %.lr.ph194.4
  %exitcond.not.i.i.i.i76.4 = icmp eq i64 %indvars.iv.next.i.i.i.i77.4, 7
  br i1 %exitcond.not.i.i.i.i76.4, label %._crit_edge129, label %.lr.ph194.5

.lr.ph194.5:                                      ; preds = %.lr.ph.i.i.i.i74.4
  %indvars.iv.next.i.i.i.i77.5 = add nuw nsw i64 %i.yi, 6 ; 3 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %indvars.iv.next.i.i.i.i77.5
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.5 = icmp eq i64 %i.yz, 0
  br i1 %.not22.i.i.i.i78.5, label %.lr.ph.i.i.i.i74.5, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.5:                               ; preds = %.lr.ph194.5
  %exitcond.not.i.i.i.i76.5 = icmp eq i64 %indvars.iv.next.i.i.i.i77.5, 7
  br i1 %exitcond.not.i.i.i.i76.5, label %._crit_edge129, label %.lr.ph194.6

.lr.ph194.6:                                      ; preds = %.lr.ph.i.i.i.i74.5
  %indvars.iv.next.i.i.i.i77.6 = add nuw nsw i64 %i.yi, 7 ; 2 uses
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %indvars.iv.next.i.i.i.i77.6
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.6 = icmp eq i64 %i.zb, 0
  br i1 %.not22.i.i.i.i78.6, label %._crit_edge129, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph194:                                        ; preds = %.lr.ph.i.i.i.i74.preheader
  %indvars.iv.next.i.i.i.i77 = add nuw nsw i64 %i.yi, 1 ; 3 uses
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %indvars.iv.next.i.i.i.i77
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78 = icmp eq i64 %i.zd, 0
  br i1 %.not22.i.i.i.i78, label %.lr.ph.i.i.i.i74, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.critedge.loopexit.i.i.i.i79:                     ; preds = %.lr.ph194.6, %.lr.ph194.5, %.lr.ph194.4, %.lr.ph194.3, %.lr.ph194.2, %.lr.ph194.1, %.lr.ph194
  %indvars.iv.next.i.i.i.i77.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i77, %.lr.ph194 ], [ %indvars.iv.next.i.i.i.i77.1, %.lr.ph194.1 ], [ %indvars.iv.next.i.i.i.i77.2, %.lr.ph194.2 ], [ %indvars.iv.next.i.i.i.i77.3, %.lr.ph194.3 ], [ %indvars.iv.next.i.i.i.i77.4, %.lr.ph194.4 ], [ %indvars.iv.next.i.i.i.i77.5, %.lr.ph194.5 ], [ %indvars.iv.next.i.i.i.i77.6, %.lr.ph194.6 ]
  %.lcssa = phi i64 [ %i.zd, %.lr.ph194 ], [ %i.yr, %.lr.ph194.1 ], [ %i.yt, %.lr.ph194.2 ], [ %i.yv, %.lr.ph194.3 ], [ %i.yx, %.lr.ph194.4 ], [ %i.yz, %.lr.ph194.5 ], [ %i.zb, %.lr.ph194.6 ]
  %i.ze = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i77.lcssa to i32
  br label %.critedge.i.i.i.i71

.critedge.i.i.i.i71:                              ; preds = %.critedge.loopexit.i.i.i.i79, %bb.bh
  %.016.lcssa.i.i.i.i72 = phi i32 [ %i.yf, %bb.bh ], [ %i.ze, %.critedge.loopexit.i.i.i.i79 ]
  %.0.lcssa.i.i.i.i73 = phi i64 [ %i.yp, %bb.bh ], [ %.lcssa, %.critedge.loopexit.i.i.i.i79 ]
  %i.zf = shl nuw nsw i32 %.016.lcssa.i.i.i.i72, 6
  %i.zg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i73, i1 true)
  %i.zh = trunc nuw nsw i64 %i.zg to i32
  %i.zi = or disjoint i32 %i.zf, %i.zh
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit80

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit80: ; preds = %bb.bg, %.critedge.i.i.i.i71
  %.118.i.i.i.i69 = phi i32 [ %i.zi, %.critedge.i.i.i.i71 ], [ %i.ye, %bb.bg ] ; 2 uses
  store i32 %.118.i.i.i.i69, ptr %i.ri, align 8, !tbaa !201
  %.not111 = icmp eq i32 %.118.i.i.i.i69, 512
  br i1 %.not111, label %._crit_edge129, label %.lr.ph128

.loopexit112:                                     ; preds = %._crit_edge129, %bb.au, %_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS1_10BoxSamplerEfED2Ev.exit
  %i.zj = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.zk, null
  br i1 %.not.i.i.i.i81, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.bi

bb.bi:                                            ; preds = %.loopexit112
  %i.zl = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !245
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = ptrtoint ptr %i.zk to i64
  %i.zp = sub i64 %i.zn, %i.zo
  call void @_ZdlPvm(ptr noundef nonnull %i.zk, i64 noundef %i.zp) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.bi, %.loopexit112
  %i.zq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.zq, align 8, !tbaa !45
  %i.zr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !189 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.zs, null
  br i1 %.not.i.i82, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.zq, ptr %i.a, align 8, !tbaa !191
  %i.zu = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.zt, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i83 unwind label %bb.bk, !inline_history !192 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i83: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit

bb.bk:                                            ; preds = %bb.bj
  %i.zv = landingpad { ptr, i32 }
          catch ptr null
  %i.zw = extractvalue { ptr, i32 } %i.zv, 0
  call void @__clang_call_terminate(ptr %i.zw) #27, !inline_history !192
  unreachable

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

.body56:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47, %bb.bd, %bb.at
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %bb.at ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ta, %bb.bd ], [ %i.so, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47 ]
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
  %.sroa.2.0.insert.ext.i.i.i106 = zext i32 %i.jh to i64
  %.sroa.2.0.insert.shift.i.i.i107 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i106, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.et to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i107, %.sroa.0.0.insert.ext.i.i.i
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
  %.0135 = select i1 %i.kp, float %i.kn, float %i.km ; 2 uses
  %.0 = select i1 %i.kp, float %i.km, float %i.kn
  %i.kq = fcmp ogt float %.0135, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.kq, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.av, align 8, !tbaa !201
  br label %bb.aq

bb.am:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kr = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc50 unwind label %.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

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
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit unwind label %.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  %i.ns = call double @llvm.sqrt.f64(double %i.mk) ; 3 uses
  %i.nt = load <2 x float>, ptr %i.x, align 4, !tbaa !47
  %i.nu = fpext <2 x float> %i.nt to <2 x double> ; 2 uses
  %i.nv = load float, ptr %i.mz, align 4, !tbaa !47 ; 2 uses
  %i.nw = load float, ptr %i.na, align 4, !tbaa !47 ; 2 uses
  %i.nx = load float, ptr %i.nb, align 4, !tbaa !47 ; 2 uses
  %i.ny = load float, ptr %i.nc, align 4, !tbaa !47 ; 2 uses
  %i.nz = load float, ptr %i.nd, align 4, !tbaa !47
  %i.oa = load float, ptr %i.ne, align 4, !tbaa !47
  %i.ob = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.oc = insertelement <2 x float> %i.ob, float %i.nv, i64 1
  %i.od = insertelement <2 x float> poison, float %i.oa, i64 0
  %i.oe = insertelement <2 x float> %i.od, float %i.nw, i64 1
  %i.of = fsub <2 x float> %i.oc, %i.oe
  %i.og = load float, ptr %i.nf, align 4, !tbaa !47
  %i.oh = load float, ptr %i.nh, align 4, !tbaa !47
  %i.oi = load float, ptr %i.ni, align 4, !tbaa !47
  %i.oj = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.ok = insertelement <2 x float> %i.oj, float %i.oh, i64 1
  %i.ol = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.om = insertelement <2 x float> %i.ol, float %i.oi, i64 1
  %i.on = fsub <2 x float> %i.ok, %i.om
  %i.oo = insertelement <2 x float> poison, float %i.og, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.nx, i64 1
  %i.oq = fadd <2 x float> %i.of, %i.op
  %i.or = load float, ptr %i.ng, align 4, !tbaa !47
  %i.os = load float, ptr %i.nj, align 4, !tbaa !47
  %i.ot = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.ou = insertelement <2 x float> %i.ot, float %i.os, i64 1
  %i.ov = fadd <2 x float> %i.on, %i.ou
  %i.ow = insertelement <2 x float> poison, float %i.or, i64 0
  %i.ox = insertelement <2 x float> %i.ow, float %i.ny, i64 1
  %i.oy = fsub <2 x float> %i.oq, %i.ox
  %i.oz = load float, ptr %i.nk, align 4, !tbaa !47
  %i.pa = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.pb = insertelement <2 x float> %i.pa, float %i.oz, i64 1
  %i.pc = fsub <2 x float> %i.ov, %i.pb
  %i.pd = fpext <2 x float> %i.oy to <2 x double>
  %i.pe = fpext <2 x float> %i.pc to <2 x double>
  %i.pf = fmul <2 x double> %i.pd, splat (double 2.500000e-01) ; 4 uses
  %i.pg = fmul <2 x double> %i.pe, splat (double 2.500000e-01) ; 6 uses
  %i.ph = insertelement <2 x double> poison, double %i.my, i64 0
  %i.pi = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = fadd <2 x double> %i.pi, %i.mu          ; 2 uses
  %i.pk = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.mu)
  %i.pl = fmul double %i.lx, %i.no                ; 2 uses
  %i.pm = extractelement <2 x double> %i.pg, i64 1 ; 2 uses
  %i.pn = fmul double %i.pl, %i.pm
  %i.po = insertelement <2 x double> %i.pg, double %i.ly, i64 0
  %i.pp = fneg <2 x double> %i.pg
  %i.pq = shufflevector <2 x double> %i.pj, <2 x double> %i.pp, <2 x i32> <i32 0, i32 3>
  %i.pr = fmul <2 x double> %i.po, %i.pq
  %i.ps = shufflevector <2 x double> %i.mg, <2 x double> %i.mu, <2 x i32> <i32 0, i32 3>
  %i.pt = shufflevector <2 x double> %i.pj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.pu = insertelement <2 x double> %i.pt, double %i.my, i64 1
  %i.pv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> %i.pu, <2 x double> %i.pr) ; 2 uses
  %i.pw = extractelement <2 x double> %i.pv, i64 0
  %i.px = call double @llvm.fmuladd.f64(double %i.mj, double %i.pk, double %i.pw)
  %i.py = extractelement <2 x double> %i.pf, i64 0 ; 3 uses
  %i.pz = fneg double %i.py
  %i.qa = fmul double %i.py, %i.pz
  %i.qb = call double @llvm.fmuladd.f64(double %i.nm, double %i.my, double %i.qa)
  %i.qc = fmul double %i.ly, %i.qb
  %i.qd = extractelement <2 x double> %i.pv, i64 1
  %i.qe = call double @llvm.fmuladd.f64(double %i.mh, double %i.qd, double %i.qc)
  %i.qf = extractelement <2 x double> %i.pg, i64 0 ; 4 uses
  %i.qg = fneg double %i.qf
  %i.qh = fmul double %i.qf, %i.qg
  %i.qi = call double @llvm.fmuladd.f64(double %i.nm, double %i.nl, double %i.qh)
  %i.qj = call double @llvm.fmuladd.f64(double %i.mj, double %i.qi, double %i.qe)
  %i.qk = fneg <2 x double> %i.mu
  %i.ql = shufflevector <2 x double> %i.pg, <2 x double> %i.pf, <2 x i32> <i32 1, i32 2>
  %i.qm = fmul <2 x double> %i.ql, %i.qk          ; 2 uses
  %i.qn = extractelement <2 x double> %i.qm, i64 0
  %i.qo = call double @llvm.fmuladd.f64(double %i.qf, double %i.py, double %i.qn)
  %i.qp = extractelement <2 x double> %i.qm, i64 1
  %i.qq = call double @llvm.fmuladd.f64(double %i.qf, double %i.pm, double %i.qp)
  %i.qr = fmul double %i.np, %i.qq
  %i.qs = call double @llvm.fmuladd.f64(double %i.pl, double %i.qo, double %i.qr)
  %i.qt = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qu = insertelement <2 x double> %i.qt, double %i.nr, i64 1
  %i.qv = fmul <2 x double> %i.qu, %i.pf
  %i.qw = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qx = insertelement <2 x double> %i.qw, double %i.lx, i64 0
  %i.qy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qx, <2 x double> %i.pg, <2 x double> %i.qv)
  %i.qz = insertelement <2 x double> %i.mf, double %i.nq, i64 1
  %i.ra = insertelement <2 x double> poison, double %i.pn, i64 0
  %i.rb = insertelement <2 x double> %i.ra, double %i.qs, i64 1
  %i.rc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qz, <2 x double> %i.qy, <2 x double> %i.rb)
  %i.rd = insertelement <2 x double> poison, double %i.px, i64 0
  %i.re = insertelement <2 x double> %i.rd, double %i.qj, i64 1
  %i.rf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rc, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.re)
  %i.rg = fmul double %i.ns, %i.ns
  %i.rh = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.ri = insertelement <2 x double> %i.rh, double %i.rg, i64 1 ; 2 uses
  %i.rj = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rk = fmul <2 x double> %i.ri, %i.rj
  %i.rl = fneg <2 x double> %i.nu
  %i.rm = shufflevector <2 x double> %i.nu, <2 x double> %i.rl, <2 x i32> <i32 0, i32 3>
  %i.rn = fmul <2 x double> %i.rf, %i.rm
  %i.ro = fdiv <2 x double> %i.rn, %i.rk          ; 2 uses
  %i.rp = extractelement <2 x double> %i.ro, i64 0 ; 4 uses
  %i.rq = extractelement <2 x double> %i.ro, i64 1
  %i.rr = call double @llvm.fmuladd.f64(double %i.rp, double %i.rp, double %i.rq)
  %i.rs = call double @sqrt(double noundef %i.rr) #18 ; 2 uses
  %i.rt = fsub double %i.rp, %i.rs
  %i.ru = fptrunc double %i.rt to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.ru, i64 0
  %i.rv = fadd double %i.rs, %i.rp
  %i.rw = fptrunc double %i.rv to float
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.rw, i64 1
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit, %bb.an
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.an ], [ zeroinitializer, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit ]
  %i.rx = load i32, ptr %i.av, align 8, !tbaa !201 ; 2 uses
  %i.ry = load ptr, ptr %i.bg, align 8, !tbaa !238
  %i.rz = zext i32 %i.rx to i64                   ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.rz
  %.sroa.04.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !47 ; 2 uses
  %i.sc = fmul float %i.u, %.sroa.04.0.vec.extract ; 2 uses
  %i.sd = fcmp olt float %i.sc, 0.000000e+00
  %.sroa.speculated = select i1 %i.sd, float %i.sc, float 0.000000e+00
  %i.se = fadd float %i.sb, %.sroa.speculated
  %i.sf = fmul float %.0135, %i.se
  %i.sg = call float @llvm.fmuladd.f32(float %.0, float %i.sb, float %i.sf)
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.rz
  store float %i.sg, ptr %i.sh, align 4, !tbaa !47
  br label %bb.aq

bb.ap:                                            ; preds = %.invoke, %.noexc48, %.noexc47, %bb.aj, %.lr.ph
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit.split-lp159

.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc50, %bb.am, %bb.p
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp159

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %bb.ao
  %i.sj = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.rx, %bb.ao ]
  %i.sk = load ptr, ptr %i.bi, align 8, !tbaa !244 ; 8 uses
  %i.sl = add i32 %i.sj, 1                        ; 4 uses
  %i.sm = lshr i32 %i.sl, 6                       ; 3 uses
  %i.sn = icmp ugt i32 %i.sl, 511
  br i1 %i.sn, label %._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.so = and i32 %i.sl, 63
  %i.sp = zext nneg i32 %i.sm to i64              ; 8 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.sp
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !209 ; 2 uses
  %i.ss = zext nneg i32 %i.so to i64              ; 2 uses
  %i.st = shl nuw i64 1, %i.ss
  %i.su = and i64 %i.sr, %i.st
  %.not.i.i.i.i = icmp eq i64 %i.su, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.sv = shl nsw i64 -1, %i.ss
  %i.sw = and i64 %i.sr, %i.sv                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.sw, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i52.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i52.preheader:                       ; preds = %bb.as
  %exitcond.not.i.i.i.i234 = icmp eq i32 %i.sm, 7
  br i1 %exitcond.not.i.i.i.i234, label %._crit_edge, label %.lr.ph236

.lr.ph.i.i.i.i52:                                 ; preds = %.lr.ph236
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph236.1

.lr.ph236.1:                                      ; preds = %.lr.ph.i.i.i.i52
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.sp, 2 ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %indvars.iv.next.i.i.i.i.1
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.sy, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i52.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.1:                               ; preds = %.lr.ph236.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph236.2

.lr.ph236.2:                                      ; preds = %.lr.ph.i.i.i.i52.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.sp, 3 ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %indvars.iv.next.i.i.i.i.2
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ta, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i52.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.2:                               ; preds = %.lr.ph236.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph236.3

.lr.ph236.3:                                      ; preds = %.lr.ph.i.i.i.i52.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.sp, 4 ; 3 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %indvars.iv.next.i.i.i.i.3
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !209 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %lcmp.mod253.not = icmp eq i32 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol

.lr.ph.i.i.i.i.i.i65.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i65.preheader, %.lr.ph.i.i.i.i.i.i65.prol
  %.01.i.i.i.i.i.i66.prol = phi i32 [ %i.uq, %.lr.ph.i.i.i.i.i.i65.prol ], [ %.sroa.0.02.i.i.i.i61, %.lr.ph.i.i.i.i.i.i65.preheader ]
  %prol.iter254 = phi i32 [ %prol.iter254.next, %.lr.ph.i.i.i.i.i.i65.prol ], [ 0, %.lr.ph.i.i.i.i.i.i65.preheader ]
  %i.uq = add nsw i32 %.01.i.i.i.i.i.i66.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter254.next = add i32 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i32 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol, !llvm.loop !586

.lr.ph.i.i.i.i.i.i65.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i65.prol, %.lr.ph.i.i.i.i.i.i65.preheader
  %.01.i.i.i.i.i.i66.unr = phi i32 [ %.sroa.0.02.i.i.i.i61, %.lr.ph.i.i.i.i.i.i65.preheader ], [ %i.uq, %.lr.ph.i.i.i.i.i.i65.prol ]
  %i.ur = icmp ult i32 %.sroa.0.02.i.i.i.i61, 8
  br i1 %i.ur, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64, label %.lr.ph.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i65:                             ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65
  %.01.i.i.i.i.i.i66 = phi i32 [ %i.us, %.lr.ph.i.i.i.i.i.i65 ], [ %.01.i.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.us = add nsw i32 %.01.i.i.i.i.i.i66, -8
  call void @llvm.x86.sse2.pause()
  %i.ut = icmp sgt i32 %.01.i.i.i.i.i.i66, 8
  br i1 %i.ut, label %.lr.ph.i.i.i.i.i.i65, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64, !llvm.loop !3

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64: ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65, %bb.ay
  %i.uu = shl i32 %.sroa.0.02.i.i.i.i61, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62

bb.az:                                            ; preds = %.lr.ph.i.i.i.i60
  %i.uv = call noundef i32 @sched_yield() #18     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62: ; preds = %bb.az, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64
  %.sroa.0.1.i.i.i.i63 = phi i32 [ %i.uu, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64 ], [ %.sroa.0.02.i.i.i.i61, %bb.az ]
  %i.uw = atomicrmw xchg ptr %i.ul, i8 1 seq_cst, align 1
  %i.ux = trunc i8 %i.uw to i1
  br i1 %i.ux, label %.lr.ph.i.i.i.i60, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62, %bb.ax
  %i.uy = load ptr, ptr %i.ug, align 8, !tbaa !69 ; 2 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %bb.ba, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58

bb.ba:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57
  %i.va = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26
          to label %bb.bb unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i59 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.va, ptr %i.ug, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i59: ; preds = %bb.ba
  %i.vb = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ul release, align 1
  br label %.body68

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58: ; preds = %bb.bb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57
  %i.vc = phi ptr [ %i.va, %bb.bb ], [ %i.uy, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57 ]
  store atomic i8 0, ptr %i.ul release, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i56, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58
  %i.vd = phi ptr [ %i.vc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58 ], [ %i.uj, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i56 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ve = load ptr, ptr %i.tu, align 8, !tbaa !193, !nonnull !72, !align !194
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 40
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !197
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %.sroa.7.0174
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !198
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.vi)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.bc
  %i.vj = load i32, ptr %i.tv, align 8, !tbaa !201
  %.not155171 = icmp eq i32 %i.vj, 512
  br i1 %.not155171, label %._crit_edge173, label %.lr.ph172

._crit_edge173:                                   ; preds = %.lr.ph239.6, %bb.bg, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95, %.lr.ph.i.i.i.i89.preheader, %.lr.ph.i.i.i.i89, %.lr.ph.i.i.i.i89.1, %.lr.ph.i.i.i.i89.2, %.lr.ph.i.i.i.i89.3, %.lr.ph.i.i.i.i89.4, %.lr.ph.i.i.i.i89.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.vk = add nuw i64 %.sroa.7.0174, 1            ; 2 uses
  %i.vl = load i64, ptr %1, align 8, !tbaa !131
  %i.vm = icmp ult i64 %i.vk, %i.vl
  br i1 %i.vm, label %bb.av, label %.loopexit156, !llvm.loop !587

bb.bd:                                            ; preds = %bb.aw
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc76, %.lr.ph172, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body68

.lr.ph172:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95
  %i.vo = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc76:                                         ; preds = %.lr.ph172
  %i.vp = load i32, ptr %i.tv, align 8, !tbaa !201 ; 4 uses
  %i.vq = lshr i32 %i.vp, 6
  %i.vr = lshr i32 %i.vp, 3
  %i.vs = and i32 %i.vr, 7
  %i.vt = and i32 %i.vp, 7
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vo, i64 80
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !124
  %i.vw = add nsw i32 %i.vv, %i.vq
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vo, i64 84
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !124
  %i.vz = add nsw i32 %i.vy, %i.vs
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vo, i64 88
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !124
  %i.wc = add nsw i32 %i.wb, %i.vt
  %.sroa.2.0.insert.ext.i.i.i.i71 = zext i32 %i.vz to i64
  %.sroa.2.0.insert.shift.i.i.i.i72 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i71, 32
  %.sroa.0.0.insert.ext.i9.i.i.i73 = zext i32 %i.vw to i64
  %.sroa.0.0.insert.insert.i10.i.i.i74 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i72, %.sroa.0.0.insert.ext.i9.i.i.i73
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i74, ptr %i.tw, align 8
  store i32 %i.wc, ptr %.sroa.4.0..sroa_idx.i75, align 8, !tbaa !69
  %i.wd = load ptr, ptr %i.tx, align 8, !tbaa !238
  %i.we = zext i32 %i.vp to i64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %i.we
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !47
  %i.wh = load ptr, ptr %i.ty, align 8, !tbaa !240
  store float %i.wg, ptr %i.wh, align 4, !tbaa !47
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.tw)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78: ; preds = %.noexc76
  %i.wi = load ptr, ptr %i.ty, align 8, !tbaa !240 ; 19 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wi, i64 12
  %i.wn = load <4 x float>, ptr %i.wk, align 4, !tbaa !47 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wi, i64 20
  %i.wp = load float, ptr %i.wl, align 4, !tbaa !47
  %i.wq = load float, ptr %i.wm, align 4, !tbaa !47
  %i.wr = load float, ptr %i.wj, align 4, !tbaa !47
  %i.ws = fsub float %i.wp, %i.wq
  %i.wt = fpext float %i.ws to double
  %i.wu = fmul double %i.wt, 5.000000e-01         ; 5 uses
  %i.wv = fmul double %i.wu, %i.wu                ; 3 uses
  %i.ww = load <2 x float>, ptr %i.wo, align 4, !tbaa !47 ; 3 uses
  %i.wx = insertelement <2 x float> %i.ww, float %i.wr, i64 0
  %i.wy = shufflevector <4 x float> %i.wn, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> %i.ww, <2 x i32> <i32 0, i32 2>
  %i.xa = fsub <2 x float> %i.wx, %i.wz
  %i.xb = fpext <2 x float> %i.xa to <2 x double>
  %i.xc = fmul <2 x double> %i.xb, splat (double 5.000000e-01) ; 6 uses
  %i.xd = fmul <2 x double> %i.xc, %i.xc          ; 3 uses
  %i.xe = extractelement <2 x double> %i.xd, i64 0 ; 2 uses
  %i.xf = fadd double %i.xe, %i.wv
  %i.xg = extractelement <2 x double> %i.xd, i64 1 ; 3 uses
  %i.xh = fadd double %i.xf, %i.xg                ; 2 uses
  %i.xi = fcmp ugt double %i.xh, 1.000000e-15
  br i1 %i.xi, label %bb.be, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82

bb.be:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !47
  %i.xl = load float, ptr %i.wi, align 4, !tbaa !47 ; 2 uses
  %i.xm = insertelement <2 x float> poison, float %i.xl, i64 0
  %i.xn = shufflevector <2 x float> %i.xm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xo = shufflevector <4 x float> %i.wn, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.xp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xn, <2 x float> splat (float -2.000000e+00), <2 x float> %i.xo)
  %i.xq = fadd <2 x float> %i.wy, %i.xp
  %i.xr = fpext <2 x float> %i.xq to <2 x double> ; 6 uses
  %i.xs = call float @llvm.fmuladd.f32(float %i.xl, float -2.000000e+00, float %i.xk)
  %i.xt = extractelement <2 x float> %i.ww, i64 0
  %i.xu = fadd float %i.xt, %i.xs
  %i.xv = fpext float %i.xu to double             ; 4 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wi, i64 40
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wi, i64 28
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wi, i64 36
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wi, i64 56
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wi, i64 48
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wi, i64 44
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wi, i64 52
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wi, i64 72
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wi, i64 64
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wi, i64 60
  %i.yh = getelementptr inbounds nuw i8, ptr %i.wi, i64 68
  %i.yi = extractelement <2 x double> %i.xr, i64 1
  %i.yj = extractelement <2 x double> %i.xr, i64 0 ; 2 uses
  %i.yk = extractelement <2 x double> %i.xc, i64 0 ; 2 uses
  %i.yl = extractelement <2 x double> %i.xc, i64 1 ; 2 uses
  %i.ym = fmul double %i.yk, %i.yl
  %i.yn = fmul double %i.yk, %i.wu
  %i.yo = fneg double %i.xv
  %i.yp = call double @llvm.sqrt.f64(double %i.xh) ; 3 uses
  %i.yq = load <2 x float>, ptr %i.x, align 4, !tbaa !47
  %i.yr = fpext <2 x float> %i.yq to <2 x double> ; 2 uses
  %i.ys = load float, ptr %i.xw, align 4, !tbaa !47 ; 2 uses
  %i.yt = load float, ptr %i.xx, align 4, !tbaa !47 ; 2 uses
  %i.yu = load float, ptr %i.xy, align 4, !tbaa !47 ; 2 uses
  %i.yv = load float, ptr %i.xz, align 4, !tbaa !47 ; 2 uses
  %i.yw = load float, ptr %i.ya, align 4, !tbaa !47
  %i.yx = load float, ptr %i.yb, align 4, !tbaa !47
  %i.yy = insertelement <2 x float> poison, float %i.yw, i64 0
  %i.yz = insertelement <2 x float> %i.yy, float %i.ys, i64 1
  %i.za = insertelement <2 x float> poison, float %i.yx, i64 0
  %i.zb = insertelement <2 x float> %i.za, float %i.yt, i64 1
  %i.zc = fsub <2 x float> %i.yz, %i.zb
  %i.zd = load float, ptr %i.yc, align 4, !tbaa !47
  %i.ze = load float, ptr %i.ye, align 4, !tbaa !47
  %i.zf = load float, ptr %i.yf, align 4, !tbaa !47
  %i.zg = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.zh = insertelement <2 x float> %i.zg, float %i.ze, i64 1
  %i.zi = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.zj = insertelement <2 x float> %i.zi, float %i.zf, i64 1
  %i.zk = fsub <2 x float> %i.zh, %i.zj
  %i.zl = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.zm = insertelement <2 x float> %i.zl, float %i.yu, i64 1
  %i.zn = fadd <2 x float> %i.zc, %i.zm
  %i.zo = load float, ptr %i.yd, align 4, !tbaa !47
  %i.zp = load float, ptr %i.yg, align 4, !tbaa !47
  %i.zq = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.zr = insertelement <2 x float> %i.zq, float %i.zp, i64 1
  %i.zs = fadd <2 x float> %i.zk, %i.zr
  %i.zt = insertelement <2 x float> poison, float %i.zo, i64 0
  %i.zu = insertelement <2 x float> %i.zt, float %i.yv, i64 1
  %i.zv = fsub <2 x float> %i.zn, %i.zu
  %i.zw = load float, ptr %i.yh, align 4, !tbaa !47
  %i.zx = insertelement <2 x float> poison, float %i.yv, i64 0
  %i.zy = insertelement <2 x float> %i.zx, float %i.zw, i64 1
  %i.zz = fsub <2 x float> %i.zs, %i.zy
  %i.aaa = fpext <2 x float> %i.zv to <2 x double>
  %i.aab = fpext <2 x float> %i.zz to <2 x double>
  %i.aac = fmul <2 x double> %i.aaa, splat (double 2.500000e-01) ; 4 uses
  %i.aad = fmul <2 x double> %i.aab, splat (double 2.500000e-01) ; 6 uses
  %i.aae = insertelement <2 x double> poison, double %i.xv, i64 0
  %i.aaf = shufflevector <2 x double> %i.aae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aag = fadd <2 x double> %i.aaf, %i.xr        ; 2 uses
  %i.aah = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.xr)
  %i.aai = fmul double %i.wu, %i.yl               ; 2 uses
  %i.aaj = extractelement <2 x double> %i.aad, i64 1 ; 2 uses
  %i.aak = fmul double %i.aai, %i.aaj
  %i.aal = insertelement <2 x double> %i.aad, double %i.wv, i64 0
  %i.aam = fneg <2 x double> %i.aad
  %i.aan = shufflevector <2 x double> %i.aag, <2 x double> %i.aam, <2 x i32> <i32 0, i32 3>
  %i.aao = fmul <2 x double> %i.aal, %i.aan
  %i.aap = shufflevector <2 x double> %i.xd, <2 x double> %i.xr, <2 x i32> <i32 0, i32 3>
  %i.aaq = shufflevector <2 x double> %i.aag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aar = insertelement <2 x double> %i.aaq, double %i.xv, i64 1
  %i.aas = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aap, <2 x double> %i.aar, <2 x double> %i.aao) ; 2 uses
  %i.aat = extractelement <2 x double> %i.aas, i64 0
  %i.aau = call double @llvm.fmuladd.f64(double %i.xg, double %i.aah, double %i.aat)
  %i.aav = extractelement <2 x double> %i.aac, i64 0 ; 3 uses
  %i.aaw = fneg double %i.aav
  %i.aax = fmul double %i.aav, %i.aaw
  %i.aay = call double @llvm.fmuladd.f64(double %i.yj, double %i.xv, double %i.aax)
  %i.aaz = fmul double %i.wv, %i.aay
  %i.aba = extractelement <2 x double> %i.aas, i64 1
  %i.abb = call double @llvm.fmuladd.f64(double %i.xe, double %i.aba, double %i.aaz)
  %i.abc = extractelement <2 x double> %i.aad, i64 0 ; 4 uses
  %i.abd = fneg double %i.abc
  %i.abe = fmul double %i.abc, %i.abd
  %i.abf = call double @llvm.fmuladd.f64(double %i.yj, double %i.yi, double %i.abe)
  %i.abg = call double @llvm.fmuladd.f64(double %i.xg, double %i.abf, double %i.abb)
  %i.abh = fneg <2 x double> %i.xr
  %i.abi = shufflevector <2 x double> %i.aad, <2 x double> %i.aac, <2 x i32> <i32 1, i32 2>
  %i.abj = fmul <2 x double> %i.abi, %i.abh       ; 2 uses
  %i.abk = extractelement <2 x double> %i.abj, i64 0
  %i.abl = call double @llvm.fmuladd.f64(double %i.abc, double %i.aav, double %i.abk)
  %i.abm = extractelement <2 x double> %i.abj, i64 1
  %i.abn = call double @llvm.fmuladd.f64(double %i.abc, double %i.aaj, double %i.abm)
  %i.abo = fmul double %i.ym, %i.abn
  %i.abp = call double @llvm.fmuladd.f64(double %i.aai, double %i.abl, double %i.abo)
  %i.abq = shufflevector <2 x double> %i.xc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abr = insertelement <2 x double> %i.abq, double %i.yo, i64 1
  %i.abs = fmul <2 x double> %i.abr, %i.aac
  %i.abt = shufflevector <2 x double> %i.aac, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.abu = insertelement <2 x double> %i.abt, double %i.wu, i64 0
  %i.abv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abu, <2 x double> %i.aad, <2 x double> %i.abs)
  %i.abw = insertelement <2 x double> %i.xc, double %i.yn, i64 1
  %i.abx = insertelement <2 x double> poison, double %i.aak, i64 0
  %i.aby = insertelement <2 x double> %i.abx, double %i.abp, i64 1
  %i.abz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abw, <2 x double> %i.abv, <2 x double> %i.aby)
  %i.aca = insertelement <2 x double> poison, double %i.aau, i64 0
  %i.acb = insertelement <2 x double> %i.aca, double %i.abg, i64 1
  %i.acc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abz, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.acb)
  %i.acd = fmul double %i.yp, %i.yp
  %i.ace = insertelement <2 x double> poison, double %i.yp, i64 0
  %i.acf = insertelement <2 x double> %i.ace, double %i.acd, i64 1 ; 2 uses
  %i.acg = shufflevector <2 x double> %i.acf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ach = fmul <2 x double> %i.acf, %i.acg
  %i.aci = fneg <2 x double> %i.yr
  %i.acj = shufflevector <2 x double> %i.yr, <2 x double> %i.aci, <2 x i32> <i32 0, i32 3>
  %i.ack = fmul <2 x double> %i.acc, %i.acj
  %i.acl = fdiv <2 x double> %i.ack, %i.ach       ; 2 uses
  %i.acm = extractelement <2 x double> %i.acl, i64 0 ; 4 uses
  %i.acn = extractelement <2 x double> %i.acl, i64 1
  %i.aco = call double @llvm.fmuladd.f64(double %i.acm, double %i.acm, double %i.acn)
  %i.acp = call double @sqrt(double noundef %i.aco) #18 ; 2 uses
  %i.acq = fsub double %i.acm, %i.acp
  %i.acr = fptrunc double %i.acq to float
  %.sroa.0.0.vec.insert.i80 = insertelement <2 x float> poison, float %i.acr, i64 0
  %i.acs = fadd double %i.acp, %i.acm
  %i.act = fptrunc double %i.acs to float
  %.sroa.0.4.vec.insert.i81 = insertelement <2 x float> %.sroa.0.0.vec.insert.i80, float %i.act, i64 1
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82: ; preds = %bb.be, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78
  %.sroa.0.0.i79 = phi <2 x float> [ %.sroa.0.4.vec.insert.i81, %bb.be ], [ zeroinitializer, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78 ]
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i79, i64 0 ; 2 uses
  %i.acu = fcmp olt float %.sroa.0.0.vec.extract, 0.000000e+00
  %.pre183 = load i32, ptr %i.tv, align 8, !tbaa !201 ; 2 uses
  br i1 %i.acu, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82
  %i.acv = load ptr, ptr %i.tx, align 8, !tbaa !238
  %i.acw = zext i32 %.pre183 to i64               ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.acw
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !47
  %i.acz = call float @llvm.fmuladd.f32(float %i.u, float %.sroa.0.0.vec.extract, float %i.acy)
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.acw
  store float %i.acz, ptr %i.ada, align 4, !tbaa !47
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82
  %i.adb = load ptr, ptr %i.tz, align 8, !tbaa !244 ; 8 uses
  %i.adc = add i32 %.pre183, 1                    ; 4 uses
  %i.add = lshr i32 %i.adc, 6                     ; 3 uses
  %i.ade = icmp ugt i32 %i.adc, 511
  br i1 %i.ade, label %._crit_edge173, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.adf = and i32 %i.adc, 63
  %i.adg = zext nneg i32 %i.add to i64            ; 8 uses
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %i.adg
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !209 ; 2 uses
  %i.adj = zext nneg i32 %i.adf to i64            ; 2 uses
  %i.adk = shl nuw i64 1, %i.adj
  %i.adl = and i64 %i.adi, %i.adk
  %.not.i.i.i.i83 = icmp eq i64 %i.adl, 0
  br i1 %.not.i.i.i.i83, label %bb.bi, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95

bb.bi:                                            ; preds = %bb.bh
  %i.adm = shl nsw i64 -1, %i.adj
  %i.adn = and i64 %i.adi, %i.adm                 ; 2 uses
  %.not2226.i.i.i.i85 = icmp eq i64 %i.adn, 0
  br i1 %.not2226.i.i.i.i85, label %.lr.ph.i.i.i.i89.preheader, label %.critedge.i.i.i.i86

.lr.ph.i.i.i.i89.preheader:                       ; preds = %bb.bi
  %exitcond.not.i.i.i.i91237 = icmp eq i32 %i.add, 7
  br i1 %exitcond.not.i.i.i.i91237, label %._crit_edge173, label %.lr.ph239

.lr.ph.i.i.i.i89:                                 ; preds = %.lr.ph239
  %exitcond.not.i.i.i.i91 = icmp eq i64 %indvars.iv.next.i.i.i.i92, 7
  br i1 %exitcond.not.i.i.i.i91, label %._crit_edge173, label %.lr.ph239.1

.lr.ph239.1:                                      ; preds = %.lr.ph.i.i.i.i89
  %indvars.iv.next.i.i.i.i92.1 = add nuw nsw i64 %i.adg, 2 ; 3 uses
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv.next.i.i.i.i92.1
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.1 = icmp eq i64 %i.adp, 0
  br i1 %.not22.i.i.i.i93.1, label %.lr.ph.i.i.i.i89.1, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.1:                               ; preds = %.lr.ph239.1
  %exitcond.not.i.i.i.i91.1 = icmp eq i64 %indvars.iv.next.i.i.i.i92.1, 7
  br i1 %exitcond.not.i.i.i.i91.1, label %._crit_edge173, label %.lr.ph239.2

.lr.ph239.2:                                      ; preds = %.lr.ph.i.i.i.i89.1
  %indvars.iv.next.i.i.i.i92.2 = add nuw nsw i64 %i.adg, 3 ; 3 uses
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv.next.i.i.i.i92.2
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.2 = icmp eq i64 %i.adr, 0
  br i1 %.not22.i.i.i.i93.2, label %.lr.ph.i.i.i.i89.2, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.2:                               ; preds = %.lr.ph239.2
  %exitcond.not.i.i.i.i91.2 = icmp eq i64 %indvars.iv.next.i.i.i.i92.2, 7
  br i1 %exitcond.not.i.i.i.i91.2, label %._crit_edge173, label %.lr.ph239.3

.lr.ph239.3:                                      ; preds = %.lr.ph.i.i.i.i89.2
  %indvars.iv.next.i.i.i.i92.3 = add nuw nsw i64 %i.adg, 4 ; 3 uses
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv.next.i.i.i.i92.3
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.3 = icmp eq i64 %i.adt, 0
  br i1 %.not22.i.i.i.i93.3, label %.lr.ph.i.i.i.i89.3, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.3:                               ; preds = %.lr.ph239.3
  %exitcond.not.i.i.i.i91.3 = icmp eq i64 %indvars.iv.next.i.i.i.i92.3, 7
  br i1 %exitcond.not.i.i.i.i91.3, label %._crit_edge173, label %.lr.ph239.4

.lr.ph239.4:                                      ; preds = %.lr.ph.i.i.i.i89.3
  %indvars.iv.next.i.i.i.i92.4 = add nuw nsw i64 %i.adg, 5 ; 3 uses
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.adb, i64 %indvars.iv.next.i.i.i.i92.4
  %i.adv = load i64, ptr %i.adu, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.4 = icmp eq i64 %i.adv, 0
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
  %.0108 = select i1 %i.kn, float %i.kl, float %i.kk ; 2 uses
  %.0 = select i1 %i.kn, float %i.kk, float %i.kl
  %i.ko = fcmp ogt float %.0108, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.ko, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.at, align 8, !tbaa !201
  br label %bb.aq

bb.am:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kp = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc38 unwind label %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

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
          to label %bb.an unwind label %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  %i.ov = call double @llvm.sqrt.f64(double %i.ml) ; 2 uses
  %i.ow = load double, ptr %i.z, align 8, !tbaa !373
  %i.ox = fmul double %i.ow, %i.ou
  %i.oy = fmul double %i.ov, %i.ov
  %i.oz = fmul double %i.oy, 2.000000e+00
  %i.pa = fdiv double %i.ox, %i.oz
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit: ; preds = %bb.ao, %bb.an
  %i.pb = phi double [ %i.pa, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.pc = call double @llvm.fmuladd.f64(double %i.u, double %i.pb, double %i.ln)
  %i.pd = fpext float %.0 to double
  %i.pe = fpext float %.0108 to double
  %i.pf = fmul double %i.pc, %i.pe
  %i.pg = call double @llvm.fmuladd.f64(double %i.pd, double %i.ln, double %i.pf)
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ll
  store double %i.pg, ptr %i.ph, align 8, !tbaa !113
  br label %bb.aq

bb.ap:                                            ; preds = %.invoke, %.noexc36, %.noexc35, %bb.aj, %.lr.ph
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit.split-lp114

.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc38, %bb.am, %bb.p
  %lpad.loopexit.split-lp199 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp114

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit
  %i.pj = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.lj, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit ]
  %i.pk = load ptr, ptr %i.bg, align 8, !tbaa !244 ; 8 uses
  %i.pl = add i32 %i.pj, 1                        ; 4 uses
  %i.pm = lshr i32 %i.pl, 6                       ; 3 uses
  %i.pn = icmp ugt i32 %i.pl, 511
  br i1 %i.pn, label %._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.po = and i32 %i.pl, 63
  %i.pp = zext nneg i32 %i.pm to i64              ; 8 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.pp
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !209 ; 2 uses
  %i.ps = zext nneg i32 %i.po to i64              ; 2 uses
  %i.pt = shl nuw i64 1, %i.ps
  %i.pu = and i64 %i.pr, %i.pt
  %.not.i.i.i.i = icmp eq i64 %i.pu, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.pv = shl nsw i64 -1, %i.ps
  %i.pw = and i64 %i.pr, %i.pv                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.pw, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i40.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i40.preheader:                       ; preds = %bb.as
  %exitcond.not.i.i.i.i188 = icmp eq i32 %i.pm, 7
  br i1 %exitcond.not.i.i.i.i188, label %._crit_edge, label %.lr.ph190

.lr.ph.i.i.i.i40:                                 ; preds = %.lr.ph190
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph190.1

.lr.ph190.1:                                      ; preds = %.lr.ph.i.i.i.i40
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.pp, 2 ; 3 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next.i.i.i.i.1
  %i.py = load i64, ptr %i.px, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.py, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i40.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.1:                               ; preds = %.lr.ph190.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph190.2

.lr.ph190.2:                                      ; preds = %.lr.ph.i.i.i.i40.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.pp, 3 ; 3 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next.i.i.i.i.2
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.qa, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i40.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.2:                               ; preds = %.lr.ph190.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph190.3

.lr.ph190.3:                                      ; preds = %.lr.ph.i.i.i.i40.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.pp, 4 ; 3 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next.i.i.i.i.3
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.qc, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i40.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.3:                               ; preds = %.lr.ph190.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph190.4

.lr.ph190.4:                                      ; preds = %.lr.ph.i.i.i.i40.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.pp, 5 ; 3 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next.i.i.i.i.4
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.qe, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i40.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.4:                               ; preds = %.lr.ph190.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph190.5

.lr.ph190.5:                                      ; preds = %.lr.ph.i.i.i.i40.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.pp, 6 ; 3 uses
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next.i.i.i.i.5
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.qg, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i40.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.5:                               ; preds = %.lr.ph190.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph190.6

.lr.ph190.6:                                      ; preds = %.lr.ph.i.i.i.i40.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.pp, 7 ; 2 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next.i.i.i.i.6
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.qi, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph190:                                        ; preds = %.lr.ph.i.i.i.i40.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.pp, 1 ; 3 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next.i.i.i.i
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.qk, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i40, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph190.6, %.lr.ph190.5, %.lr.ph190.4, %.lr.ph190.3, %.lr.ph190.2, %.lr.ph190.1, %.lr.ph190
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph190 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph190.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph190.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph190.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph190.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph190.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph190.6 ]
  %.lcssa202 = phi i64 [ %i.qk, %.lr.ph190 ], [ %i.py, %.lr.ph190.1 ], [ %i.qa, %.lr.ph190.2 ], [ %i.qc, %.lr.ph190.3 ], [ %i.qe, %.lr.ph190.4 ], [ %i.qg, %.lr.ph190.5 ], [ %i.qi, %.lr.ph190.6 ]
  %i.ql = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.as
  %.016.lcssa.i.i.i.i = phi i32 [ %i.pm, %bb.as ], [ %i.ql, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.pw, %bb.as ], [ %.lcssa202, %.critedge.loopexit.i.i.i.i ]
  %i.qm = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.qn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.qo = trunc nuw nsw i64 %i.qn to i32
  %i.qp = or disjoint i32 %i.qm, %i.qo
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit: ; preds = %bb.ar, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.qp, %.critedge.i.i.i.i ], [ %i.pl, %bb.ar ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.at, align 8, !tbaa !201
  %.not109 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not109, label %._crit_edge, label %.lr.ph

.loopexit.split-lp114:                            ; preds = %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap
  %.pn25 = phi { ptr, i32 } [ %i.pi, %bb.ap ], [ %lpad.loopexit.split-lp199, %.loopexit.split-lp114.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

.body:                                            ; preds = %bb.q, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %.loopexit.split-lp114
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25, %.loopexit.split-lp114 ], [ %i.db, %bb.q ], [ %i.cp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ]
  call void @_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEfED2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #18
  br label %bb.at

bb.at:                                            ; preds = %.body, %bb.h
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %.body ], [ %i.bn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body56

bb.au:                                            ; preds = %_ZN7openvdb5v13_05tools15LevelSetTrackerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !318 ; 2 uses
  %i.qs = load i64, ptr %1, align 8, !tbaa !317
  %i.qt = icmp ult i64 %i.qr, %i.qs
  br i1 %i.qt, label %.lr.ph131, label %.loopexit111

.lr.ph131:                                        ; preds = %bb.au
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.qx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph131, %._crit_edge128
  %.sroa.7.0129 = phi i64 [ %i.qr, %.lr.ph131 ], [ %i.sk, %._crit_edge128 ] ; 3 uses
  %i.ra = load ptr, ptr %i.qu, align 8, !tbaa !349, !nonnull !72, !align !194 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 56
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !350
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !302
  %i.rf = mul i64 %i.re, %.sroa.7.0129
  %i.rg = getelementptr [16 x i8], ptr %i.rc, i64 %i.rf ; 6 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load atomic i32, ptr %i.rh seq_cst, align 4
  %.not.i.i43 = icmp eq i32 %i.ri, 0
  br i1 %.not.i.i43, label %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i44, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE6doLoadEv(ptr noundef nonnull align 8 dereferenceable(13) %i.rg)
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6Filter17meanCurvatureImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52: ; preds = %.lr.ph.i.i.i.i.i.i53.prol.loopexit, %.lr.ph.i.i.i.i.i.i53, %bb.ay
  %i.ru = shl i32 %.sroa.0.02.i.i.i.i49, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50

bb.az:                                            ; preds = %.lr.ph.i.i.i.i48
  %i.rv = call noundef i32 @sched_yield() #18     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50: ; preds = %bb.az, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52
  %.sroa.0.1.i.i.i.i51 = phi i32 [ %i.ru, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52 ], [ %.sroa.0.02.i.i.i.i49, %bb.az ]
  %i.rw = atomicrmw xchg ptr %i.rl, i8 1 seq_cst, align 1
  %i.rx = trunc i8 %i.rw to i1
  br i1 %i.rx, label %.lr.ph.i.i.i.i48, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50, %bb.ax
  %i.ry = load ptr, ptr %i.rg, align 8, !tbaa !69 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %bb.ba, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46

bb.ba:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45
  %i.sa = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #26
          to label %bb.bb unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.sa, ptr %i.rg, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47: ; preds = %bb.ba
  %i.sb = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.rl release, align 1
  br label %.body56

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46: ; preds = %bb.bb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45
  %i.sc = phi ptr [ %i.sa, %bb.bb ], [ %i.ry, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45 ]
  store atomic i8 0, ptr %i.rl release, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i44, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46
  %i.sd = phi ptr [ %i.sc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46 ], [ %i.rj, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i44 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.se = load ptr, ptr %i.qu, align 8, !tbaa !349, !nonnull !72, !align !194
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 40
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !351
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %.sroa.7.0129
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !352
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.si)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.bc
  %i.sj = load i32, ptr %i.qv, align 8, !tbaa !201
  %.not110126 = icmp eq i32 %i.sj, 512
  br i1 %.not110126, label %._crit_edge128, label %.lr.ph127

._crit_edge128:                                   ; preds = %.lr.ph193.6, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit80, %.lr.ph.i.i.i.i74.preheader, %.lr.ph.i.i.i.i74, %.lr.ph.i.i.i.i74.1, %.lr.ph.i.i.i.i74.2, %.lr.ph.i.i.i.i74.3, %.lr.ph.i.i.i.i74.4, %.lr.ph.i.i.i.i74.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.sk = add nuw i64 %.sroa.7.0129, 1            ; 2 uses
  %i.sl = load i64, ptr %1, align 8, !tbaa !317
  %i.sm = icmp ult i64 %i.sk, %i.sl
  br i1 %i.sm, label %bb.av, label %.loopexit111, !llvm.loop !733

bb.bd:                                            ; preds = %bb.aw
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc64, %.lr.ph127, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body56

.lr.ph127:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit80
  %i.so = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc64:                                         ; preds = %.lr.ph127
  %i.sp = load i32, ptr %i.qv, align 8, !tbaa !201 ; 4 uses
  %i.sq = lshr i32 %i.sp, 6
  %i.sr = lshr i32 %i.sp, 3
  %i.ss = and i32 %i.sr, 7
  %i.st = and i32 %i.sp, 7
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 80
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !124
  %i.sw = add nsw i32 %i.sv, %i.sq
  %i.sx = getelementptr inbounds nuw i8, ptr %i.so, i64 84
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !124
  %i.sz = add nsw i32 %i.sy, %i.ss
  %i.ta = getelementptr inbounds nuw i8, ptr %i.so, i64 88
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !124
  %i.tc = add nsw i32 %i.tb, %i.st
  %.sroa.2.0.insert.ext.i.i.i.i59 = zext i32 %i.sz to i64
  %.sroa.2.0.insert.shift.i.i.i.i60 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i59, 32
  %.sroa.0.0.insert.ext.i9.i.i.i61 = zext i32 %i.sw to i64
  %.sroa.0.0.insert.insert.i10.i.i.i62 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i60, %.sroa.0.0.insert.ext.i9.i.i.i61
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i62, ptr %i.qw, align 8
  store i32 %i.tc, ptr %.sroa.4.0..sroa_idx.i63, align 8, !tbaa !69
  %i.td = load ptr, ptr %i.qx, align 8, !tbaa !360
  %i.te = zext i32 %i.sp to i64
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %i.te
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !113
  %i.th = load ptr, ptr %i.qy, align 8, !tbaa !362
  store double %i.tg, ptr %i.th, align 8, !tbaa !113
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.qw)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.be:                                            ; preds = %.noexc64
  %i.ti = load i32, ptr %i.qv, align 8, !tbaa !201 ; 2 uses
  %i.tj = load ptr, ptr %i.qx, align 8, !tbaa !360
  %i.tk = zext i32 %i.ti to i64                   ; 2 uses
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %i.tk
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !113
  %i.tn = load ptr, ptr %i.qy, align 8, !tbaa !362 ; 18 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 32
  %i.tr = load <4 x double>, ptr %i.tp, align 8, !tbaa !113 ; 2 uses
  %i.ts = load double, ptr %i.tq, align 8, !tbaa !113
  %i.tt = load double, ptr %i.to, align 8, !tbaa !113
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tn, i64 48
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !113 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tn, i64 40
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !113 ; 2 uses
  %i.ty = fsub double %i.tv, %i.tx
  %i.tz = fmul double %i.ty, 5.000000e-01         ; 4 uses
  %i.ua = insertelement <2 x double> poison, double %i.tt, i64 0
  %i.ub = insertelement <2 x double> %i.ua, double %i.ts, i64 1
  %i.uc = shufflevector <4 x double> %i.tr, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ud = fsub <2 x double> %i.ub, %i.uc
  %i.ue = fmul <2 x double> %i.ud, splat (double 5.000000e-01) ; 4 uses
  %i.uf = fmul <2 x double> %i.ue, %i.ue          ; 2 uses
  %i.ug = fmul double %i.tz, %i.tz                ; 2 uses
  %i.uh = extractelement <2 x double> %i.uf, i64 0 ; 2 uses
  %i.ui = extractelement <2 x double> %i.uf, i64 1 ; 2 uses
  %i.uj = fadd double %i.uh, %i.ui
  %i.uk = fadd double %i.uj, %i.ug                ; 2 uses
  %i.ul = fcmp ugt double %i.uk, 1.000000e-15
  br i1 %i.ul, label %bb.bf, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67

bb.bf:                                            ; preds = %bb.be
  %i.um = load double, ptr %i.tn, align 8, !tbaa !113 ; 2 uses
  %i.un = insertelement <2 x double> poison, double %i.um, i64 0
  %i.uo = shufflevector <2 x double> %i.un, <2 x double> poison, <2 x i32> zeroinitializer
  %i.up = shufflevector <4 x double> %i.tr, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.uq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uo, <2 x double> splat (double -2.000000e+00), <2 x double> %i.up)
  %i.ur = fadd <2 x double> %i.uc, %i.uq          ; 2 uses
  %i.us = call double @llvm.fmuladd.f64(double %i.um, double -2.000000e+00, double %i.tv)
  %i.ut = fadd double %i.tx, %i.us                ; 2 uses
  %i.uu = extractelement <2 x double> %i.ur, i64 1 ; 2 uses
  %i.uv = fadd double %i.uu, %i.ut
  %i.uw = extractelement <2 x double> %i.ur, i64 0 ; 2 uses
  %i.ux = fadd double %i.uw, %i.ut
  %i.uy = fmul double %i.ui, %i.ux
  %i.uz = call double @llvm.fmuladd.f64(double %i.uh, double %i.uv, double %i.uy)
  %i.va = fadd double %i.uw, %i.uu
  %i.vb = call double @llvm.fmuladd.f64(double %i.ug, double %i.va, double %i.uz)
  %i.vc = getelementptr inbounds nuw i8, ptr %i.tn, i64 80
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !113
  %i.ve = getelementptr inbounds nuw i8, ptr %i.tn, i64 64
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !113
  %i.vg = fsub double %i.vd, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tn, i64 56
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !113
  %i.vj = fadd double %i.vg, %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tn, i64 72
  %i.vl = load double, ptr %i.vk, align 8, !tbaa !113
  %i.vm = fsub double %i.vj, %i.vl
  %i.vn = fmul double %i.vm, 2.500000e-01
  %i.vo = getelementptr inbounds nuw i8, ptr %i.tn, i64 112
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !113
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tn, i64 96
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !113
  %i.vs = fsub double %i.vp, %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tn, i64 88
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !113
  %i.vv = fadd double %i.vs, %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.tn, i64 104
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !113
  %i.vy = fsub double %i.vv, %i.vx
  %i.vz = fmul double %i.vy, 2.500000e-01
  %i.wa = fmul double %i.tz, %i.vz
  %i.wb = extractelement <2 x double> %i.ue, i64 1 ; 2 uses
  %i.wc = call double @llvm.fmuladd.f64(double %i.wb, double %i.vn, double %i.wa)
  %i.wd = fmul double %i.wb, %i.tz
  %i.we = getelementptr inbounds nuw i8, ptr %i.tn, i64 144
  %i.wf = load double, ptr %i.we, align 8, !tbaa !113
  %i.wg = getelementptr inbounds nuw i8, ptr %i.tn, i64 128
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !113
  %i.wi = fsub double %i.wf, %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.tn, i64 120
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !113
  %i.wl = fadd double %i.wi, %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %i.tn, i64 136
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !113
  %i.wo = fsub double %i.wl, %i.wn
  %i.wp = fmul double %i.wo, 2.500000e-01
  %i.wq = fmul double %i.wd, %i.wp
  %i.wr = extractelement <2 x double> %i.ue, i64 0
  %i.ws = call double @llvm.fmuladd.f64(double %i.wr, double %i.wc, double %i.wq)
  %i.wt = call double @llvm.fmuladd.f64(double %i.ws, double -2.000000e+00, double %i.vb)
  %i.wu = call double @llvm.sqrt.f64(double %i.uk) ; 2 uses
  %i.wv = load double, ptr %i.z, align 8, !tbaa !373
  %i.ww = fmul double %i.wv, %i.wt
  %i.wx = fmul double %i.wu, %i.wu
  %i.wy = fmul double %i.wx, 2.000000e+00
  %i.wz = fdiv double %i.ww, %i.wy
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67: ; preds = %bb.bf, %bb.be
  %i.xa = phi double [ %i.wz, %bb.bf ], [ 0.000000e+00, %bb.be ]
  %i.xb = call double @llvm.fmuladd.f64(double %i.u, double %i.xa, double %i.tm)
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %i.tk
  store double %i.xb, ptr %i.xc, align 8, !tbaa !113
  %i.xd = load ptr, ptr %i.qz, align 8, !tbaa !244 ; 8 uses
  %i.xe = add i32 %i.ti, 1                        ; 4 uses
  %i.xf = lshr i32 %i.xe, 6                       ; 3 uses
  %i.xg = icmp ugt i32 %i.xe, 511
  br i1 %i.xg, label %._crit_edge128, label %bb.bg

bb.bg:                                            ; preds = %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit67
  %i.xh = and i32 %i.xe, 63
  %i.xi = zext nneg i32 %i.xf to i64              ; 8 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.xi
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !209 ; 2 uses
  %i.xl = zext nneg i32 %i.xh to i64              ; 2 uses
  %i.xm = shl nuw i64 1, %i.xl
  %i.xn = and i64 %i.xk, %i.xm
  %.not.i.i.i.i68 = icmp eq i64 %i.xn, 0
  br i1 %.not.i.i.i.i68, label %bb.bh, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit80

bb.bh:                                            ; preds = %bb.bg
  %i.xo = shl nsw i64 -1, %i.xl
  %i.xp = and i64 %i.xk, %i.xo                    ; 2 uses
  %.not2226.i.i.i.i70 = icmp eq i64 %i.xp, 0
  br i1 %.not2226.i.i.i.i70, label %.lr.ph.i.i.i.i74.preheader, label %.critedge.i.i.i.i71

.lr.ph.i.i.i.i74.preheader:                       ; preds = %bb.bh
  %exitcond.not.i.i.i.i76191 = icmp eq i32 %i.xf, 7
  br i1 %exitcond.not.i.i.i.i76191, label %._crit_edge128, label %.lr.ph193

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph193
  %exitcond.not.i.i.i.i76 = icmp eq i64 %indvars.iv.next.i.i.i.i77, 7
  br i1 %exitcond.not.i.i.i.i76, label %._crit_edge128, label %.lr.ph193.1

.lr.ph193.1:                                      ; preds = %.lr.ph.i.i.i.i74
  %indvars.iv.next.i.i.i.i77.1 = add nuw nsw i64 %i.xi, 2 ; 3 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i.i.i77.1
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.1 = icmp eq i64 %i.xr, 0
  br i1 %.not22.i.i.i.i78.1, label %.lr.ph.i.i.i.i74.1, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.1:                               ; preds = %.lr.ph193.1
  %exitcond.not.i.i.i.i76.1 = icmp eq i64 %indvars.iv.next.i.i.i.i77.1, 7
  br i1 %exitcond.not.i.i.i.i76.1, label %._crit_edge128, label %.lr.ph193.2

.lr.ph193.2:                                      ; preds = %.lr.ph.i.i.i.i74.1
  %indvars.iv.next.i.i.i.i77.2 = add nuw nsw i64 %i.xi, 3 ; 3 uses
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i.i.i77.2
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.2 = icmp eq i64 %i.xt, 0
  br i1 %.not22.i.i.i.i78.2, label %.lr.ph.i.i.i.i74.2, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.2:                               ; preds = %.lr.ph193.2
  %exitcond.not.i.i.i.i76.2 = icmp eq i64 %indvars.iv.next.i.i.i.i77.2, 7
  br i1 %exitcond.not.i.i.i.i76.2, label %._crit_edge128, label %.lr.ph193.3

.lr.ph193.3:                                      ; preds = %.lr.ph.i.i.i.i74.2
  %indvars.iv.next.i.i.i.i77.3 = add nuw nsw i64 %i.xi, 4 ; 3 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i.i.i77.3
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.3 = icmp eq i64 %i.xv, 0
  br i1 %.not22.i.i.i.i78.3, label %.lr.ph.i.i.i.i74.3, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.3:                               ; preds = %.lr.ph193.3
  %exitcond.not.i.i.i.i76.3 = icmp eq i64 %indvars.iv.next.i.i.i.i77.3, 7
  br i1 %exitcond.not.i.i.i.i76.3, label %._crit_edge128, label %.lr.ph193.4

.lr.ph193.4:                                      ; preds = %.lr.ph.i.i.i.i74.3
  %indvars.iv.next.i.i.i.i77.4 = add nuw nsw i64 %i.xi, 5 ; 3 uses
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i.i.i77.4
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.4 = icmp eq i64 %i.xx, 0
  br i1 %.not22.i.i.i.i78.4, label %.lr.ph.i.i.i.i74.4, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.4:                               ; preds = %.lr.ph193.4
  %exitcond.not.i.i.i.i76.4 = icmp eq i64 %indvars.iv.next.i.i.i.i77.4, 7
  br i1 %exitcond.not.i.i.i.i76.4, label %._crit_edge128, label %.lr.ph193.5

.lr.ph193.5:                                      ; preds = %.lr.ph.i.i.i.i74.4
  %indvars.iv.next.i.i.i.i77.5 = add nuw nsw i64 %i.xi, 6 ; 3 uses
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i.i.i77.5
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.5 = icmp eq i64 %i.xz, 0
  br i1 %.not22.i.i.i.i78.5, label %.lr.ph.i.i.i.i74.5, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph.i.i.i.i74.5:                               ; preds = %.lr.ph193.5
  %exitcond.not.i.i.i.i76.5 = icmp eq i64 %indvars.iv.next.i.i.i.i77.5, 7
  br i1 %exitcond.not.i.i.i.i76.5, label %._crit_edge128, label %.lr.ph193.6

.lr.ph193.6:                                      ; preds = %.lr.ph.i.i.i.i74.5
  %indvars.iv.next.i.i.i.i77.6 = add nuw nsw i64 %i.xi, 7 ; 2 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i.i.i77.6
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78.6 = icmp eq i64 %i.yb, 0
  br i1 %.not22.i.i.i.i78.6, label %._crit_edge128, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.lr.ph193:                                        ; preds = %.lr.ph.i.i.i.i74.preheader
  %indvars.iv.next.i.i.i.i77 = add nuw nsw i64 %i.xi, 1 ; 3 uses
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.next.i.i.i.i77
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i78 = icmp eq i64 %i.yd, 0
  br i1 %.not22.i.i.i.i78, label %.lr.ph.i.i.i.i74, label %.critedge.loopexit.i.i.i.i79, !llvm.loop !7

.critedge.loopexit.i.i.i.i79:                     ; preds = %.lr.ph193.6, %.lr.ph193.5, %.lr.ph193.4, %.lr.ph193.3, %.lr.ph193.2, %.lr.ph193.1, %.lr.ph193
  %indvars.iv.next.i.i.i.i77.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i77, %.lr.ph193 ], [ %indvars.iv.next.i.i.i.i77.1, %.lr.ph193.1 ], [ %indvars.iv.next.i.i.i.i77.2, %.lr.ph193.2 ], [ %indvars.iv.next.i.i.i.i77.3, %.lr.ph193.3 ], [ %indvars.iv.next.i.i.i.i77.4, %.lr.ph193.4 ], [ %indvars.iv.next.i.i.i.i77.5, %.lr.ph193.5 ], [ %indvars.iv.next.i.i.i.i77.6, %.lr.ph193.6 ]
  %.lcssa = phi i64 [ %i.yd, %.lr.ph193 ], [ %i.xr, %.lr.ph193.1 ], [ %i.xt, %.lr.ph193.2 ], [ %i.xv, %.lr.ph193.3 ], [ %i.xx, %.lr.ph193.4 ], [ %i.xz, %.lr.ph193.5 ], [ %i.yb, %.lr.ph193.6 ]
  %i.ye = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i77.lcssa to i32
  br label %.critedge.i.i.i.i71

.critedge.i.i.i.i71:                              ; preds = %.critedge.loopexit.i.i.i.i79, %bb.bh
  %.016.lcssa.i.i.i.i72 = phi i32 [ %i.xf, %bb.bh ], [ %i.ye, %.critedge.loopexit.i.i.i.i79 ]
  %.0.lcssa.i.i.i.i73 = phi i64 [ %i.xp, %bb.bh ], [ %.lcssa, %.critedge.loopexit.i.i.i.i79 ]
  %i.yf = shl nuw nsw i32 %.016.lcssa.i.i.i.i72, 6
  %i.yg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i73, i1 true)
  %i.yh = trunc nuw nsw i64 %i.yg to i32
  %i.yi = or disjoint i32 %i.yf, %i.yh
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit80

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit80: ; preds = %bb.bg, %.critedge.i.i.i.i71
  %.118.i.i.i.i69 = phi i32 [ %i.yi, %.critedge.i.i.i.i71 ], [ %i.xe, %bb.bg ] ; 2 uses
  store i32 %.118.i.i.i.i69, ptr %i.qv, align 8, !tbaa !201
  %.not110 = icmp eq i32 %.118.i.i.i.i69, 512
  br i1 %.not110, label %._crit_edge128, label %.lr.ph127

.loopexit111:                                     ; preds = %._crit_edge128, %bb.au, %_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS1_10BoxSamplerEfED2Ev.exit
  %i.yj = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !362 ; 3 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i.i.i81, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.bi

bb.bi:                                            ; preds = %.loopexit111
  %i.yl = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !364
  %i.yn = ptrtoint ptr %i.ym to i64
  %i.yo = ptrtoint ptr %i.yk to i64
  %i.yp = sub i64 %i.yn, %i.yo
  call void @_ZdlPvm(ptr noundef nonnull %i.yk, i64 noundef %i.yp) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.bi, %.loopexit111
  %i.yq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.yq, align 8, !tbaa !45
  %i.yr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !365 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.ys, null
  br i1 %.not.i.i82, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.yq, ptr %i.a, align 8, !tbaa !367
  %i.yu = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.yt, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i unwind label %bb.bk, !inline_history !368 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i: ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit

bb.bk:                                            ; preds = %bb.bj
  %i.yv = landingpad { ptr, i32 }
          catch ptr null
  %i.yw = extractvalue { ptr, i32 } %i.yv, 0
  call void @__clang_call_terminate(ptr %i.yw) #27, !inline_history !368
  unreachable

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i, %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

.body56:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47, %bb.bd, %bb.at
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %bb.at ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.sn, %bb.bd ], [ %i.sb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47 ]
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
  %.not.i.i106 = icmp eq i64 %i.jb, 0
  %i.jc = zext nneg i32 %i.is to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.jc ; 3 uses
  br i1 %.not.i.i106, label %.noexc45, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !69
  %i.jf = and i32 %i.dn, -128
  %i.jg = and i32 %i.dq, -128
  %.sroa.2.0.insert.ext.i.i.i107 = zext i32 %i.jf to i64
  %.sroa.2.0.insert.shift.i.i.i108 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i107, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.er to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i108, %.sroa.0.0.insert.ext.i.i.i
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
  %.0136 = select i1 %i.kn, float %i.kl, float %i.kk ; 2 uses
  %.0 = select i1 %i.kn, float %i.kk, float %i.kl
  %i.ko = fcmp ogt float %.0136, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.ko, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.at, align 8, !tbaa !201
  br label %bb.aq

bb.am:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kp = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc49 unwind label %.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

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
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit unwind label %.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  %i.mz = call double @llvm.sqrt.f64(double %i.mg) ; 3 uses
  %i.na = load <2 x double>, ptr %i.x, align 8
  %i.nb = load double, ptr %i.z, align 8, !tbaa !373
  %i.nc = fneg double %i.nb
  %i.nd = load <12 x double>, ptr %i.mq, align 8, !tbaa !113 ; 8 uses
  %i.ne = shufflevector <12 x double> %i.nd, <12 x double> poison, <2 x i32> <i32 7, i32 3>
  %i.nf = shufflevector <12 x double> %i.nd, <12 x double> poison, <2 x i32> <i32 5, i32 1>
  %i.ng = fsub <2 x double> %i.ne, %i.nf
  %i.nh = shufflevector <12 x double> %i.nd, <12 x double> poison, <2 x i32> <i32 3, i32 11>
  %i.ni = shufflevector <12 x double> %i.nd, <12 x double> poison, <2 x i32> <i32 1, i32 9>
  %i.nj = fsub <2 x double> %i.nh, %i.ni
  %i.nk = shufflevector <12 x double> %i.nd, <12 x double> poison, <2 x i32> <i32 4, i32 0>
  %i.nl = fadd <2 x double> %i.ng, %i.nk
  %i.nm = shufflevector <12 x double> %i.nd, <12 x double> poison, <2 x i32> <i32 0, i32 8>
  %i.nn = fadd <2 x double> %i.nj, %i.nm
  %i.no = shufflevector <12 x double> %i.nd, <12 x double> poison, <2 x i32> <i32 6, i32 2>
  %i.np = fsub <2 x double> %i.nl, %i.no
  %i.nq = shufflevector <12 x double> %i.nd, <12 x double> poison, <2 x i32> <i32 2, i32 10>
  %i.nr = fsub <2 x double> %i.nn, %i.nq
  %i.ns = fmul <2 x double> %i.np, splat (double 2.500000e-01) ; 4 uses
  %i.nt = fmul <2 x double> %i.nr, splat (double 2.500000e-01) ; 6 uses
  %i.nu = fadd double %i.mr, %i.mp
  %i.nv = fadd double %i.ms, %i.mp
  %i.nw = fmul double %i.me, %i.nv
  %i.nx = call double @llvm.fmuladd.f64(double %i.md, double %i.nu, double %i.nw)
  %i.ny = fadd double %i.ms, %i.mr
  %i.nz = call double @llvm.fmuladd.f64(double %i.mc, double %i.ny, double %i.nx)
  %i.oa = fmul double %i.mw, %i.lv                ; 2 uses
  %i.ob = extractelement <2 x double> %i.nt, i64 1 ; 4 uses
  %i.oc = fmul double %i.oa, %i.ob
  %i.od = fneg double %i.ob
  %i.oe = fmul double %i.ob, %i.od
  %i.of = call double @llvm.fmuladd.f64(double %i.mr, double %i.mp, double %i.oe)
  %i.og = extractelement <2 x double> %i.ns, i64 0 ; 3 uses
  %i.oh = fneg double %i.og
  %i.oi = fmul double %i.og, %i.oh
  %i.oj = call double @llvm.fmuladd.f64(double %i.ms, double %i.mp, double %i.oi)
  %i.ok = fmul double %i.me, %i.oj
  %i.ol = call double @llvm.fmuladd.f64(double %i.md, double %i.of, double %i.ok)
  %i.om = extractelement <2 x double> %i.nt, i64 0
  %i.on = shufflevector <2 x double> %i.nt, <2 x double> %i.mn, <2 x i32> <i32 0, i32 2>
  %i.oo = fneg <2 x double> %i.on
  %i.op = fmul <2 x double> %i.nt, %i.oo
  %i.oq = shufflevector <2 x double> %i.mn, <2 x double> %i.nt, <2 x i32> <i32 0, i32 2>
  %i.or = shufflevector <2 x double> %i.mn, <2 x double> %i.ns, <2 x i32> <i32 1, i32 2>
  %i.os = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.or, <2 x double> %i.op) ; 2 uses
  %i.ot = extractelement <2 x double> %i.os, i64 0
  %i.ou = call double @llvm.fmuladd.f64(double %i.mc, double %i.ot, double %i.ol)
  %i.ov = fmul double %i.og, %i.mv
  %i.ow = call double @llvm.fmuladd.f64(double %i.om, double %i.ob, double %i.ov)
  %i.ox = fmul double %i.mu, %i.ow
  %i.oy = extractelement <2 x double> %i.os, i64 1
  %i.oz = call double @llvm.fmuladd.f64(double %i.oa, double %i.oy, double %i.ox)
  %i.pa = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.pb = insertelement <2 x double> %i.pa, double %i.my, i64 1
  %i.pc = fmul <2 x double> %i.pb, %i.ns
  %i.pd = shufflevector <2 x double> %i.ma, <2 x double> %i.ns, <2 x i32> <i32 1, i32 2>
  %i.pe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.nt, <2 x double> %i.pc)
  %i.pf = insertelement <2 x double> %i.ma, double %i.mx, i64 1
  %i.pg = insertelement <2 x double> poison, double %i.oc, i64 0
  %i.ph = insertelement <2 x double> %i.pg, double %i.oz, i64 1
  %i.pi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.pe, <2 x double> %i.ph)
  %i.pj = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.pk = insertelement <2 x double> %i.pj, double %i.ou, i64 1
  %i.pl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.pk)
  %i.pm = fmul double %i.mz, %i.mz
  %i.pn = insertelement <2 x double> poison, double %i.mz, i64 0
  %i.po = insertelement <2 x double> %i.pn, double %i.pm, i64 1 ; 2 uses
  %i.pp = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pq = fmul <2 x double> %i.po, %i.pp
  %i.pr = insertelement <2 x double> %i.na, double %i.nc, i64 1
  %i.ps = fmul <2 x double> %i.pr, %i.pl
  %i.pt = fdiv <2 x double> %i.ps, %i.pq          ; 2 uses
  %i.pu = extractelement <2 x double> %i.pt, i64 0 ; 3 uses
  %i.pv = extractelement <2 x double> %i.pt, i64 1
  %i.pw = call double @llvm.fmuladd.f64(double %i.pu, double %i.pu, double %i.pv)
  %i.px = call double @sqrt(double noundef %i.pw) #18
  %i.py = fsub double %i.pu, %i.px
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit
  %.sroa.0.0.i = phi double [ %i.py, %bb.an ], [ 0.000000e+00, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit ]
  %i.pz = load i32, ptr %i.at, align 8, !tbaa !201 ; 2 uses
  %i.qa = load ptr, ptr %i.be, align 8, !tbaa !360
  %i.qb = zext i32 %i.pz to i64                   ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.qb
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !113 ; 2 uses
  %i.qe = fmul double %i.u, %.sroa.0.0.i          ; 2 uses
  %i.qf = fcmp olt double %i.qe, 0.000000e+00
  %.sroa.speculated = select i1 %i.qf, double %i.qe, double 0.000000e+00
  %i.qg = fadd double %i.qd, %.sroa.speculated
  %i.qh = fpext float %.0 to double
  %i.qi = fpext float %.0136 to double
  %i.qj = fmul double %i.qg, %i.qi
  %i.qk = call double @llvm.fmuladd.f64(double %i.qh, double %i.qd, double %i.qj)
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.qb
  store double %i.qk, ptr %i.ql, align 8, !tbaa !113
  br label %bb.aq

bb.ap:                                            ; preds = %.invoke, %.noexc47, %.noexc46, %bb.aj, %.lr.ph
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit.split-lp164

.loopexit.split-lp164.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc49, %bb.am, %bb.p
  %lpad.loopexit.split-lp252 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp164

bb.aq:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %bb.ao
  %i.qn = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.pz, %bb.ao ]
  %i.qo = load ptr, ptr %i.bg, align 8, !tbaa !244 ; 8 uses
  %i.qp = add i32 %i.qn, 1                        ; 4 uses
  %i.qq = lshr i32 %i.qp, 6                       ; 3 uses
  %i.qr = icmp ugt i32 %i.qp, 511
  br i1 %i.qr, label %._crit_edge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qs = and i32 %i.qp, 63
  %i.qt = zext nneg i32 %i.qq to i64              ; 8 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.qt
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !209 ; 2 uses
  %i.qw = zext nneg i32 %i.qs to i64              ; 2 uses
  %i.qx = shl nuw i64 1, %i.qw
  %i.qy = and i64 %i.qv, %i.qx
  %.not.i.i.i.i = icmp eq i64 %i.qy, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit

bb.as:                                            ; preds = %bb.ar
  %i.qz = shl nsw i64 -1, %i.qw
  %i.ra = and i64 %i.qv, %i.qz                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.ra, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i53.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i53.preheader:                       ; preds = %bb.as
  %exitcond.not.i.i.i.i241 = icmp eq i32 %i.qq, 7
  br i1 %exitcond.not.i.i.i.i241, label %._crit_edge, label %.lr.ph243

.lr.ph.i.i.i.i53:                                 ; preds = %.lr.ph243
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph243.1

.lr.ph243.1:                                      ; preds = %.lr.ph.i.i.i.i53
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.qt, 2 ; 3 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv.next.i.i.i.i.1
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.rc, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i53.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.1:                               ; preds = %.lr.ph243.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph243.2

.lr.ph243.2:                                      ; preds = %.lr.ph.i.i.i.i53.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.qt, 3 ; 3 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv.next.i.i.i.i.2
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.re, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i53.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.2:                               ; preds = %.lr.ph243.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph243.3

.lr.ph243.3:                                      ; preds = %.lr.ph.i.i.i.i53.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.qt, 4 ; 3 uses
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv.next.i.i.i.i.3
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.rg, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i53.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.3:                               ; preds = %.lr.ph243.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph243.4

.lr.ph243.4:                                      ; preds = %.lr.ph.i.i.i.i53.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.qt, 5 ; 3 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv.next.i.i.i.i.4
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.ri, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i53.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.4:                               ; preds = %.lr.ph243.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph243.5

.lr.ph243.5:                                      ; preds = %.lr.ph.i.i.i.i53.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.qt, 6 ; 3 uses
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv.next.i.i.i.i.5
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.rk, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i53.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i53.5:                               ; preds = %.lr.ph243.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph243.6

.lr.ph243.6:                                      ; preds = %.lr.ph.i.i.i.i53.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.qt, 7 ; 2 uses
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %indvars.iv.next.i.i.i.i.6
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  br i1 %i.sr, label %.lr.ph.i.i.i.i61, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58

.lr.ph.i.i.i.i61:                                 ; preds = %bb.ax, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63
  %.sroa.0.02.i.i.i.i62 = phi i32 [ %.sroa.0.1.i.i.i.i64, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63 ], [ 1, %bb.ax ] ; 8 uses
  %i.ss = icmp slt i32 %.sroa.0.02.i.i.i.i62, 17
  br i1 %i.ss, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i61
  %i.st = icmp sgt i32 %.sroa.0.02.i.i.i.i62, 0
  br i1 %i.st, label %.lr.ph.i.i.i.i.i.i66.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i66.preheader:                   ; preds = %bb.ay
  %xtraiter259 = and i32 %.sroa.0.02.i.i.i.i62, 7 ; 2 uses
  %lcmp.mod260.not = icmp eq i32 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %.lr.ph.i.i.i.i.i.i66.prol.loopexit, label %.lr.ph.i.i.i.i.i.i66.prol

.lr.ph.i.i.i.i.i.i66.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i66.preheader, %.lr.ph.i.i.i.i.i.i66.prol
  %.01.i.i.i.i.i.i67.prol = phi i32 [ %i.su, %.lr.ph.i.i.i.i.i.i66.prol ], [ %.sroa.0.02.i.i.i.i62, %.lr.ph.i.i.i.i.i.i66.preheader ]
  %prol.iter261 = phi i32 [ %prol.iter261.next, %.lr.ph.i.i.i.i.i.i66.prol ], [ 0, %.lr.ph.i.i.i.i.i.i66.preheader ]
  %i.su = add nsw i32 %.01.i.i.i.i.i.i67.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter261.next = add i32 %prol.iter261, 1   ; 2 uses
  %prol.iter261.cmp.not = icmp eq i32 %prol.iter261.next, %xtraiter259
  br i1 %prol.iter261.cmp.not, label %.lr.ph.i.i.i.i.i.i66.prol.loopexit, label %.lr.ph.i.i.i.i.i.i66.prol, !llvm.loop !745

.lr.ph.i.i.i.i.i.i66.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i66.prol, %.lr.ph.i.i.i.i.i.i66.preheader
  %.01.i.i.i.i.i.i67.unr = phi i32 [ %.sroa.0.02.i.i.i.i62, %.lr.ph.i.i.i.i.i.i66.preheader ], [ %i.su, %.lr.ph.i.i.i.i.i.i66.prol ]
  %i.sv = icmp ult i32 %.sroa.0.02.i.i.i.i62, 8
  br i1 %i.sv, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65, label %.lr.ph.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i66:                             ; preds = %.lr.ph.i.i.i.i.i.i66.prol.loopexit, %.lr.ph.i.i.i.i.i.i66
  %.01.i.i.i.i.i.i67 = phi i32 [ %i.sw, %.lr.ph.i.i.i.i.i.i66 ], [ %.01.i.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i.i66.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.sw = add nsw i32 %.01.i.i.i.i.i.i67, -8
  call void @llvm.x86.sse2.pause()
  %i.sx = icmp sgt i32 %.01.i.i.i.i.i.i67, 8
  br i1 %i.sx, label %.lr.ph.i.i.i.i.i.i66, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65, !llvm.loop !3

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65: ; preds = %.lr.ph.i.i.i.i.i.i66.prol.loopexit, %.lr.ph.i.i.i.i.i.i66, %bb.ay
  %i.sy = shl i32 %.sroa.0.02.i.i.i.i62, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63

bb.az:                                            ; preds = %.lr.ph.i.i.i.i61
  %i.sz = call noundef i32 @sched_yield() #18     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63: ; preds = %bb.az, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65
  %.sroa.0.1.i.i.i.i64 = phi i32 [ %i.sy, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i65 ], [ %.sroa.0.02.i.i.i.i62, %bb.az ]
  %i.ta = atomicrmw xchg ptr %i.sp, i8 1 seq_cst, align 1
  %i.tb = trunc i8 %i.ta to i1
  br i1 %i.tb, label %.lr.ph.i.i.i.i61, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i63, %bb.ax
  %i.tc = load ptr, ptr %i.sk, align 8, !tbaa !69 ; 2 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %bb.ba, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59

bb.ba:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58
  %i.te = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #26
          to label %bb.bb unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i60 ; 2 uses

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.te, ptr %i.sk, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i60: ; preds = %bb.ba
  %i.tf = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.sp release, align 1
  br label %.body69

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59: ; preds = %bb.bb, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58
  %i.tg = phi ptr [ %i.te, %bb.bb ], [ %i.tc, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i58 ]
  store atomic i8 0, ptr %i.sp release, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i57, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59
  %i.th = phi ptr [ %i.tg, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i59 ], [ %i.sn, %_ZNK7openvdb5v13_04tree10LeafBufferIdLj3EE10loadValuesEv.exit.i57 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ti = load ptr, ptr %i.ry, align 8, !tbaa !349, !nonnull !72, !align !194
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !351
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %.sroa.7.0179
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !352
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIdLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<double, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.tm)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.bc
  %i.tn = load i32, ptr %i.rz, align 8, !tbaa !201
  %.not160176 = icmp eq i32 %i.tn, 512
  br i1 %.not160176, label %._crit_edge178, label %.lr.ph177

._crit_edge178:                                   ; preds = %.lr.ph246.6, %.thread, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit97, %.lr.ph.i.i.i.i91.preheader, %.lr.ph.i.i.i.i91, %.lr.ph.i.i.i.i91.1, %.lr.ph.i.i.i.i91.2, %.lr.ph.i.i.i.i91.3, %.lr.ph.i.i.i.i91.4, %.lr.ph.i.i.i.i91.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.to = add nuw i64 %.sroa.7.0179, 1            ; 2 uses
  %i.tp = load i64, ptr %1, align 8, !tbaa !317
  %i.tq = icmp ult i64 %i.to, %i.tp
  br i1 %i.tq, label %bb.av, label %.loopexit161, !llvm.loop !746

bb.bd:                                            ; preds = %bb.aw
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %.body69

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc77, %.lr.ph177, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body69

.lr.ph177:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit97
  %i.ts = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc77:                                         ; preds = %.lr.ph177
  %i.tt = load i32, ptr %i.rz, align 8, !tbaa !201 ; 4 uses
  %i.tu = lshr i32 %i.tt, 6
  %i.tv = lshr i32 %i.tt, 3
  %i.tw = and i32 %i.tv, 7
  %i.tx = and i32 %i.tt, 7
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 80
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !124
  %i.ua = add nsw i32 %i.tz, %i.tu
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ts, i64 84
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !124
  %i.ud = add nsw i32 %i.uc, %i.tw
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ts, i64 88
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !124
  %i.ug = add nsw i32 %i.uf, %i.tx
  %.sroa.2.0.insert.ext.i.i.i.i72 = zext i32 %i.ud to i64
  %.sroa.2.0.insert.shift.i.i.i.i73 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i72, 32
  %.sroa.0.0.insert.ext.i9.i.i.i74 = zext i32 %i.ua to i64
  %.sroa.0.0.insert.insert.i10.i.i.i75 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i73, %.sroa.0.0.insert.ext.i9.i.i.i74
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i75, ptr %i.sa, align 8
  store i32 %i.ug, ptr %.sroa.4.0..sroa_idx.i76, align 8, !tbaa !69
  %i.uh = load ptr, ptr %i.sb, align 8, !tbaa !360
  %i.ui = zext i32 %i.tt to i64
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.ui
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !113
  %i.ul = load ptr, ptr %i.sc, align 8, !tbaa !362
  store double %i.uk, ptr %i.ul, align 8, !tbaa !113
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.sa)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79: ; preds = %.noexc77
  %i.um = load ptr, ptr %i.sc, align 8, !tbaa !362 ; 7 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 32
  %i.uq = load <4 x double>, ptr %i.uo, align 8, !tbaa !113 ; 2 uses
  %i.ur = load double, ptr %i.un, align 8, !tbaa !113
  %i.us = getelementptr inbounds nuw i8, ptr %i.um, i64 48
  %i.ut = load double, ptr %i.us, align 8, !tbaa !113 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.um, i64 40
  %i.uv = load double, ptr %i.up, align 8, !tbaa !113
  %i.uw = load double, ptr %i.uu, align 8, !tbaa !113 ; 2 uses
  %i.ux = fsub double %i.ut, %i.uw
  %i.uy = fmul double %i.ux, 5.000000e-01         ; 5 uses
  %i.uz = insertelement <2 x double> poison, double %i.ur, i64 0
  %i.va = insertelement <2 x double> %i.uz, double %i.uv, i64 1
  %i.vb = shufflevector <4 x double> %i.uq, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vc = fsub <2 x double> %i.va, %i.vb
  %i.vd = fmul <2 x double> %i.vc, splat (double 5.000000e-01) ; 6 uses
  %i.ve = fmul <2 x double> %i.vd, %i.vd          ; 2 uses
  %i.vf = fmul double %i.uy, %i.uy                ; 3 uses
  %i.vg = extractelement <2 x double> %i.ve, i64 0 ; 3 uses
  %i.vh = extractelement <2 x double> %i.ve, i64 1 ; 3 uses
  %i.vi = fadd double %i.vg, %i.vh
  %i.vj = fadd double %i.vi, %i.vf                ; 2 uses
  %i.vk = fcmp ugt double %i.vj, 1.000000e-15
  br i1 %i.vk, label %bb.be, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79..thread_crit_edge

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79..thread_crit_edge: ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79
  %.pre188 = load i32, ptr %i.rz, align 8, !tbaa !201
  br label %.thread

bb.be:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79
  %i.vl = load double, ptr %i.um, align 8, !tbaa !113 ; 2 uses
  %i.vm = insertelement <2 x double> poison, double %i.vl, i64 0
  %i.vn = shufflevector <2 x double> %i.vm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vo = shufflevector <4 x double> %i.uq, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.vp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vn, <2 x double> splat (double -2.000000e+00), <2 x double> %i.vo)
  %i.vq = fadd <2 x double> %i.vb, %i.vp          ; 5 uses
  %i.vr = call double @llvm.fmuladd.f64(double %i.vl, double -2.000000e+00, double %i.ut)
  %i.vs = fadd double %i.uw, %i.vr                ; 5 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.um, i64 56
  %i.vu = extractelement <2 x double> %i.vq, i64 1 ; 4 uses
  %i.vv = extractelement <2 x double> %i.vq, i64 0 ; 3 uses
  %i.vw = extractelement <2 x double> %i.vd, i64 0 ; 2 uses
  %i.vx = fmul double %i.vw, %i.uy
  %i.vy = fneg double %i.vu
  %i.vz = extractelement <2 x double> %i.vd, i64 1 ; 2 uses
  %i.wa = fmul double %i.vw, %i.vz
  %i.wb = fneg double %i.vs
  %i.wc = call double @llvm.sqrt.f64(double %i.vj) ; 3 uses
  %i.wd = load <2 x double>, ptr %i.x, align 8
  %i.we = load double, ptr %i.z, align 8, !tbaa !373
  %i.wf = fneg double %i.we
  %i.wg = load <12 x double>, ptr %i.vt, align 8, !tbaa !113 ; 8 uses
  %i.wh = shufflevector <12 x double> %i.wg, <12 x double> poison, <2 x i32> <i32 7, i32 3>
  %i.wi = shufflevector <12 x double> %i.wg, <12 x double> poison, <2 x i32> <i32 5, i32 1>
  %i.wj = fsub <2 x double> %i.wh, %i.wi
  %i.wk = shufflevector <12 x double> %i.wg, <12 x double> poison, <2 x i32> <i32 3, i32 11>
  %i.wl = shufflevector <12 x double> %i.wg, <12 x double> poison, <2 x i32> <i32 1, i32 9>
  %i.wm = fsub <2 x double> %i.wk, %i.wl
  %i.wn = shufflevector <12 x double> %i.wg, <12 x double> poison, <2 x i32> <i32 4, i32 0>
  %i.wo = fadd <2 x double> %i.wj, %i.wn
  %i.wp = shufflevector <12 x double> %i.wg, <12 x double> poison, <2 x i32> <i32 0, i32 8>
  %i.wq = fadd <2 x double> %i.wm, %i.wp
  %i.wr = shufflevector <12 x double> %i.wg, <12 x double> poison, <2 x i32> <i32 6, i32 2>
  %i.ws = fsub <2 x double> %i.wo, %i.wr
  %i.wt = shufflevector <12 x double> %i.wg, <12 x double> poison, <2 x i32> <i32 2, i32 10>
  %i.wu = fsub <2 x double> %i.wq, %i.wt
  %i.wv = fmul <2 x double> %i.ws, splat (double 2.500000e-01) ; 4 uses
  %i.ww = fmul <2 x double> %i.wu, splat (double 2.500000e-01) ; 6 uses
  %i.wx = fadd double %i.vu, %i.vs
  %i.wy = fadd double %i.vv, %i.vs
  %i.wz = fmul double %i.vh, %i.wy
  %i.xa = call double @llvm.fmuladd.f64(double %i.vg, double %i.wx, double %i.wz)
  %i.xb = fadd double %i.vv, %i.vu
  %i.xc = call double @llvm.fmuladd.f64(double %i.vf, double %i.xb, double %i.xa)
  %i.xd = fmul double %i.vz, %i.uy                ; 2 uses
  %i.xe = extractelement <2 x double> %i.ww, i64 1 ; 4 uses
  %i.xf = fmul double %i.xd, %i.xe
  %i.xg = fneg double %i.xe
  %i.xh = fmul double %i.xe, %i.xg
  %i.xi = call double @llvm.fmuladd.f64(double %i.vu, double %i.vs, double %i.xh)
  %i.xj = extractelement <2 x double> %i.wv, i64 0 ; 3 uses
  %i.xk = fneg double %i.xj
  %i.xl = fmul double %i.xj, %i.xk
  %i.xm = call double @llvm.fmuladd.f64(double %i.vv, double %i.vs, double %i.xl)
  %i.xn = fmul double %i.vh, %i.xm
  %i.xo = call double @llvm.fmuladd.f64(double %i.vg, double %i.xi, double %i.xn)
  %i.xp = extractelement <2 x double> %i.ww, i64 0
  %i.xq = shufflevector <2 x double> %i.ww, <2 x double> %i.vq, <2 x i32> <i32 0, i32 2>
  %i.xr = fneg <2 x double> %i.xq
  %i.xs = fmul <2 x double> %i.ww, %i.xr
  %i.xt = shufflevector <2 x double> %i.vq, <2 x double> %i.ww, <2 x i32> <i32 0, i32 2>
  %i.xu = shufflevector <2 x double> %i.vq, <2 x double> %i.wv, <2 x i32> <i32 1, i32 2>
  %i.xv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xt, <2 x double> %i.xu, <2 x double> %i.xs) ; 2 uses
  %i.xw = extractelement <2 x double> %i.xv, i64 0
  %i.xx = call double @llvm.fmuladd.f64(double %i.vf, double %i.xw, double %i.xo)
  %i.xy = fmul double %i.xj, %i.vy
  %i.xz = call double @llvm.fmuladd.f64(double %i.xp, double %i.xe, double %i.xy)
  %i.ya = fmul double %i.vx, %i.xz
  %i.yb = extractelement <2 x double> %i.xv, i64 1
  %i.yc = call double @llvm.fmuladd.f64(double %i.xd, double %i.yb, double %i.ya)
  %i.yd = insertelement <2 x double> poison, double %i.uy, i64 0
  %i.ye = insertelement <2 x double> %i.yd, double %i.wb, i64 1
  %i.yf = fmul <2 x double> %i.ye, %i.wv
  %i.yg = shufflevector <2 x double> %i.vd, <2 x double> %i.wv, <2 x i32> <i32 1, i32 2>
  %i.yh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yg, <2 x double> %i.ww, <2 x double> %i.yf)
  %i.yi = insertelement <2 x double> %i.vd, double %i.wa, i64 1
  %i.yj = insertelement <2 x double> poison, double %i.xf, i64 0
  %i.yk = insertelement <2 x double> %i.yj, double %i.yc, i64 1
  %i.yl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yi, <2 x double> %i.yh, <2 x double> %i.yk)
  %i.ym = insertelement <2 x double> poison, double %i.xc, i64 0
  %i.yn = insertelement <2 x double> %i.ym, double %i.xx, i64 1
  %i.yo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yl, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.yn)
  %i.yp = fmul double %i.wc, %i.wc
  %i.yq = insertelement <2 x double> poison, double %i.wc, i64 0
  %i.yr = insertelement <2 x double> %i.yq, double %i.yp, i64 1 ; 2 uses
  %i.ys = shufflevector <2 x double> %i.yr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.yt = fmul <2 x double> %i.yr, %i.ys
  %i.yu = insertelement <2 x double> %i.wd, double %i.wf, i64 1
  %i.yv = fmul <2 x double> %i.yu, %i.yo
  %i.yw = fdiv <2 x double> %i.yv, %i.yt          ; 2 uses
  %i.yx = extractelement <2 x double> %i.yw, i64 0 ; 3 uses
  %i.yy = extractelement <2 x double> %i.yw, i64 1
  %i.yz = call double @llvm.fmuladd.f64(double %i.yx, double %i.yx, double %i.yy)
  %i.za = call double @sqrt(double noundef %i.yz) #18
  %i.zb = fsub double %i.yx, %i.za                ; 2 uses
  %i.zc = fcmp olt double %i.zb, 0.000000e+00
  %.pre189 = load i32, ptr %i.rz, align 8, !tbaa !201 ; 3 uses
  br i1 %i.zc, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  %i.zd = load ptr, ptr %i.sb, align 8, !tbaa !360
  %i.ze = zext i32 %.pre189 to i64                ; 2 uses
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.ze
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !113
  %i.zh = call double @llvm.fmuladd.f64(double %i.u, double %i.zb, double %i.zg)
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.ze
  store double %i.zh, ptr %i.zi, align 8, !tbaa !113
  br label %.thread

.thread:                                          ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79..thread_crit_edge, %bb.bf, %bb.be
  %i.zj = phi i32 [ %.pre188, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KdNSA_7ValueOnEEEEEvRKT_.exit79..thread_crit_edge ], [ %.pre189, %bb.bf ], [ %.pre189, %bb.be ]
  %i.zk = load ptr, ptr %i.sd, align 8, !tbaa !244 ; 8 uses
  %i.zl = add i32 %i.zj, 1                        ; 4 uses
  %i.zm = lshr i32 %i.zl, 6                       ; 3 uses
  %i.zn = icmp ugt i32 %i.zl, 511
  br i1 %i.zn, label %._crit_edge178, label %bb.bg

bb.bg:                                            ; preds = %.thread
  %i.zo = and i32 %i.zl, 63
  %i.zp = zext nneg i32 %i.zm to i64              ; 8 uses
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.zp
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !209 ; 2 uses
  %i.zs = zext nneg i32 %i.zo to i64              ; 2 uses
  %i.zt = shl nuw i64 1, %i.zs
  %i.zu = and i64 %i.zr, %i.zt
  %.not.i.i.i.i85 = icmp eq i64 %i.zu, 0
  br i1 %.not.i.i.i.i85, label %bb.bh, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIdLj3EEEEppEv.exit97

bb.bh:                                            ; preds = %bb.bg
  %i.zv = shl nsw i64 -1, %i.zs
  %i.zw = and i64 %i.zr, %i.zv                    ; 2 uses
  %.not2226.i.i.i.i87 = icmp eq i64 %i.zw, 0
  br i1 %.not2226.i.i.i.i87, label %.lr.ph.i.i.i.i91.preheader, label %.critedge.i.i.i.i88

.lr.ph.i.i.i.i91.preheader:                       ; preds = %bb.bh
  %exitcond.not.i.i.i.i93244 = icmp eq i32 %i.zm, 7
  br i1 %exitcond.not.i.i.i.i93244, label %._crit_edge178, label %.lr.ph246

.lr.ph.i.i.i.i91:                                 ; preds = %.lr.ph246
  %exitcond.not.i.i.i.i93 = icmp eq i64 %indvars.iv.next.i.i.i.i94, 7
  br i1 %exitcond.not.i.i.i.i93, label %._crit_edge178, label %.lr.ph246.1

.lr.ph246.1:                                      ; preds = %.lr.ph.i.i.i.i91
  %indvars.iv.next.i.i.i.i94.1 = add nuw nsw i64 %i.zp, 2 ; 3 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next.i.i.i.i94.1
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.1 = icmp eq i64 %i.zy, 0
  br i1 %.not22.i.i.i.i95.1, label %.lr.ph.i.i.i.i91.1, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.1:                               ; preds = %.lr.ph246.1
  %exitcond.not.i.i.i.i93.1 = icmp eq i64 %indvars.iv.next.i.i.i.i94.1, 7
  br i1 %exitcond.not.i.i.i.i93.1, label %._crit_edge178, label %.lr.ph246.2

.lr.ph246.2:                                      ; preds = %.lr.ph.i.i.i.i91.1
  %indvars.iv.next.i.i.i.i94.2 = add nuw nsw i64 %i.zp, 3 ; 3 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next.i.i.i.i94.2
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.2 = icmp eq i64 %i.aaa, 0
  br i1 %.not22.i.i.i.i95.2, label %.lr.ph.i.i.i.i91.2, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.2:                               ; preds = %.lr.ph246.2
  %exitcond.not.i.i.i.i93.2 = icmp eq i64 %indvars.iv.next.i.i.i.i94.2, 7
  br i1 %exitcond.not.i.i.i.i93.2, label %._crit_edge178, label %.lr.ph246.3

.lr.ph246.3:                                      ; preds = %.lr.ph.i.i.i.i91.2
  %indvars.iv.next.i.i.i.i94.3 = add nuw nsw i64 %i.zp, 4 ; 3 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next.i.i.i.i94.3
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.3 = icmp eq i64 %i.aac, 0
  br i1 %.not22.i.i.i.i95.3, label %.lr.ph.i.i.i.i91.3, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.3:                               ; preds = %.lr.ph246.3
  %exitcond.not.i.i.i.i93.3 = icmp eq i64 %indvars.iv.next.i.i.i.i94.3, 7
  br i1 %exitcond.not.i.i.i.i93.3, label %._crit_edge178, label %.lr.ph246.4

.lr.ph246.4:                                      ; preds = %.lr.ph.i.i.i.i91.3
  %indvars.iv.next.i.i.i.i94.4 = add nuw nsw i64 %i.zp, 5 ; 3 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next.i.i.i.i94.4
  %i.aae = load i64, ptr %i.aad, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.4 = icmp eq i64 %i.aae, 0
  br i1 %.not22.i.i.i.i95.4, label %.lr.ph.i.i.i.i91.4, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.4:                               ; preds = %.lr.ph246.4
  %exitcond.not.i.i.i.i93.4 = icmp eq i64 %indvars.iv.next.i.i.i.i94.4, 7
  br i1 %exitcond.not.i.i.i.i93.4, label %._crit_edge178, label %.lr.ph246.5

.lr.ph246.5:                                      ; preds = %.lr.ph.i.i.i.i91.4
  %indvars.iv.next.i.i.i.i94.5 = add nuw nsw i64 %i.zp, 6 ; 3 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next.i.i.i.i94.5
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.5 = icmp eq i64 %i.aag, 0
  br i1 %.not22.i.i.i.i95.5, label %.lr.ph.i.i.i.i91.5, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph.i.i.i.i91.5:                               ; preds = %.lr.ph246.5
  %exitcond.not.i.i.i.i93.5 = icmp eq i64 %indvars.iv.next.i.i.i.i94.5, 7
  br i1 %exitcond.not.i.i.i.i93.5, label %._crit_edge178, label %.lr.ph246.6

.lr.ph246.6:                                      ; preds = %.lr.ph.i.i.i.i91.5
  %indvars.iv.next.i.i.i.i94.6 = add nuw nsw i64 %i.zp, 7 ; 2 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next.i.i.i.i94.6
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95.6 = icmp eq i64 %i.aai, 0
  br i1 %.not22.i.i.i.i95.6, label %._crit_edge178, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.lr.ph246:                                        ; preds = %.lr.ph.i.i.i.i91.preheader
  %indvars.iv.next.i.i.i.i94 = add nuw nsw i64 %i.zp, 1 ; 3 uses
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %indvars.iv.next.i.i.i.i94
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i95 = icmp eq i64 %i.aak, 0
  br i1 %.not22.i.i.i.i95, label %.lr.ph.i.i.i.i91, label %.critedge.loopexit.i.i.i.i96, !llvm.loop !7

.critedge.loopexit.i.i.i.i96:                     ; preds = %.lr.ph246.6, %.lr.ph246.5, %.lr.ph246.4, %.lr.ph246.3, %.lr.ph246.2, %.lr.ph246.1, %.lr.ph246
  %indvars.iv.next.i.i.i.i94.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i94, %.lr.ph246 ], [ %indvars.iv.next.i.i.i.i94.1, %.lr.ph246.1 ], [ %indvars.iv.next.i.i.i.i94.2, %.lr.ph246.2 ], [ %indvars.iv.next.i.i.i.i94.3, %.lr.ph246.3 ], [ %indvars.iv.next.i.i.i.i94.4, %.lr.ph246.4 ], [ %indvars.iv.next.i.i.i.i94.5, %.lr.ph246.5 ], [ %indvars.iv.next.i.i.i.i94.6, %.lr.ph246.6 ]
  %.lcssa = phi i64 [ %i.aak, %.lr.ph246 ], [ %i.zy, %.lr.ph246.1 ], [ %i.aaa, %.lr.ph246.2 ], [ %i.aac, %.lr.ph246.3 ], [ %i.aae, %.lr.ph246.4 ], [ %i.aag, %.lr.ph246.5 ], [ %i.aai, %.lr.ph246.6 ]
  %i.aal = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i94.lcssa to i32
  br label %.critedge.i.i.i.i88

.critedge.i.i.i.i88:                              ; preds = %.critedge.loopexit.i.i.i.i96, %bb.bh
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
