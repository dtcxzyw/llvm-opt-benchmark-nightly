inline.NumInlined: 2564
inline.NumDeleted: 1401
begin_hunk_0_@_ZN6hermes5regex4Node16optimizeNodeListERSt6vectorIPS1_SaIS3_EENS0_11SyntaxFlagsERS2_ISt10unique_ptrIS1_St14default_deleteIS1_EESaISB_EE:.lr.ph83
  br i1 %i.ck, label %bb.n, label %.critedgesplit

bb.n:                                             ; preds = %bb.m
  %i.cl = add i64 %.173, 1                        ; 3 uses
  %i.cm = icmp ult i64 %i.cl, %i.aa
  br i1 %i.cm, label %bb.m, label %..critedge_crit_edge, !llvm.loop !557

end_hunk_0
begin_hunk_1_@_ZN6hermes5regex4Node16optimizeNodeListERSt6vectorIPS1_SaIS3_EENS0_11SyntaxFlagsERS2_ISt10unique_ptrIS1_St14default_deleteIS1_EESaISB_EE:.lr.ph83
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.n
  %.lcssa176 = phi i64 [ %i.cl, %bb.n ]
  br label %.critedge, !llvm.loop !557

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.1.lcssa = phi i64 [ %.lcssa176, %..critedge_crit_edge ], [ %.173.lcssa, %.critedgesplit ] ; 3 uses
  %i.cn = sub i64 %.1.lcssa, %.074
  %i.co = icmp ugt i64 %i.cn, 1
  br i1 %i.co, label %bb.o, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEDnEvT_SB_RKT0_.exit
end_hunk_1
