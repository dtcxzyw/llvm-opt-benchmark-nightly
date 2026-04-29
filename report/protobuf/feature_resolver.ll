inline.NumInlined: 1808
inline.NumDeleted: 751
begin_hunk_0_@_ZN6google8protobuf12_GLOBAL__N_115CollectEditionsERKNS0_10DescriptorENS0_7EditionERN4absl12lts_202505129btree_setIS5_St4lessIS5_ESaIS5_EEE:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i4.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.ds, 9223372036854775800     ; 3 uses
  %i.du = shl i64 %n.vec, 2                       ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dp, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dm, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %offset.idx ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.dm, i64 %offset.idx ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep58, align 4, !noalias !112
  %wide.load59 = load <4 x i32>, ptr %i.dx, align 4, !noalias !112
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.an, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %offset.idx ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.an, i64 %offset.idx ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep22, align 4
  %wide.load23 = load <4 x i32>, ptr %i.ay, align 4
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_right_to_leftEhPSB_PS9_:bb.a
  br i1 %diff.check, label %.lr.ph.i.preheader85, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %offset.idx ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.r, i64 %offset.idx ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.af = getelementptr i8, ptr %next.gep63, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep63, align 4
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_right_to_leftEhPSB_PS9_:bb.a
  br i1 %min.iters.check67, label %.lr.ph.i47.preheader84, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec70 = and i64 %i.bd, 9223372036854775800   ; 3 uses
  %i.be = shl i64 %n.vec70, 2                     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.r, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.be
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next79, %vector.body71 ] ; 2 uses
  %offset.idx73 = shl i64 %index72, 2             ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.r, i64 %offset.idx73 ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.av, i64 %offset.idx73 ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep76, i64 16
  %wide.load77 = load <4 x i32>, ptr %next.gep76, align 4
  %wide.load78 = load <4 x i32>, ptr %i.bh, align 4
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_left_to_rightEhPSB_PS9_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = mul i64 %n.vec, -4                       ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %i.q = getelementptr i8, ptr %i.k, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = mul i64 %index, -4                ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %offset.idx ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.k, i64 %offset.idx ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %next.gep66, i64 -16
  %i.s = getelementptr inbounds i8, ptr %next.gep66, i64 -32
  %wide.load = load <4 x i32>, ptr %i.r, align 4
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_left_to_rightEhPSB_PS9_:bb.a
  br i1 %diff.check, label %.lr.ph.i48.preheader90, label %vector.ph74

vector.ph74:                                      ; preds = %vector.memcheck
  %n.vec76 = and i64 %i.au, 9223372036854775800   ; 3 uses
  %i.bd = shl i64 %n.vec76, 2                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.f, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.ap, i64 %i.bd
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph74
  %index78 = phi i64 [ 0, %vector.ph74 ], [ %index.next85, %vector.body77 ] ; 2 uses
  %offset.idx79 = shl i64 %index78, 2             ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.f, i64 %offset.idx79 ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.ap, i64 %offset.idx79 ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load83 = load <4 x i32>, ptr %next.gep82, align 4
  %wide.load84 = load <4 x i32>, ptr %i.bg, align 4
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_:bb.a
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %offset.idx ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.r, i64 %offset.idx ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep36, align 4
  %wide.load37 = load <4 x i32>, ptr %i.ad, align 4
end_hunk_6
