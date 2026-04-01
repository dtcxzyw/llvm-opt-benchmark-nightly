begin_hunk_0
  %i.i = mul nsw i64 %i.h, 24
  %i.j = add i64 %i.d, %i.i                       ; 2 uses
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %invariant.op = sub i64 -4294967295, %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.l = phi i64 [ %i.aa, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.m = add i64 %i.l, %invariant.op              ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = inttoptr i64 %i.l to ptr
  %i.p = load i64, ptr %i.o, align 8              ; 4 uses
end_hunk_0
