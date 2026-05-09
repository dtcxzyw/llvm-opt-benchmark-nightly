inline.NumInlined: 93
inline.NumDeleted: 35
begin_hunk_0_@_ZN8ultrahdr26uhdr_gainmap_metadata_frac21encodeGainmapMetadataEPKS0_RSt6vectorIhSaIhEE:bb.a
  br i1 %.not111, label %bb.k, label %bb.o

bb.d:                                             ; preds = %bb.aa, %bb.ab, %bb.p
  %spec.select = phi i8 [ 0, %bb.p ], [ -128, %bb.ab ], [ -128, %bb.aa ]
  %.2.lcssa = phi i8 [ %.2, %bb.p ], [ 0, %bb.ab ], [ %.2.1, %bb.aa ] ; 2 uses
  %3 = shl nuw nsw i8 %i.f, 6
  %.1106 = or disjoint i8 %3, %spec.select
  %i.s = shl nuw nsw i8 %i.h, 2
  %.2107 = or disjoint i8 %.1106, %i.s
  %i.t = trunc nuw i8 %.2.lcssa to i1
end_hunk_0
