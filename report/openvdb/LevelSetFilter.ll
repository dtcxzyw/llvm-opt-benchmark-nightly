Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetFilter?download=true
inline.NumInlined: 4553
inline.NumDeleted: 1964
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter17meanCurvatureImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %i.in = shl i32 %i.dm, 3
  %i.io = and i32 %i.in, 31744
  %i.ip = lshr i32 %i.dp, 2
  %i.iq = and i32 %i.ip, 992
  %i.ir = or disjoint i32 %i.iq, %i.io            ; 2 uses
  %i.is = lshr i32 %i.ds, 7
  %i.it = and i32 %i.is, 31
  %i.iu = or disjoint i32 %i.ir, %i.it            ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 262144
  %i.iw = lshr i32 %i.ir, 6
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !209
  %i.ja = and i32 %i.iu, 63
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = shl nuw i64 1, %i.jb
  %i.jd = and i64 %i.iz, %i.jc
  %.not.i.i90 = icmp eq i64 %i.jd, 0
  %i.je = zext nneg i32 %i.iu to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.je ; 3 uses
  br i1 %.not.i.i90, label %.noexc34, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !69
  %i.jh = and i32 %i.dp, -128
  %i.ji = and i32 %i.ds, -128
  %.sroa.2.0.insert.ext.i.i.i91 = zext i32 %i.jh to i64
  %.sroa.2.0.insert.shift.i.i.i92 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i91, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.et to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i92, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.eu, align 4
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 44
  store i32 %i.ji, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !69
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !210
  br label %.invoke

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i, %bb.y, %bb.ai
  %.in = phi ptr [ %i.jf, %bb.ai ], [ %i.gm, %bb.y ], [ %i.ff, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i ]
  %i.jk = load ptr, ptr %.in, align 8, !tbaa !69
  %i.jl = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.jk, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(96) %i.dv)
          to label %.noexc34 unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc34

.noexc34:                                         ; preds = %.invoke, %bb.x, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i, %bb.aj, %bb.ah, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.es, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i ], [ %i.jf, %bb.ah ], [ %i.jl, %.invoke ], [ %i.gm, %bb.x ], [ %i.ig, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.jm, %bb.aj ]
  %i.jn = load float, ptr %.1.i.i, align 4, !tbaa !47
  br label %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i

bb.ak:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.jo = load ptr, ptr %i.ay, align 8, !tbaa !223
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !228, !noalias !575 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !575
  %i.jq = sitofp i32 %i.dm to double
  %i.jr = sitofp i32 %i.dp to double
  %i.js = sitofp i32 %i.ds to double
  store double %i.jq, ptr %2, align 8, !tbaa !113, !alias.scope !576, !noalias !575
  store double %i.jr, ptr %i.az, align 8, !tbaa !113, !alias.scope !576, !noalias !575
  store double %i.js, ptr %i.ba, align 8, !tbaa !113, !alias.scope !576, !noalias !575
  %i.jt = load ptr, ptr %i.jp, align 8, !tbaa !45, !noalias !575
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !575
  invoke void %i.jv(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc35 unwind label %bb.aq, !inline_history !6

.noexc35:                                         ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !575
  %i.jw = load ptr, ptr %i.aw, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.jx = load ptr, ptr %i.bb, align 8, !tbaa !229
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !228, !noalias !577 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !45, !noalias !577
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !577
  invoke void %i.kb(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc36 unwind label %bb.aq, !inline_history !6

.noexc36:                                         ; preds = %.noexc35
  %i.kc = invoke noundef float @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEENT_9ValueTypeERKSJ_RKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(96) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc37 unwind label %bb.aq

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
  br i1 %i.kh, label %bb.al, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.al:                                            ; preds = %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.ki = fcmp olt float %i.kg, 1.000000e+00
  br i1 %i.ki, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.kj = call nnan float @llvm.fmuladd.f32(float %i.kg, float -2.000000e+00, float 3.000000e+00)
  %i.kk = fmul nnan float %i.kg, %i.kj
  %i.kl = fmul nnan float %i.kg, %i.kk
  br label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i: ; preds = %bb.am, %bb.al, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.km = phi float [ 1.000000e+00, %bb.al ], [ %i.kl, %bb.am ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i ] ; 3 uses
  %i.kn = fsub float 1.000000e+00, %i.km          ; 2 uses
  %i.ko = load i8, ptr %i.be, align 8, !tbaa !233, !range !71, !noundef !72
  %i.kp = trunc nuw i8 %i.ko to i1                ; 2 uses
  %.0110 = select i1 %i.kp, float %i.kn, float %i.km ; 2 uses
  %.0 = select i1 %i.kp, float %i.km, float %i.kn
  %i.kq = fcmp ogt float %.0110, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.kq, label %bb.an, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.av, align 8, !tbaa !201
  br label %bb.ar

bb.an:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kr = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc38 unwind label %.loopexit115 ; 3 uses

.noexc38:                                         ; preds = %bb.an
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
          to label %bb.ao unwind label %.loopexit115

bb.ao:                                            ; preds = %.noexc38
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
  %i.mc = fsub float %i.lv, %i.ly
  %i.md = fpext <2 x float> %i.mb to <2 x double>
  %i.me = fpext float %i.mc to double
  %i.mf = fmul <2 x double> %i.md, <double 5.000000e-01, double 1.000000e+00> ; 3 uses
  %i.mg = insertelement <2 x double> %i.mf, double 5.000000e-01, i64 1
  %i.mh = fmul <2 x double> %i.mf, %i.mg          ; 3 uses
  %i.mi = fmul double %i.me, 5.000000e-01         ; 4 uses
  %i.mj = extractelement <2 x double> %i.mh, i64 1 ; 3 uses
  %i.mk = fmul double %i.mj, %i.mj                ; 2 uses
  %i.ml = fmul double %i.mi, %i.mi                ; 2 uses
  %i.mm = extractelement <2 x double> %i.mh, i64 0
  %i.mn = fadd double %i.mm, %i.mk
  %i.mo = fadd double %i.mn, %i.ml                ; 2 uses
  %i.mp = fcmp ugt double %i.mo, 1.000000e-15
  br i1 %i.mp, label %bb.ap, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit

bb.ap:                                            ; preds = %bb.ao
  %i.mq = shufflevector <4 x float> %i.lt, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.mr = load float, ptr %i.lq, align 4, !tbaa !47 ; 2 uses
  %i.ms = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mu = shufflevector <4 x float> %i.lt, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.mv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mt, <2 x float> splat (float -2.000000e+00), <2 x float> %i.mu)
  %i.mw = fadd <2 x float> %i.mq, %i.mv
  %i.mx = fpext <2 x float> %i.mw to <2 x double> ; 2 uses
  %i.my = extractelement <2 x double> %i.mx, i64 1 ; 2 uses
  %i.mz = extractelement <2 x double> %i.mx, i64 0 ; 2 uses
  %10 = fadd double %i.mz, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.nb = load float, ptr %i.na, align 4, !tbaa !47
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !47
  %i.ne = fsub float %i.nb, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lq, i64 28
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !47
  %i.nh = fadd float %i.ne, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lq, i64 36
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !47
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lq, i64 48
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !47
  %i.nn = fsub float %i.nk, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.lq, i64 44
  %i.np = load float, ptr %i.no, align 4, !tbaa !47
  %i.nq = fadd float %i.nn, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %i.lq, i64 52
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !47
  %i.nt = fsub float %i.nq, %i.ns
  %i.nu = load float, ptr %i.ni, align 4, !tbaa !47
  %i.nv = call float @llvm.fmuladd.f32(float %i.mr, float -2.000000e+00, float %i.lv)
  %i.nw = fsub float %i.nh, %i.nu
  %i.nx = fadd float %i.ly, %i.nv
  %i.ny = fpext float %i.nw to double
  %i.nz = fpext float %i.nt to double
  %i.oa = fpext float %i.nx to double             ; 2 uses
  %i.ob = fmul double %i.ny, 2.500000e-01
  %i.oc = fadd double %i.my, %i.oa
  %i.od = fmul double %i.nz, 2.500000e-01
  %i.oe = fadd double %i.mz, %i.oa
  %i.of = fmul double %i.mi, %i.od
  %i.og = fmul double %i.mk, %i.oe
  %i.oh = insertelement <2 x double> poison, double %i.oc, i64 0
  %i.oi = insertelement <2 x double> %i.oh, double %i.ob, i64 1
  %i.oj = insertelement <2 x double> poison, double %i.og, i64 0
  %i.ok = insertelement <2 x double> %i.oj, double %i.of, i64 1
  %i.ol = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.oi, <2 x double> %i.ok) ; 2 uses
  %i.om = extractelement <2 x double> %i.ol, i64 0
  %i.on = call double @llvm.fmuladd.f64(double %i.ml, double %10, double %i.om)
  %i.oo = fmul double %i.mj, %i.mi
  %i.op = getelementptr inbounds nuw i8, ptr %i.lq, i64 72
  %i.oq = load float, ptr %i.op, align 4, !tbaa !47
  %i.or = getelementptr inbounds nuw i8, ptr %i.lq, i64 64
  %i.os = load float, ptr %i.or, align 4, !tbaa !47
  %i.ot = fsub float %i.oq, %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lq, i64 60
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !47
  %i.ow = fadd float %i.ot, %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %i.lq, i64 68
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !47
  %i.oz = fsub float %i.ow, %i.oy
  %i.pa = fpext float %i.oz to double
  %i.pb = fmul double %i.pa, 2.500000e-01
  %i.pc = fmul double %i.oo, %i.pb
  %i.pd = extractelement <2 x double> %i.ol, i64 1
  %i.pe = extractelement <2 x double> %i.mf, i64 0
  %i.pf = call double @llvm.fmuladd.f64(double %i.pe, double %i.pd, double %i.pc)
  %i.pg = call double @llvm.fmuladd.f64(double %i.pf, double -2.000000e+00, double %i.on)
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.mo) ; 2 uses
  %i.ph = load float, ptr %i.z, align 8, !tbaa !250
  %i.pi = fpext float %i.ph to double
  %i.pj = fmul double %i.pg, %i.pi
  %i.pk = fmul double %sqrt.i.i, %sqrt.i.i
  %i.pl = fmul double %i.pk, 2.000000e+00
  %i.pm = fdiv double %i.pj, %i.pl
  %i.pn = fptrunc double %i.pm to float
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit: ; preds = %bb.ao, %bb.ap
  %i.po = phi float [ %i.pn, %bb.ap ], [ 0.000000e+00, %bb.ao ]
  %i.pp = call float @llvm.fmuladd.f32(float %i.u, float %i.po, float %i.lp)
  %i.pq = fmul float %.0110, %i.pp
  %i.pr = call float @llvm.fmuladd.f32(float %.0, float %i.lp, float %i.pq)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ln
  store float %i.pr, ptr %i.ps, align 4, !tbaa !47
  br label %bb.ar

bb.aq:                                            ; preds = %.invoke, %.noexc36, %.noexc35, %bb.ak, %.lr.ph
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.au

