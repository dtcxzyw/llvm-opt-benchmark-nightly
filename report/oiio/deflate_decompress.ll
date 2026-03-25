begin_hunk_0
inline.NumInlined: 9
inline.NumDeleted: 5
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  br i1 %lcmp.mod.not, label %.preheader907, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader907.unr-lcssa
  %lcmp.mod1189 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1189)
  %125 = trunc i64 %124 to i8
  %126 = and i8 %125, 7
  %127 = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next.1
end_hunk_1
begin_hunk_2
.preheader907:                                    ; preds = %.preheader907.unr-lcssa, %.epil.preheader
  %indvars.iv1050.lcssa = phi i64 [ %indvars.iv.next1051, %.preheader907.unr-lcssa ], [ %indvars.iv.next1051.1, %.epil.preheader ]
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.preheader907.unr-lcssa ], [ %indvars.iv.next.1, %.epil.preheader ]
  %.lcssa1172 = phi i64 [ %124, %.preheader907.unr-lcssa ], [ %131, %.epil.preheader ]
  %132 = add i32 %.4653, -9
  %.neg1092 = mul nsw i32 %70, -3
  %133 = add i32 %.neg1092, %132
end_hunk_2
begin_hunk_3
  %.7699 = phi i64 [ %.10702, %311 ], [ %.6698, %.preheader905 ] ; 4 uses
  %.6655 = phi i32 [ %.10659, %311 ], [ %133, %.preheader905 ] ; 11 uses
  %.2646 = phi i32 [ %.4648, %311 ], [ 0, %.preheader905 ] ; 10 uses
  %.8622 = phi i64 [ %.13627, %311 ], [ %.lcssa1172, %.preheader905 ] ; 4 uses
  %.7606 = phi ptr [ %.10609, %311 ], [ %.6605, %.preheader905 ] ; 8 uses
  %143 = and i32 %.6655, 255                      ; 3 uses
  %144 = icmp samesign ult i32 %143, 14
end_hunk_3
begin_hunk_4
  %790 = sub i64 %789, %741                       ; 7 uses
  %min.iters.check = icmp ult i64 %790, 4
  %diff.check = icmp ult i32 %773, 32
  %or.cond1159 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1159, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1145 = icmp ult i64 %790, 32
end_hunk_4
begin_hunk_5
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %790, 28
  %n.vec = and i64 %790, -32                      ; 5 uses
  %791 = getelementptr i8, ptr %784, i64 %n.vec
  %792 = getelementptr i8, ptr %786, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %784, i64 %index ; 2 uses
  %next.gep1146 = getelementptr i8, ptr %786, i64 %index ; 2 uses
  %793 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12
  %wide.load1147 = load <16 x i8>, ptr %793, align 1, !tbaa !12
  %794 = getelementptr i8, ptr %next.gep1146, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1146, align 1, !tbaa !12
  store <16 x i8> %wide.load1147, ptr %794, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %795 = icmp eq i64 %index.next, %n.vec
  br i1 %795, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %790, %n.vec
