inline.NumInlined: 545
inline.NumDeleted: 272
begin_hunk_0_@_ZN5folly5IOBuf13freeExtBufferEv:bb.a
  store ptr null, ptr %i.v, align 8, !tbaa !28
  br label %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i

_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i: ; preds = %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i, %bb.k
  %.011.i = phi ptr [ %i.d, %bb.k ], [ %i.x, %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly5IOBuf14moveToFbStringEv:bb.a
  store ptr null, ptr %i.bc, align 8, !tbaa !28
  br label %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i

_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i: ; preds = %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i, %bb.p
  %.011.i = phi ptr [ %.0, %bb.p ], [ %i.be, %_ZNK5folly11FunctionRefIFvRNS_5IOBuf27SharedInfoObserverEntryBaseEEEclES3_.exit.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
end_hunk_1
