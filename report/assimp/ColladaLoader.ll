inline.NumInlined: 3826
inline.NumDeleted: 1929
begin_hunk_0_@_ZN6Assimp13ColladaLoader15CreateAnimationEP7aiSceneRKNS_13ColladaParserEPKNS_7Collada9AnimationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj(ptr noundef nonnull align 8 dereferenceable(24) %0, float noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::MorphTimeValues", align 8 ; 9 uses
  %5 = alloca %"struct.Assimp::MorphTimeValues", align 8 ; 9 uses
  %6 = alloca %"struct.Assimp::MorphTimeValues", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  %i.f = fcmp olt float %1, %i.e
  br i1 %i.f, label %_ZNKSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %bb.g

_ZNKSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store float %1, ptr %4, align 8
  %i.h = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %_ZNSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i unwind label %.thread ; 4 uses

_ZNSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %_ZNKSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %2, ptr %i.h, align 4
  %.sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
end_hunk_1
begin_hunk_2_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  br i1 %.not.i.i.i.i50, label %_ZN6Assimp15MorphTimeValuesD2Ev.exit51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load ptr, ptr %8, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.pre135 to i64
  %i.v = sub i64 %i.t, %i.u
end_hunk_2
begin_hunk_3_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store float %1, ptr %5, align 8
  %i.ae = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %_ZNSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58 unwind label %.thread153 ; 4 uses

_ZNSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58: ; preds = %_ZNKSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE12_M_check_lenEmPKc.exit.i.i53
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %2, ptr %i.ae, align 4
  %.sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
end_hunk_3
begin_hunk_4_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8
  store ptr %i.ag, ptr %i.af, align 8
  store ptr %i.ag, ptr %9, align 8
  %i.ah = invoke ptr @_ZNSt6vectorIN6Assimp15MorphTimeValuesESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.j       ; 0 uses

end_hunk_4
begin_hunk_5_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  br i1 %.not.i.i.i.i62, label %_ZN6Assimp15MorphTimeValuesD2Ev.exit63, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %9, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
end_hunk_5
begin_hunk_6_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  br i1 %.not.i.i.i.i64, label %_ZN6Assimp15MorphTimeValuesD2Ev.exit65, label %bb.k

bb.k:                                             ; preds = %bb.j
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ap = load ptr, ptr %10, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.pre134 to i64
  %i.as = sub i64 %i.aq, %i.ar
end_hunk_6
begin_hunk_7_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store float %1, ptr %6, align 8
  %i.cd = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %_ZNSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i80 unwind label %.thread157 ; 4 uses

_ZNSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i80: ; preds = %_ZNKSt6vectorIN6Assimp15MorphTimeValues3keyESaIS2_EE12_M_check_lenEmPKc.exit.i.i75
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %2, ptr %i.cd, align 4
  %.sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
end_hunk_7
begin_hunk_8_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  store ptr %i.cd, ptr %i.cc, align 8
  store ptr %i.cf, ptr %i.ce, align 8
  store ptr %i.cf, ptr %11, align 8
  %i.cg = invoke ptr @_ZNSt6vectorIN6Assimp15MorphTimeValuesESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.au, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.t unwind label %bb.v       ; 0 uses

end_hunk_8
begin_hunk_9_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  br i1 %.not.i.i.i.i84, label %_ZN6Assimp15MorphTimeValuesD2Ev.exit85, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr %11, align 8
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
end_hunk_9
begin_hunk_10_@_ZN6Assimp20insertMorphTimeValueERSt6vectorINS_15MorphTimeValuesESaIS1_EEffj:bb.a
  br i1 %.not.i.i.i.i86, label %_ZN6Assimp15MorphTimeValuesD2Ev.exit87, label %bb.w

bb.w:                                             ; preds = %bb.v
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.co = load ptr, ptr %12, align 8
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %.pre to i64
  %i.cr = sub i64 %i.cp, %i.cq
end_hunk_10
