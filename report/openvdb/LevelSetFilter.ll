Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetFilter?download=true
inline.NumInlined: 4553
inline.NumDeleted: 1964
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
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
  %i.mu = fpext <2 x float> %i.mt to <2 x double> ; 8 uses
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
  %i.nm = extractelement <2 x double> %i.mu, i64 0
  %i.nn = insertelement <2 x double> poison, double %i.my, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = fadd <2 x double> %i.no, %i.mu          ; 2 uses
  %i.nq = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.mu)
  %i.nr = extractelement <2 x double> %i.mf, i64 0 ; 2 uses
  %i.ns = extractelement <2 x double> %i.mf, i64 1 ; 2 uses
  %i.nt = fmul double %i.nr, %i.ns
  %10 = fneg double %i.nl
  %i.nu = fmul double %i.nr, %i.lx
  %i.nv = fneg double %i.my
  %sqrt.i = call double @llvm.sqrt.f64(double %i.mk) ; 3 uses
  %i.nw = load <2 x float>, ptr %i.x, align 4, !tbaa !47
  %i.nx = fpext <2 x float> %i.nw to <2 x double> ; 2 uses
  %i.ny = load float, ptr %i.mz, align 4, !tbaa !47 ; 2 uses
  %i.nz = load float, ptr %i.na, align 4, !tbaa !47 ; 2 uses
  %i.oa = load float, ptr %i.nb, align 4, !tbaa !47 ; 2 uses
  %i.ob = load float, ptr %i.nc, align 4, !tbaa !47 ; 2 uses
  %i.oc = load float, ptr %i.nd, align 4, !tbaa !47
  %i.od = load float, ptr %i.ne, align 4, !tbaa !47
  %i.oe = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.of = insertelement <2 x float> %i.oe, float %i.ny, i64 1
  %i.og = insertelement <2 x float> poison, float %i.od, i64 0
  %i.oh = insertelement <2 x float> %i.og, float %i.nz, i64 1
  %i.oi = fsub <2 x float> %i.of, %i.oh
  %i.oj = load float, ptr %i.nf, align 4, !tbaa !47
  %i.ok = load float, ptr %i.nh, align 4, !tbaa !47
  %i.ol = load float, ptr %i.ni, align 4, !tbaa !47
  %i.om = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.on = insertelement <2 x float> %i.om, float %i.ok, i64 1
  %i.oo = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.ol, i64 1
  %i.oq = fsub <2 x float> %i.on, %i.op
  %i.or = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.os = insertelement <2 x float> %i.or, float %i.oa, i64 1
  %i.ot = fadd <2 x float> %i.oi, %i.os
  %i.ou = load float, ptr %i.ng, align 4, !tbaa !47
  %i.ov = load float, ptr %i.nj, align 4, !tbaa !47
  %i.ow = insertelement <2 x float> poison, float %i.oa, i64 0
  %i.ox = insertelement <2 x float> %i.ow, float %i.ov, i64 1
  %i.oy = fadd <2 x float> %i.oq, %i.ox
  %i.oz = insertelement <2 x float> poison, float %i.ou, i64 0
  %i.pa = insertelement <2 x float> %i.oz, float %i.ob, i64 1
  %i.pb = fsub <2 x float> %i.ot, %i.pa
  %i.pc = load float, ptr %i.nk, align 4, !tbaa !47
  %i.pd = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.pe = insertelement <2 x float> %i.pd, float %i.pc, i64 1
  %i.pf = fsub <2 x float> %i.oy, %i.pe
  %i.pg = fpext <2 x float> %i.pb to <2 x double>
  %i.ph = fpext <2 x float> %i.pf to <2 x double>
  %i.pi = fmul <2 x double> %i.pg, splat (double 2.500000e-01) ; 4 uses
  %i.pj = fmul <2 x double> %i.ph, splat (double 2.500000e-01) ; 8 uses
  %i.pk = fmul double %i.lx, %i.ns                ; 2 uses
  %i.pl = extractelement <2 x double> %i.pj, i64 1 ; 2 uses
  %i.pm = fmul double %i.pk, %i.pl
  %i.pn = insertelement <2 x double> %i.pj, double %i.ly, i64 0
  %i.po = fneg <2 x double> %i.pj
  %i.pp = shufflevector <2 x double> %i.np, <2 x double> %i.po, <2 x i32> <i32 0, i32 3>
  %i.pq = fmul <2 x double> %i.pn, %i.pp
  %i.pr = shufflevector <2 x double> %i.mg, <2 x double> %i.mu, <2 x i32> <i32 0, i32 3>
  %i.ps = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.pt = insertelement <2 x double> %i.ps, double %i.my, i64 1
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pr, <2 x double> %i.pt, <2 x double> %i.pq) ; 2 uses
  %i.pv = extractelement <2 x double> %i.pu, i64 0
  %i.pw = call double @llvm.fmuladd.f64(double %i.mj, double %i.nq, double %i.pv)
  %i.px = extractelement <2 x double> %i.pi, i64 0 ; 3 uses
  %i.py = fneg double %i.px
  %i.pz = fmul double %i.px, %i.py
  %i.qa = call double @llvm.fmuladd.f64(double %i.nm, double %i.my, double %i.pz)
  %i.qb = fmul double %i.ly, %i.qa
  %i.qc = extractelement <2 x double> %i.pu, i64 1
  %i.qd = call double @llvm.fmuladd.f64(double %i.mh, double %i.qc, double %i.qb)
  %i.qe = extractelement <2 x double> %i.pj, i64 0
  %11 = shufflevector <2 x double> %i.pj, <2 x double> %i.mu, <2 x i32> <i32 0, i32 2>
  %12 = fneg <2 x double> %11
  %13 = fmul <2 x double> %i.pj, %12
  %14 = shufflevector <2 x double> %i.mu, <2 x double> %i.pj, <2 x i32> <i32 0, i32 2>
  %i.qf = shufflevector <2 x double> %i.mu, <2 x double> %i.pi, <2 x i32> <i32 1, i32 2>
  %15 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %i.qf, <2 x double> %13) ; 2 uses
  %i.qg = extractelement <2 x double> %15, i64 0
  %i.qh = call double @llvm.fmuladd.f64(double %i.mj, double %i.qg, double %i.qd)
  %16 = fmul double %i.px, %10
  %i.qi = call double @llvm.fmuladd.f64(double %i.qe, double %i.pl, double %16)
  %i.qj = fmul double %i.nt, %i.qi
  %17 = extractelement <2 x double> %15, i64 1
  %i.qk = call double @llvm.fmuladd.f64(double %i.pk, double %17, double %i.qj)
  %i.ql = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qm = insertelement <2 x double> %i.ql, double %i.nv, i64 1
  %i.qn = fmul <2 x double> %i.qm, %i.pi
  %i.qo = shufflevector <2 x double> %i.pi, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qp = insertelement <2 x double> %i.qo, double %i.lx, i64 0
  %i.qq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qp, <2 x double> %i.pj, <2 x double> %i.qn)
  %i.qr = insertelement <2 x double> %i.mf, double %i.nu, i64 1
  %i.qs = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.qt = insertelement <2 x double> %i.qs, double %i.qk, i64 1
  %i.qu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qr, <2 x double> %i.qq, <2 x double> %i.qt)
  %i.qv = insertelement <2 x double> poison, double %i.pw, i64 0
  %i.qw = insertelement <2 x double> %i.qv, double %i.qh, i64 1
  %i.qx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qu, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.qw)
  %i.qy = fmul double %sqrt.i, %sqrt.i
  %i.qz = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.ra = insertelement <2 x double> %i.qz, double %i.qy, i64 1 ; 2 uses
  %i.rb = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rc = fmul <2 x double> %i.ra, %i.rb
  %i.rd = fneg <2 x double> %i.nx
  %i.re = shufflevector <2 x double> %i.nx, <2 x double> %i.rd, <2 x i32> <i32 0, i32 3>
  %i.rf = fmul <2 x double> %i.qx, %i.re
  %i.rg = fdiv <2 x double> %i.rf, %i.rc          ; 2 uses
  %i.rh = extractelement <2 x double> %i.rg, i64 0 ; 4 uses
  %i.ri = extractelement <2 x double> %i.rg, i64 1
  %i.rj = call double @llvm.fmuladd.f64(double %i.rh, double %i.rh, double %i.ri)
  %i.rk = call double @sqrt(double noundef %i.rj) #18 ; 2 uses
  %i.rl = fsub double %i.rh, %i.rk
  %i.rm = fptrunc double %i.rl to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.rm, i64 0
  %i.rn = fadd double %i.rk, %i.rh
  %i.ro = fptrunc double %i.rn to float
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ro, i64 1
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit, %bb.ao
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.ao ], [ zeroinitializer, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit ]
  %i.rp = load i32, ptr %i.av, align 8, !tbaa !201 ; 2 uses
  %i.rq = load ptr, ptr %i.bg, align 8, !tbaa !238
  %i.rr = zext i32 %i.rp to i64                   ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %i.rr
  %.sroa.04.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !47 ; 2 uses
  %i.ru = fmul float %i.u, %.sroa.04.0.vec.extract ; 2 uses
  %i.rv = fcmp olt float %i.ru, 0.000000e+00
  %.sroa.speculated = select i1 %i.rv, float %i.ru, float 0.000000e+00
  %i.rw = fadd float %i.rt, %.sroa.speculated
  %i.rx = fmul float %.0136, %i.rw
  %i.ry = call float @llvm.fmuladd.f32(float %.0, float %i.rt, float %i.rx)
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.rr
  store float %i.ry, ptr %i.rz, align 4, !tbaa !47
  br label %bb.ar

