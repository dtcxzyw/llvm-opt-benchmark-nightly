inline.NumInlined: 760
inline.NumDeleted: 290
begin_hunk_0_@_ZN5arrow7compute8internal21CastBinaryDecimalArgsENS1_16DecimalPromotionEPSt6vectorINS_10TypeHolderESaIS4_EE:bb.a

bb.at:                                            ; preds = %bb.as
  %.sroa.speculated196 = call i32 @llvm.umax.i32(i32 %.1, i32 %.1230) ; 2 uses
  %i.cz = sub nsw i32 %.sroa.speculated196, %.1
  %i.da = sub nsw i32 %.sroa.speculated196, %.1230
  br label %bb.av

bb.au:                                            ; preds = %bb.as
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal21CastBinaryDecimalArgsENS1_16DecimalPromotionEPSt6vectorINS_10TypeHolderESaIS4_EE:bb.a
  store ptr null, ptr %i.dl, align 8, !tbaa !81, !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.dq = add nsw i32 %.053, %.162
  %i.dr = add nsw i32 %.053, %.1230
  invoke void @_ZN5arrow11DecimalType4MakeENS_4Type4typeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.38") align 8 %7, i32 noundef %.055, i32 noundef %i.dq, i32 noundef %i.dr)
          to label %bb.az unwind label %bb.bb

end_hunk_1