end_hunk_5
begin_hunk_6
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1150 = and i64 %790, -4                   ; 4 uses
  %796 = getelementptr i8, ptr %784, i64 %n.vec1150
  %797 = getelementptr i8, ptr %786, i64 %n.vec1150
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1155, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1152 = getelementptr i8, ptr %784, i64 %index1151
  %next.gep1153 = getelementptr i8, ptr %786, i64 %index1151
  %wide.load1154 = load <4 x i8>, ptr %next.gep1152, align 1, !tbaa !12
  store <4 x i8> %wide.load1154, ptr %next.gep1153, align 1, !tbaa !12
  %index.next1155 = add nuw i64 %index1151, 4     ; 2 uses
  %798 = icmp eq i64 %index.next1155, %n.vec1150
  br i1 %798, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1156 = icmp eq i64 %790, %n.vec1150
  br i1 %cmp.n1156, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %784, %iter.check ], [ %791, %vec.epilog.iter.check ], [ %796, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %786, %iter.check ], [ %792, %vec.epilog.iter.check ], [ %797, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %799, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %801, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %799 = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %800 = load i8, ptr %.0578, align 1, !tbaa !12
  %801 = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %800, ptr %.0, align 1, !tbaa !12
  %802 = icmp ult ptr %801, %780
  br i1 %802, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !35

.thread869:                                       ; preds = %448, %414, %727, %336
  %.21713 = phi i64 [ %.19711, %727 ], [ 0, %336 ], [ %.15707, %414 ], [ %.15707, %448 ] ; 3 uses
end_hunk_6
begin_hunk_7
  %.33 = phi i64 [ %.30, %727 ], [ 0, %336 ], [ %.20634, %414 ], [ %429, %448 ]
  %.26 = phi ptr [ %.24, %727 ], [ %337, %336 ], [ %.16, %414 ], [ %.16, %448 ] ; 2 uses
  %.8598 = phi ptr [ %.6596, %727 ], [ %338, %336 ], [ %.3593, %414 ], [ %.3593, %448 ] ; 3 uses
  br i1 %.not744, label %25, label %803

803:                                              ; preds = %.thread869
  %804 = lshr i32 %.29678, 3
  %805 = and i32 %804, 31
  %806 = zext nneg i32 %805 to i64                ; 2 uses
  %.not781 = icmp ugt i64 %.21713, %806
  br i1 %.not781, label %.thread836, label %807, !prof !11

807:                                              ; preds = %803
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %813, label %808

808:                                              ; preds = %807
  %.neg783 = sub nsw i64 %.21713, %806
  %809 = getelementptr inbounds i8, ptr %.26, i64 %.neg783
  %810 = ptrtoint ptr %809 to i64
  %811 = ptrtoint ptr %1 to i64
  %812 = sub i64 %810, %811
  store i64 %812, ptr %5, align 8, !tbaa !36
  br label %813

813:                                              ; preds = %808, %807
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %817, label %814

814:                                              ; preds = %813
  %815 = ptrtoint ptr %.8598 to i64
  %816 = sub i64 %815, %24
  store i64 %816, ptr %6, align 8, !tbaa !36
  br label %818

817:                                              ; preds = %813
  %.not785 = icmp eq ptr %.8598, %8
  br i1 %.not785, label %818, label %.thread836

818:                                              ; preds = %817, %814
  br label %.thread836

.thread836:                                       ; preds = %333, %328, %324, %319, %314, %._crit_edge, %313, %.loopexit916, %347, %.thread843, %51, %101, %271, %504, %762, %729, %722, %167, %181, %195, %209, %223, %237, %251, %608, %622, %636, %650, %664, %678, %692, %817, %803, %818
  %.14 = phi i32 [ 1, %167 ], [ 1, %51 ], [ 1, %271 ], [ 1, %762 ], [ 0, %818 ], [ 1, %803 ], [ 2, %817 ], [ 1, %504 ], [ 1, %101 ], [ 1, %608 ], [ 1, %692 ], [ 1, %678 ], [ 1, %664 ], [ 1, %650 ], [ 1, %636 ], [ 1, %622 ], [ 1, %251 ], [ 1, %237 ], [ 1, %223 ], [ 1, %209 ], [ 1, %195 ], [ 1, %181 ], [ 3, %722 ], [ 3, %729 ], [ 1, %319 ], [ 1, %324 ], [ 3, %328 ], [ 1, %333 ], [ 1, %313 ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %314 ], [ 1, %.thread843 ], [ 1, %347 ]
  ret i32 %.14
}

end_hunk_7
begin_hunk_8
  br i1 %lcmp.mod.not, label %.preheader907, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader907.unr-lcssa
  %lcmp.mod1189 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1189)
  %125 = trunc i64 %124 to i8
  %126 = and i8 %125, 7
  %127 = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv.next.1