bb.aq:                                            ; preds = %.invoke, %.noexc48, %.noexc47, %bb.ak, %.lr.ph
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.au

bb.ar:                                            ; preds = %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge, %bb.ap
  %i.sb = phi i32 [ %.pre, %_ZN7openvdb5v13_04math14SmoothUnitStepIfEET_S3_.exit.i._crit_edge ], [ %i.rp, %bb.ap ]
  %i.sc = load ptr, ptr %i.bi, align 8, !tbaa !244 ; 8 uses
  %i.sd = add i32 %i.sb, 1                        ; 4 uses
  %i.se = lshr i32 %i.sd, 6                       ; 3 uses
  %i.sf = icmp ugt i32 %i.sd, 511
  br i1 %i.sf, label %._crit_edge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sg = and i32 %i.sd, 63
  %i.sh = zext nneg i32 %i.se to i64              ; 8 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.sh
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !209 ; 2 uses
  %i.sk = zext nneg i32 %i.sg to i64              ; 2 uses
  %i.sl = shl nuw i64 1, %i.sk
  %i.sm = and i64 %i.sj, %i.sl
  %.not.i.i.i.i = icmp eq i64 %i.sm, 0
  br i1 %.not.i.i.i.i, label %bb.at, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

bb.at:                                            ; preds = %bb.as
  %i.sn = shl nsw i64 -1, %i.sk
  %i.so = and i64 %i.sj, %i.sn                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.so, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i52.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i52.preheader:                       ; preds = %bb.at
  %exitcond.not.i.i.i.i228 = icmp eq i32 %i.se, 7
  br i1 %exitcond.not.i.i.i.i228, label %._crit_edge, label %.lr.ph230

.lr.ph.i.i.i.i52:                                 ; preds = %.lr.ph230
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph.i.i.i.i52
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.sh, 2 ; 3 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next.i.i.i.i.1
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.sq, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i52.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.1:                               ; preds = %.lr.ph230.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph230.2

.lr.ph230.2:                                      ; preds = %.lr.ph.i.i.i.i52.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.sh, 3 ; 3 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next.i.i.i.i.2
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.ss, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i52.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.2:                               ; preds = %.lr.ph230.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph230.3

.lr.ph230.3:                                      ; preds = %.lr.ph.i.i.i.i52.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.sh, 4 ; 3 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next.i.i.i.i.3
  %i.su = load i64, ptr %i.st, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.su, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i52.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.3:                               ; preds = %.lr.ph230.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph230.4

