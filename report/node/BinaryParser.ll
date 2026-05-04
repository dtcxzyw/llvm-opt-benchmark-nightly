inline.NumInlined: 11222
inline.NumDeleted: 4344
begin_hunk_0_@_ZN4LIEF5MachO12BinaryParser5parseERKSt6vectorIhSaIhEEmRKNS0_12ParserConfigE:bb.a
  store i8 %i.am, ptr %i.ai, align 1, !noalias !143
  br label %_ZNSt10unique_ptrIN4LIEF12VectorStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF12VectorStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.an = phi ptr [ %i.aj, %bb.f ], [ %i.al, %bb.g ], [ %i.aj, %bb.h ] ; 3 uses
  %i.ao = phi ptr [ %i.ai, %bb.f ], [ null, %bb.g ], [ %i.ai, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
end_hunk_0