end_hunk_8
begin_hunk_9
.preheader907:                                    ; preds = %.preheader907.unr-lcssa, %.epil.preheader
  %indvars.iv1050.lcssa = phi i64 [ %indvars.iv.next1051, %.preheader907.unr-lcssa ], [ %indvars.iv.next1051.1, %.epil.preheader ]
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %.preheader907.unr-lcssa ], [ %indvars.iv.next.1, %.epil.preheader ]
  %.lcssa1172 = phi i64 [ %124, %.preheader907.unr-lcssa ], [ %131, %.epil.preheader ]
  %132 = add i32 %.4653, -9
  %.neg1092 = mul nsw i32 %70, -3
  %133 = add i32 %.neg1092, %132
end_hunk_9
begin_hunk_10
  %.7699 = phi i64 [ %.10702, %311 ], [ %.6698, %.preheader905 ] ; 4 uses
  %.6655 = phi i32 [ %.10659, %311 ], [ %133, %.preheader905 ] ; 11 uses
  %.2646 = phi i32 [ %.4648, %311 ], [ 0, %.preheader905 ] ; 10 uses
  %.8622 = phi i64 [ %.13627, %311 ], [ %.lcssa1172, %.preheader905 ] ; 4 uses
  %.7606 = phi ptr [ %.10609, %311 ], [ %.6605, %.preheader905 ] ; 8 uses
  %143 = and i32 %.6655, 255                      ; 3 uses
  %144 = icmp samesign ult i32 %143, 14
end_hunk_10
begin_hunk_11
  %790 = sub i64 %789, %741                       ; 7 uses
  %min.iters.check = icmp ult i64 %790, 4
  %diff.check = icmp ult i32 %773, 32
  %or.cond1159 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1159, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1145 = icmp ult i64 %790, 32
end_hunk_11
begin_hunk_12
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %790, 28
  %n.vec = and i64 %790, -32                      ; 5 uses
  %791 = getelementptr i8, ptr %784, i64 %n.vec
  %792 = getelementptr i8, ptr %786, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %784, i64 %index ; 2 uses
  %next.gep1146 = getelementptr i8, ptr %786, i64 %index ; 2 uses
  %793 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12
  %wide.load1147 = load <16 x i8>, ptr %793, align 1, !tbaa !12
  %794 = getelementptr i8, ptr %next.gep1146, i64 16
  store <16 x i8> %wide.load, ptr %next.gep1146, align 1, !tbaa !12
  store <16 x i8> %wide.load1147, ptr %794, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %795 = icmp eq i64 %index.next, %n.vec
  br i1 %795, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %790, %n.vec
