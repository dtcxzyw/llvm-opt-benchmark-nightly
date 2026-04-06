begin_hunk_0_@_ZN2v88internal17ConcurrentMarking8RunMajorEPNS_11JobDelegateENS_4base7EnumSetINS0_13CodeFlushModeEiEEjb:bb.a
  %i.ddu = add i64 %.sroa.07.0.copyload, 7
  %i.ddv = inttoptr i64 %i.ddu to ptr
  %i.ddw = load atomic volatile i64, ptr %i.ddv acquire, align 8
  %26 = add i64 %i.ddw, 304942678016
  %i.ddx = add i64 %.sroa.07.0.copyload, 15       ; 2 uses
  %i.ddy = add i64 %.sroa.07.0.copyload, 23       ; 3 uses
  %i.ddz = icmp ult i64 %i.ddx, -8
end_hunk_0
begin_hunk_1_@_ZN2v88internal17ConcurrentMarking8RunMajorEPNS_11JobDelegateENS_4base7EnumSetINS0_13CodeFlushModeEiEEjb:bb.a
  br label %_ZN2v88internal13BytecodeArray14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_.exit

_ZN2v88internal13BytecodeArray14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_.exit: ; preds = %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit15.i, %bb.ld
  %sext2906 = ashr i64 %26, 32
  %i.deq = and i64 %sext2906, -8
  br label %_ZN2v88internal11HeapVisitorINS0_24ConcurrentMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit
end_hunk_1