.lr.ph230.4:                                      ; preds = %.lr.ph.i.i.i.i52.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.sh, 5 ; 3 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next.i.i.i.i.4
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.sw, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i52.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.4:                               ; preds = %.lr.ph230.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph230.5

.lr.ph230.5:                                      ; preds = %.lr.ph.i.i.i.i52.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.sh, 6 ; 3 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next.i.i.i.i.5
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.sy, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i52.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i.i52.5:                               ; preds = %.lr.ph230.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph230.6

.lr.ph230.6:                                      ; preds = %.lr.ph.i.i.i.i52.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.sh, 7 ; 2 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next.i.i.i.i.6
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.ta, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.lr.ph230:                                        ; preds = %.lr.ph.i.i.i.i52.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.sh, 1 ; 3 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next.i.i.i.i
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.tc, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i52, label %.critedge.loopexit.i.i.i.i, !llvm.loop !7

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph230.6, %.lr.ph230.5, %.lr.ph230.4, %.lr.ph230.3, %.lr.ph230.2, %.lr.ph230.1, %.lr.ph230
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph230 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph230.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph230.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph230.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph230.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph230.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph230.6 ]
  %.lcssa239 = phi i64 [ %i.tc, %.lr.ph230 ], [ %i.sq, %.lr.ph230.1 ], [ %i.ss, %.lr.ph230.2 ], [ %i.su, %.lr.ph230.3 ], [ %i.sw, %.lr.ph230.4 ], [ %i.sy, %.lr.ph230.5 ], [ %i.ta, %.lr.ph230.6 ]
  %i.td = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.at
  %.016.lcssa.i.i.i.i = phi i32 [ %i.se, %bb.at ], [ %i.td, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.so, %bb.at ], [ %.lcssa239, %.critedge.loopexit.i.i.i.i ]
  %i.te = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.tf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.tg = trunc nuw nsw i64 %i.tf to i32
  %i.th = or disjoint i32 %i.te, %i.tg
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit: ; preds = %bb.as, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.th, %.critedge.i.i.i.i ], [ %i.sd, %bb.as ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.av, align 8, !tbaa !201
  %.not155 = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not155, label %._crit_edge, label %.lr.ph

bb.au:                                            ; preds = %.loopexit159, %.loopexit.split-lp160, %bb.aq
  %.pn37 = phi { ptr, i32 } [ %i.sa, %bb.aq ], [ %lpad.loopexit161, %.loopexit159 ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp160 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

.body:                                            ; preds = %bb.r, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i, %bb.au
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.cr, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i ], [ %.pn37, %bb.au ], [ %i.dd, %bb.r ]
  call void @_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS1_10BoxSamplerEfED2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #18
  br label %bb.av

bb.av:                                            ; preds = %.body, %bb.i
  %.pn37.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn, %.body ], [ %i.bp, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body68

bb.aw:                                            ; preds = %_ZN7openvdb5v13_05tools15LevelSetTrackerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16checkInterrupterEv.exit
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !132 ; 2 uses
  %i.tk = load i64, ptr %1, align 8, !tbaa !131
  %i.tl = icmp ult i64 %i.tj, %i.tk
  br i1 %i.tl, label %.lr.ph177, label %.loopexit157

.lr.ph177:                                        ; preds = %bb.aw
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.tp = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.ax
end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_05tools14LevelSetFilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6Filter10filletImplERKNS4_11LeafManagerISD_E9LeafRangeE:bb.a
  %i.ue = atomicrmw xchg ptr %i.ud, i8 1 seq_cst, align 1
  %i.uf = trunc i8 %i.ue to i1
  br i1 %i.uf, label %.lr.ph.i.i.i.i60, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57

.lr.ph.i.i.i.i60:                                 ; preds = %bb.az, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62
  %.sroa.0.02.i.i.i.i61 = phi i32 [ %.sroa.0.1.i.i.i.i63, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62 ], [ 1, %bb.az ] ; 8 uses
  %i.ug = icmp slt i32 %.sroa.0.02.i.i.i.i61, 17
  br i1 %i.ug, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i60
  %i.uh = icmp sgt i32 %.sroa.0.02.i.i.i.i61, 0
  br i1 %i.uh, label %.lr.ph.i.i.i.i.i.i65.preheader, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64

.lr.ph.i.i.i.i.i.i65.preheader:                   ; preds = %bb.ba
  %xtraiter243 = and i32 %.sroa.0.02.i.i.i.i61, 7 ; 2 uses
  %lcmp.mod244.not = icmp eq i32 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol

.lr.ph.i.i.i.i.i.i65.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i65.preheader, %.lr.ph.i.i.i.i.i.i65.prol
  %.01.i.i.i.i.i.i66.prol = phi i32 [ %i.ui, %.lr.ph.i.i.i.i.i.i65.prol ], [ %.sroa.0.02.i.i.i.i61, %.lr.ph.i.i.i.i.i.i65.preheader ]
  %prol.iter245 = phi i32 [ %prol.iter245.next, %.lr.ph.i.i.i.i.i.i65.prol ], [ 0, %.lr.ph.i.i.i.i.i.i65.preheader ]
  %i.ui = add nsw i32 %.01.i.i.i.i.i.i66.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause()
  %prol.iter245.next = add i32 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i32 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph.i.i.i.i.i.i65.prol.loopexit, label %.lr.ph.i.i.i.i.i.i65.prol, !llvm.loop !586

.lr.ph.i.i.i.i.i.i65.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i65.prol, %.lr.ph.i.i.i.i.i.i65.preheader
  %.01.i.i.i.i.i.i66.unr = phi i32 [ %.sroa.0.02.i.i.i.i61, %.lr.ph.i.i.i.i.i.i65.preheader ], [ %i.ui, %.lr.ph.i.i.i.i.i.i65.prol ]
  %i.uj = icmp ult i32 %.sroa.0.02.i.i.i.i61, 8
  br i1 %i.uj, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64, label %.lr.ph.i.i.i.i.i.i65

.lr.ph.i.i.i.i.i.i65:                             ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65
  %.01.i.i.i.i.i.i66 = phi i32 [ %i.uk, %.lr.ph.i.i.i.i.i.i65 ], [ %.01.i.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i.i65.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %i.uk = add nsw i32 %.01.i.i.i.i.i.i66, -8
  call void @llvm.x86.sse2.pause()
  %i.ul = icmp sgt i32 %.01.i.i.i.i.i.i66, 8
  br i1 %i.ul, label %.lr.ph.i.i.i.i.i.i65, label %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64, !llvm.loop !3

_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64: ; preds = %.lr.ph.i.i.i.i.i.i65.prol.loopexit, %.lr.ph.i.i.i.i.i.i65, %bb.ba
  %i.um = shl i32 %.sroa.0.02.i.i.i.i61, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i60
  %i.un = call noundef i32 @sched_yield() #18     ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62: ; preds = %bb.bb, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64
  %.sroa.0.1.i.i.i.i63 = phi i32 [ %i.um, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i64 ], [ %.sroa.0.02.i.i.i.i61, %bb.bb ]
  %i.uo = atomicrmw xchg ptr %i.ud, i8 1 seq_cst, align 1
  %i.up = trunc i8 %i.uo to i1
  br i1 %i.up, label %.lr.ph.i.i.i.i60, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57, !llvm.loop !4

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i62, %bb.az
  %i.uq = load ptr, ptr %i.ty, align 8, !tbaa !69 ; 2 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %bb.bc, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58

bb.bc:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57
  %i.us = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #26
          to label %bb.bd unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i59 ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.us, ptr %i.ty, align 8, !tbaa !69
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i59: ; preds = %bb.bc
  %i.ut = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.ud release, align 1
  br label %.body68

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58: ; preds = %bb.bd, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57
  %i.uu = phi ptr [ %i.us, %bb.bd ], [ %i.uq, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i57 ]
  store atomic i8 0, ptr %i.ud release, align 4
  br label %bb.be

bb.be:                                            ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i56, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58
  %i.uv = phi ptr [ %i.uu, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit4.i58 ], [ %i.ub, %_ZNK7openvdb5v13_04tree10LeafBufferIfLj3EE10loadValuesEv.exit.i56 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.uw = load ptr, ptr %i.tm, align 8, !tbaa !193, !nonnull !72, !align !194
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 40
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !197
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %.sroa.7.0175
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !198
  invoke void @_ZNK7openvdb5v13_04tree8LeafNodeIfLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<float, 3>::ValueIter") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.va)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.be
  %i.vb = load i32, ptr %i.tn, align 8, !tbaa !201
  %.not156172 = icmp eq i32 %i.vb, 512
  br i1 %.not156172, label %._crit_edge174, label %.lr.ph173

._crit_edge174:                                   ; preds = %.lr.ph233.6, %bb.bj, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95, %.lr.ph.i.i.i.i89.preheader, %.lr.ph.i.i.i.i89, %.lr.ph.i.i.i.i89.1, %.lr.ph.i.i.i.i89.2, %.lr.ph.i.i.i.i89.3, %.lr.ph.i.i.i.i89.4, %.lr.ph.i.i.i.i89.5, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.vc = add nuw i64 %.sroa.7.0175, 1            ; 2 uses
  %i.vd = load i64, ptr %1, align 8, !tbaa !131
  %i.ve = icmp ult i64 %i.vc, %i.vd
  br i1 %i.ve, label %bb.ax, label %.loopexit157, !llvm.loop !587

bb.bf:                                            ; preds = %bb.ay
  %i.vf = landingpad { ptr, i32 }
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
  %i.vg = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc76 unwind label %.loopexit ; 3 uses

.noexc76:                                         ; preds = %.lr.ph173
  %i.vh = load i32, ptr %i.tn, align 8, !tbaa !201 ; 4 uses
  %i.vi = lshr i32 %i.vh, 6
  %i.vj = lshr i32 %i.vh, 3
  %i.vk = and i32 %i.vj, 7
  %i.vl = and i32 %i.vh, 7
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vg, i64 80
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !124
  %i.vo = add nsw i32 %i.vn, %i.vi
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vg, i64 84
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !124
  %i.vr = add nsw i32 %i.vq, %i.vk
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vg, i64 88
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !124
  %i.vu = add nsw i32 %i.vt, %i.vl
  %.sroa.2.0.insert.ext.i.i.i.i71 = zext i32 %i.vr to i64
  %.sroa.2.0.insert.shift.i.i.i.i72 = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i71, 32
  %.sroa.0.0.insert.ext.i9.i.i.i73 = zext i32 %i.vo to i64
  %.sroa.0.0.insert.insert.i10.i.i.i74 = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i72, %.sroa.0.0.insert.ext.i9.i.i.i73
  store i64 %.sroa.0.0.insert.insert.i10.i.i.i74, ptr %i.to, align 8
  store i32 %i.vu, ptr %.sroa.4.0..sroa_idx.i75, align 8, !tbaa !69
  %i.vv = load ptr, ptr %i.tp, align 8, !tbaa !238
  %i.vw = zext i32 %i.vh to i64
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.vw
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !47
  %i.vz = load ptr, ptr %i.tq, align 8, !tbaa !240
  store float %i.vy, ptr %i.vz, align 4, !tbaa !47
  invoke void @_ZN7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE4initERKNS1_5CoordE(ptr noundef nonnull align 8 dereferenceable(148) %5, ptr noundef nonnull align 4 dereferenceable(12) %i.to)
          to label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78 unwind label %.loopexit

_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78: ; preds = %.noexc76
  %i.wa = load ptr, ptr %i.tq, align 8, !tbaa !240 ; 19 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 4
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 12
  %i.wf = load <4 x float>, ptr %i.wc, align 4, !tbaa !47 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wa, i64 20
  %i.wh = load float, ptr %i.wd, align 4, !tbaa !47
  %i.wi = load float, ptr %i.we, align 4, !tbaa !47
  %i.wj = load float, ptr %i.wb, align 4, !tbaa !47
  %i.wk = fsub float %i.wh, %i.wi
  %i.wl = fpext float %i.wk to double
  %i.wm = fmul double %i.wl, 5.000000e-01         ; 5 uses
  %i.wn = fmul double %i.wm, %i.wm                ; 3 uses
  %i.wo = load <2 x float>, ptr %i.wg, align 4, !tbaa !47 ; 3 uses
  %i.wp = insertelement <2 x float> %i.wo, float %i.wj, i64 0
  %i.wq = shufflevector <4 x float> %i.wf, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> %i.wo, <2 x i32> <i32 0, i32 2>
  %i.ws = fsub <2 x float> %i.wp, %i.wr
  %i.wt = fpext <2 x float> %i.ws to <2 x double>
  %i.wu = fmul <2 x double> %i.wt, splat (double 5.000000e-01) ; 6 uses
  %i.wv = fmul <2 x double> %i.wu, %i.wu          ; 3 uses
  %i.ww = extractelement <2 x double> %i.wv, i64 0 ; 2 uses
  %i.wx = fadd double %i.ww, %i.wn
  %i.wy = extractelement <2 x double> %i.wv, i64 1 ; 3 uses
  %i.wz = fadd double %i.wx, %i.wy                ; 2 uses
  %i.xa = fcmp ugt double %i.wz, 1.000000e-15
  br i1 %i.xa, label %bb.bh, label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82

bb.bh:                                            ; preds = %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !47
  %i.xd = load float, ptr %i.wa, align 4, !tbaa !47 ; 2 uses
  %i.xe = insertelement <2 x float> poison, float %i.xd, i64 0
  %i.xf = shufflevector <2 x float> %i.xe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xg = shufflevector <4 x float> %i.wf, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.xh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xf, <2 x float> splat (float -2.000000e+00), <2 x float> %i.xg)
  %i.xi = fadd <2 x float> %i.wq, %i.xh
  %i.xj = fpext <2 x float> %i.xi to <2 x double> ; 8 uses
  %i.xk = call float @llvm.fmuladd.f32(float %i.xd, float -2.000000e+00, float %i.xc)
  %i.xl = extractelement <2 x float> %i.wo, i64 0
  %i.xm = fadd float %i.xl, %i.xk
  %i.xn = fpext float %i.xm to double             ; 4 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wa, i64 40
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wa, i64 28
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wa, i64 36
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wa, i64 56
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wa, i64 48
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wa, i64 44
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wa, i64 52
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wa, i64 72
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wa, i64 64
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wa, i64 60
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wa, i64 68
  %i.ya = extractelement <2 x double> %i.xj, i64 1
  %i.yb = extractelement <2 x double> %i.xj, i64 0
  %i.yc = insertelement <2 x double> poison, double %i.xn, i64 0
  %i.yd = shufflevector <2 x double> %i.yc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ye = fadd <2 x double> %i.yd, %i.xj          ; 2 uses
  %i.yf = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.xj)
  %i.yg = extractelement <2 x double> %i.wu, i64 0 ; 2 uses
  %i.yh = extractelement <2 x double> %i.wu, i64 1 ; 2 uses
  %i.yi = fmul double %i.yg, %i.yh
  %18 = fneg double %i.ya
  %i.yj = fmul double %i.yg, %i.wm
  %i.yk = fneg double %i.xn
  %sqrt.i104 = call double @llvm.sqrt.f64(double %i.wz) ; 3 uses
  %i.yl = load <2 x float>, ptr %i.x, align 4, !tbaa !47
  %i.ym = fpext <2 x float> %i.yl to <2 x double> ; 2 uses
  %i.yn = load float, ptr %i.xo, align 4, !tbaa !47 ; 2 uses
  %i.yo = load float, ptr %i.xp, align 4, !tbaa !47 ; 2 uses
  %i.yp = load float, ptr %i.xq, align 4, !tbaa !47 ; 2 uses
  %i.yq = load float, ptr %i.xr, align 4, !tbaa !47 ; 2 uses
  %i.yr = load float, ptr %i.xs, align 4, !tbaa !47
  %i.ys = load float, ptr %i.xt, align 4, !tbaa !47
  %i.yt = insertelement <2 x float> poison, float %i.yr, i64 0
  %i.yu = insertelement <2 x float> %i.yt, float %i.yn, i64 1
  %i.yv = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.yw = insertelement <2 x float> %i.yv, float %i.yo, i64 1
  %i.yx = fsub <2 x float> %i.yu, %i.yw
  %i.yy = load float, ptr %i.xu, align 4, !tbaa !47
  %i.yz = load float, ptr %i.xw, align 4, !tbaa !47
  %i.za = load float, ptr %i.xx, align 4, !tbaa !47
  %i.zb = insertelement <2 x float> poison, float %i.yn, i64 0
  %i.zc = insertelement <2 x float> %i.zb, float %i.yz, i64 1
  %i.zd = insertelement <2 x float> poison, float %i.yo, i64 0
  %i.ze = insertelement <2 x float> %i.zd, float %i.za, i64 1
  %i.zf = fsub <2 x float> %i.zc, %i.ze
  %i.zg = insertelement <2 x float> poison, float %i.yy, i64 0
  %i.zh = insertelement <2 x float> %i.zg, float %i.yp, i64 1
  %i.zi = fadd <2 x float> %i.yx, %i.zh
  %i.zj = load float, ptr %i.xv, align 4, !tbaa !47
  %i.zk = load float, ptr %i.xy, align 4, !tbaa !47
  %i.zl = insertelement <2 x float> poison, float %i.yp, i64 0
  %i.zm = insertelement <2 x float> %i.zl, float %i.zk, i64 1
  %i.zn = fadd <2 x float> %i.zf, %i.zm
  %i.zo = insertelement <2 x float> poison, float %i.zj, i64 0
  %i.zp = insertelement <2 x float> %i.zo, float %i.yq, i64 1
  %i.zq = fsub <2 x float> %i.zi, %i.zp
  %i.zr = load float, ptr %i.xz, align 4, !tbaa !47
  %i.zs = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.zt = insertelement <2 x float> %i.zs, float %i.zr, i64 1
  %i.zu = fsub <2 x float> %i.zn, %i.zt
  %i.zv = fpext <2 x float> %i.zq to <2 x double>
  %i.zw = fpext <2 x float> %i.zu to <2 x double>
  %i.zx = fmul <2 x double> %i.zv, splat (double 2.500000e-01) ; 4 uses
  %i.zy = fmul <2 x double> %i.zw, splat (double 2.500000e-01) ; 8 uses
  %i.zz = fmul double %i.wm, %i.yh                ; 2 uses
  %i.aaa = extractelement <2 x double> %i.zy, i64 1 ; 2 uses
  %i.aab = fmul double %i.zz, %i.aaa
  %i.aac = insertelement <2 x double> %i.zy, double %i.wn, i64 0
  %i.aad = fneg <2 x double> %i.zy
  %i.aae = shufflevector <2 x double> %i.ye, <2 x double> %i.aad, <2 x i32> <i32 0, i32 3>
  %i.aaf = fmul <2 x double> %i.aac, %i.aae
  %i.aag = shufflevector <2 x double> %i.wv, <2 x double> %i.xj, <2 x i32> <i32 0, i32 3>
  %i.aah = shufflevector <2 x double> %i.ye, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aai = insertelement <2 x double> %i.aah, double %i.xn, i64 1
  %i.aaj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aag, <2 x double> %i.aai, <2 x double> %i.aaf) ; 2 uses
  %i.aak = extractelement <2 x double> %i.aaj, i64 0
  %i.aal = call double @llvm.fmuladd.f64(double %i.wy, double %i.yf, double %i.aak)
  %i.aam = extractelement <2 x double> %i.zx, i64 0 ; 3 uses
  %i.aan = fneg double %i.aam
  %i.aao = fmul double %i.aam, %i.aan
  %i.aap = call double @llvm.fmuladd.f64(double %i.yb, double %i.xn, double %i.aao)
  %i.aaq = fmul double %i.wn, %i.aap
  %i.aar = extractelement <2 x double> %i.aaj, i64 1
  %i.aas = call double @llvm.fmuladd.f64(double %i.ww, double %i.aar, double %i.aaq)
  %i.aat = extractelement <2 x double> %i.zy, i64 0
  %19 = shufflevector <2 x double> %i.zy, <2 x double> %i.xj, <2 x i32> <i32 0, i32 2>
  %20 = fneg <2 x double> %19
  %21 = fmul <2 x double> %i.zy, %20
  %22 = shufflevector <2 x double> %i.xj, <2 x double> %i.zy, <2 x i32> <i32 0, i32 2>
  %i.aau = shufflevector <2 x double> %i.xj, <2 x double> %i.zx, <2 x i32> <i32 1, i32 2>
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %22, <2 x double> %i.aau, <2 x double> %21) ; 2 uses
  %i.aav = extractelement <2 x double> %23, i64 0
  %i.aaw = call double @llvm.fmuladd.f64(double %i.wy, double %i.aav, double %i.aas)
  %24 = fmul double %i.aam, %18
  %i.aax = call double @llvm.fmuladd.f64(double %i.aat, double %i.aaa, double %24)
  %i.aay = fmul double %i.yi, %i.aax
  %25 = extractelement <2 x double> %23, i64 1
  %i.aaz = call double @llvm.fmuladd.f64(double %i.zz, double %25, double %i.aay)
  %i.aba = shufflevector <2 x double> %i.wu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.abb = insertelement <2 x double> %i.aba, double %i.yk, i64 1
  %i.abc = fmul <2 x double> %i.abb, %i.zx
  %i.abd = shufflevector <2 x double> %i.zx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.abe = insertelement <2 x double> %i.abd, double %i.wm, i64 0
  %i.abf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abe, <2 x double> %i.zy, <2 x double> %i.abc)
  %i.abg = insertelement <2 x double> %i.wu, double %i.yj, i64 1
  %i.abh = insertelement <2 x double> poison, double %i.aab, i64 0
  %i.abi = insertelement <2 x double> %i.abh, double %i.aaz, i64 1
  %i.abj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abg, <2 x double> %i.abf, <2 x double> %i.abi)
  %i.abk = insertelement <2 x double> poison, double %i.aal, i64 0
  %i.abl = insertelement <2 x double> %i.abk, double %i.aaw, i64 1
  %i.abm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abj, <2 x double> <double -2.000000e+00, double 2.000000e+00>, <2 x double> %i.abl)
  %i.abn = fmul double %sqrt.i104, %sqrt.i104
  %i.abo = insertelement <2 x double> poison, double %sqrt.i104, i64 0
  %i.abp = insertelement <2 x double> %i.abo, double %i.abn, i64 1 ; 2 uses
  %i.abq = shufflevector <2 x double> %i.abp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.abr = fmul <2 x double> %i.abp, %i.abq
  %i.abs = fneg <2 x double> %i.ym
  %i.abt = shufflevector <2 x double> %i.ym, <2 x double> %i.abs, <2 x i32> <i32 0, i32 3>
  %i.abu = fmul <2 x double> %i.abm, %i.abt
  %i.abv = fdiv <2 x double> %i.abu, %i.abr       ; 2 uses
  %i.abw = extractelement <2 x double> %i.abv, i64 0 ; 4 uses
  %i.abx = extractelement <2 x double> %i.abv, i64 1
  %i.aby = call double @llvm.fmuladd.f64(double %i.abw, double %i.abw, double %i.abx)
  %i.abz = call double @sqrt(double noundef %i.aby) #18 ; 2 uses
  %i.aca = fsub double %i.abw, %i.abz
  %i.acb = fptrunc double %i.aca to float
  %.sroa.0.0.vec.insert.i80 = insertelement <2 x float> poison, float %i.acb, i64 0
  %i.acc = fadd double %i.abz, %i.abw
  %i.acd = fptrunc double %i.acc to float
  %.sroa.0.4.vec.insert.i81 = insertelement <2 x float> %.sroa.0.0.vec.insert.i80, float %i.acd, i64 1
  br label %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82

