inline.NumInlined: 1178
inline.NumDeleted: 503
begin_hunk_0_@_ZN2v88internal13TracedHandles4CopyERKNS0_10TracedNodeEPPm:bb.a
  br label %_ZNK2v88internal13TracedHandles25NeedsTrackingInYoungNodesENS0_6TaggedINS0_6ObjectEEEPNS0_10TracedNodeE.exit

_ZNK2v88internal13TracedHandles25NeedsTrackingInYoungNodesENS0_6TaggedINS0_6ObjectEEEPNS0_10TracedNodeE.exit: ; preds = %_ZN2v88internal13TracedHandles12AllocateNodeEv.exit, %bb.h
  %.0.i.i = phi i1 [ %i.ag, %bb.h ], [ false, %_ZN2v88internal13TracedHandles12AllocateNodeEv.exit ] ; 4 uses
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1110), align 2, !range !7, !noundef !8
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.i, label %_ZNK2v88internal13TracedHandles26GetCppHeapIfUnifiedYoungGCEPNS0_7IsolateE.exit.i.thread
end_hunk_0
begin_hunk_1_@_ZN2v88internal13TracedHandles4CopyERKNS0_10TracedNodeEPPm:bb.a
  %i.cq = trunc i16 %.fr to i1
  %i.cr = load i8, ptr %i.at, align 8, !range !7, !noundef !8
  %i.cs = trunc nuw i8 %i.cr to i1                ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK2v88internal13TracedHandles19NeedsToBeRememberedENS0_6TaggedINS0_6ObjectEEEPNS0_10TracedNodeEPmNS0_24TracedReferenceStoreModeE.exit
  %3 = select i1 %.0.i.i, i8 19, i8 17
  store i8 %3, ptr %i.ct, align 4
  br i1 %i.cs, label %bb.q, label %_ZN2v88internal10TracedNode7PublishENS0_6TaggedINS0_6ObjectEEEbbbb.exit

bb.p:                                             ; preds = %_ZNK2v88internal13TracedHandles19NeedsToBeRememberedENS0_6TaggedINS0_6ObjectEEEPNS0_10TracedNodeEPmNS0_24TracedReferenceStoreModeE.exit
  %4 = select i1 %.0.i.i, i8 3, i8 1
  store i8 %4, ptr %i.ct, align 4
  br i1 %i.cs, label %bb.q, label %_ZN2v88internal10TracedNode7PublishENS0_6TaggedINS0_6ObjectEEEbbbb.exit

bb.q:                                             ; preds = %_ZNK2v88internal13TracedHandles19NeedsToBeRememberedENS0_6TaggedINS0_6ObjectEEEPNS0_10TracedNodeEPmNS0_24TracedReferenceStoreModeE.exit.thread, %bb.o, %bb.p
end_hunk_1
