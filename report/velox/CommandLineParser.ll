inline.NumInlined: 727
inline.NumDeleted: 414
begin_hunk_0_@_ZN5folly6detail8function5call_IZNS_8settings17CommandLineParser4Impl15setSettingStateEvEUlvE_Lb1ELb0ENS3_12_GLOBAL__N_120RecursiveStateHelperEJEEET2_DpT3_RNS1_4DataE:bb.a
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, i8 } %i.d, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !157, !noalias !153
  %i.j = icmp eq i32 %i.i, 1
end_hunk_0
