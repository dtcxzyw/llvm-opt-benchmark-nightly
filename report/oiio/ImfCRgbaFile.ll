inline.NumInlined: 409
inline.NumDeleted: 141
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_56Header18screenWindowCenterEv
; Function Attrs: mustprogress uwtable
define void @ImfHeaderScreenWindowCenter(ptr noundef nonnull %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_56Header18screenWindowCenterEv(ptr noundef nonnull align 8 dereferenceable(49) %0) ; 2 uses
  %3 = load float, ptr %i.a, align 4, !tbaa !29
  %4 = fptosi float %3 to i32
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %6 = load float, ptr %5, align 4, !tbaa !31
  %7 = fptosi float %6 to i32
  %8 = sitofp i32 %4 to float
  store float %8, ptr %1, align 4, !tbaa !10
  %9 = sitofp i32 %7 to float
  store float %9, ptr %2, align 4, !tbaa !10
  ret void
}

end_hunk_0
