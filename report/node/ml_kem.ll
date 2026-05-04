inline.NumInlined: 100
inline.NumDeleted: 46
begin_hunk_0_@scalar_ntt:bb.a
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  %ind.escape = add i64 %i.o, -2
  br i1 %cmp.n, label %.loopexit144, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
end_hunk_0
begin_hunk_1_@scalar_ntt:bb.a
  br i1 %i.dn, label %middle.block60, label %vector.body54, !llvm.loop !102

middle.block60:                                   ; preds = %vector.body54
  %cmp.n61 = icmp eq i64 %i.cg, %n.vec51
  %ind.escape62 = add i64 %i.ci, -2
  br i1 %cmp.n61, label %.loopexit143, label %scalar.ph47.preheader

scalar.ph47.preheader:                            ; preds = %bb.c, %middle.block60
  %.022.idx.1.ph = phi i64 [ %.020.add.1, %bb.c ], [ %i.ci, %middle.block60 ]
end_hunk_1
begin_hunk_2_@scalar_ntt:bb.a
  br i1 %i.en, label %scalar.ph47, label %.loopexit143, !llvm.loop !103

.loopexit143:                                     ; preds = %scalar.ph47, %middle.block60
  %.022.idx.1.lcssa = phi i64 [ %ind.escape62, %middle.block60 ], [ %.022.idx.1, %scalar.ph47 ]
  %.022.add.1.lcssa = phi i64 [ %i.ci, %middle.block60 ], [ %.022.add.1, %scalar.ph47 ]
  %i.eo = icmp slt i64 %.022.idx.1.lcssa, 510
  br i1 %i.eo, label %bb.c, label %.preheader37, !llvm.loop !101
end_hunk_2
begin_hunk_3_@scalar_ntt:bb.a
  br i1 %i.gh, label %middle.block79, label %vector.body73, !llvm.loop !104

middle.block79:                                   ; preds = %vector.body73
  %cmp.n80 = icmp eq i64 %i.fa, %n.vec70
  %ind.escape81 = add i64 %i.fc, -2
  br i1 %cmp.n80, label %.loopexit142, label %scalar.ph66.preheader

scalar.ph66.preheader:                            ; preds = %bb.d, %middle.block79
  %.022.idx.2.ph = phi i64 [ %.020.add.2, %bb.d ], [ %i.fc, %middle.block79 ]
end_hunk_3
begin_hunk_4_@scalar_ntt:bb.a
  br i1 %i.hh, label %scalar.ph66, label %.loopexit142, !llvm.loop !105

.loopexit142:                                     ; preds = %scalar.ph66, %middle.block79
  %.022.idx.2.lcssa = phi i64 [ %ind.escape81, %middle.block79 ], [ %.022.idx.2, %scalar.ph66 ]
  %.022.add.2.lcssa = phi i64 [ %i.fc, %middle.block79 ], [ %.022.add.2, %scalar.ph66 ]
  %i.hi = icmp slt i64 %.022.idx.2.lcssa, 510
  br i1 %i.hi, label %bb.d, label %.preheader36, !llvm.loop !101
end_hunk_4
begin_hunk_5_@scalar_ntt:bb.a
  br i1 %i.jb, label %middle.block98, label %vector.body92, !llvm.loop !106

middle.block98:                                   ; preds = %vector.body92
  %cmp.n99 = icmp eq i64 %i.hu, %n.vec89
  %ind.escape100 = add i64 %i.hw, -2
  br i1 %cmp.n99, label %.loopexit141, label %scalar.ph85.preheader

scalar.ph85.preheader:                            ; preds = %bb.e, %middle.block98
  %.022.idx.3.ph = phi i64 [ %.020.add.3, %bb.e ], [ %i.hw, %middle.block98 ]
end_hunk_5
begin_hunk_6_@scalar_ntt:bb.a
  br i1 %i.kb, label %scalar.ph85, label %.loopexit141, !llvm.loop !107

.loopexit141:                                     ; preds = %scalar.ph85, %middle.block98
  %.022.idx.3.lcssa = phi i64 [ %ind.escape100, %middle.block98 ], [ %.022.idx.3, %scalar.ph85 ]
  %.022.add.3.lcssa = phi i64 [ %i.hw, %middle.block98 ], [ %.022.add.3, %scalar.ph85 ]
  %i.kc = icmp slt i64 %.022.idx.3.lcssa, 510
  br i1 %i.kc, label %bb.e, label %vector.memcheck, !llvm.loop !101
