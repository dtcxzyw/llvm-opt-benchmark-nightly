inline.NumInlined: 780
inline.NumDeleted: 275
begin_hunk_0_@_ZN2v88internal12WriteBarrier8ForRangeINS0_14FullObjectSlotEEEvPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEET_S9_:bb.a
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, %.lr.ph.i
  %.038.i = phi i64 [ %i.p, %.lr.ph.i ], [ %.3.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ] ; 5 uses
  %.01637.i = phi i64 [ undef, %.lr.ph.i ], [ %.117.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ]
  %.sroa.022.036.i = phi i64 [ %2, %.lr.ph.i ], [ %i.bb, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ] ; 6 uses
  %i.w = inttoptr i64 %.sroa.022.036.i to ptr
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %4 = trunc i64 %i.x to i1                       ; 2 uses
  %i.y = and i64 %i.x, -262144                    ; 3 uses
  %i.z = icmp ne i64 %i.y, %.038.i
  %.117.i = select i1 %4, i64 %i.y, i64 %.01637.i ; 2 uses
  %or.cond.i = select i1 %4, i1 %i.z, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

end_hunk_0
begin_hunk_1_@_ZN2v88internal12WriteBarrier8ForRangeINS0_14FullObjectSlotEEEvPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEET_S9_:bb.a
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.d
  %.3.i = phi i64 [ %.038.i, %bb.d ], [ %.117.i, %bb.m ], [ %.038.i, %bb.l ], [ %.038.i, %bb.n ], [ %.038.i, %bb.k ]
  %i.bb = add i64 %.sroa.022.036.i, 8             ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %3
  br i1 %i.bc, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_112ForRangeImplILi1ENS0_14FullObjectSlotEEEvPNS0_4HeapEPNS0_11MemoryChunkENS0_6TaggedINS0_10HeapObjectEEET0_SB_.exit, !llvm.loop !11
end_hunk_1
begin_hunk_2_@_ZN2v88internal12WriteBarrier8ForRangeINS0_19FullMaybeObjectSlotEEEvPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEET_S9_:bb.a
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, %.lr.ph.i
  %.039.i = phi i64 [ %i.p, %.lr.ph.i ], [ %.3.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ] ; 5 uses
  %.01638.i = phi i64 [ undef, %.lr.ph.i ], [ %.117.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ]
  %.sroa.022.037.i = phi i64 [ %2, %.lr.ph.i ], [ %i.bd, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ] ; 6 uses
  %i.w = inttoptr i64 %.sroa.022.037.i to ptr
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = trunc i64 %i.x to i1                     ; 2 uses
  %i.z = and i64 %i.x, -262144                    ; 3 uses
  %i.aa = icmp eq i64 %i.z, %.039.i
  %.117.i = select i1 %i.y, i64 %i.z, i64 %.01638.i ; 2 uses
  %not..i = xor i1 %i.y, true
  %cond.i = select i1 %not..i, i1 true, i1 %i.aa
  %i.ab = and i64 %i.x, 4294967295
end_hunk_2
begin_hunk_3_@_ZN2v88internal12WriteBarrier8ForRangeINS0_19FullMaybeObjectSlotEEEvPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEET_S9_:bb.a
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE13GetHeapObjectEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.d
  %.3.i = phi i64 [ %.039.i, %bb.d ], [ %.117.i, %bb.m ], [ %.039.i, %bb.l ], [ %.039.i, %bb.n ], [ %.039.i, %bb.k ]
  %i.bd = add i64 %.sroa.022.037.i, 8             ; 2 uses
  %i.be = icmp ult i64 %i.bd, %3
  br i1 %i.be, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_112ForRangeImplILi1ENS0_19FullMaybeObjectSlotEEEvPNS0_4HeapEPNS0_11MemoryChunkENS0_6TaggedINS0_10HeapObjectEEET0_SB_.exit, !llvm.loop !16
end_hunk_3