_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82: ; preds = %bb.bh, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78
  %.sroa.0.0.i79 = phi <2 x float> [ %.sroa.0.4.vec.insert.i81, %bb.bh ], [ zeroinitializer, %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EE6moveToINSA_9ValueIterINS0_4util14OnMaskIteratorINSK_8NodeMaskILj3EEEEEKSA_KfNSA_7ValueOnEEEEEvRKT_.exit78 ]
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i79, i64 0 ; 2 uses
  %i.ace = fcmp olt float %.sroa.0.0.vec.extract, 0.000000e+00
  %.pre181 = load i32, ptr %i.tn, align 8, !tbaa !201 ; 2 uses
  br i1 %i.ace, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82
  %i.acf = load ptr, ptr %i.tp, align 8, !tbaa !238
  %i.acg = zext i32 %.pre181 to i64               ; 2 uses
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %i.acg
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !47
  %i.acj = call float @llvm.fmuladd.f32(float %i.u, float %.sroa.0.0.vec.extract, float %i.aci)
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.acg
  store float %i.acj, ptr %i.ack, align 4, !tbaa !47
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZNK7openvdb5v13_04math16CurvatureStencilINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EE19principalCurvaturesEv.exit82
  %i.acl = load ptr, ptr %i.tr, align 8, !tbaa !244 ; 8 uses
  %i.acm = add i32 %.pre181, 1                    ; 4 uses
  %i.acn = lshr i32 %i.acm, 6                     ; 3 uses
  %i.aco = icmp ugt i32 %i.acm, 511
  br i1 %i.aco, label %._crit_edge174, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.acp = and i32 %i.acm, 63
  %i.acq = zext nneg i32 %i.acn to i64            ; 8 uses
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %i.acq
  %i.acs = load i64, ptr %i.acr, align 8, !tbaa !209 ; 2 uses
  %i.act = zext nneg i32 %i.acp to i64            ; 2 uses
  %i.acu = shl nuw i64 1, %i.act
  %i.acv = and i64 %i.acs, %i.acu
  %.not.i.i.i.i83 = icmp eq i64 %i.acv, 0
  br i1 %.not.i.i.i.i83, label %bb.bl, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95