bb.ar:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit
  %i.pu = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.ll, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit ]
  %i.pv = load ptr, ptr %i.bi, align 8, !tbaa !244 ; 8 uses
  %i.pw = add i32 %i.pu, 1                        ; 4 uses
  %i.px = lshr i32 %i.pw, 6                       ; 3 uses
  %i.py = icmp ugt i32 %i.pw, 511
  br i1 %i.py, label %._crit_edge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pz = and i32 %i.pw, 63
  %i.qa = zext nneg i32 %i.px to i64              ; 8 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.qa
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !209 ; 2 uses
  %i.qd = zext nneg i32 %i.pz to i64              ; 2 uses
  %i.qe = shl nuw i64 1, %i.qd
  %i.qf = and i64 %i.qc, %i.qe
  %.not.i.i.i.i = icmp eq i64 %i.qf, 0
  br i1 %.not.i.i.i.i, label %bb.at, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.at:                                            ; preds = %bb.as
  %i.qg = shl nsw i64 -1, %i.qd
  %i.qh = and i64 %i.qc, %i.qg                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.qh, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i40.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i40.preheader:                       ; preds = %bb.at
  %exitcond.not.i.i.i.i183 = icmp eq i32 %i.px, 7
  br i1 %exitcond.not.i.i.i.i183, label %._crit_edge, label %.lr.ph185

.lr.ph.i.i.i.i40:                                 ; preds = %.lr.ph185
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph185.1

.lr.ph185.1:                                      ; preds = %.lr.ph.i.i.i.i40
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.qa, 2 ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv.next.i.i.i.i.1
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.qj, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i40.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.1:                               ; preds = %.lr.ph185.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph185.2

.lr.ph185.2:                                      ; preds = %.lr.ph.i.i.i.i40.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.qa, 3 ; 3 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv.next.i.i.i.i.2
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ql, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i40.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.2:                               ; preds = %.lr.ph185.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph185.3

.lr.ph185.3:                                      ; preds = %.lr.ph.i.i.i.i40.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.qa, 4 ; 3 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv.next.i.i.i.i.3
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.qn, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i40.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.3:                               ; preds = %.lr.ph185.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph185.4

.lr.ph185.4:                                      ; preds = %.lr.ph.i.i.i.i40.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.qa, 5 ; 3 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv.next.i.i.i.i.4
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.qp, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i40.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.4:                               ; preds = %.lr.ph185.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph185.5

.lr.ph185.5:                                      ; preds = %.lr.ph.i.i.i.i40.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.qa, 6 ; 3 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv.next.i.i.i.i.5
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.qr, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i40.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i40.5:                               ; preds = %.lr.ph185.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph185.6

.lr.ph185.6:                                      ; preds = %.lr.ph.i.i.i.i40.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.qa, 7 ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv.next.i.i.i.i.6
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.qt, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph185:                                        ; preds = %.lr.ph.i.i.i.i40.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.qa, 1 ; 3 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv.next.i.i.i.i
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.qv, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i40, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph185.6, %.lr.ph185.5, %.lr.ph185.4, %.lr.ph185.3, %.lr.ph185.2, %.lr.ph185.1, %.lr.ph185
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph185 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph185.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph185.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph185.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph185.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph185.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph185.6 ]
  %.lcssa194 = phi i64 [ %i.qv, %.lr.ph185 ], [ %i.qj, %.lr.ph185.1 ], [ %i.ql, %.lr.ph185.2 ], [ %i.qn, %.lr.ph185.3 ], [ %i.qp, %.lr.ph185.4 ], [ %i.qr, %.lr.ph185.5 ], [ %i.qt, %.lr.ph185.6 ]
  %i.qw = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.at
  %.016.lcssa.i.i.i.i = phi i32 [ %i.px, %bb.at ], [ %i.qw, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.qh, %bb.at ], [ %.lcssa194, %.critedge.loopexit.i.i.i.i ]
  %i.qx = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.qy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.qz = trunc nuw nsw i64 %i.qy to i32
  %i.ra = or disjoint i32 %i.qx, %i.qz
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter17meanCurvatureImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a

.lr.ph.i.i.i.i48:                                 ; preds = %bb.az, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50
  %.sroa.0.02.i.i.i.i49 = phi i32 [ %.sroa.0.1.i.i.i.i51, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50 ], [ 1, %bb.az ] ; 8 uses
  %i.rz = icmp slt i32 %.sroa.0.02.i.i.i.i49, 17
  br i1 %i.rz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i48
  %i.sa = icmp sgt i32 %.sroa.0.02.i.i.i.i49, 0
  br i1 %i.sa, label %.lr.ph.i.i.i.i.i.i53.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52

.lr.ph.i.i.i.i.i.i53.preheader:                   ; preds = %bb.ba
  %xtraiter198 = and i32 %.sroa.0.02.i.i.i.i49, 7 ; 2 uses
  %lcmp.mod199.not = icmp eq i32 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph.i.i.i.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i.i.i.i53.prol

.lr.ph.i.i.i.i.i.i53.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i53.preheader, %.lr.ph.i.i.i.i.i.i53.prol
  %.01.i.i.i.i.i.i54.prol = phi i32 [ %i.sb, %.lr.ph.i.i.i.i.i.i53.prol ], [ %.sroa.0.02.i.i.i.i49, %.lr.ph.i.i.i.i.i.i53.preheader ]
  %prol.iter200 = phi i32 [ %prol.iter200.next, %.lr.ph.i.i.i.i.i.i53.prol ], [ 0, %.lr.ph.i.i.i.i.i.i53.preheader ]
  %i.sb = add nsw i32 %.01.i.i.i.i.i.i54.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter200.next = add i32 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i32 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %.lr.ph.i.i.i.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i.i.i.i53.prol, !llvm.loop !573

.lr.ph.i.i.i.i.i.i53.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i53.prol, %.lr.ph.i.i.i.i.i.i53.preheader
  %.01.i.i.i.i.i.i54.unr = phi i32 [ %.sroa.0.02.i.i.i.i49, %.lr.ph.i.i.i.i.i.i53.preheader ], [ %i.sb, %.lr.ph.i.i.i.i.i.i53.prol ]
  %i.sc = icmp ult i32 %.sroa.0.02.i.i.i.i49, 8
  br i1 %i.sc, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52, label %.lr.ph.i.i.i.i.i.i53

.lr.ph.i.i.i.i.i.i53:                             ; preds = %.lr.ph.i.i.i.i.i.i53.prol.loopexit, %.lr.ph.i.i.i.i.i.i53
  %.01.i.i.i.i.i.i54 = phi i32 [ %i.sd, %.lr.ph.i.i.i.i.i.i53 ], [ %.01.i.i.i.i.i.i54.unr, %.lr.ph.i.i.i.i.i.i53.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.sd = add nsw i32 %.01.i.i.i.i.i.i54, -8
  call void @llvm.x86.sse2.pause()
  %i.se = icmp sgt i32 %.01.i.i.i.i.i.i54, 8
  br i1 %i.se, label %.lr.ph.i.i.i.i.i.i53, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52, !llvm.loop !3

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52: ; preds = %.lr.ph.i.i.i.i.i.i53.prol.loopexit, %.lr.ph.i.i.i.i.i.i53, %bb.ba
  %i.sf = shl i32 %.sroa.0.02.i.i.i.i49, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i48
  %i.sg = call noundef i32 @sched_yield() #18     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50: ; preds = %bb.bb, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52
  %.sroa.0.1.i.i.i.i51 = phi i32 [ %i.sf, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i52 ], [ %.sroa.0.02.i.i.i.i49, %bb.bb ]
  %i.sh = atomicrmw xchg ptr %i.rw, i8 1 seq_cst, align 1
  %i.si = trunc i8 %i.sh to i1
  br i1 %i.si, label %.lr.ph.i.i.i.i48, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i50, %bb.az
  %i.sj = load ptr, ptr %i.rr, align 8, !tbaa !69 ; 2 uses
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %bb.bc, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46

bb.bc:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45
  %i.sl = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26
          to label %bb.bd unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.sl, ptr %i.rr, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i47: ; preds = %bb.bc
  %i.sm = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.rw release, align 1
  br label %.body56

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46: ; preds = %bb.bd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45
  %i.sn = phi ptr [ %i.sl, %bb.bd ], [ %i.sj, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i45 ]
  store atomic i8 0, ptr %i.rw release, align 4
  br label %bb.be

bb.be:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46
  %i.so = phi ptr [ %i.sn, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i46 ], [ %i.ru, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i44 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.sp = load ptr, ptr %i.rf, align 8, !tbaa !193, !nonnull !72, !align !194
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 40
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !197
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %.sroa.7.0131
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !198
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.st)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.be
  %i.su = load i32, ptr %i.rg, align 8, !tbaa !201
  %.not112128 = icmp eq i32 %i.su, 512
  br i1 %.not112128, label %._crit_edge130, label %.lr.ph129

._crit_edge130:                                   ; preds = %.lr.ph188.6, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81, %.lr.ph.i.i.i.i75.preheader, %.lr.ph.i.i.i.i75, %.lr.ph.i.i.i.i75.1, %.lr.ph.i.i.i.i75.2, %.lr.ph.i.i.i.i75.3, %.lr.ph.i.i.i.i75.4, %.lr.ph.i.i.i.i75.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.sv = add nuw i64 %.sroa.7.0131, 1            ; 2 uses
  %i.sw = load i64, ptr %1, align 8, !tbaa !131
  %i.sx = icmp ult i64 %i.sv, %i.sw
  br i1 %i.sx, label %bb.ax, label %.loopexit113, !llvm.loop !574

bb.bf:                                            ; preds = %bb.ay
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.loopexit:                                        ; preds = %.lr.ph129, %.noexc64
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp:                               ; preds = %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body56

.lr.ph129:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81
  %i.sz = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc64 unwind label %.loopexit ; 3 uses

.noexc64:                                         ; preds = %.lr.ph129
  %i.ta = load i32, ptr %i.rg, align 8, !tbaa !201 ; 4 uses
  %i.tb = lshr i32 %i.ta, 6
  %i.tc = lshr i32 %i.ta, 3
  %i.td = and i32 %i.tc, 7
  %i.te = and i32 %i.ta, 7
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sz, i64 80
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !124
  %i.th = add nsw i32 %i.tg, %i.tb
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sz, i64 84
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !124
  %i.tk = add nsw i32 %i.tj, %i.td
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sz, i64 88
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !124
  %i.tn = add nsw i32 %i.tm, %i.te
  %.sroa.2.0.insert.ext.i.i.i.i59 = zext i32 %i.tk to i64
  %.sroa.2.0.insert.shift.i.i.i.i60 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i59, 32
  %.sroa.0.0.insert.ext.i9.i.i.i61 = zext i32 %i.th to i64
  %.sroa.0.0.insert.insert.i10.i.i.i62 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i60, %.sroa.0.0.insert.ext.i9.i.i.i61
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i62, ptr %i.rh, align 8
  store i32 %i.tn, ptr %.sroa.4.0..sroa_idx.i63, align 8, !tbaa !69
  %i.to = load ptr, ptr %i.ri, align 8, !tbaa !238
  %i.tp = zext i32 %i.ta to i64
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.tp
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !47
  %i.ts = load ptr, ptr %i.rj, align 8, !tbaa !240
  store float %i.tr, ptr %i.ts, align 4, !tbaa !47
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.rh)
          to label %bb.bh unwind label %.loopexit

