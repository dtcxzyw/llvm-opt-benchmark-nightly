inline.NumInlined: 2079
inline.NumDeleted: 821
begin_hunk_0_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS4_14DistanceSorterEEEEvT_T0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5 = load <2 x ptr>, ptr %i.e, align 8
  store <2 x ptr> %5, ptr %i.d, align 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load <2 x ptr>, ptr %7, align 8
  store <4 x ptr> zeroinitializer, ptr %i.b, align 8
  store <2 x ptr> %i.h, ptr %6, align 8
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 80
  %9 = load <2 x ptr>, ptr %i.i, align 8
  store <2 x ptr> %9, ptr %8, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS4_14DistanceSorterEEEEvT_T0_:bb.a
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.j, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
end_hunk_1
begin_hunk_2_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS4_14DistanceSorterEEEEvT_T0_:bb.a
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.g, %bb.f
  %i.ax = load ptr, ptr %6, align 8               ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.h

end_hunk_2
begin_hunk_3_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS4_14DistanceSorterEEEEvT_T0_:bb.a
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.bn = load ptr, ptr %i.d, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.n

end_hunk_3
