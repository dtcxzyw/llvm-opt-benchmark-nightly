inline.NumInlined: 2675
inline.NumDeleted: 797
begin_hunk_0_@_ZN5arrow24VarLengthListLikeBuilderINS_8ListTypeEE16AppendArraySliceERKNS_9ArraySpanEll:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.ar = phi i1 [ true, %.thread ], [ false, %bb.c ] ; 3 uses
  %.036 = phi i64 [ %i.aq, %.thread ], [ 0, %bb.c ] ; 2 uses
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.at = load i64, ptr %i.x, align 8, !tbaa !117 ; 2 uses
  %.neg.i.i.i = sext i1 %i.ar to i8
  %i.au = sdiv i64 %i.at, 8
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !58  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow24VarLengthListLikeBuilderINS_13LargeListTypeEE16AppendArraySliceERKNS_9ArraySpanEll:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.aq = phi i1 [ true, %.thread ], [ false, %bb.c ] ; 3 uses
  %.036 = phi i64 [ %i.ap, %.thread ], [ 0, %bb.c ] ; 2 uses
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.as = load i64, ptr %i.x, align 8, !tbaa !117 ; 2 uses
  %.neg.i.i.i = sext i1 %i.aq to i8
  %i.at = sdiv i64 %i.as, 8
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !58  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow24VarLengthListLikeBuilderINS_12ListViewTypeEE16AppendArraySliceERKNS_9ArraySpanEll:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.ar = phi i1 [ true, %.thread ], [ false, %bb.c ] ; 3 uses
  %.035 = phi i64 [ %i.aq, %.thread ], [ 0, %bb.c ] ; 2 uses
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.at = load i64, ptr %i.aa, align 8, !tbaa !117 ; 2 uses
  %.neg.i.i.i = sext i1 %i.ar to i8
  %i.au = sdiv i64 %i.at, 8
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !58  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow24VarLengthListLikeBuilderINS_17LargeListViewTypeEE16AppendArraySliceERKNS_9ArraySpanEll:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.aq = phi i1 [ true, %.thread ], [ false, %bb.c ] ; 3 uses
  %.035 = phi i64 [ %i.ap, %.thread ], [ 0, %bb.c ] ; 2 uses
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !52
  %i.as = load i64, ptr %i.aa, align 8, !tbaa !117 ; 2 uses
  %.neg.i.i.i = sext i1 %i.aq to i8
  %i.at = sdiv i64 %i.as, 8
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !58  ; 2 uses
end_hunk_3