bb.bh:                                            ; preds = %.noexc64
  %i.tt = load i32, ptr %i.rg, align 8, !tbaa !201 ; 2 uses
  %i.tu = load ptr, ptr %i.ri, align 8, !tbaa !238
  %i.tv = zext i32 %i.tt to i64                   ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.tv
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !47
  %i.ty = load ptr, ptr %i.rj, align 8, !tbaa !240 ; 17 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  %i.ub = load <4 x float>, ptr %i.ua, align 4, !tbaa !47 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !47 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ty, i64 20
  %i.uf = load <4 x float>, ptr %i.tz, align 4, !tbaa !47 ; 2 uses
  %i.ug = load float, ptr %i.ue, align 4, !tbaa !47 ; 2 uses
  %i.uh = shufflevector <4 x float> %i.uf, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ui = shufflevector <4 x float> %i.ub, <4 x float> %i.uf, <2 x i32> <i32 0, i32 5>
  %i.uj = fsub <2 x float> %i.uh, %i.ui
  %i.uk = fsub float %i.ud, %i.ug
  %i.ul = fpext <2 x float> %i.uj to <2 x double>
  %i.um = fpext float %i.uk to double
  %i.un = fmul <2 x double> %i.ul, <double 5.000000e-01, double 1.000000e+00> ; 3 uses
  %i.uo = insertelement <2 x double> %i.un, double 5.000000e-01, i64 1
  %i.up = fmul <2 x double> %i.un, %i.uo          ; 3 uses
  %i.uq = fmul double %i.um, 5.000000e-01         ; 4 uses
  %i.ur = extractelement <2 x double> %i.up, i64 1 ; 3 uses
  %i.us = fmul double %i.ur, %i.ur                ; 2 uses
  %i.ut = fmul double %i.uq, %i.uq                ; 2 uses
  %i.uu = extractelement <2 x double> %i.up, i64 0
  %i.uv = fadd double %i.uu, %i.us
  %i.uw = fadd double %i.uv, %i.ut                ; 2 uses
  %i.ux = fcmp ugt double %i.uw, 1.000000e-15
  br i1 %i.ux, label %bb.bi, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68

bb.bi:                                            ; preds = %bb.bh
  %i.uy = shufflevector <4 x float> %i.ub, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.uz = load float, ptr %i.ty, align 4, !tbaa !47 ; 2 uses
  %i.va = insertelement <2 x float> poison, float %i.uz, i64 0
  %i.vb = shufflevector <2 x float> %i.va, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vc = shufflevector <4 x float> %i.ub, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.vd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vb, <2 x float> splat (float -2.000000e+00), <2 x float> %i.vc)
  %i.ve = fadd <2 x float> %i.uy, %i.vd
  %i.vf = fpext <2 x float> %i.ve to <2 x double> ; 2 uses
  %i.vg = extractelement <2 x double> %i.vf, i64 1 ; 2 uses
  %i.vh = extractelement <2 x double> %i.vf, i64 0 ; 2 uses
  %11 = fadd double %i.vh, %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ty, i64 40
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !47
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !47
  %i.vm = fsub float %i.vj, %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ty, i64 28
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !47
  %i.vp = fadd float %i.vm, %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ty, i64 36
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ty, i64 56
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !47
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ty, i64 48
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !47
  %i.vv = fsub float %i.vs, %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ty, i64 44
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !47
  %i.vy = fadd float %i.vv, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.ty, i64 52
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !47
  %i.wb = fsub float %i.vy, %i.wa
  %i.wc = load float, ptr %i.vq, align 4, !tbaa !47
  %i.wd = call float @llvm.fmuladd.f32(float %i.uz, float -2.000000e+00, float %i.ud)
  %i.we = fsub float %i.vp, %i.wc
  %i.wf = fadd float %i.ug, %i.wd
  %i.wg = fpext float %i.we to double
  %i.wh = fpext float %i.wb to double
  %i.wi = fpext float %i.wf to double             ; 2 uses
  %i.wj = fmul double %i.wg, 2.500000e-01
  %i.wk = fadd double %i.vg, %i.wi
  %i.wl = fmul double %i.wh, 2.500000e-01
  %i.wm = fadd double %i.vh, %i.wi
  %i.wn = fmul double %i.uq, %i.wl
  %i.wo = fmul double %i.us, %i.wm
  %i.wp = insertelement <2 x double> poison, double %i.wk, i64 0
  %i.wq = insertelement <2 x double> %i.wp, double %i.wj, i64 1
  %i.wr = insertelement <2 x double> poison, double %i.wo, i64 0
  %i.ws = insertelement <2 x double> %i.wr, double %i.wn, i64 1
  %i.wt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.up, <2 x double> %i.wq, <2 x double> %i.ws) ; 2 uses
  %i.wu = extractelement <2 x double> %i.wt, i64 0
  %i.wv = call double @llvm.fmuladd.f64(double %i.ut, double %11, double %i.wu)
  %i.ww = fmul double %i.ur, %i.uq
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ty, i64 72
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !47
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ty, i64 64
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !47
  %i.xb = fsub float %i.wy, %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ty, i64 60
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !47
  %i.xe = fadd float %i.xb, %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ty, i64 68
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !47
  %i.xh = fsub float %i.xe, %i.xg
  %i.xi = fpext float %i.xh to double
  %i.xj = fmul double %i.xi, 2.500000e-01
  %i.xk = fmul double %i.ww, %i.xj
  %i.xl = extractelement <2 x double> %i.wt, i64 1
  %i.xm = extractelement <2 x double> %i.un, i64 0
  %i.xn = call double @llvm.fmuladd.f64(double %i.xm, double %i.xl, double %i.xk)
  %i.xo = call double @llvm.fmuladd.f64(double %i.xn, double -2.000000e+00, double %i.wv)
  %sqrt.i.i67 = call double @llvm.sqrt.f64(double %i.uw) ; 2 uses
  %i.xp = load float, ptr %i.z, align 8, !tbaa !250
  %i.xq = fpext float %i.xp to double
  %i.xr = fmul double %i.xo, %i.xq
  %i.xs = fmul double %sqrt.i.i67, %sqrt.i.i67
  %i.xt = fmul double %i.xs, 2.000000e+00
  %i.xu = fdiv double %i.xr, %i.xt
  %i.xv = fptrunc double %i.xu to float
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68: ; preds = %bb.bh, %bb.bi
  %i.xw = phi float [ %i.xv, %bb.bi ], [ 0.000000e+00, %bb.bh ]
  %i.xx = call float @llvm.fmuladd.f32(float %i.u, float %i.xw, float %i.tx)
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.tv
  store float %i.xx, ptr %i.xy, align 4, !tbaa !47
  %i.xz = load ptr, ptr %i.rk, align 8, !tbaa !244 ; 8 uses
  %i.ya = add i32 %i.tt, 1                        ; 4 uses
  %i.yb = lshr i32 %i.ya, 6                       ; 3 uses
  %i.yc = icmp ugt i32 %i.ya, 511
  br i1 %i.yc, label %._crit_edge130, label %bb.bj

bb.bj:                                            ; preds = %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE21meanCurvatureNormGradEv.exit68
  %i.yd = and i32 %i.ya, 63
  %i.ye = zext nneg i32 %i.yb to i64              ; 8 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %i.ye
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !209 ; 2 uses
  %i.yh = zext nneg i32 %i.yd to i64              ; 2 uses
  %i.yi = shl nuw i64 1, %i.yh
  %i.yj = and i64 %i.yg, %i.yi
  %.not.i.i.i.i69 = icmp eq i64 %i.yj, 0
  br i1 %.not.i.i.i.i69, label %bb.bk, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81

bb.bk:                                            ; preds = %bb.bj
  %i.yk = shl nsw i64 -1, %i.yh
  %i.yl = and i64 %i.yg, %i.yk                    ; 2 uses
  %.not2226.i.i.i.i71 = icmp eq i64 %i.yl, 0
  br i1 %.not2226.i.i.i.i71, label %.lr.ph.i.i.i.i75.preheader, label %.critedge.i.i.i.i72

.lr.ph.i.i.i.i75.preheader:                       ; preds = %bb.bk
  %exitcond.not.i.i.i.i77186 = icmp eq i32 %i.yb, 7
  br i1 %exitcond.not.i.i.i.i77186, label %._crit_edge130, label %.lr.ph188

.lr.ph.i.i.i.i75:                                 ; preds = %.lr.ph188
  %exitcond.not.i.i.i.i77 = icmp eq i64 %indvars.iv.next.i.i.i.i78, 7
  br i1 %exitcond.not.i.i.i.i77, label %._crit_edge130, label %.lr.ph188.1

.lr.ph188.1:                                      ; preds = %.lr.ph.i.i.i.i75
  %indvars.iv.next.i.i.i.i78.1 = add nuw nsw i64 %i.ye, 2 ; 3 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %indvars.iv.next.i.i.i.i78.1
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.1 = icmp eq i64 %i.yn, 0
  br i1 %.not22.i.i.i.i79.1, label %.lr.ph.i.i.i.i75.1, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.1:                               ; preds = %.lr.ph188.1
  %exitcond.not.i.i.i.i77.1 = icmp eq i64 %indvars.iv.next.i.i.i.i78.1, 7
  br i1 %exitcond.not.i.i.i.i77.1, label %._crit_edge130, label %.lr.ph188.2

.lr.ph188.2:                                      ; preds = %.lr.ph.i.i.i.i75.1
  %indvars.iv.next.i.i.i.i78.2 = add nuw nsw i64 %i.ye, 3 ; 3 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %indvars.iv.next.i.i.i.i78.2
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.2 = icmp eq i64 %i.yp, 0
  br i1 %.not22.i.i.i.i79.2, label %.lr.ph.i.i.i.i75.2, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.2:                               ; preds = %.lr.ph188.2
  %exitcond.not.i.i.i.i77.2 = icmp eq i64 %indvars.iv.next.i.i.i.i78.2, 7
  br i1 %exitcond.not.i.i.i.i77.2, label %._crit_edge130, label %.lr.ph188.3

.lr.ph188.3:                                      ; preds = %.lr.ph.i.i.i.i75.2
  %indvars.iv.next.i.i.i.i78.3 = add nuw nsw i64 %i.ye, 4 ; 3 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %indvars.iv.next.i.i.i.i78.3
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.3 = icmp eq i64 %i.yr, 0
  br i1 %.not22.i.i.i.i79.3, label %.lr.ph.i.i.i.i75.3, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.3:                               ; preds = %.lr.ph188.3
  %exitcond.not.i.i.i.i77.3 = icmp eq i64 %indvars.iv.next.i.i.i.i78.3, 7
  br i1 %exitcond.not.i.i.i.i77.3, label %._crit_edge130, label %.lr.ph188.4

