inline.NumInlined: 898
inline.NumDeleted: 423
begin_hunk_0_@_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 100
  %3 = load i32, ptr %i.m, align 4
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.n = load i32, ptr %4, align 4
  %5 = insertelement <2 x i32> poison, i32 %3, i64 0
  %6 = insertelement <2 x i32> %5, i32 %i.n, i64 1
  %7 = sitofp <2 x i32> %6 to <2 x float>
  %8 = insertelement <2 x float> poison, float %i.e, i64 0
  %9 = insertelement <2 x float> %8, float %i.b, i64 1
  %10 = fdiv <2 x float> %9, %7                   ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0     ; 2 uses
  %12 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %i.o = fcmp ogt float %11, %12
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = fcmp olt float %11, %12
  br i1 %i.p, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.d
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE24_M_get_insert_unique_posERKS4_:bb.a

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 132
  %2 = load i32, ptr %i.bk, align 4
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bl = load i32, ptr %3, align 4
  %4 = insertelement <2 x i32> poison, i32 %2, i64 0
  %5 = insertelement <2 x i32> %4, i32 %i.bl, i64 1
  %6 = sitofp <2 x i32> %5 to <2 x float>
  %7 = insertelement <2 x float> poison, float %i.bc, i64 0
  %8 = insertelement <2 x float> %7, float %i.az, i64 1
  %9 = fdiv <2 x float> %8, %6                    ; 2 uses
  %10 = extractelement <2 x float> %9, i64 0      ; 2 uses
  %11 = extractelement <2 x float> %9, i64 1      ; 2 uses
  %i.bm = fcmp ogt float %10, %11
  br i1 %i.bm, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = fcmp olt float %10, %11
  br i1 %i.bn, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7.thread33, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7

_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit7: ; preds = %bb.j, %bb.m
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIN2v88internal8compiler19JSInliningHeuristic9CandidateES4_St9_IdentityIS4_ENS3_16CandidateCompareENS1_13ZoneAllocatorIS4_EEE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_:bb.a

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 100
  %5 = load i32, ptr %i.o, align 4
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.p = load i32, ptr %6, align 4
  %7 = insertelement <2 x i32> poison, i32 %5, i64 0
  %8 = insertelement <2 x i32> %7, i32 %i.p, i64 1
  %9 = sitofp <2 x i32> %8 to <2 x float>
  %10 = insertelement <2 x float> poison, float %i.g, i64 0
  %11 = insertelement <2 x float> %10, float %i.d, i64 1
  %12 = fdiv <2 x float> %11, %9                  ; 2 uses
  %13 = extractelement <2 x float> %12, i64 0     ; 2 uses
  %14 = extractelement <2 x float> %12, i64 1     ; 2 uses
  %i.q = fcmp ogt float %13, %14
  br i1 %i.q, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = fcmp olt float %13, %14
  br i1 %i.r, label %_ZNK2v88internal8compiler19JSInliningHeuristic16CandidateCompareclERKNS2_9CandidateES6_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.e
end_hunk_2
