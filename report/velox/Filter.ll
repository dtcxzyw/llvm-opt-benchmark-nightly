inline.NumInlined: 10428
inline.NumDeleted: 4080
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.at = phi i64 [ %i.b, %bb.d ], [ %i.ce, %._crit_edge ]
  %i.au = phi i64 [ %i.d, %bb.d ], [ %i.cf, %._crit_edge ]
  %.pn48 = phi ptr [ %i.as, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.ar, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -64   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -64   ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr i8, ptr %.pn47, i64 -48
  %i.bk = getelementptr i8, ptr %.pn48, i64 -48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIjvvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.bn, %bb.g ], [ %.sroa.8.089, %bb.f ] ; 2 uses
  %i.bp = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04590
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.044, i64 %.04590 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ay = phi i64 [ %i.b, %bb.d ], [ %i.cj, %._crit_edge ]
  %i.az = phi i64 [ %i.d, %bb.d ], [ %i.ck, %._crit_edge ]
  %.pn48 = phi ptr [ %i.ax, %bb.d ], [ %.044, %._crit_edge ] ; 5 uses
  %.pn47 = phi ptr [ %i.aw, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -256  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -256  ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.pn47, i64 -240
  %i.bp = getelementptr i8, ptr %.pn48, i64 -240
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pn48) ]
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_:_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  %.sroa.8.1.in = phi i32 [ %i.bs, %bb.g ], [ %.sroa.8.085, %bb.f ] ; 2 uses
  %i.bu = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.04586
  %i.bx = load i128, ptr %i.bv, align 16, !tbaa !219
  store i128 %i.bx, ptr %i.bw, align 16, !tbaa !219
  %i.by = getelementptr inbounds nuw i8, ptr %.044, i64 %.04586 ; 2 uses
end_hunk_5