.lr.ph188.4:                                      ; preds = %.lr.ph.i.i.i.i75.3
  %indvars.iv.next.i.i.i.i78.4 = add nuw nsw i64 %i.ye, 5 ; 3 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %indvars.iv.next.i.i.i.i78.4
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.4 = icmp eq i64 %i.yt, 0
  br i1 %.not22.i.i.i.i79.4, label %.lr.ph.i.i.i.i75.4, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.4:                               ; preds = %.lr.ph188.4
  %exitcond.not.i.i.i.i77.4 = icmp eq i64 %indvars.iv.next.i.i.i.i78.4, 7
  br i1 %exitcond.not.i.i.i.i77.4, label %._crit_edge130, label %.lr.ph188.5

.lr.ph188.5:                                      ; preds = %.lr.ph.i.i.i.i75.4
  %indvars.iv.next.i.i.i.i78.5 = add nuw nsw i64 %i.ye, 6 ; 3 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %indvars.iv.next.i.i.i.i78.5
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.5 = icmp eq i64 %i.yv, 0
  br i1 %.not22.i.i.i.i79.5, label %.lr.ph.i.i.i.i75.5, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph.i.i.i.i75.5:                               ; preds = %.lr.ph188.5
  %exitcond.not.i.i.i.i77.5 = icmp eq i64 %indvars.iv.next.i.i.i.i78.5, 7
  br i1 %exitcond.not.i.i.i.i77.5, label %._crit_edge130, label %.lr.ph188.6

.lr.ph188.6:                                      ; preds = %.lr.ph.i.i.i.i75.5
  %indvars.iv.next.i.i.i.i78.6 = add nuw nsw i64 %i.ye, 7 ; 2 uses
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %indvars.iv.next.i.i.i.i78.6
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79.6 = icmp eq i64 %i.yx, 0
  br i1 %.not22.i.i.i.i79.6, label %._crit_edge130, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.lr.ph188:                                        ; preds = %.lr.ph.i.i.i.i75.preheader
  %indvars.iv.next.i.i.i.i78 = add nuw nsw i64 %i.ye, 1 ; 3 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %indvars.iv.next.i.i.i.i78
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i79 = icmp eq i64 %i.yz, 0
  br i1 %.not22.i.i.i.i79, label %.lr.ph.i.i.i.i75, label %.critedge.loopexit.i.i.i.i80, !llvm.loop !7

.critedge.loopexit.i.i.i.i80:                     ; preds = %.lr.ph188.6, %.lr.ph188.5, %.lr.ph188.4, %.lr.ph188.3, %.lr.ph188.2, %.lr.ph188.1, %.lr.ph188
  %indvars.iv.next.i.i.i.i78.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i78, %.lr.ph188 ], [ %indvars.iv.next.i.i.i.i78.1, %.lr.ph188.1 ], [ %indvars.iv.next.i.i.i.i78.2, %.lr.ph188.2 ], [ %indvars.iv.next.i.i.i.i78.3, %.lr.ph188.3 ], [ %indvars.iv.next.i.i.i.i78.4, %.lr.ph188.4 ], [ %indvars.iv.next.i.i.i.i78.5, %.lr.ph188.5 ], [ %indvars.iv.next.i.i.i.i78.6, %.lr.ph188.6 ]
  %.lcssa = phi i64 [ %i.yz, %.lr.ph188 ], [ %i.yn, %.lr.ph188.1 ], [ %i.yp, %.lr.ph188.2 ], [ %i.yr, %.lr.ph188.3 ], [ %i.yt, %.lr.ph188.4 ], [ %i.yv, %.lr.ph188.5 ], [ %i.yx, %.lr.ph188.6 ]
  %i.za = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i78.lcssa to i32
  br label %.critedge.i.i.i.i72

.critedge.i.i.i.i72:                              ; preds = %.critedge.loopexit.i.i.i.i80, %bb.bk
  %.016.lcssa.i.i.i.i73 = phi i32 [ %i.yb, %bb.bk ], [ %i.za, %.critedge.loopexit.i.i.i.i80 ]
  %.0.lcssa.i.i.i.i74 = phi i64 [ %i.yl, %bb.bk ], [ %.lcssa, %.critedge.loopexit.i.i.i.i80 ]
  %i.zb = shl nuw nsw i32 %.016.lcssa.i.i.i.i73, 6
  %i.zc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i74, i1 true)
  %i.zd = trunc nuw nsw i64 %i.zc to i32
  %i.ze = or disjoint i32 %i.zb, %i.zd
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit81: ; preds = %bb.bj, %.critedge.i.i.i.i72
  %.118.i.i.i.i70 = phi i32 [ %i.ze, %.critedge.i.i.i.i72 ], [ %i.ya, %bb.bj ] ; 2 uses
  store i32 %.118.i.i.i.i70, ptr %i.rg, align 8, !tbaa !201
  %.not112 = icmp eq i32 %.118.i.i.i.i70, 512
  br i1 %.not112, label %._crit_edge130, label %.lr.ph129

.loopexit113:                                     ; preds = %._crit_edge130, %bb.aw, %_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS1_10BoxSamplerEfED2Ev.exit
  %i.zf = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.zg, null
  br i1 %.not.i.i.i.i82, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.bl
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %i.il = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  store ptr %i.ii, ptr %i.il, align 8, !tbaa !208
  %i.im = load ptr, ptr %i.ih, align 8, !tbaa !222 ; 2 uses
  %i.in = shl i32 %i.dm, 3
  %i.io = and i32 %i.in, 31744
  %i.ip = lshr i32 %i.dp, 2
  %i.iq = and i32 %i.ip, 992
  %i.ir = or disjoint i32 %i.iq, %i.io            ; 2 uses
  %i.is = lshr i32 %i.ds, 7
  %i.it = and i32 %i.is, 31
  %i.iu = or disjoint i32 %i.ir, %i.it            ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 262144
  %i.iw = lshr i32 %i.ir, 6
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !209
  %i.ja = and i32 %i.iu, 63
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = shl nuw i64 1, %i.jb
  %i.jd = and i64 %i.iz, %i.jc
  %.not.i.i106 = icmp eq i64 %i.jd, 0
  %i.je = zext nneg i32 %i.iu to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.je ; 3 uses
  br i1 %.not.i.i106, label %.noexc46, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
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

.invoke:                                          ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i, %bb.y, %bb.ai
  %.in = phi ptr [ %i.jf, %bb.ai ], [ %i.gm, %bb.y ], [ %i.ff, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm1EEEEPKfSK_.exit.i ]
  %i.jk = load ptr, ptr %.in, align 8, !tbaa !69
  %i.jl = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE16getValueAndCacheIKNS1_17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEERKfRKNS0_4math5CoordERT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.jk, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(96) %i.dv)
          to label %.noexc46 unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 56
  br label %.noexc46

.noexc46:                                         ; preds = %.invoke, %bb.x, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i, %bb.aj, %bb.ah, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i
  %.1.i.i = phi ptr [ %i.es, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE8getValueERKNS0_4math5CoordEENKUlT_E_clISt17integral_constantImLm0EEEEPKfSK_.exit.i ], [ %i.jf, %bb.ah ], [ %i.jl, %.invoke ], [ %i.gm, %bb.x ], [ %i.ig, %_ZNK7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE9findCoordERKNS0_4math5CoordE.exit.thread.i ], [ %i.jm, %bb.aj ]
  %i.jn = load float, ptr %.1.i.i, align 4, !tbaa !47
  br label %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i

bb.ak:                                            ; preds = %bb.s
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
          to label %.noexc47 unwind label %bb.aq, !inline_history !6

