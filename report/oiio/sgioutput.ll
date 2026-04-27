inline.NumInlined: 2849
inline.NumDeleted: 779
begin_hunk_0_@_ZN11OpenImageIO4v3_19SgiOutput21write_buffered_pixelsEv:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !3
  br label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i80

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i80: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc73
  store ptr %i.w, ptr %1, align 8, !tbaa !96
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.r ; 4 uses
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !106
end_hunk_0
