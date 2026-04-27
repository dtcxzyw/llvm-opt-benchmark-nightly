inline.NumInlined: 6739
inline.NumDeleted: 2920
begin_hunk_0_@_ZN8facebook5velox6fuzzer21QDigestInputGenerator19generateRandomValueIlEESt6vectorIT_SaIS5_EEm:bb.a
  br label %._crit_edge

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %2, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 5 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !1170
  store ptr %i.d, ptr %4, align 8, !tbaa !1193
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %2 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6fuzzer21QDigestInputGenerator19generateRandomValueIdEESt6vectorIT_SaIS5_EEm:bb.a
  br i1 %.not80, label %._crit_edge, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %2, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !199
  store ptr %i.d, ptr %3, align 8, !tbaa !198
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %2 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6fuzzer21QDigestInputGenerator19generateRandomValueIfEESt6vectorIT_SaIS5_EEm:bb.a
  br i1 %.not80, label %._crit_edge, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %2, 2
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #45 ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !1190
  store ptr %i.d, ptr %3, align 8, !tbaa !1224
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %2 ; 2 uses
end_hunk_2