end_hunk_6
begin_hunk_7_@scalar_inverse_ntt:vector.memcheck
  br i1 %i.ayf, label %middle.block88, label %vector.body82, !llvm.loop !207

middle.block88:                                   ; preds = %vector.body82
  %cmp.n = icmp eq i64 %i.axb, %n.vec
  %ind.escape = add i64 %i.axd, -2
  br i1 %cmp.n, label %.loopexit156, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %bb.a, %middle.block88
end_hunk_7
begin_hunk_8_@scalar_inverse_ntt:vector.memcheck
  br i1 %i.bau, label %middle.block104, label %vector.body98, !llvm.loop !210

middle.block104:                                  ; preds = %vector.body98
  %cmp.n105 = icmp eq i64 %i.azq, %n.vec95
  %ind.escape106 = add i64 %i.azs, -2
  br i1 %cmp.n105, label %.loopexit155, label %scalar.ph91.preheader

scalar.ph91.preheader:                            ; preds = %bb.b, %middle.block104
  %.023.idx.4.ph = phi i64 [ %.021.add.4, %bb.b ], [ %i.azs, %middle.block104 ]
end_hunk_8
begin_hunk_9_@scalar_inverse_ntt:vector.memcheck
  br i1 %i.bbs, label %scalar.ph91, label %.loopexit155, !llvm.loop !211

.loopexit155:                                     ; preds = %scalar.ph91, %middle.block104
  %.023.idx.4.lcssa = phi i64 [ %ind.escape106, %middle.block104 ], [ %.023.idx.4, %scalar.ph91 ]
  %.023.add.4.lcssa = phi i64 [ %i.azs, %middle.block104 ], [ %.023.add.4, %scalar.ph91 ]
  %i.bbt = icmp slt i64 %.023.idx.4.lcssa, 510
  br i1 %i.bbt, label %bb.b, label %.preheader40, !llvm.loop !209
end_hunk_9
begin_hunk_10_@scalar_inverse_ntt:vector.memcheck
  br i1 %i.bdj, label %middle.block123, label %vector.body117, !llvm.loop !212

middle.block123:                                  ; preds = %vector.body117
  %cmp.n124 = icmp eq i64 %i.bcf, %n.vec114
  %ind.escape125 = add i64 %i.bch, -2
  br i1 %cmp.n124, label %.loopexit154, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %bb.c, %middle.block123
  %.023.idx.5.ph = phi i64 [ %.021.add.5, %bb.c ], [ %i.bch, %middle.block123 ]
end_hunk_10
begin_hunk_11_@scalar_inverse_ntt:vector.memcheck
  br i1 %i.beh, label %scalar.ph110, label %.loopexit154, !llvm.loop !213

.loopexit154:                                     ; preds = %scalar.ph110, %middle.block123
  %.023.idx.5.lcssa = phi i64 [ %ind.escape125, %middle.block123 ], [ %.023.idx.5, %scalar.ph110 ]
  %.023.add.5.lcssa = phi i64 [ %i.bch, %middle.block123 ], [ %.023.add.5, %scalar.ph110 ]
  %i.bei = icmp slt i64 %.023.idx.5.lcssa, 510
  br i1 %i.bei, label %bb.c, label %.preheader39, !llvm.loop !209
end_hunk_11
begin_hunk_12_@scalar_inverse_ntt:vector.memcheck
  br i1 %i.bfy, label %middle.block142, label %vector.body136, !llvm.loop !214

middle.block142:                                  ; preds = %vector.body136
  %cmp.n143 = icmp eq i64 %i.beu, %n.vec133
  %ind.escape144 = add i64 %i.bew, -2
  br i1 %cmp.n143, label %.loopexit, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %bb.d, %middle.block142
  %.023.idx.6.ph = phi i64 [ %.021.add.6, %bb.d ], [ %i.bew, %middle.block142 ]
end_hunk_12
begin_hunk_13_@scalar_inverse_ntt:vector.memcheck
  br i1 %i.bgw, label %scalar.ph129, label %.loopexit, !llvm.loop !215

.loopexit:                                        ; preds = %scalar.ph129, %middle.block142
  %.023.idx.6.lcssa = phi i64 [ %ind.escape144, %middle.block142 ], [ %.023.idx.6, %scalar.ph129 ]
  %.023.add.6.lcssa = phi i64 [ %i.bew, %middle.block142 ], [ %.023.add.6, %scalar.ph129 ]
  %i.bgx = icmp slt i64 %.023.idx.6.lcssa, 510
  br i1 %i.bgx, label %bb.d, label %vector.body149, !llvm.loop !209
end_hunk_13