bb.bl:                                            ; preds = %bb.bk
  %i.acw = shl nsw i64 -1, %i.act
  %i.acx = and i64 %i.acs, %i.acw                 ; 2 uses
  %.not2226.i.i.i.i85 = icmp eq i64 %i.acx, 0
  br i1 %.not2226.i.i.i.i85, label %.lr.ph.i.i.i.i89.preheader, label %.critedge.i.i.i.i86

.lr.ph.i.i.i.i89.preheader:                       ; preds = %bb.bl
  %exitcond.not.i.i.i.i91231 = icmp eq i32 %i.acn, 7
  br i1 %exitcond.not.i.i.i.i91231, label %._crit_edge174, label %.lr.ph233

.lr.ph.i.i.i.i89:                                 ; preds = %.lr.ph233
  %exitcond.not.i.i.i.i91 = icmp eq i64 %indvars.iv.next.i.i.i.i92, 7
  br i1 %exitcond.not.i.i.i.i91, label %._crit_edge174, label %.lr.ph233.1

.lr.ph233.1:                                      ; preds = %.lr.ph.i.i.i.i89
  %indvars.iv.next.i.i.i.i92.1 = add nuw nsw i64 %i.acq, 2 ; 3 uses
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv.next.i.i.i.i92.1
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.1 = icmp eq i64 %i.acz, 0
  br i1 %.not22.i.i.i.i93.1, label %.lr.ph.i.i.i.i89.1, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.1:                               ; preds = %.lr.ph233.1
  %exitcond.not.i.i.i.i91.1 = icmp eq i64 %indvars.iv.next.i.i.i.i92.1, 7
  br i1 %exitcond.not.i.i.i.i91.1, label %._crit_edge174, label %.lr.ph233.2