.noexc47:                                         ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !588
  %i.jw = load ptr, ptr %i.aw, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.jx = load ptr, ptr %i.bb, align 8, !tbaa !229
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !228, !noalias !590 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !45, !noalias !590
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !590
  invoke void %i.kb(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc48 unwind label %bb.aq, !inline_history !6

.noexc48:                                         ; preds = %.noexc47
  %i.kc = invoke noundef float @_ZN7openvdb5v13_05tools10BoxSampler6sampleINS0_4tree17ValueAccessorImplIKNS4_4TreeINS4_8RootNodeINS4_12InternalNodeINS8_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEENT_9ValueTypeERKSJ_RKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(96) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc49 unwind label %bb.aq

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
  br i1 %i.kh, label %bb.al, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.al:                                            ; preds = %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.ki = fcmp olt float %i.kg, 1.000000e+00
  br i1 %i.ki, label %bb.am, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.kj = call nnan float @llvm.fmuladd.f32(float %i.kg, float -2.000000e+00, float 3.000000e+00)
  %i.kk = fmul nnan float %i.kg, %i.kj
  %i.kl = fmul nnan float %i.kg, %i.kk
  br label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i: ; preds = %bb.am, %bb.al, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i
  %i.km = phi float [ 1.000000e+00, %bb.al ], [ %i.kl, %bb.am ], [ 0.000000e+00, %_ZNK7openvdb5v13_05tools15DualGridSamplerINS0_4tree17ValueAccessorImplIKNS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEENS1_10BoxSamplerEEclERKNS0_4math5CoordE.exit.i ] ; 3 uses
  %i.kn = fsub float 1.000000e+00, %i.km          ; 2 uses
  %i.ko = load i8, ptr %i.be, align 8, !tbaa !233, !range !71, !noundef !72
  %i.kp = trunc nuw i8 %i.ko to i1                ; 2 uses
  %.0136 = select i1 %i.kp, float %i.kn, float %i.km ; 2 uses
  %.0 = select i1 %i.kp, float %i.km, float %i.kn
  %i.kq = fcmp ogt float %.0136, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %i.kq, label %bb.an, label %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge

_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge: ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %.pre = load i32, ptr %i.av, align 8, !tbaa !201
  br label %bb.ar

bb.an:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i
  %i.kr = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc50 unwind label %.loopexit159 ; 3 uses

.noexc50:                                         ; preds = %bb.an
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
  %i.lx = fmul double %i.lw, 5.000000e-01         ; 4 uses
  %i.ly = fmul double %i.lx, %i.lx                ; 3 uses
  %i.lz = load <2 x float>, ptr %i.lr, align 4, !tbaa !47 ; 3 uses
  %i.ma = insertelement <2 x float> %i.lz, float %i.lu, i64 0
  %i.mb = shufflevector <4 x float> %i.lq, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> %i.lz, <2 x i32> <i32 0, i32 2>
  %i.md = fsub <2 x float> %i.ma, %i.mc
  %i.me = fpext <2 x float> %i.md to <2 x double>
  %i.mf = fmul <2 x double> %i.me, splat (double 5.000000e-01) ; 7 uses
  %i.mg = fmul <2 x double> %i.mf, %i.mf          ; 3 uses
  %i.mh = extractelement <2 x double> %i.mg, i64 0 ; 2 uses
  %i.mi = fadd double %i.mh, %i.ly
  %i.mj = extractelement <2 x double> %i.mg, i64 1 ; 3 uses
  %i.mk = fadd double %i.mi, %i.mj                ; 2 uses
  %i.ml = fcmp ugt double %i.mk, 1.000000e-15
  br i1 %i.ml, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !47
  %i.mo = load float, ptr %i.ll, align 4, !tbaa !47 ; 2 uses
  %i.mp = insertelement <2 x float> poison, float %i.mo, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mr = shufflevector <4 x float> %i.lq, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ms = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> splat (float -2.000000e+00), <2 x float> %i.mr)
  %i.mt = fadd <2 x float> %i.mb, %i.ms
  %i.mu = fpext <2 x float> %i.mt to <2 x double> ; 5 uses
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
  %i.nl = extractelement <2 x double> %i.mu, i64 1 ; 2 uses
  %i.nm = extractelement <2 x double> %i.mu, i64 0 ; 3 uses
  %i.nn = extractelement <2 x double> %i.mf, i64 0
  %shift = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.mf, %shift
  %i.no = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.np = fmul double %i.nn, %i.lx
  %i.nq = fneg double %i.my
  %sqrt.i = call double @llvm.sqrt.f64(double %i.mk) ; 2 uses
  %i.nr = load <2 x float>, ptr %i.x, align 4, !tbaa !47
  %i.ns = fpext <2 x float> %i.nr to <2 x double> ; 2 uses
  %i.nt = load float, ptr %i.nh, align 4, !tbaa !47
  %i.nu = load float, ptr %i.nk, align 4, !tbaa !47
  %i.nv = load float, ptr %i.ni, align 4, !tbaa !47
  %i.nw = load float, ptr %i.nj, align 4, !tbaa !47
  %i.nx = load float, ptr %i.nd, align 4, !tbaa !47
  %i.ny = load float, ptr %i.ng, align 4, !tbaa !47
  %i.nz = load float, ptr %i.ne, align 4, !tbaa !47
  %i.oa = load float, ptr %i.nf, align 4, !tbaa !47
  %i.ob = load float, ptr %i.mz, align 4, !tbaa !47 ; 2 uses
  %i.oc = load float, ptr %i.nc, align 4, !tbaa !47 ; 2 uses
  %i.od = load float, ptr %i.na, align 4, !tbaa !47 ; 2 uses
  %i.oe = load float, ptr %i.nb, align 4, !tbaa !47 ; 2 uses
  %i.of = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.og = insertelement <2 x float> %i.of, float %i.ob, i64 1
  %i.oh = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.oi = insertelement <2 x float> %i.oh, float %i.od, i64 1
  %i.oj = fsub <2 x float> %i.og, %i.oi
  %i.ok = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.ol = insertelement <2 x float> %i.ok, float %i.nt, i64 1
  %i.om = insertelement <2 x float> poison, float %i.od, i64 0
  %i.on = insertelement <2 x float> %i.om, float %i.nv, i64 1
  %i.oo = fsub <2 x float> %i.ol, %i.on
  %i.op = insertelement <2 x float> poison, float %i.oa, i64 0
  %i.oq = insertelement <2 x float> %i.op, float %i.oe, i64 1
  %i.or = fadd <2 x float> %i.oj, %i.oq
  %i.os = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.ot = insertelement <2 x float> %i.os, float %i.nw, i64 1
  %i.ou = fadd <2 x float> %i.oo, %i.ot
  %i.ov = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.ow = insertelement <2 x float> %i.ov, float %i.oc, i64 1
  %i.ox = fsub <2 x float> %i.or, %i.ow
  %i.oy = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.oz = insertelement <2 x float> %i.oy, float %i.nu, i64 1
  %i.pa = fsub <2 x float> %i.ou, %i.oz
  %i.pb = fpext <2 x float> %i.ox to <2 x double>
  %i.pc = fpext <2 x float> %i.pa to <2 x double>
  %i.pd = fmul <2 x double> %i.pb, splat (double 2.500000e-01) ; 4 uses
  %i.pe = fmul <2 x double> %i.pc, splat (double 2.500000e-01) ; 6 uses
  %i.pf = insertelement <2 x double> poison, double %i.my, i64 0
  %i.pg = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ph = fadd <2 x double> %i.pg, %i.mu          ; 2 uses
  %10 = fadd double %i.nm, %i.nl
  %i.pi = insertelement <2 x double> poison, double %i.lx, i64 0 ; 2 uses
  %i.pj = insertelement <2 x double> %i.pi, double %sqrt.i, i64 1 ; 2 uses
  %i.pk = shufflevector <2 x double> %i.pj, <2 x double> %i.mf, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.pl = fmul <2 x double> %i.pj, %i.pk          ; 3 uses
  %i.pm = extractelement <2 x double> %i.pe, i64 1 ; 2 uses
  %i.pn = extractelement <2 x double> %i.pl, i64 0 ; 2 uses
  %i.po = fmul double %i.pn, %i.pm
  %i.pp = extractelement <2 x double> %i.pd, i64 0 ; 3 uses
  %i.pq = fneg double %i.pp
  %i.pr = fmul double %i.pp, %i.pq
  %i.ps = call double @llvm.fmuladd.f64(double %i.nm, double %i.my, double %i.pr)
  %i.pt = fmul double %i.ly, %i.ps
  %i.pu = insertelement <2 x double> %i.pe, double %i.ly, i64 0
  %i.pv = fneg <2 x double> %i.pe
  %i.pw = shufflevector <2 x double> %i.ph, <2 x double> %i.pv, <2 x i32> <i32 0, i32 3>
  %i.px = fmul <2 x double> %i.pu, %i.pw
  %i.py = shufflevector <2 x double> %i.mg, <2 x double> %i.mu, <2 x i32> <i32 0, i32 3>
  %i.pz = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qa = insertelement <2 x double> %i.pz, double %i.my, i64 1
  %i.qb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.qa, <2 x double> %i.px) ; 2 uses
  %i.qc = extractelement <2 x double> %i.qb, i64 1
  %i.qd = call double @llvm.fmuladd.f64(double %i.mh, double %i.qc, double %i.pt)
  %i.qe = extractelement <2 x double> %i.pe, i64 0 ; 4 uses
  %i.qf = fneg double %i.qe
  %i.qg = fmul double %i.qe, %i.qf
  %i.qh = call double @llvm.fmuladd.f64(double %i.nm, double %i.nl, double %i.qg)
  %i.qi = call double @llvm.fmuladd.f64(double %i.mj, double %i.qh, double %i.qd)
  %i.qj = extractelement <2 x double> %i.qb, i64 0
  %i.qk = call double @llvm.fmuladd.f64(double %i.mj, double %10, double %i.qj)
  %i.ql = fneg <2 x double> %i.mu
  %i.qm = shufflevector <2 x double> %i.pe, <2 x double> %i.pd, <2 x i32> <i32 1, i32 2>
  %i.qn = fmul <2 x double> %i.qm, %i.ql          ; 2 uses
  %i.qo = extractelement <2 x double> %i.qn, i64 0
  %i.qp = call double @llvm.fmuladd.f64(double %i.qe, double %i.pp, double %i.qo)
  %i.qq = extractelement <2 x double> %i.qn, i64 1
  %i.qr = call double @llvm.fmuladd.f64(double %i.qe, double %i.pm, double %i.qq)
  %i.qs = fmul double %i.no, %i.qr
  %i.qt = call double @llvm.fmuladd.f64(double %i.pn, double %i.qp, double %i.qs)
  %i.qu = insertelement <2 x double> %i.pk, double %i.nq, i64 1
  %i.qv = fmul <2 x double> %i.qu, %i.pd
  %i.qw = shufflevector <2 x double> %i.pi, <2 x double> %i.pd, <2 x i32> <i32 0, i32 2>
  %i.qx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qw, <2 x double> %i.pe, <2 x double> %i.qv)
  %i.qy = insertelement <2 x double> %i.mf, double %i.np, i64 1
  %i.qz = insertelement <2 x double> poison, double %i.po, i64 0
  %i.ra = insertelement <2 x double> %i.qz, double %i.qt, i64 1
  %i.rb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qy, <2 x double> %i.qx, <2 x double> %i.ra)
  %i.rc = insertelement <2 x double> poison, double %i.qk, i64 0
  %i.rd = insertelement <2 x double> %i.rc, double %i.qi, i64 1
  %i.re = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.rd)
  %i.rf = insertelement <2 x double> %i.pl, double %sqrt.i, i64 0
  %i.rg = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rh = fmul <2 x double> %i.rf, %i.rg
  %i.ri = fneg <2 x double> %i.ns
  %i.rj = shufflevector <2 x double> %i.ns, <2 x double> %i.ri, <2 x i32> <i32 0, i32 3>
  %i.rk = fmul <2 x double> %i.re, %i.rj
  %i.rl = fdiv <2 x double> %i.rk, %i.rh          ; 2 uses
  %i.rm = extractelement <2 x double> %i.rl, i64 0 ; 4 uses
  %i.rn = extractelement <2 x double> %i.rl, i64 1
  %i.ro = call double @llvm.fmuladd.f64(double %i.rm, double %i.rm, double %i.rn)
  %i.rp = call double @sqrt(double noundef %i.ro) #18 ; 2 uses
  %i.rq = fsub double %i.rm, %i.rp
  %i.rr = fptrunc double %i.rq to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.rr, i64 0
  %i.rs = fadd double %i.rp, %i.rm
  %i.rt = fptrunc double %i.rs to float
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.rt, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit, %bb.ao
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.ao ], [ zeroinitializer, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit ]
  %i.ru = load i32, ptr %i.av, align 8, !tbaa !201 ; 2 uses
  %i.rv = load ptr, ptr %i.bg, align 8, !tbaa !238
  %i.rw = zext i32 %i.ru to i64                   ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.rw
  %.sroa.04.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !47 ; 2 uses
  %i.rz = fmul float %i.u, %.sroa.04.0.vec.extract ; 2 uses
  %i.sa = fcmp olt float %i.rz, 0.000000e+00
  %.sroa.speculated = select i1 %i.sa, float %i.rz, float 0.000000e+00
  %i.sb = fadd float %i.ry, %.sroa.speculated
  %i.sc = fmul float %.0136, %i.sb
  %i.sd = call float @llvm.fmuladd.f32(float %.0, float %i.ry, float %i.sc)
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.rw
  store float %i.sd, ptr %i.se, align 4, !tbaa !47
  br label %bb.ar

bb.aq:                                            ; preds = %.invoke, %.noexc48, %.noexc47, %bb.ak, %.lr.ph
  %i.sf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.au

bb.ar:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %bb.ap
  %i.sg = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.ru, %bb.ap ]
  %i.sh = load ptr, ptr %i.bi, align 8, !tbaa !244 ; 8 uses
  %i.si = add i32 %i.sg, 1                        ; 4 uses
  %i.sj = lshr i32 %i.si, 6                       ; 3 uses
  %i.sk = icmp ugt i32 %i.si, 511
  br i1 %i.sk, label %._crit_edge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sl = and i32 %i.si, 63
  %i.sm = zext nneg i32 %i.sj to i64              ; 8 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.sm
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !209 ; 2 uses
  %i.sp = zext nneg i32 %i.sl to i64              ; 2 uses
  %i.sq = shl nuw i64 1, %i.sp
  %i.sr = and i64 %i.so, %i.sq
  %.not.i.i.i.i = icmp eq i64 %i.sr, 0
  br i1 %.not.i.i.i.i, label %bb.at, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.at:                                            ; preds = %bb.as
  %i.ss = shl nsw i64 -1, %i.sp
  %i.st = and i64 %i.so, %i.ss                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.st, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i52.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i52.preheader:                       ; preds = %bb.at
  %exitcond.not.i.i.i.i228 = icmp eq i32 %i.sj, 7
  br i1 %exitcond.not.i.i.i.i228, label %._crit_edge, label %.lr.ph230

