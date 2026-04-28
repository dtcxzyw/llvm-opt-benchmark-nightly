inline.NumInlined: 24169
inline.NumDeleted: 6162
begin_hunk_0_@_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE0EEESt4pairImmENS_4base9TimeDeltaEm:bb.a
  %i.csk = add i64 %.sroa.08.0.copyload, 7
  %i.csl = inttoptr i64 %i.csk to ptr
  %i.csm = load atomic volatile i64, ptr %i.csl acquire, align 8
  %18 = add i64 %i.csm, 304942678016
  %i.csn = add i64 %.sroa.08.0.copyload, 15       ; 2 uses
  %i.cso = add i64 %.sroa.08.0.copyload, 23       ; 3 uses
  %i.csp = icmp ult i64 %i.csn, -8
end_hunk_0
begin_hunk_1_@_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE0EEESt4pairImmENS_4base9TimeDeltaEm:bb.a
  br label %_ZN2v88internal13BytecodeArray14BodyDescriptor11IterateBodyINS0_18MainMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_.exit

_ZN2v88internal13BytecodeArray14BodyDescriptor11IterateBodyINS0_18MainMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_.exit: ; preds = %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_18MainMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit15.i, %bb.jf
  %sext2375 = ashr i64 %18, 32
  %i.ctg = and i64 %sext2375, -8
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit
end_hunk_1
begin_hunk_2_@_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE1EEESt4pairImmENS_4base9TimeDeltaEm:bb.a
  %i.cwo = add i64 %.sroa.08.0.copyload, 7
  %i.cwp = inttoptr i64 %i.cwo to ptr
  %i.cwq = load atomic volatile i64, ptr %i.cwp acquire, align 8
  %18 = add i64 %i.cwq, 304942678016
  %i.cwr = add i64 %.sroa.08.0.copyload, 15       ; 2 uses
  %i.cws = add i64 %.sroa.08.0.copyload, 23       ; 3 uses
  %i.cwt = icmp ult i64 %i.cwr, -8
end_hunk_2
begin_hunk_3_@_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE1EEESt4pairImmENS_4base9TimeDeltaEm:bb.a
  br label %_ZN2v88internal13BytecodeArray14BodyDescriptor11IterateBodyINS0_18MainMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_.exit

_ZN2v88internal13BytecodeArray14BodyDescriptor11IterateBodyINS0_18MainMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_.exit: ; preds = %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_18MainMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit15.i, %bb.jz
  %sext2447 = ashr i64 %18, 32
  %i.cxk = and i64 %sext2447, -8
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit
end_hunk_3
