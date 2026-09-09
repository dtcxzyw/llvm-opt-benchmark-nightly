Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 280
loop-unroll.NumUnrolled: 953
begin_hunk_0_@_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileFitsISB_EEbRKNS0_4math4Vec3IdEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.q = load <2 x double>, ptr %3, align 16, !tbaa !1192, !alias.scope !9436
  %i.r = fadd <2 x double> %i.q, splat (double -2.047500e+03)
  store <2 x double> %i.r, ptr %3, align 16, !tbaa !1192, !alias.scope !9436
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = load double, ptr %i.s, align 16, !tbaa !1192, !alias.scope !9436
  %i.u = fadd double %i.t, 2.047500e+03
  store double %i.u, ptr %i.s, align 16, !tbaa !1192, !alias.scope !9436
  %i.v = call noundef double @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.w = load double, ptr %i.b, align 8, !tbaa !3122
  %i.x = fneg double %i.w
  %i.y = fcmp olt double %i.v, %i.x
  br i1 %i.y, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.z = load <2 x double>, ptr %4, align 16, !tbaa !1192, !alias.scope !9437
  %i.aa = fadd <2 x double> %i.z, <double -2.047500e+03, double 2.047500e+03>
  store <2 x double> %i.aa, ptr %4, align 16, !tbaa !1192, !alias.scope !9437
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 16, !tbaa !1192, !alias.scope !9437
  %i.ad = fadd double %i.ac, -2.047500e+03
  store double %i.ad, ptr %i.ab, align 16, !tbaa !1192, !alias.scope !9437
  %i.ae = call noundef double @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.af = load double, ptr %i.b, align 8, !tbaa !3122
  %i.ag = fneg double %i.af
  %i.ah = fcmp olt double %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load <2 x double>, ptr %5, align 16, !tbaa !1192, !alias.scope !9438
  %i.aj = fadd <2 x double> %i.ai, <double -2.047500e+03, double 2.047500e+03>
  store <2 x double> %i.aj, ptr %5, align 16, !tbaa !1192, !alias.scope !9438
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = load double, ptr %i.ak, align 16, !tbaa !1192, !alias.scope !9438
  %i.am = fadd double %i.al, 2.047500e+03
  store double %i.am, ptr %i.ak, align 16, !tbaa !1192, !alias.scope !9438
  %i.an = call noundef double @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ao = load double, ptr %i.b, align 8, !tbaa !3122
  %i.ap = fneg double %i.ao
  %i.aq = fcmp olt double %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ar = load <2 x double>, ptr %6, align 16, !tbaa !1192, !alias.scope !9439
  %i.as = fadd <2 x double> %i.ar, <double 2.047500e+03, double -2.047500e+03>
  store <2 x double> %i.as, ptr %6, align 16, !tbaa !1192, !alias.scope !9439
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = load double, ptr %i.at, align 16, !tbaa !1192, !alias.scope !9439
  %i.av = fadd double %i.au, -2.047500e+03
  store double %i.av, ptr %i.at, align 16, !tbaa !1192, !alias.scope !9439
  %i.aw = call noundef double @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.ax = load double, ptr %i.b, align 8, !tbaa !3122
  %i.ay = fneg double %i.ax
  %i.az = fcmp olt double %i.aw, %i.ay
  br i1 %i.az, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ba = load <2 x double>, ptr %7, align 16, !tbaa !1192, !alias.scope !9440
  %i.bb = fadd <2 x double> %i.ba, <double 2.047500e+03, double -2.047500e+03>
  store <2 x double> %i.bb, ptr %7, align 16, !tbaa !1192, !alias.scope !9440
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 16, !tbaa !1192, !alias.scope !9440
  %i.be = fadd double %i.bd, 2.047500e+03
  store double %i.be, ptr %i.bc, align 16, !tbaa !1192, !alias.scope !9440
  %i.bf = call noundef double @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(24) %7)
  %i.bg = load double, ptr %i.b, align 8, !tbaa !3122
  %i.bh = fneg double %i.bg
  %i.bi = fcmp olt double %i.bf, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bj = load <2 x double>, ptr %8, align 16, !tbaa !1192, !alias.scope !9441
  %i.bk = fadd <2 x double> %i.bj, splat (double 2.047500e+03)
  store <2 x double> %i.bk, ptr %8, align 16, !tbaa !1192, !alias.scope !9441
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 16, !tbaa !1192, !alias.scope !9441
  %i.bn = fadd double %i.bm, -2.047500e+03
  store double %i.bn, ptr %i.bl, align 16, !tbaa !1192, !alias.scope !9441
  %i.bo = call noundef double @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(24) %8)
  %i.bp = load double, ptr %i.b, align 8, !tbaa !3122
  %i.bq = fneg double %i.bp
  %i.br = fcmp olt double %i.bo, %i.bq
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bs = load <2 x double>, ptr %9, align 16, !tbaa !1192, !alias.scope !9442
  %i.bt = fadd <2 x double> %i.bs, splat (double 2.047500e+03)
  store <2 x double> %i.bt, ptr %9, align 16, !tbaa !1192, !alias.scope !9442
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 16, !tbaa !1192, !alias.scope !9442
  %i.bw = fadd double %i.bv, 2.047500e+03
  store double %i.bw, ptr %i.bu, align 16, !tbaa !1192, !alias.scope !9442
  %i.bx = call noundef double @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
  %i.by = load double, ptr %i.b, align 8, !tbaa !3122
  %i.bz = fneg double %i.by
  %i.ca = fcmp olt double %i.bx, %i.bz
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.cb = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ %i.ca, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  %.0 = phi i1 [ %i.cb, %bb.k ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !741    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !741
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !741
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !741
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !741
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !741
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1599
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !741
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !741
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !741
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !741
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !741
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1193
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1580
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(72) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKdbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef double @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IdEE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %2 = load <3 x double>, ptr %1, align 8         ; 5 uses
  %.sroa.078.0.copyload = load double, ptr %1, align 8
  %i.c = load <4 x double>, ptr %i.a, align 8, !tbaa !1192, !noalias !789 ; 3 uses
  %i.d = shufflevector <3 x double> %2, <3 x double> poison, <2 x i32> zeroinitializer
  %i.e = shufflevector <4 x double> %i.c, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.f = fsub <2 x double> %i.d, %i.e             ; 4 uses
  %i.g = load <2 x double>, ptr %i.b, align 8, !tbaa !1192, !noalias !9447
  %3 = shufflevector <3 x double> %2, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.i = shufflevector <4 x double> %i.h, <4 x double> %i.c, <2 x i32> <i32 0, i32 5>
  %i.j = fsub <2 x double> %3, %i.i               ; 4 uses
  %4 = shufflevector <3 x double> %2, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.k = shufflevector <4 x double> %i.h, <4 x double> %i.c, <2 x i32> <i32 1, i32 6>
  %i.l = fsub <2 x double> %4, %i.k               ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load double, ptr %i.m, align 8, !tbaa !1192, !noalias !9448
  %i.o = fsub double %.sroa.078.0.copyload, %i.n  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load double, ptr %i.p, align 8, !tbaa !1192, !noalias !9448
  %5 = extractelement <3 x double> %2, i64 1
  %i.r = fsub double %5, %i.q                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.t = load double, ptr %i.s, align 8, !tbaa !1192, !noalias !9448
  %6 = extractelement <3 x double> %2, i64 2
  %i.u = fsub double %6, %i.t                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.x = load <4 x double>, ptr %i.v, align 8, !tbaa !1192 ; 3 uses
  %i.y = load <2 x double>, ptr %i.w, align 8, !tbaa !1192
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aa = shufflevector <4 x double> %i.z, <4 x double> %i.x, <2 x i32> <i32 0, i32 5>
  %i.ab = fmul <2 x double> %i.j, %i.aa
  %i.ac = shufflevector <4 x double> %i.x, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.f, <2 x double> %i.ab)
  %i.ae = shufflevector <4 x double> %i.z, <4 x double> %i.x, <2 x i32> <i32 1, i32 6>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.l, <2 x double> %i.ad) ; 3 uses
  %i.ag = extractelement <2 x double> %i.af, i64 1
  %i.ah = fcmp ogt double %i.ag, 0.000000e+00
  %i.ai = zext i1 %i.ah to i32
  %i.aj = fcmp olt <2 x double> %i.af, zeroinitializer ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 1
  %.neg.i = sext i1 %i.ak to i32
  %i.al = extractelement <2 x double> %i.af, i64 0
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  %i.an = zext i1 %i.am to i32
  %i.ao = extractelement <2 x i1> %i.aj, i64 0
  %.neg.i6 = sext i1 %i.ao to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !1192
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.as = load double, ptr %i.ar, align 8, !tbaa !1192
  %i.at = fmul double %i.r, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.o, double %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.aw = load double, ptr %i.av, align 8, !tbaa !1192
  %i.ax = tail call noundef double @llvm.fmuladd.f64(double %i.aw, double %i.u, double %i.au) ; 2 uses
  %i.ay = fcmp ogt double %i.ax, 0.000000e+00
  %i.az = zext i1 %i.ay to i32
  %i.ba = fcmp olt double %i.ax, 0.000000e+00
  %.neg.i7 = sext i1 %i.ba to i32
  %i.bb = add nsw i32 %.neg.i, %i.ai
  %i.bc = add nsw i32 %i.bb, %i.an
  %i.bd = add nsw i32 %i.bc, %.neg.i6
  %i.be = add nsw i32 %i.bd, %i.az
  %i.bf = add nsw i32 %i.be, %.neg.i7
  %i.bg = icmp slt i32 %i.bf, 2
  br i1 %i.bg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bk = load <4 x double>, ptr %i.bi, align 8, !tbaa !1192 ; 3 uses
  %i.bl = load <2 x double>, ptr %i.bj, align 8, !tbaa !1192
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bn = shufflevector <4 x double> %i.bm, <4 x double> %i.bk, <2 x i32> <i32 0, i32 5>
  %i.bo = fmul <2 x double> %i.j, %i.bn
  %i.bp = shufflevector <4 x double> %i.bk, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.f, <2 x double> %i.bo)
  %i.br = shufflevector <4 x double> %i.bm, <4 x double> %i.bk, <2 x i32> <i32 1, i32 6>
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.l, <2 x double> %i.bq) ; 3 uses
  %i.bt = fcmp ogt <2 x double> %i.bs, zeroinitializer
  %i.bu = fcmp olt <2 x double> %i.bs, splat (double 1.000000e+00)
  %i.bv = select <2 x i1> %i.bu, <2 x double> %i.bs, <2 x double> splat (double 1.000000e+00)
  %i.bw = select <2 x i1> %i.bt, <2 x double> %i.bv, <2 x double> zeroinitializer ; 3 uses
  %i.bx = load <4 x double>, ptr %i.bh, align 8   ; 3 uses
  %i.by = load <2 x double>, ptr %.sroa.625.0..sroa_idx, align 8
  %i.bz = shufflevector <4 x double> %i.bx, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.ca = fmul <2 x double> %i.bz, %i.bw
  %i.cb = shufflevector <2 x double> %i.by, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x double> %i.cb, <4 x double> %i.bx, <2 x i32> <i32 0, i32 5>
  %i.cd = fmul <2 x double> %i.cc, %i.bw
  %i.ce = shufflevector <4 x double> %i.cb, <4 x double> %i.bx, <2 x i32> <i32 1, i32 6>
  %i.cf = fmul <2 x double> %i.ce, %i.bw
  %i.cg = fsub <2 x double> %i.ca, %i.f           ; 2 uses
  %i.ch = fsub <2 x double> %i.cd, %i.j           ; 2 uses
  %i.ci = fsub <2 x double> %i.cf, %i.l           ; 2 uses
  %i.cj = fmul <2 x double> %i.ch, %i.ch
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.cg, <2 x double> %i.cj)
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.ci, <2 x double> %i.ck) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.co = load double, ptr %i.cn, align 8, !tbaa !1192
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !1192
  %i.cr = fmul double %i.r, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.co, double %i.o, double %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !1192
  %i.cv = tail call noundef double @llvm.fmuladd.f64(double %i.cu, double %i.u, double %i.cs) ; 3 uses
  %i.cw = fcmp ogt double %i.cv, 0.000000e+00
  %i.cx = fcmp olt double %i.cv, 1.000000e+00
  %i.cy = select i1 %i.cx, double %i.cv, double 1.000000e+00
  %i.cz = select i1 %i.cw, double %i.cy, double 0.000000e+00 ; 3 uses
  %.sroa.011.0.copyload = load double, ptr %i.cm, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.sroa.613.0.copyload = load double, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8
  %i.da = fmul double %.sroa.011.0.copyload, %i.cz
  %i.db = fmul double %.sroa.613.0.copyload, %i.cz
  %i.dc = fmul double %.sroa.8.0.copyload, %i.cz
  %i.dd = fsub double %i.da, %i.o                 ; 2 uses
  %i.de = fsub double %i.db, %i.r                 ; 2 uses
  %i.df = fsub double %i.dc, %i.u                 ; 2 uses
  %i.dg = fmul double %i.de, %i.de
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %i.dg)
  %i.di = tail call noundef double @llvm.fmuladd.f64(double %i.df, double %i.df, double %i.dh) ; 2 uses
  %i.dj = extractelement <2 x double> %i.cl, i64 0 ; 2 uses
  %i.dk = extractelement <2 x double> %i.cl, i64 1 ; 2 uses
  %i.dl = fcmp olt double %i.dj, %i.dk
  %i.dm = select i1 %i.dl, double %i.dj, double %i.dk ; 2 uses
  %i.dn = fcmp olt double %i.di, %i.dm
  %.sroa.speculated = select i1 %i.dn, double %i.di, double %i.dm
  %sqrt = tail call double @llvm.sqrt.f64(double %.sroa.speculated)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.dp = load double, ptr %i.do, align 8, !tbaa !1192
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !1192
  %i.ds = extractelement <2 x double> %i.j, i64 1
  %i.dt = fmul double %i.ds, %i.dr
  %i.du = extractelement <2 x double> %i.f, i64 1
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.du, double %i.dt)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !1192
  %i.dy = extractelement <2 x double> %i.l, i64 1
  %i.dz = tail call noundef double @llvm.fmuladd.f64(double %i.dx, double %i.dy, double %i.dv)
  %i.ea = tail call noundef double @llvm.fabs.f64(double %i.dz)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.eb = phi double [ %sqrt, %bb.b ], [ %i.ea, %bb.c ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !3154
  %i.ee = fsub double %i.eb, %i.ed
  ret double %i.ee
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.b, label %_ZN7openvdb5v13_04tree8LeafNodeIdLj3EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4, !tbaa !741    ; 2 uses
  %i.c = shl i32 %i.b, 5
  %i.d = and i32 %i.c, 3840
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !741  ; 2 uses
  %i.g = shl i32 %i.f, 1
  %i.h = and i32 %i.g, 240
  %i.i = or disjoint i32 %i.h, %i.d               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !741  ; 2 uses
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 15
  %i.n = or disjoint i32 %i.i, %i.m               ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.p = lshr i32 %i.i, 6
  %i.q = zext nneg i32 %i.p to i64                ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1112 ; 2 uses
  %i.t = and i32 %i.n, 63
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw i64 1, %i.u                      ; 8 uses
  %i.w = and i64 %i.v, %i.s
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i32 %1, 0
  br i1 %i.x, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30 ; 25 uses
  %i.z = zext nneg i32 %i.n to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.q ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1112
  %i.ae = and i64 %i.ad, %i.v
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #30
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !768
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 5 uses
  store i8 0, ptr %i.ah, align 4, !tbaa !2033
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store atomic i32 0, ptr %i.ai seq_cst, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.y) ; 0 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !768 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %.loopexit, label %vector.ph

vector.ph:                                        ; preds = %.noexc
  %.pre.i.i.i = load double, ptr %i.aa, align 8, !tbaa !1192
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
end_hunk_0
