inline.NumInlined: 6229
inline.NumDeleted: 1603
begin_hunk_0_@_ZN11OpenImageIO4v3_1L19transform_has_Lut3DENS0_17basic_string_viewIcSt11char_traitsIcEEESt10shared_ptrIKN16OpenColorIO_v2_59TransformEE:bb.a
  br i1 %.not30, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  store ptr @.str.7, ptr %3, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.e

end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L19transform_has_Lut3DENS0_17basic_string_viewIcSt11char_traitsIcEEESt10shared_ptrIKN16OpenColorIO_v2_59TransformEE:bb.a

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.02331 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
end_hunk_1
