inline.NumInlined: 12825
inline.NumDeleted: 1651
begin_hunk_0_@_ZN2v88internal15JSDispatchTable29TryAllocateAndInitializeEntryEPNS0_19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE31SpaceWithBlackAllocationSupportEtNS0_6TaggedINS0_4CodeEEE:bb.a
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.sroa.015.0.insert.ext.i
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8
  %4 = or i64 %i.ad, -4294967296
  %.sroa.0.0.insert.insert.i.i = add nuw nsw i64 %4, %.sroa.8.0.insert.shift.i
  %i.ae = cmpxchg ptr %1, i64 %.sroa.015.0.insert.insert.i, i64 %.sroa.0.0.insert.insert.i.i monotonic monotonic, align 4
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %_ZN2v88internal19ExternalEntityTableINS0_15JSDispatchEntryELm268435456EE16TryAllocateEntryEPNS3_5SpaceE.exit, label %bb.e, !prof !9, !llvm.loop !40
end_hunk_0
