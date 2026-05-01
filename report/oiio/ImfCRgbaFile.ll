inline.NumInlined: 409
inline.NumDeleted: 141
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_56Header18screenWindowCenterEv
; Function Attrs: mustprogress uwtable
define void @ImfHeaderScreenWindowCenter(ptr noundef nonnull %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18screenWindowCenterEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  %3 = load <2 x float>, ptr %i.a, align 4, !tbaa !10
  %4 = fptosi <2 x float> %3 to <2 x i32>
  %5 = sitofp <2 x i32> %4 to <2 x float>         ; 2 uses
  %6 = extractelement <2 x float> %5, i64 0
  store float %6, ptr %1, align 4, !tbaa !10
  %7 = extractelement <2 x float> %5, i64 1
  store float %7, ptr %2, align 4, !tbaa !10
  ret void
}

end_hunk_0