.lr.ph.i.i.i.i52:                                 ; preds = %.lr.ph230
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph.i.i.i.i52
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.sm, 2 ; 3 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next.i.i.i.i.1
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.sv, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i52.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.1:                               ; preds = %.lr.ph230.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph230.2

.lr.ph230.2:                                      ; preds = %.lr.ph.i.i.i.i52.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.sm, 3 ; 3 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next.i.i.i.i.2
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.sx, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i52.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.2:                               ; preds = %.lr.ph230.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph230.3

.lr.ph230.3:                                      ; preds = %.lr.ph.i.i.i.i52.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.sm, 4 ; 3 uses
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next.i.i.i.i.3
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.sz, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i52.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.3:                               ; preds = %.lr.ph230.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph230.4

.lr.ph230.4:                                      ; preds = %.lr.ph.i.i.i.i52.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.sm, 5 ; 3 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next.i.i.i.i.4
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.tb, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i52.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.4:                               ; preds = %.lr.ph230.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph230.5

.lr.ph230.5:                                      ; preds = %.lr.ph.i.i.i.i52.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.sm, 6 ; 3 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next.i.i.i.i.5
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.td, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i52.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.5:                               ; preds = %.lr.ph230.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph230.6

.lr.ph230.6:                                      ; preds = %.lr.ph.i.i.i.i52.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.sm, 7 ; 2 uses
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next.i.i.i.i.6
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.tf, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph230:                                        ; preds = %.lr.ph.i.i.i.i52.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.sm, 1 ; 3 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next.i.i.i.i
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.th, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i52, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph230.6, %.lr.ph230.5, %.lr.ph230.4, %.lr.ph230.3, %.lr.ph230.2, %.lr.ph230.1, %.lr.ph230
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph230 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph230.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph230.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph230.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph230.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph230.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph230.6 ]
  %.lcssa243 = phi i64 [ %i.th, %.lr.ph230 ], [ %i.sv, %.lr.ph230.1 ], [ %i.sx, %.lr.ph230.2 ], [ %i.sz, %.lr.ph230.3 ], [ %i.tb, %.lr.ph230.4 ], [ %i.td, %.lr.ph230.5 ], [ %i.tf, %.lr.ph230.6 ]
  %i.ti = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %i.uj = atomicrmw xchg ptr %i.ui, i8 1 seq_cst, align 1
  %i.uk = trunc i8 %i.uj to i1
  br i1 %i.uk, label %.lr.ph.i.i.i.i60, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57

.lr.ph.i.i.i.i60:                                 ; preds = %bb.az, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62
  %.sroa.0.02.i.i.i.i61 = phi i32 [ %.sroa.0.1.i.i.i.i63, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62 ], [ 1, %bb.az ] ; 8 uses
  %i.ul = icmp slt i32 %.sroa.0.02.i.i.i.i61, 17
  br i1 %i.ul, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i60
  %i.um = icmp sgt i32 %.sroa.0.02.i.i.i.i61, 0
  br i1 %i.um, label %.lr.ph.i.i.i.i.i.i65.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64

.lr.ph.i.i.i.i.i.i65.preheader:                   ; preds = %bb.ba
  %xtraiter247 = and i32 %.sroa.0.02.i.i.i.i61, 7 ; 2 uses
  %lcmp.mod248.not = icmp eq i32 %xtraiter247, 0
  br i1 %lcmp.mod248.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol

.lr.ph.i.i.i.i.i.i65.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i65.preheader, %.lr.ph.i.i.i.i.i.i65.prol
  %.01.i.i.i.i.i.i66.prol = phi i32 [ %i.un, %.lr.ph.i.i.i.i.i.i65.prol ], [ %.sroa.0.02.i.i.i.i61, %.lr.ph.i.i.i.i.i.i65.preheader ]
  %prol.iter249 = phi i32 [ %prol.iter249.next, %.lr.ph.i.i.i.i.i.i65.prol ], [ 0, %.lr.ph.i.i.i.i.i.i65.preheader ]
  %i.un = add nsw i32 %.01.i.i.i.i.i.i66.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter249.next = add i32 %prol.iter249, 1   ; 2 uses
  %prol.iter249.cmp.not = icmp eq i32 %prol.iter249.next, %xtraiter247
  br i1 %prol.iter249.cmp.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol, !llvm.loop !586

.lr.ph.i.i.i.i.i.i65.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i65.prol, %.lr.ph.i.i.i.i.i.i65.preheader
  %.01.i.i.i.i.i.i66.unr = phi i32 [ %.sroa.0.02.i.i.i.i61, %.lr.ph.i.i.i.i.i.i65.preheader ], [ %i.un, %.lr.ph.i.i.i.i.i.i65.prol ]
  %i.uo = icmp ult i32 %.sroa.0.02.i.i.i.i61, 8
  br i1 %i.uo, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64, label %.lr.ph.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i65:                             ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65
  %.01.i.i.i.i.i.i66 = phi i32 [ %i.up, %.lr.ph.i.i.i.i.i.i65 ], [ %.01.i.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.up = add nsw i32 %.01.i.i.i.i.i.i66, -8
  call void @llvm.x86.sse2.pause()
  %i.uq = icmp sgt i32 %.01.i.i.i.i.i.i66, 8
  br i1 %i.uq, label %.lr.ph.i.i.i.i.i.i65, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64, !llvm.loop !3

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64: ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65, %bb.ba
  %i.ur = shl i32 %.sroa.0.02.i.i.i.i61, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i60
  %i.us = call noundef i32 @sched_yield() #18     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62: ; preds = %bb.bb, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64
  %.sroa.0.1.i.i.i.i63 = phi i32 [ %i.ur, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64 ], [ %.sroa.0.02.i.i.i.i61, %bb.bb ]
  %i.ut = atomicrmw xchg ptr %i.ui, i8 1 seq_cst, align 1
  %i.uu = trunc i8 %i.ut to i1
  br i1 %i.uu, label %.lr.ph.i.i.i.i60, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62, %bb.az
  %i.uv = load ptr, ptr %i.ud, align 8, !tbaa !69 ; 2 uses
  %i.uw = icmp eq ptr %i.uv, null
  br i1 %i.uw, label %bb.bc, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58

bb.bc:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57
  %i.ux = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26
          to label %bb.bd unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i59 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.ux, ptr %i.ud, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i59: ; preds = %bb.bc
  %i.uy = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ui release, align 1
  br label %.body68

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58: ; preds = %bb.bd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57
  %i.uz = phi ptr [ %i.ux, %bb.bd ], [ %i.uv, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57 ]
  store atomic i8 0, ptr %i.ui release, align 4
  br label %bb.be

bb.be:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i56, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58
  %i.va = phi ptr [ %i.uz, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58 ], [ %i.ug, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i56 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.vb = load ptr, ptr %i.tr, align 8, !tbaa !193, !nonnull !72, !align !194
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 40
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !197
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %.sroa.7.0175
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !198
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.vf)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.be
  %i.vg = load i32, ptr %i.ts, align 8, !tbaa !201
  %.not156172 = icmp eq i32 %i.vg, 512
  br i1 %.not156172, label %._crit_edge174, label %.lr.ph173

._crit_edge174:                                   ; preds = %.lr.ph233.6, %bb.bj, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95, %.lr.ph.i.i.i.i89.preheader, %.lr.ph.i.i.i.i89, %.lr.ph.i.i.i.i89.1, %.lr.ph.i.i.i.i89.2, %.lr.ph.i.i.i.i89.3, %.lr.ph.i.i.i.i89.4, %.lr.ph.i.i.i.i89.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.vh = add nuw i64 %.sroa.7.0175, 1            ; 2 uses
  %i.vi = load i64, ptr %1, align 8, !tbaa !131
  %i.vj = icmp ult i64 %i.vh, %i.vi
  br i1 %i.vj, label %bb.ax, label %.loopexit157, !llvm.loop !587

bb.bf:                                            ; preds = %bb.ay
  %i.vk = landingpad { ptr, i32 }
          cleanup
  br label %.body68

.loopexit:                                        ; preds = %.lr.ph173, %.noexc76
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp:                               ; preds = %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body68

.lr.ph173:                                        ; preds = %.preheader, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95
  %i.vl = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc76 unwind label %.loopexit ; 3 uses

.noexc76:                                         ; preds = %.lr.ph173
  %i.vm = load i32, ptr %i.ts, align 8, !tbaa !201 ; 4 uses
  %i.vn = lshr i32 %i.vm, 6
  %i.vo = lshr i32 %i.vm, 3
  %i.vp = and i32 %i.vo, 7
  %i.vq = and i32 %i.vm, 7
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vl, i64 80
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !124
  %i.vt = add nsw i32 %i.vs, %i.vn
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vl, i64 84
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !124
  %i.vw = add nsw i32 %i.vv, %i.vp
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vl, i64 88
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !124
  %i.vz = add nsw i32 %i.vy, %i.vq
  %.sroa.2.0.insert.ext.i.i.i.i71 = zext i32 %i.vw to i64
  %.sroa.2.0.insert.shift.i.i.i.i72 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i71, 32
  %.sroa.0.0.insert.ext.i9.i.i.i73 = zext i32 %i.vt to i64
  %.sroa.0.0.insert.insert.i10.i.i.i74 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i72, %.sroa.0.0.insert.ext.i9.i.i.i73
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i74, ptr %i.tt, align 8
  store i32 %i.vz, ptr %.sroa.4.0..sroa_idx.i75, align 8, !tbaa !69
  %i.wa = load ptr, ptr %i.tu, align 8, !tbaa !238
  %i.wb = zext i32 %i.vm to i64
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %i.wb
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !47
  %i.we = load ptr, ptr %i.tv, align 8, !tbaa !240
  store float %i.wd, ptr %i.we, align 4, !tbaa !47
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.tt)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78 unwind label %.loopexit

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78: ; preds = %.noexc76
  %i.wf = load ptr, ptr %i.tv, align 8, !tbaa !240 ; 19 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 12
  %i.wk = load <4 x float>, ptr %i.wh, align 4, !tbaa !47 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wf, i64 20
  %i.wm = load float, ptr %i.wi, align 4, !tbaa !47
  %i.wn = load float, ptr %i.wj, align 4, !tbaa !47
  %i.wo = load float, ptr %i.wg, align 4, !tbaa !47
  %i.wp = fsub float %i.wm, %i.wn
  %i.wq = fpext float %i.wp to double
  %i.wr = fmul double %i.wq, 5.000000e-01         ; 4 uses
  %i.ws = fmul double %i.wr, %i.wr                ; 3 uses
  %i.wt = load <2 x float>, ptr %i.wl, align 4, !tbaa !47 ; 3 uses
  %i.wu = insertelement <2 x float> %i.wt, float %i.wo, i64 0
  %i.wv = shufflevector <4 x float> %i.wk, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> %i.wt, <2 x i32> <i32 0, i32 2>
  %i.wx = fsub <2 x float> %i.wu, %i.ww
  %i.wy = fpext <2 x float> %i.wx to <2 x double>
  %i.wz = fmul <2 x double> %i.wy, splat (double 5.000000e-01) ; 7 uses
  %i.xa = fmul <2 x double> %i.wz, %i.wz          ; 3 uses
  %i.xb = extractelement <2 x double> %i.xa, i64 0 ; 2 uses
  %i.xc = fadd double %i.xb, %i.ws
  %i.xd = extractelement <2 x double> %i.xa, i64 1 ; 3 uses
  %i.xe = fadd double %i.xc, %i.xd                ; 2 uses
  %i.xf = fcmp ugt double %i.xe, 1.000000e-15
  br i1 %i.xf, label %bb.bh, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82

