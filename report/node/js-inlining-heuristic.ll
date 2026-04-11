inline.NumInlined: 898
inline.NumDeleted: 423
begin_hunk_0_@_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.n = load i32, ptr %i.m, align 4
  %3 = sitofp i32 %i.n to float
  %4 = fdiv float %i.e, %3                        ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 100
  %6 = load i32, ptr %5, align 4
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %i.b, %7                        ; 2 uses
  %i.o = fcmp ogt float %4, %8
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = fcmp olt float %4, %8
  br i1 %i.p, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.d
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE24_M_get_insert_unique_posERKS4_:bb.a

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 132
  %i.bl = load i32, ptr %i.bk, align 4
  %2 = sitofp i32 %i.bl to float
  %3 = fdiv float %i.bc, %2                       ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 100
  %5 = load i32, ptr %4, align 4
  %6 = sitofp i32 %5 to float
  %7 = fdiv float %i.az, %6                       ; 2 uses
  %i.bm = fcmp ogt float %3, %7
  br i1 %i.bm, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = fcmp olt float %3, %7
  br i1 %i.bn, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7: ; preds = %bb.j, %bb.m
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_:bb.a

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.p = load i32, ptr %i.o, align 4
  %5 = sitofp i32 %i.p to float
  %6 = fdiv float %i.g, %5                        ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 132
  %8 = load i32, ptr %7, align 4
  %9 = sitofp i32 %8 to float
  %10 = fdiv float %i.d, %9                       ; 2 uses
  %i.q = fcmp ogt float %6, %10
  br i1 %i.q, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = fcmp olt float %6, %10
  br i1 %i.r, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.e
end_hunk_2