.lr.ph233.2:                                      ; preds = %.lr.ph.i.i.i.i89.1
  %indvars.iv.next.i.i.i.i92.2 = add nuw nsw i64 %i.acq, 3 ; 3 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv.next.i.i.i.i92.2
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.2 = icmp eq i64 %i.adb, 0
  br i1 %.not22.i.i.i.i93.2, label %.lr.ph.i.i.i.i89.2, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.2:                               ; preds = %.lr.ph233.2
  %exitcond.not.i.i.i.i91.2 = icmp eq i64 %indvars.iv.next.i.i.i.i92.2, 7
  br i1 %exitcond.not.i.i.i.i91.2, label %._crit_edge174, label %.lr.ph233.3

.lr.ph233.3:                                      ; preds = %.lr.ph.i.i.i.i89.2
  %indvars.iv.next.i.i.i.i92.3 = add nuw nsw i64 %i.acq, 4 ; 3 uses
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv.next.i.i.i.i92.3
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.3 = icmp eq i64 %i.add, 0
  br i1 %.not22.i.i.i.i93.3, label %.lr.ph.i.i.i.i89.3, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.3:                               ; preds = %.lr.ph233.3
  %exitcond.not.i.i.i.i91.3 = icmp eq i64 %indvars.iv.next.i.i.i.i92.3, 7
  br i1 %exitcond.not.i.i.i.i91.3, label %._crit_edge174, label %.lr.ph233.4

