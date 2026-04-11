inline.NumInlined: 5612
inline.NumDeleted: 2717
begin_hunk_0_@_ZN6duckdb6Parser13TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
._crit_edge367:                                   ; preds = %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208, %bb.bc
  %i.gv = phi ptr [ %.promoted357, %bb.bc ], [ %i.im, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208 ] ; 5 uses
  %i.gw = phi ptr [ %.promoted352, %bb.bc ], [ %i.in, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208 ] ; 3 uses
  %i.gx = phi ptr [ %.promoted347, %bb.bc ], [ %i.io, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208 ] ; 5 uses
  store ptr %i.gx, ptr %i.do, align 8
  store ptr %i.gw, ptr %i.dp, align 8
  store ptr %i.gv, ptr %0, align 8
end_hunk_0
begin_hunk_1_@_ZN6duckdb6Parser13TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
bb.bf:                                            ; preds = %.lr.ph366, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208
  %.2364 = phi i1 [ %.1, %.lr.ph366 ], [ %.3, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208 ] ; 3 uses
  %.sroa.0240.0363 = phi ptr [ %i.gr, %.lr.ph366 ], [ %i.ip, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208 ] ; 10 uses
  %i.hc = phi ptr [ %.promoted347, %.lr.ph366 ], [ %i.io, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208 ] ; 10 uses
  %i.hd = phi ptr [ %.promoted352, %.lr.ph366 ], [ %i.in, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208 ] ; 6 uses
  %i.he = phi ptr [ %.promoted357, %.lr.ph366 ], [ %i.im, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208 ] ; 12 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0240.0363, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb6Parser13TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0240.0363, i64 16, i1 false), !tbaa.struct !559
  %8 = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  br label %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208

bb.bi:                                            ; preds = %bb.bg
end_hunk_2
begin_hunk_3_@_ZN6duckdb6Parser13TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  br label %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i203

_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i203: ; preds = %bb.bj, %.noexc207
  %9 = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %.not.i17.i.i204 = icmp eq ptr %i.he, null
  br i1 %.not.i17.i.i204, label %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i205, label %bb.bk

end_hunk_3
begin_hunk_4_@_ZN6duckdb6Parser13TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i

bb.bl:                                            ; preds = %._crit_edge404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0240.0363, i64 16, i1 false), !tbaa.struct !559
  %10 = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  br label %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208

bb.bm:                                            ; preds = %._crit_edge404
end_hunk_4
begin_hunk_5_@_ZN6duckdb6Parser13TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  br label %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i213

_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i213: ; preds = %bb.bn, %.noexc217
  %11 = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %.not.i17.i.i214 = icmp eq ptr %i.he, null
  br i1 %.not.i17.i.i214, label %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, label %bb.bo

end_hunk_5
begin_hunk_6_@_ZN6duckdb6Parser13TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE9push_backERKS1_.exit208: ; preds = %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215, %bb.bl, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i205, %bb.bh
  %i.im = phi ptr [ %i.hr, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i205 ], [ %i.he, %bb.bh ], [ %i.he, %bb.bl ], [ %i.ii, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ] ; 2 uses
  %i.in = phi ptr [ %i.hu, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i205 ], [ %i.hd, %bb.bh ], [ %i.hd, %bb.bl ], [ %i.il, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ] ; 2 uses
  %i.io = phi ptr [ %9, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i205 ], [ %8, %bb.bh ], [ %10, %bb.bl ], [ %11, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ] ; 2 uses
  %.3 = phi i1 [ false, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i205 ], [ false, %bb.bh ], [ %.2364, %bb.bl ], [ %.2364, %_ZNSt6vectorIN6duckdb15SimplifiedTokenESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i215 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0240.0363, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ip, %i.gt
  br i1 %.not, label %._crit_edge367, label %bb.bf
end_hunk_6
