inline.NumInlined: 20898
inline.NumDeleted: 6710
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ar = phi i64 [ %i.b, %bb.d ], [ %i.cc, %._crit_edge ]
  %i.as = phi i64 [ %i.d, %bb.d ], [ %i.cd, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aq, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.ap, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -32   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -32   ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr i8, ptr %.pn47, i64 -16
  %i.bi = getelementptr i8, ptr %.pn48, i64 -16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.bl, %bb.g ], [ %.sroa.8.081, %bb.f ] ; 2 uses
  %i.bn = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.04582
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !20, !range !92, !noundef !93
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %.044, i64 %.04582 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.at = phi i64 [ %i.b, %bb.d ], [ %i.ce, %._crit_edge ]
  %i.au = phi i64 [ %i.d, %bb.d ], [ %i.cf, %._crit_edge ]
  %.pn48 = phi ptr [ %i.as, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.ar, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -64   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -64   ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr i8, ptr %.pn47, i64 -48
  %i.bk = getelementptr i8, ptr %.pn48, i64 -48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.bn, %bb.g ], [ %.sroa.8.089, %bb.f ] ; 2 uses
  %i.bp = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04590
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.044, i64 %.04590 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ar = phi i64 [ %i.b, %bb.d ], [ %i.cc, %._crit_edge ]
  %i.as = phi i64 [ %i.d, %bb.d ], [ %i.cd, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aq, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.ap, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -32   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -32   ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr i8, ptr %.pn47, i64 -16
  %i.bi = getelementptr i8, ptr %.pn48, i64 -16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.bl, %bb.g ], [ %.sroa.8.081, %bb.f ] ; 2 uses
  %i.bn = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.04582
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !14
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %.044, i64 %.04582 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ax = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.ay = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aw, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.av, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -48   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -48   ; 4 uses
end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr i8, ptr %.pn47, i64 -32
  %i.bo = getelementptr i8, ptr %.pn48, i64 -32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit
end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.br, %bb.g ], [ %.sroa.8.087, %bb.f ] ; 2 uses
  %i.bt = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %.04588
  %i.bw = load i16, ptr %i.bu, align 2, !tbaa !3011
  store i16 %i.bw, ptr %i.bv, align 2, !tbaa !3011
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04588 ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ax = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.ay = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aw, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.av, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -128  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -128  ; 4 uses
end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr i8, ptr %.pn47, i64 -112
  %i.bo = getelementptr i8, ptr %.pn48, i64 -112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit
end_hunk_13
begin_hunk_14_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.br, %bb.g ], [ %.sroa.8.083, %bb.f ] ; 2 uses
  %i.bt = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.04584
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !106
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !106
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04584 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ay = phi i64 [ %i.b, %bb.d ], [ %i.cj, %._crit_edge ]
  %i.az = phi i64 [ %i.d, %bb.d ], [ %i.ck, %._crit_edge ]
  %.pn48 = phi ptr [ %i.ax, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.aw, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -256  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -256  ; 4 uses
end_hunk_15
begin_hunk_16_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.pn47, i64 -240
  %i.bp = getelementptr i8, ptr %.pn48, i64 -240
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit
end_hunk_16
begin_hunk_17_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.bs, %bb.g ], [ %.sroa.8.085, %bb.f ] ; 2 uses
  %i.bu = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.04586
  %i.bx = load i128, ptr %i.bv, align 16, !tbaa !3853
  store i128 %i.bx, ptr %i.bw, align 16, !tbaa !3853
  %i.by = getelementptr inbounds nuw i8, ptr %.044, i64 %.04586 ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE15directBuildFromIRKSD_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.at = phi i64 [ %i.b, %bb.d ], [ %i.ce, %._crit_edge ]
  %i.au = phi i64 [ %i.d, %bb.d ], [ %i.cf, %._crit_edge ]
  %.pn48 = phi ptr [ %i.as, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.ar, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -64   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -64   ; 4 uses
end_hunk_18
begin_hunk_19_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE15directBuildFromIRKSD_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr i8, ptr %.pn47, i64 -48
  %i.bk = getelementptr i8, ptr %.pn48, i64 -48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit
end_hunk_19
begin_hunk_20_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE15directBuildFromIRKSD_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.bn, %bb.g ], [ %.sroa.8.089, %bb.f ] ; 2 uses
  %i.bp = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04590
  %i.bs = load float, ptr %i.bq, align 4, !tbaa !3911
  store float %i.bs, ptr %i.br, align 4, !tbaa !3911
  %i.bt = getelementptr inbounds nuw i8, ptr %.044, i64 %.04590 ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE15directBuildFromIRKSD_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ax = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.ay = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aw, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.av, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -128  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -128  ; 4 uses
end_hunk_21
begin_hunk_22_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE15directBuildFromIRKSD_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr i8, ptr %.pn47, i64 -112
  %i.bo = getelementptr i8, ptr %.pn48, i64 -112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit
end_hunk_22
begin_hunk_23_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE15directBuildFromIRKSD_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.br, %bb.g ], [ %.sroa.8.083, %bb.f ] ; 2 uses
  %i.bt = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.04584
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !4000
  store double %i.bw, ptr %i.bv, align 8, !tbaa !4000
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04584 ; 2 uses
end_hunk_23
begin_hunk_24_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE15directBuildFromIRKS8_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ay = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.az = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.ax, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.aw, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -256  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -256  ; 4 uses
end_hunk_24
begin_hunk_25_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE15directBuildFromIRKS8_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.pn47, i64 -240
  %i.bp = getelementptr i8, ptr %.pn48, i64 -240
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit
end_hunk_25
begin_hunk_26_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE15directBuildFromIRKS8_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.bs, %bb.g ], [ %.sroa.8.085, %bb.f ] ; 2 uses
  %i.bu = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.04586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !4109
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04586 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
end_hunk_26
begin_hunk_27_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE15directBuildFromIRKS8_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ay = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.az = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.ax, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.aw, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -256  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -256  ; 4 uses
end_hunk_27
begin_hunk_28_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE15directBuildFromIRKS8_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.pn47, i64 -240
  %i.bp = getelementptr i8, ptr %.pn48, i64 -240
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit
end_hunk_28
begin_hunk_29_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE15directBuildFromIRKS8_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.bs, %bb.g ], [ %.sroa.8.085, %bb.f ] ; 2 uses
  %i.bu = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.04586
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !4183
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04586 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
end_hunk_29
