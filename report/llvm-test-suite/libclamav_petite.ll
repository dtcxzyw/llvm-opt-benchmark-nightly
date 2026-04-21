inline.NumInlined: 26
inline.NumDeleted: 2
begin_hunk_0_@petite_inflate2x_1to9:bb.a
.lr.ph1263:                                       ; preds = %.lr.ph1263.preheader, %.loopexit1099
  %.06731262 = phi i32 [ %.2675, %.loopexit1099 ], [ 0, %.lr.ph1263.preheader ] ; 2 uses
  %.06881261 = phi i32 [ %.1689, %.loopexit1099 ], [ %i.gf, %.lr.ph1263.preheader ] ; 3 uses
  %.06901260 = phi ptr [ %.2692, %.loopexit1099 ], [ %i.ge, %.lr.ph1263.preheader ] ; 11 uses
  %.09611259 = phi i8 [ %.6965, %.loopexit1099 ], [ 0, %.lr.ph1263.preheader ] ; 3 uses
  %.09701258 = phi ptr [ %.6976, %.loopexit1099 ], [ %i.gh, %.lr.ph1263.preheader ] ; 5 uses
  %i.gi = shl i8 %.09611259, 1
end_hunk_0
begin_hunk_1_@petite_inflate2x_1to9:bb.a
bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.3973 = phi ptr [ %.13983, %bb.bq ], [ %.11981, %bb.br ] ; 5 uses
  %.3 = phi i8 [ %.016.i910, %bb.bq ], [ %.016.i903, %bb.br ] ; 3 uses
  %.1674 = phi i32 [ %i.ib, %bb.bq ], [ %.06731262, %bb.br ] ; 5 uses
  %.1669 = phi i32 [ 0, %bb.bq ], [ %i.ii, %bb.br ]
  %.0667 = phi i32 [ %i.ig, %bb.bq ], [ 0, %bb.br ]
  %i.ij = shl i8 %.3, 1
end_hunk_1
begin_hunk_2_@petite_inflate2x_1to9:bb.a
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %doubledl.exit929
  %.5975 = phi ptr [ %.21, %bb.cb ], [ %.17, %doubledl.exit929 ] ; 4 uses
  %.5964 = phi i8 [ %.016.i938, %bb.cb ], [ %.016.i924, %doubledl.exit929 ] ; 4 uses
  %.3671 = phi i32 [ %i.jw, %bb.cb ], [ %i.jd, %doubledl.exit929 ]
  %i.jx = add nsw i32 %.3671, %.0667              ; 9 uses
  %i.jy = sub i32 %.06881261, %i.jx               ; 4 uses
  %i.jz = icmp slt i32 %i.jx, 1
  %.not832 = icmp ugt i32 %i.jx, %2
  %or.cond868 = or i1 %i.jz, %.not832
end_hunk_2
begin_hunk_3_@petite_inflate2x_1to9:bb.a
  br i1 %or.cond869, label %.thread1057.sink.split, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ka = zext nneg i32 %i.jx to i64              ; 7 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.06901260, i64 %i.ka ; 2 uses
  %.not834 = icmp ule ptr %i.kb, %i.o
  %i.kc = icmp ugt ptr %i.kb, %0
end_hunk_3
begin_hunk_4_@petite_inflate2x_1to9:bb.a
  br i1 %or.cond870, label %bb.ce, label %.thread1057.sink.split

bb.ce:                                            ; preds = %bb.cd
  %i.kd = sext i32 %.1674 to i64                  ; 13 uses
  %i.ke = getelementptr inbounds i8, ptr %.06901260, i64 %i.kd ; 2 uses
  %.not835 = icmp ult ptr %i.ke, %0
  br i1 %.not835, label %.thread1057.sink.split, label %bb.cf
end_hunk_4
begin_hunk_5_@petite_inflate2x_1to9:bb.a
  br i1 %or.cond871, label %.lr.ph1256.preheader.a, label %.thread1057.sink.split

.lr.ph1256.preheader.a:                           ; preds = %bb.cf
  %min.iters.check = icmp ult i32 %i.jx, 4
  %i.kh = add nsw i64 %i.kd, 31
  %diff.check = icmp ult i64 %i.kh, 32
  %or.cond1793 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1793, label %.lr.ph1256.preheader1806, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph1256.preheader.a
  %min.iters.check1791 = icmp ult i32 %i.jx, 32
  br i1 %min.iters.check1791, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ka, 28
  %n.vec = and i64 %i.ka, 2147483616              ; 5 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %i.ki = sub nsw i32 %i.jx, %.cast
  %i.kj = getelementptr i8, ptr %.06901260, i64 %n.vec ; 2 uses
