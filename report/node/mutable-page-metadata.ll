inline.NumInlined: 282
inline.NumDeleted: 158
begin_hunk_0_@_ZN2v88internal19MutablePageMetadata25SetOldGenerationPageFlagsENS0_11MarkingModeE:bb.a
_ZN2v88internal19MutablePageMetadata22OldGenerationPageFlagsENS0_11MarkingModeENS0_15AllocationSpaceE.exit: ; preds = %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit, %switch.lookup, %switch.lookup, %switch.lookup, %switch.lookup, %_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit
  %.sroa.04.0.i24 = phi i64 [ %.sroa.04.0.i.ph, %switch.lookup ], [ 38, %_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit ], [ %.sroa.04.0.i.ph, %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit ], [ %.sroa.04.0.i.ph, %switch.lookup ], [ %.sroa.04.0.i.ph, %switch.lookup ], [ %.sroa.04.0.i.ph, %switch.lookup ]
  %.sroa.010.0 = phi i64 [ -37, %switch.lookup ], [ -1, %_ZNK2v88internal19MemoryChunkMetadata14owner_identityEv.exit ], [ %i.i, %_ZN2v88internal24IsAnyWritableSharedSpaceENS0_15AllocationSpaceE.exit ], [ -37, %switch.lookup ], [ -37, %switch.lookup ], [ -37, %switch.lookup ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = or i64 %i.k, %.sroa.04.0.i24             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, -262144
  %i.p = inttoptr i64 %i.o to ptr
  store i64 %i.l, ptr %i.p, align 262144
  %i.q = and i64 %i.l, %.sroa.010.0               ; 2 uses
  store i64 %i.q, ptr %i.j, align 8
  %i.r = load i64, ptr %i.m, align 8
  %i.s = and i64 %i.r, -262144
end_hunk_0
begin_hunk_1_@_ZN2v88internal19MutablePageMetadata27SetYoungGenerationPageFlagsENS0_11MarkingModeE:bb.a
bb.a:
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 2, i64 38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = or i64 %i.b, %spec.select.i              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, -262144
  %i.g = inttoptr i64 %i.f to ptr
  store i64 %i.c, ptr %i.g, align 262144
  %i.h = select i1 %.not.i, i64 -37, i64 -1
  %i.i = and i64 %i.c, %i.h                       ; 2 uses
  store i64 %i.i, ptr %i.a, align 8
  %i.j = load i64, ptr %i.d, align 8
  %i.k = and i64 %i.j, -262144
end_hunk_1
