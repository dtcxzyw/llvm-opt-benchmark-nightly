inline.NumInlined: 956
inline.NumDeleted: 303
begin_hunk_0_@_ZN2v88internal8compiler14MemoryLowering6ReduceEPNS1_4NodeE:bb.a
  br label %_ZN2v88internal8compiler14MemoryLowering23ComputeWriteBarrierKindEPNS1_4NodeES4_S4_PKNS2_15AllocationStateENS1_16WriteBarrierKindE.exit

_ZN2v88internal8compiler14MemoryLowering23ComputeWriteBarrierKindEPNS1_4NodeES4_S4_PKNS2_15AllocationStateENS1_16WriteBarrierKindE.exit: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit13.i, %bb.m, %_ZNKSt8functionIFvPN2v88internal8compiler4NodeES4_PKcPNS1_4ZoneEEEclES4_S4_S6_S8_.exit.i
  %.sroa.2.0.insert.ext.i = phi i16 [ 0, %_ZNK2v88internal8compiler4Node7InputAtEi.exit13.i ], [ 256, %_ZNKSt8functionIFvPN2v88internal8compiler4NodeES4_PKcPNS1_4ZoneEEEclES4_S4_S6_S8_.exit.i ], [ 0, %bb.m ]
  %i.bf = phi i8 [ 0, %_ZNK2v88internal8compiler4Node7InputAtEi.exit13.i ], [ 1, %_ZNKSt8functionIFvPN2v88internal8compiler4NodeES4_PKcPNS1_4ZoneEEEclES4_S4_S6_S8_.exit.i ], [ 0, %bb.m ]
  %.not.i = icmp eq i8 %i.bf, %.sroa.4.0.extract.trunc.i
  br i1 %.not.i, label %_ZN2v88internal8compiler14MemoryLowering11ReduceStoreEPNS1_4NodeEPKNS2_15AllocationStateE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal8compiler14MemoryLowering23ComputeWriteBarrierKindEPNS1_4NodeES4_S4_PKNS2_15AllocationStateENS1_16WriteBarrierKindE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8
  %.sroa.0.0.insert.ext.i = and i16 %i.s, 255
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %i.bi = call noundef ptr @_ZN2v88internal8compiler22MachineOperatorBuilder5StoreENS1_19StoreRepresentationE(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i16 %.sroa.0.0.insert.insert.i) #14
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.bi) #14
  br label %_ZN2v88internal8compiler14MemoryLowering11ReduceStoreEPNS1_4NodeEPKNS2_15AllocationStateE.exit
end_hunk_0