.lr.ph233.4:                                      ; preds = %.lr.ph.i.i.i.i89.3
  %indvars.iv.next.i.i.i.i92.4 = add nuw nsw i64 %i.acq, 5 ; 3 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv.next.i.i.i.i92.4
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.4 = icmp eq i64 %i.adf, 0
  br i1 %.not22.i.i.i.i93.4, label %.lr.ph.i.i.i.i89.4, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.4:                               ; preds = %.lr.ph233.4
  %exitcond.not.i.i.i.i91.4 = icmp eq i64 %indvars.iv.next.i.i.i.i92.4, 7
  br i1 %exitcond.not.i.i.i.i91.4, label %._crit_edge174, label %.lr.ph233.5

.lr.ph233.5:                                      ; preds = %.lr.ph.i.i.i.i89.4
  %indvars.iv.next.i.i.i.i92.5 = add nuw nsw i64 %i.acq, 6 ; 3 uses
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv.next.i.i.i.i92.5
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.5 = icmp eq i64 %i.adh, 0
  br i1 %.not22.i.i.i.i93.5, label %.lr.ph.i.i.i.i89.5, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph.i.i.i.i89.5:                               ; preds = %.lr.ph233.5
  %exitcond.not.i.i.i.i91.5 = icmp eq i64 %indvars.iv.next.i.i.i.i92.5, 7
  br i1 %exitcond.not.i.i.i.i91.5, label %._crit_edge174, label %.lr.ph233.6

