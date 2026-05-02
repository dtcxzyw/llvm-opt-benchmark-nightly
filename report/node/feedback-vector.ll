inline.NumInlined: 1787
inline.NumDeleted: 887
begin_hunk_0_@_ZN2v88internal14FeedbackVector10ClearSlotsEPNS0_7IsolateENS0_13ClearBehaviorE:bb.a

.cont:                                            ; preds = %.cont.lr.ph, %.cont22
  %i.af = phi i32 [ %i.x, %.cont.lr.ph ], [ %i.ca, %.cont22 ] ; 3 uses
  %.01439 = phi i8 [ 0, %.cont.lr.ph ], [ %.1, %.cont22 ] ; 2 uses
  %.sroa.10.038 = phi i32 [ 0, %.cont.lr.ph ], [ %i.aw, %.cont22 ] ; 5 uses
  %i.ag = udiv i32 %.sroa.10.038, 6               ; 3 uses
  %i.ah = urem i32 %.sroa.10.038, 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal14FeedbackVector10ClearSlotsEPNS0_7IsolateENS0_13ClearBehaviorE:bb.a
  %i.bx = phi i8 [ %i.bw, %_ZNK2v88internal14FeedbackVector7GetKindENS0_12FeedbackSlotE.exit.i ], [ 0, %bb.f ]
  store i8 %i.bx, ptr %i.ae, align 4
  %i.by = call noundef zeroext i1 @_ZN2v88internal13FeedbackNexus5ClearENS0_13ClearBehaviorE(ptr noundef nonnull align 8 dereferenceable(88) %3, i32 noundef %2)
  %4 = trunc nuw i8 %.01439 to i1
  %i.bz = or i1 %i.by, %4
  %5 = zext i1 %i.bz to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.pre = load i32, ptr %i.w, align 4
  br label %.cont22

.cont22:                                          ; preds = %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit
  %i.ca = phi i32 [ %.pre, %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit ], [ %i.af, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit ] ; 2 uses
  %.1 = phi i8 [ %5, %_ZN2v88internal13FeedbackNexusC2EPNS0_7IsolateENS0_6TaggedINS0_14FeedbackVectorEEENS0_12FeedbackSlotE.exit ], [ %.01439, %_ZN2v88internal24FeedbackMetadataIterator4NextEv.exit ] ; 2 uses
  %i.cb = icmp slt i32 %i.aw, %i.ca
  br i1 %i.cb, label %.cont, label %.cont22._crit_edge.loopexit, !llvm.loop !29

.cont22._crit_edge.loopexit:                      ; preds = %.cont22
  %6 = trunc nuw i8 %.1 to i1
  br label %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit.thread: ; preds = %bb.b, %.cont22._crit_edge.loopexit, %bb.a, %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZNK2v88internal18SharedFunctionInfo19HasFeedbackMetadataEv.exit ], [ false, %bb.b ], [ %6, %.cont22._crit_edge.loopexit ]
  ret i1 %.0
}

end_hunk_1
