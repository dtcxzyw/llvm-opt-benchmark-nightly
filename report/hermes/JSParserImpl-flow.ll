inline.NumInlined: 4026
inline.NumDeleted: 715
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl29parseTypeofTypeAnnotationFlowEv:bb.a
  br i1 %i.g, label %bb.b, label %bb.c, !llvm.loop !479

bb.c:                                             ; preds = %bb.b
  %lsr.iv.next.lcssa = phi i32 [ %lsr.iv.next, %bb.b ]
  %.0.lcssa = phi i32 [ %lsr.iv.next, %bb.b ]
  %i.h = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 1, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.90, ptr %.sroa.0.0.copyload.i.i) #9
  br i1 %i.h, label %bb.d, label %.loopexit
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser6detail12JSParserImpl29parseTypeofTypeAnnotationFlowEv:bb.a
  %spec.select.i46 = select i1 %.not.i, i32 1, i32 2
  store i32 %spec.select.i46, ptr %i.as, align 4, !tbaa !478
  %lsr.iv.next79 = add nuw i32 %lsr.iv78, 1       ; 2 uses
  %.not = icmp eq i32 %lsr.iv.next.lcssa, %lsr.iv.next79
  br i1 %.not, label %._crit_edge.loopexit, label %bb.j, !llvm.loop !484

._crit_edge.loopexit:                             ; preds = %bb.k
end_hunk_1