end_hunk_5
begin_hunk_6_@petite_inflate2x_1to9:bb.a
  store <16 x i8> %wide.load1791, ptr %i.km, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kn = icmp eq i64 %index.next, %n.vec
  br i1 %i.kn, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ka
  br i1 %cmp.n, label %.loopexit1099, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1256.preheader1806, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1795 = and i64 %i.ka, 2147483644          ; 4 uses
  %.cast1796 = trunc nuw nsw i64 %n.vec1795 to i32
  %11 = sub nsw i32 %i.jx, %.cast1796
  %12 = getelementptr i8, ptr %.06901260, i64 %n.vec1795 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1797 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1800, %vec.epilog.vector.body ] ; 2 uses
  %next.gep1798 = getelementptr i8, ptr %.06901260, i64 %index1797 ; 2 uses
  %13 = getelementptr inbounds i8, ptr %next.gep1798, i64 %i.kd
  %wide.load1799 = load <4 x i8>, ptr %13, align 1, !tbaa !22
  store <4 x i8> %wide.load1799, ptr %next.gep1798, align 1, !tbaa !22
  %index.next1800 = add nuw i64 %index1797, 4     ; 2 uses
  %14 = icmp eq i64 %index.next1800, %n.vec1795
  br i1 %14, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !28

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %n.vec1795, %i.ka
  br i1 %cmp.n.a, label %.loopexit1099, label %.lr.ph1256.preheader1806

.lr.ph1256.preheader1806:                         ; preds = %.lr.ph1256.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.46721255.ph = phi i32 [ %i.jx, %.lr.ph1256.preheader.a ], [ %i.ki, %vec.epilog.iter.check ], [ %11, %middle.block.a ] ; 4 uses
  %.16911254.ph = phi ptr [ %.06901260, %.lr.ph1256.preheader.a ], [ %i.kj, %vec.epilog.iter.check ], [ %12, %middle.block.a ] ; 2 uses
  %i.ko = add nsw i32 %.46721255.ph, -1
  %xtraiter = and i32 %.46721255.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_6
begin_hunk_7_@petite_inflate2x_1to9:bb.a
  %i.ks = getelementptr inbounds nuw i8, ptr %.16911254.prol, i64 1 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1256.prol.loopexit, label %.lr.ph1256.prol, !llvm.loop !29

.lr.ph1256.prol.loopexit:                         ; preds = %.lr.ph1256.prol, %.lr.ph1256.preheader1806
  %.lcssa1817.unr = phi ptr [ poison, %.lr.ph1256.preheader1806 ], [ %i.ks, %.lr.ph1256.prol ]
end_hunk_7
begin_hunk_8_@petite_inflate2x_1to9:bb.a
  store i8 %i.lr, ptr %i.lo, align 1, !tbaa !22
  %i.ls = getelementptr inbounds nuw i8, ptr %.16911254, i64 8 ; 2 uses
  %.not837.7 = icmp eq i32 %i.lp, 0
  br i1 %.not837.7, label %.loopexit1099, label %.lr.ph1256, !llvm.loop !31

.loopexit1099:                                    ; preds = %.lr.ph1256.prol.loopexit, %.lr.ph1256, %middle.block, %middle.block.a, %bb.bg
  %.6976 = phi ptr [ %i.gp, %bb.bg ], [ %.5975, %middle.block ], [ %.5975, %middle.block.a ], [ %.5975, %.lr.ph1256 ], [ %.5975, %.lr.ph1256.prol.loopexit ]
  %.6965 = phi i8 [ %.016.i, %bb.bg ], [ %.5964, %middle.block ], [ %.5964, %middle.block.a ], [ %.5964, %.lr.ph1256 ], [ %.5964, %.lr.ph1256.prol.loopexit ]
  %.2692 = phi ptr [ %i.gq, %bb.bg ], [ %i.kj, %middle.block ], [ %12, %middle.block.a ], [ %.lcssa1817.unr, %.lr.ph1256.prol.loopexit ], [ %i.ls, %.lr.ph1256 ] ; 2 uses
  %.1689 = phi i32 [ %i.gu, %bb.bg ], [ %i.jy, %middle.block ], [ %i.jy, %middle.block.a ], [ %i.jy, %.lr.ph1256 ], [ %i.jy, %.lr.ph1256.prol.loopexit ] ; 2 uses
  %.2675 = phi i32 [ %.06731262, %bb.bg ], [ %.1674, %middle.block ], [ %.1674, %middle.block.a ], [ %.1674, %.lr.ph1256 ], [ %.1674, %.lr.ph1256.prol.loopexit ]
  %.not811 = icmp eq i32 %.1689, 0
  br i1 %.not811, label %._crit_edge, label %.lr.ph1263, !llvm.loop !32

._crit_edge:                                      ; preds = %.loopexit1099, %bb.ba
  %.0690.lcssa = phi ptr [ %i.ge, %bb.ba ], [ %.2692, %.loopexit1099 ] ; 3 uses
end_hunk_8
begin_hunk_9_@llvm.assume
!24 = distinct !{!24, !13, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 4, i32 28}
!28 = distinct !{!28, !13, !25, !26}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = distinct !{!31, !13, !25}
!32 = distinct !{!32, !13}
end_hunk_9
