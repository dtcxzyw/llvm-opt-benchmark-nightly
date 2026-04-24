inline.NumInlined: 3218
inline.NumDeleted: 1086
begin_hunk_0_@_ZN2v88internal10Serializer18SerializeHotObjectENS0_6TaggedINS0_10HeapObjectEEE:bb.a
  br i1 %i.x, label %select.unfold, label %_ZN2v88internal10Serializer14HotObjectsList4FindENS0_6TaggedINS0_10HeapObjectEEE.exit

select.unfold:                                    ; preds = %bb.h, %bb.a, %bb.e, %bb.b, %bb.c, %bb.f, %bb.d, %bb.g
  %.ph.a = phi i32 [ 0, %bb.a ], [ 6, %bb.g ], [ 3, %bb.d ], [ 5, %bb.f ], [ 2, %bb.c ], [ 1, %bb.b ], [ 4, %bb.e ], [ 7, %bb.h ] ; 2 uses
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1442), align 2, !range !5, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %bb.j
end_hunk_0
begin_hunk_1_@_ZN2v88internal10Serializer18SerializeHotObjectENS0_6TaggedINS0_10HeapObjectEEE:bb.a

bb.j:                                             ; preds = %bb.i, %select.unfold
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %2 = trunc nuw nsw i32 %.ph.a to i8
  %3 = or disjoint i8 %2, -112                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal10Serializer18SerializeHotObjectENS0_6TaggedINS0_10HeapObjectEEE:bb.a
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 %3, ptr %i.ad, align 1
  %i.ag = load ptr, ptr %i.ac, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ah, ptr %i.ac, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal10Serializer18SerializeHotObjectENS0_6TaggedINS0_10HeapObjectEEE:bb.a
_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = phi ptr [ %i.ar, %bb.n ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.al ; 2 uses
  store i8 %3, ptr %i.at, align 1
  %i.au = icmp sgt i64 %i.al, 0
  br i1 %i.au, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

end_hunk_3