bb.bh:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wf, i64 24
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !47
  %i.xi = load float, ptr %i.wf, align 4, !tbaa !47 ; 2 uses
  %i.xj = insertelement <2 x float> poison, float %i.xi, i64 0
  %i.xk = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xl = shufflevector <4 x float> %i.wk, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.xm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xk, <2 x float> splat (float -2.000000e+00), <2 x float> %i.xl)
  %i.xn = fadd <2 x float> %i.wv, %i.xm
  %i.xo = fpext <2 x float> %i.xn to <2 x double> ; 5 uses
  %i.xp = call float @llvm.fmuladd.f32(float %i.xi, float -2.000000e+00, float %i.xh)
  %i.xq = extractelement <2 x float> %i.wt, i64 0
  %i.xr = fadd float %i.xq, %i.xp
  %i.xs = fpext float %i.xr to double             ; 4 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wf, i64 40
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wf, i64 28
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wf, i64 36
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wf, i64 56
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wf, i64 48
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wf, i64 44
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wf, i64 52
  %i.yb = getelementptr inbounds nuw i8, ptr %i.wf, i64 72
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wf, i64 64
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wf, i64 60
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wf, i64 68
  %i.yf = extractelement <2 x double> %i.xo, i64 1 ; 2 uses
  %i.yg = extractelement <2 x double> %i.xo, i64 0 ; 3 uses
  %i.yh = extractelement <2 x double> %i.wz, i64 0
  %shift235 = shufflevector <2 x double> %i.wz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop236 = fmul <2 x double> %i.wz, %shift235
  %i.yi = extractelement <2 x double> %foldExtExtBinop236, i64 0
  %i.yj = fmul double %i.yh, %i.wr
  %i.yk = fneg double %i.xs
  %sqrt.i104 = call double @llvm.sqrt.f64(double %i.xe) ; 2 uses
  %i.yl = load <2 x float>, ptr %i.x, align 4, !tbaa !47
  %i.ym = fpext <2 x float> %i.yl to <2 x double> ; 2 uses
  %i.yn = load float, ptr %i.yb, align 4, !tbaa !47
  %i.yo = load float, ptr %i.ye, align 4, !tbaa !47
  %i.yp = load float, ptr %i.yc, align 4, !tbaa !47
  %i.yq = load float, ptr %i.yd, align 4, !tbaa !47
  %i.yr = load float, ptr %i.xx, align 4, !tbaa !47
  %i.ys = load float, ptr %i.ya, align 4, !tbaa !47
  %i.yt = load float, ptr %i.xy, align 4, !tbaa !47
  %i.yu = load float, ptr %i.xz, align 4, !tbaa !47
  %i.yv = load float, ptr %i.xt, align 4, !tbaa !47 ; 2 uses
  %i.yw = load float, ptr %i.xw, align 4, !tbaa !47 ; 2 uses
  %i.yx = load float, ptr %i.xu, align 4, !tbaa !47 ; 2 uses
  %i.yy = load float, ptr %i.xv, align 4, !tbaa !47 ; 2 uses
  %i.yz = insertelement <2 x float> poison, float %i.yr, i64 0
  %i.za = insertelement <2 x float> %i.yz, float %i.yv, i64 1
  %i.zb = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.zc = insertelement <2 x float> %i.zb, float %i.yx, i64 1
  %i.zd = fsub <2 x float> %i.za, %i.zc
  %i.ze = insertelement <2 x float> poison, float %i.yv, i64 0
  %i.zf = insertelement <2 x float> %i.ze, float %i.yn, i64 1
  %i.zg = insertelement <2 x float> poison, float %i.yx, i64 0
  %i.zh = insertelement <2 x float> %i.zg, float %i.yp, i64 1
  %i.zi = fsub <2 x float> %i.zf, %i.zh
  %i.zj = insertelement <2 x float> poison, float %i.yu, i64 0
  %i.zk = insertelement <2 x float> %i.zj, float %i.yy, i64 1
  %i.zl = fadd <2 x float> %i.zd, %i.zk
  %i.zm = insertelement <2 x float> poison, float %i.yy, i64 0
  %i.zn = insertelement <2 x float> %i.zm, float %i.yq, i64 1
  %i.zo = fadd <2 x float> %i.zi, %i.zn
  %i.zp = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.zq = insertelement <2 x float> %i.zp, float %i.yw, i64 1
  %i.zr = fsub <2 x float> %i.zl, %i.zq
  %i.zs = insertelement <2 x float> poison, float %i.yw, i64 0
  %i.zt = insertelement <2 x float> %i.zs, float %i.yo, i64 1
  %i.zu = fsub <2 x float> %i.zo, %i.zt
  %i.zv = fpext <2 x float> %i.zr to <2 x double>
  %i.zw = fpext <2 x float> %i.zu to <2 x double>
  %i.zx = fmul <2 x double> %i.zv, splat (double 2.500000e-01) ; 4 uses
  %i.zy = fmul <2 x double> %i.zw, splat (double 2.500000e-01) ; 6 uses
  %i.zz = insertelement <2 x double> poison, double %i.xs, i64 0
  %i.aaa = shufflevector <2 x double> %i.zz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aab = fadd <2 x double> %i.aaa, %i.xo        ; 2 uses
  %11 = fadd double %i.yg, %i.yf
  %i.aac = insertelement <2 x double> poison, double %i.wr, i64 0 ; 2 uses
  %i.aad = insertelement <2 x double> %i.aac, double %sqrt.i104, i64 1 ; 2 uses
  %i.aae = shufflevector <2 x double> %i.aad, <2 x double> %i.wz, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.aaf = fmul <2 x double> %i.aad, %i.aae       ; 3 uses
  %i.aag = extractelement <2 x double> %i.zy, i64 1 ; 2 uses
  %i.aah = extractelement <2 x double> %i.aaf, i64 0 ; 2 uses
  %i.aai = fmul double %i.aah, %i.aag
  %i.aaj = extractelement <2 x double> %i.zx, i64 0 ; 3 uses
  %i.aak = fneg double %i.aaj
  %i.aal = fmul double %i.aaj, %i.aak
  %i.aam = call double @llvm.fmuladd.f64(double %i.yg, double %i.xs, double %i.aal)
  %i.aan = fmul double %i.ws, %i.aam
  %i.aao = insertelement <2 x double> %i.zy, double %i.ws, i64 0
  %i.aap = fneg <2 x double> %i.zy
  %i.aaq = shufflevector <2 x double> %i.aab, <2 x double> %i.aap, <2 x i32> <i32 0, i32 3>
  %i.aar = fmul <2 x double> %i.aao, %i.aaq
  %i.aas = shufflevector <2 x double> %i.xa, <2 x double> %i.xo, <2 x i32> <i32 0, i32 3>
  %i.aat = shufflevector <2 x double> %i.aab, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aau = insertelement <2 x double> %i.aat, double %i.xs, i64 1
  %i.aav = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aas, <2 x double> %i.aau, <2 x double> %i.aar) ; 2 uses
  %i.aaw = extractelement <2 x double> %i.aav, i64 1
  %i.aax = call double @llvm.fmuladd.f64(double %i.xb, double %i.aaw, double %i.aan)
  %i.aay = extractelement <2 x double> %i.zy, i64 0 ; 4 uses
  %i.aaz = fneg double %i.aay
  %i.aba = fmul double %i.aay, %i.aaz
  %i.abb = call double @llvm.fmuladd.f64(double %i.yg, double %i.yf, double %i.aba)
  %i.abc = call double @llvm.fmuladd.f64(double %i.xd, double %i.abb, double %i.aax)
  %i.abd = extractelement <2 x double> %i.aav, i64 0
  %i.abe = call double @llvm.fmuladd.f64(double %i.xd, double %11, double %i.abd)
  %i.abf = fneg <2 x double> %i.xo
  %i.abg = shufflevector <2 x double> %i.zy, <2 x double> %i.zx, <2 x i32> <i32 1, i32 2>
  %i.abh = fmul <2 x double> %i.abg, %i.abf       ; 2 uses
  %i.abi = extractelement <2 x double> %i.abh, i64 0
  %i.abj = call double @llvm.fmuladd.f64(double %i.aay, double %i.aaj, double %i.abi)
  %i.abk = extractelement <2 x double> %i.abh, i64 1
  %i.abl = call double @llvm.fmuladd.f64(double %i.aay, double %i.aag, double %i.abk)
  %i.abm = fmul double %i.yi, %i.abl
  %i.abn = call double @llvm.fmuladd.f64(double %i.aah, double %i.abj, double %i.abm)
  %i.abo = insertelement <2 x double> %i.aae, double %i.yk, i64 1
  %i.abp = fmul <2 x double> %i.abo, %i.zx
  %i.abq = shufflevector <2 x double> %i.aac, <2 x double> %i.zx, <2 x i32> <i32 0, i32 2>
  %i.abr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abq, <2 x double> %i.zy, <2 x double> %i.abp)
  %i.abs = insertelement <2 x double> %i.wz, double %i.yj, i64 1
  %i.abt = insertelement <2 x double> poison, double %i.aai, i64 0
  %i.abu = insertelement <2 x double> %i.abt, double %i.abn, i64 1
  %i.abv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abs, <2 x double> %i.abr, <2 x double> %i.abu)
  %i.abw = insertelement <2 x double> poison, double %i.abe, i64 0
  %i.abx = insertelement <2 x double> %i.abw, double %i.abc, i64 1
  %i.aby = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abv, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.abx)
  %i.abz = insertelement <2 x double> %i.aaf, double %sqrt.i104, i64 0
  %i.aca = shufflevector <2 x double> %i.aaf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.acb = fmul <2 x double> %i.abz, %i.aca
  %i.acc = fneg <2 x double> %i.ym
  %i.acd = shufflevector <2 x double> %i.ym, <2 x double> %i.acc, <2 x i32> <i32 0, i32 3>
  %i.ace = fmul <2 x double> %i.aby, %i.acd
  %i.acf = fdiv <2 x double> %i.ace, %i.acb       ; 2 uses
  %i.acg = extractelement <2 x double> %i.acf, i64 0 ; 4 uses
  %i.ach = extractelement <2 x double> %i.acf, i64 1
  %i.aci = call double @llvm.fmuladd.f64(double %i.acg, double %i.acg, double %i.ach)
  %i.acj = call double @sqrt(double noundef %i.aci) #18 ; 2 uses
  %i.ack = fsub double %i.acg, %i.acj
  %i.acl = fptrunc double %i.ack to float
  %.sroa.0.0.vec.insert.i80 = insertelement <2 x float> poison, float %i.acl, i64 0
  %i.acm = fadd double %i.acj, %i.acg
  %i.acn = fptrunc double %i.acm to float
  %.sroa.0.4.vec.insert.i81 = insertelement <2 x float> %.sroa.0.0.vec.insert.i80, float %i.acn, i64 1
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82: ; preds = %bb.bh, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78
  %.sroa.0.0.i79 = phi <2 x float> [ %.sroa.0.4.vec.insert.i81, %bb.bh ], [ zeroinitializer, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78 ]
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i79, i64 0 ; 2 uses
  %i.aco = fcmp olt float %.sroa.0.0.vec.extract, 0.000000e+00
  %.pre181 = load i32, ptr %i.ts, align 8, !tbaa !201 ; 2 uses
  br i1 %i.aco, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82
  %i.acp = load ptr, ptr %i.tu, align 8, !tbaa !238
  %i.acq = zext i32 %.pre181 to i64               ; 2 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %i.acq
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !47
  %i.act = call float @llvm.fmuladd.f32(float %i.u, float %.sroa.0.0.vec.extract, float %i.acs)
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %i.acq
  store float %i.act, ptr %i.acu, align 4, !tbaa !47
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82
  %i.acv = load ptr, ptr %i.tw, align 8, !tbaa !244 ; 8 uses
  %i.acw = add i32 %.pre181, 1                    ; 4 uses
  %i.acx = lshr i32 %i.acw, 6                     ; 3 uses
  %i.acy = icmp ugt i32 %i.acw, 511
  br i1 %i.acy, label %._crit_edge174, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.acz = and i32 %i.acw, 63
  %i.ada = zext nneg i32 %i.acx to i64            ; 8 uses
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %i.ada
  %i.adc = load i64, ptr %i.adb, align 8, !tbaa !209 ; 2 uses
  %i.add = zext nneg i32 %i.acz to i64            ; 2 uses
  %i.ade = shl nuw i64 1, %i.add
  %i.adf = and i64 %i.adc, %i.ade
  %.not.i.i.i.i83 = icmp eq i64 %i.adf, 0
  br i1 %.not.i.i.i.i83, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95