.lr.ph233.6:                                      ; preds = %.lr.ph.i.i.i.i89.5
  %indvars.iv.next.i.i.i.i92.6 = add nuw nsw i64 %i.acq, 7 ; 2 uses
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv.next.i.i.i.i92.6
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93.6 = icmp eq i64 %i.adj, 0
  br i1 %.not22.i.i.i.i93.6, label %._crit_edge174, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.lr.ph233:                                        ; preds = %.lr.ph.i.i.i.i89.preheader
  %indvars.iv.next.i.i.i.i92 = add nuw nsw i64 %i.acq, 1 ; 3 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %indvars.iv.next.i.i.i.i92
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !209 ; 2 uses
  %.not22.i.i.i.i93 = icmp eq i64 %i.adl, 0
  br i1 %.not22.i.i.i.i93, label %.lr.ph.i.i.i.i89, label %.critedge.loopexit.i.i.i.i94, !llvm.loop !7

.critedge.loopexit.i.i.i.i94:                     ; preds = %.lr.ph233.6, %.lr.ph233.5, %.lr.ph233.4, %.lr.ph233.3, %.lr.ph233.2, %.lr.ph233.1, %.lr.ph233
  %indvars.iv.next.i.i.i.i92.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i92, %.lr.ph233 ], [ %indvars.iv.next.i.i.i.i92.1, %.lr.ph233.1 ], [ %indvars.iv.next.i.i.i.i92.2, %.lr.ph233.2 ], [ %indvars.iv.next.i.i.i.i92.3, %.lr.ph233.3 ], [ %indvars.iv.next.i.i.i.i92.4, %.lr.ph233.4 ], [ %indvars.iv.next.i.i.i.i92.5, %.lr.ph233.5 ], [ %indvars.iv.next.i.i.i.i92.6, %.lr.ph233.6 ]
  %.lcssa = phi i64 [ %i.adl, %.lr.ph233 ], [ %i.acz, %.lr.ph233.1 ], [ %i.adb, %.lr.ph233.2 ], [ %i.add, %.lr.ph233.3 ], [ %i.adf, %.lr.ph233.4 ], [ %i.adh, %.lr.ph233.5 ], [ %i.adj, %.lr.ph233.6 ]
  %i.adm = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i92.lcssa to i32
  br label %.critedge.i.i.i.i86

.critedge.i.i.i.i86:                              ; preds = %.critedge.loopexit.i.i.i.i94, %bb.bl
  %.016.lcssa.i.i.i.i87 = phi i32 [ %i.acn, %bb.bl ], [ %i.adm, %.critedge.loopexit.i.i.i.i94 ]
  %.0.lcssa.i.i.i.i88 = phi i64 [ %i.acx, %bb.bl ], [ %.lcssa, %.critedge.loopexit.i.i.i.i94 ]
  %i.adn = shl nuw nsw i32 %.016.lcssa.i.i.i.i87, 6
  %i.ado = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i88, i1 true)
  %i.adp = trunc nuw nsw i64 %i.ado to i32
  %i.adq = or disjoint i32 %i.adn, %i.adp
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIfLj3EEEEppEv.exit95: ; preds = %bb.bk, %.critedge.i.i.i.i86
  %.118.i.i.i.i84 = phi i32 [ %i.adq, %.critedge.i.i.i.i86 ], [ %i.acm, %bb.bk ] ; 2 uses
  store i32 %.118.i.i.i.i84, ptr %i.tn, align 8, !tbaa !201
  %.not156 = icmp eq i32 %.118.i.i.i.i84, 512
  br i1 %.not156, label %._crit_edge174, label %.lr.ph173

.loopexit157:                                     ; preds = %._crit_edge174, %bb.aw, %_ZN7openvdb5v13_05tools9AlphaMaskINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS1_10BoxSamplerEfED2Ev.exit
  %i.adr = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !240 ; 3 uses
  %.not.i.i.i.i96 = icmp eq ptr %i.ads, null
  br i1 %.not.i.i.i.i96, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.bm

bb.bm:                                            ; preds = %.loopexit157
  %i.adt = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !245
  %i.adv = ptrtoint ptr %i.adu to i64
  %i.adw = ptrtoint ptr %i.ads to i64
  %i.adx = sub i64 %i.adv, %i.adw
  call void @_ZdlPvm(ptr noundef nonnull %i.ads, i64 noundef %i.adx) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.bm, %.loopexit157
  %i.ady = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7openvdb5v13_04tree17ValueAccessorBaseIKNS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEE, i64 16), ptr %i.ady, align 8, !tbaa !45
  %i.adz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !189 ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.aea, null
  br i1 %.not.i.i97, label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.ady, ptr %i.a, align 8, !tbaa !191
  %i.aec = invoke noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEE14internal_eraseISI_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.aeb, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i98 unwind label %bb.bo, !inline_history !192 ; 0 uses

_ZNK7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEE15releaseAccessorERNS1_17ValueAccessorBaseIKSA_Lb1EEE.exit.i.i98: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN7openvdb5v13_04math11BaseStencilINS1_16CurvatureStencilINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELb1EEESF_Lb1EED2Ev.exit

bb.bo:                                            ; preds = %bb.bn
  %i.aed = landingpad { ptr, i32 }
          catch ptr null
  %i.aee = extractvalue { ptr, i32 } %i.aed, 0
  call void @__clang_call_terminate(ptr %i.aee) #27, !inline_history !192
end_hunk_1