end_hunk_12
begin_hunk_13
  br label %.loopexit904

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1150 = and i64 %790, -4                   ; 4 uses
  %796 = getelementptr i8, ptr %784, i64 %n.vec1150
  %797 = getelementptr i8, ptr %786, i64 %n.vec1150
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1155, %vec.epilog.vector.body ] ; 3 uses
  %next.gep1152 = getelementptr i8, ptr %784, i64 %index1151
  %next.gep1153 = getelementptr i8, ptr %786, i64 %index1151
  %wide.load1154 = load <4 x i8>, ptr %next.gep1152, align 1, !tbaa !12
  store <4 x i8> %wide.load1154, ptr %next.gep1153, align 1, !tbaa !12
  %index.next1155 = add nuw i64 %index1151, 4     ; 2 uses
  %798 = icmp eq i64 %index.next1155, %n.vec1150
  br i1 %798, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1156 = icmp eq i64 %790, %n.vec1150
  br i1 %cmp.n1156, label %.loopexit904.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0578.ph = phi ptr [ %784, %iter.check ], [ %791, %vec.epilog.iter.check ], [ %796, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %786, %iter.check ], [ %792, %vec.epilog.iter.check ], [ %797, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0578 = phi ptr [ %799, %vec.epilog.scalar.ph ], [ %.0578.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %801, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %799 = getelementptr inbounds nuw i8, ptr %.0578, i64 1
  %800 = load i8, ptr %.0578, align 1, !tbaa !12
  %801 = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %800, ptr %.0, align 1, !tbaa !12
  %802 = icmp ult ptr %801, %780
  br i1 %802, label %vec.epilog.scalar.ph, label %.loopexit904.backedge, !llvm.loop !49

.thread869:                                       ; preds = %448, %414, %727, %336
  %.21713 = phi i64 [ %.19711, %727 ], [ 0, %336 ], [ %.15707, %414 ], [ %.15707, %448 ] ; 3 uses
end_hunk_13
begin_hunk_14
  %.33 = phi i64 [ %.30, %727 ], [ 0, %336 ], [ %.20634, %414 ], [ %429, %448 ]
  %.26 = phi ptr [ %.24, %727 ], [ %337, %336 ], [ %.16, %414 ], [ %.16, %448 ] ; 2 uses
  %.8598 = phi ptr [ %.6596, %727 ], [ %338, %336 ], [ %.3593, %414 ], [ %.3593, %448 ] ; 3 uses
  br i1 %.not744, label %25, label %803

803:                                              ; preds = %.thread869
  %804 = lshr i32 %.29678, 3
  %805 = and i32 %804, 31
  %806 = zext nneg i32 %805 to i64                ; 2 uses
  %.not781 = icmp ugt i64 %.21713, %806
  br i1 %.not781, label %.thread836, label %807, !prof !11

807:                                              ; preds = %803
  %.not782 = icmp eq ptr %5, null
  br i1 %.not782, label %813, label %808

808:                                              ; preds = %807
  %.neg783 = sub nsw i64 %.21713, %806
  %809 = getelementptr inbounds i8, ptr %.26, i64 %.neg783
  %810 = ptrtoint ptr %809 to i64
  %811 = ptrtoint ptr %1 to i64
  %812 = sub i64 %810, %811
  store i64 %812, ptr %5, align 8, !tbaa !36
  br label %813

813:                                              ; preds = %808, %807
  %.not784 = icmp eq ptr %6, null
  br i1 %.not784, label %817, label %814

814:                                              ; preds = %813
  %815 = ptrtoint ptr %.8598 to i64
  %816 = sub i64 %815, %24
  store i64 %816, ptr %6, align 8, !tbaa !36
  br label %818

817:                                              ; preds = %813
  %.not785 = icmp eq ptr %.8598, %8
  br i1 %.not785, label %818, label %.thread836

818:                                              ; preds = %817, %814
  br label %.thread836

.thread836:                                       ; preds = %333, %328, %324, %319, %314, %._crit_edge, %313, %.loopexit916, %347, %.thread843, %51, %101, %271, %504, %762, %729, %722, %167, %181, %195, %209, %223, %237, %251, %608, %622, %636, %650, %664, %678, %692, %817, %803, %818
  %.14 = phi i32 [ 1, %167 ], [ 1, %51 ], [ 1, %271 ], [ 1, %762 ], [ 0, %818 ], [ 1, %803 ], [ 2, %817 ], [ 1, %504 ], [ 1, %101 ], [ 1, %608 ], [ 1, %692 ], [ 1, %678 ], [ 1, %664 ], [ 1, %650 ], [ 1, %636 ], [ 1, %622 ], [ 1, %251 ], [ 1, %237 ], [ 1, %223 ], [ 1, %209 ], [ 1, %195 ], [ 1, %181 ], [ 3, %722 ], [ 3, %729 ], [ 1, %319 ], [ 1, %324 ], [ 3, %328 ], [ 1, %333 ], [ 1, %313 ], [ 1, %._crit_edge ], [ 1, %.loopexit916 ], [ 1, %314 ], [ 1, %.thread843 ], [ 1, %347 ]
  ret i32 %.14
}

end_hunk_14