bb.bl:                                            ; preds = %bb.bk
  %i.adg = shl nsw i64 -1, %i.add
  %i.adh = and i64 %i.adc, %i.adg                 ; 2 uses
  %.not2226.i.i.i.i85 = icmp eq i64 %i.adh, 0
  br i1 %.not2226.i.i.i.i85, label %.lr.ph.i.i.i.i89.preheader, label %.critedge.i.i.i.i86

.lr.ph.i.i.i.i89.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i91231 = icmp eq i32 %i.acx, 7
  br i1 %exitcond.not.i.i.i.i91231, label %._crit_edge174, label %.lr.ph233

.lr.ph.i.i.i.i89:                                 ; preds = %.lr.ph233
  %exitcond.not.i.i.i.i91 = icmp eq i64 %indvars.iv.next.i.i.i.i92, 7
  br i1 %exitcond.not.i.i.i.i91, label %._crit_edge174, label %.lr.ph233.1

.lr.ph233.1:                                      ; preds = %.lr.ph.i.i.i.i89
  %indvars.iv.next.i.i.i.i92.1 = add nuw nsw i64 %i.ada, 2 ; 3 uses
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.next.i.i.i.i92.1
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.1 = icmp eq i64 %i.adj, 0
  br i1 %.not22.i.i.i.i93.1, label %.lr.ph.i.i.i.i89.1, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.1:                               ; preds = %.lr.ph233.1
  %exitcond.not.i.i.i.i91.1 = icmp eq i64 %indvars.iv.next.i.i.i.i92.1, 7
  br i1 %exitcond.not.i.i.i.i91.1, label %._crit_edge174, label %.lr.ph233.2

.lr.ph233.2:                                      ; preds = %.lr.ph.i.i.i.i89.1
  %indvars.iv.next.i.i.i.i92.2 = add nuw nsw i64 %i.ada, 3 ; 3 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.next.i.i.i.i92.2
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.2 = icmp eq i64 %i.adl, 0
  br i1 %.not22.i.i.i.i93.2, label %.lr.ph.i.i.i.i89.2, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.2:                               ; preds = %.lr.ph233.2
  %exitcond.not.i.i.i.i91.2 = icmp eq i64 %indvars.iv.next.i.i.i.i92.2, 7
  br i1 %exitcond.not.i.i.i.i91.2, label %._crit_edge174, label %.lr.ph233.3

.lr.ph233.3:                                      ; preds = %.lr.ph.i.i.i.i89.2
  %indvars.iv.next.i.i.i.i92.3 = add nuw nsw i64 %i.ada, 4 ; 3 uses
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.next.i.i.i.i92.3
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.3 = icmp eq i64 %i.adn, 0
  br i1 %.not22.i.i.i.i93.3, label %.lr.ph.i.i.i.i89.3, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.3:                               ; preds = %.lr.ph233.3
  %exitcond.not.i.i.i.i91.3 = icmp eq i64 %indvars.iv.next.i.i.i.i92.3, 7
  br i1 %exitcond.not.i.i.i.i91.3, label %._crit_edge174, label %.lr.ph233.4

.lr.ph233.4:                                      ; preds = %.lr.ph.i.i.i.i89.3
  %indvars.iv.next.i.i.i.i92.4 = add nuw nsw i64 %i.ada, 5 ; 3 uses
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.next.i.i.i.i92.4
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.4 = icmp eq i64 %i.adp, 0
  br i1 %.not22.i.i.i.i93.4, label %.lr.ph.i.i.i.i89.4, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.4:                               ; preds = %.lr.ph233.4
  %exitcond.not.i.i.i.i91.4 = icmp eq i64 %indvars.iv.next.i.i.i.i92.4, 7
  br i1 %exitcond.not.i.i.i.i91.4, label %._crit_edge174, label %.lr.ph233.5

.lr.ph233.5:                                      ; preds = %.lr.ph.i.i.i.i89.4
  %indvars.iv.next.i.i.i.i92.5 = add nuw nsw i64 %i.ada, 6 ; 3 uses
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.next.i.i.i.i92.5
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.5 = icmp eq i64 %i.adr, 0
  br i1 %.not22.i.i.i.i93.5, label %.lr.ph.i.i.i.i89.5, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.5:                               ; preds = %.lr.ph233.5
  %exitcond.not.i.i.i.i91.5 = icmp eq i64 %indvars.iv.next.i.i.i.i92.5, 7
  br i1 %exitcond.not.i.i.i.i91.5, label %._crit_edge174, label %.lr.ph233.6

.lr.ph233.6:                                      ; preds = %.lr.ph.i.i.i.i89.5
  %indvars.iv.next.i.i.i.i92.6 = add nuw nsw i64 %i.ada, 7 ; 2 uses
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.next.i.i.i.i92.6
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.6 = icmp eq i64 %i.adt, 0
  br i1 %.not22.i.i.i.i93.6, label %._crit_edge174, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph233:                                        ; preds = %.lr.ph.i.i.i.i89.preheader
  %indvars.iv.next.i.i.i.i92 = add nuw nsw i64 %i.ada, 1 ; 3 uses
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %indvars.iv.next.i.i.i.i92
  %i.adv = load i64, ptr %i.adu, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93 = icmp eq i64 %i.adv, 0
  br i1 %.not22.i.i.i.i93, label %.lr.ph.i.i.i.i89, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.critedge.loopexit.i.i.i.i94:                     ; preds = %.lr.ph233.6, %.lr.ph233.5, %.lr.ph233.4, %.lr.ph233.3, %.lr.ph233.2, %.lr.ph233.1, %.lr.ph233
  %indvars.iv.next.i.i.i.i92.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i92, %.lr.ph233 ], [ %indvars.iv.next.i.i.i.i92.1, %.lr.ph233.1 ], [ %indvars.iv.next.i.i.i.i92.2, %.lr.ph233.2 ], [ %indvars.iv.next.i.i.i.i92.3, %.lr.ph233.3 ], [ %indvars.iv.next.i.i.i.i92.4, %.lr.ph233.4 ], [ %indvars.iv.next.i.i.i.i92.5, %.lr.ph233.5 ], [ %indvars.iv.next.i.i.i.i92.6, %.lr.ph233.6 ]
  %.lcssa = phi i64 [ %i.adv, %.lr.ph233 ], [ %i.adj, %.lr.ph233.1 ], [ %i.adl, %.lr.ph233.2 ], [ %i.adn, %.lr.ph233.3 ], [ %i.adp, %.lr.ph233.4 ], [ %i.adr, %.lr.ph233.5 ], [ %i.adt, %.lr.ph233.6 ]
  %i.adw = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i92.lcssa to i32
  br label %.critedge.i.i.i.i86

.critedge.i.i.i.i86:                              ; preds = %.critedge.loopexit.i.i.i.i94, %bb.bl
  %.016.lcssa.i.i.i.i87 = phi i32 [ %i.acx, %bb.bl ], [ %i.adw, %.critedge.loopexit.i.i.i.i94 ]
  %.0.lcssa.i.i.i.i88 = phi i64 [ %i.adh, %bb.bl ], [ %.lcssa, %.critedge.loopexit.i.i.i.i94 ]
  %i.adx = shl nuw nsw i32 %.016.lcssa.i.i.i.i87, 6
  %i.ady = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i88, i1 true)
  %i.adz = trunc nuw nsw i64 %i.ady to i32
  %i.aea = or disjoint i32 %i.adx, %i.adz
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04math11GradStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE:bb.a
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
!150 = !{!"_ZTSN3tbb6detail2d118task_group_contextE", !66, i64 0, !136, i64 8, !137, i64 12, !138, i64 13, !140, i64 14, !142, i64 15, !40, i64 16, !143, i64 24, !145, i64 32, !148, i64 48, !48, i64 56, !149, i64 64, !40, i64 72}
!151 = !{!150, !137, i64 12}
!152 = !{!150, !149, i64 64}
!153 = !{!"_ZTSSt10_Head_baseILm2EmLb0EE", !66, i64 0}
!154 = !{!"_ZTSSt11_Tuple_implILm2EJmEE", !153, i64 0}
!155 = !{!"_ZTSSt11_Tuple_implILm1EJSt12_PlaceholderILi2EEmEE", !154, i64 0}
!156 = !{!"_ZTSSt11_Tuple_implILm0EJSt12_PlaceholderILi1EES0_ILi2EEmEE", !155, i64 0}
!157 = !{!"_ZTSSt5tupleIJSt12_PlaceholderILi1EES0_ILi2EEmEE", !156, i64 0}
!158 = !{!"p1 _ZTSSt5_BindIFMN7openvdb5v13_04tree11LeafManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEFvRKN3tbb6detail2d113blocked_rangeImEEmESt12_PlaceholderILi1EESN_ILi2EEmEE", !48, i64 0}
end_hunk_4
