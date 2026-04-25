inline.NumInlined: 85
inline.NumDeleted: 33
begin_hunk_0_@ss_swapmerge:bb.a
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.bq
  %.0226 = phi ptr [ %i.si, %bb.bq ], [ %.0226.ph, %.backedge.outer ] ; 37 uses
  %.0224 = phi ptr [ %.1229, %bb.bq ], [ %.0224.ph, %.backedge.outer ] ; 29 uses
  %.0217 = phi i32 [ %i.tq, %bb.bq ], [ %.0217.ph, %.backedge.outer ] ; 10 uses
  %.0215 = phi i32 [ %i.tu, %bb.bq ], [ %.0215.ph, %.backedge.outer ] ; 12 uses
end_hunk_0
begin_hunk_1_@ss_swapmerge:bb.a
  br label %ss_compare.exit384.thread

ss_compare.exit384.thread:                        ; preds = %.thread.i377, %bb.bj, %ss_compare.exit384, %bb.bk
  %.1223 = phi i32 [ %i.rl, %bb.bk ], [ %.0222545, %ss_compare.exit384 ], [ %.0222545, %bb.bj ], [ %.0222545, %.thread.i377 ] ; 8 uses
  %.1220 = phi i32 [ %i.ro, %bb.bk ], [ %.0219547, %ss_compare.exit384 ], [ %.0219547, %bb.bj ], [ %.0219547, %.thread.i377 ] ; 2 uses
  %i.rp = icmp sgt i32 %.1220, 0
  br i1 %i.rp, label %.lr.ph, label %._crit_edge, !llvm.loop !196
end_hunk_1
begin_hunk_2_@ss_swapmerge:bb.a
  br i1 %i.rq, label %bb.bl, label %._crit_edge.thread

bb.bl:                                            ; preds = %._crit_edge
  %i.rr = zext nneg i32 %.1223 to i64             ; 5 uses
  %i.rs = sub nsw i64 0, %i.rr
  %i.rt = getelementptr [4 x i8], ptr %.0226, i64 %i.rs ; 9 uses
  %min.iters.check = icmp ult i32 %.1223, 8
  br i1 %min.iters.check, label %.lr.ph.i386.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bl
  %scevgep = getelementptr i8, ptr %.0226, i64 4
  %8 = add nsw i32 %.1223, -1
  %9 = zext i32 %8 to i64                         ; 2 uses
  %10 = shl nuw nsw i64 %9, 2
  %11 = sub nsw i64 %9, %i.rr
  %12 = shl nsw i64 %11, 2
  %scevgep116 = getelementptr i8, ptr %scevgep, i64 %12
  %scevgep117 = getelementptr i8, ptr %.0226, i64 4
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %10
  %bound0 = icmp ult ptr %i.rt, %scevgep118
  %bound1 = icmp ult ptr %.0226, %scevgep116
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i386.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rr, 2147483640              ; 5 uses
  %i.ru = shl nuw nsw i64 %n.vec, 2
  %i.rv = getelementptr i8, ptr %i.rt, i64 %i.ru
end_hunk_2
begin_hunk_3_@ss_swapmerge:bb.a
  %offset.idx119 = shl i64 %index, 2
  %next.gep120 = getelementptr i8, ptr %.0226, i64 %offset.idx119 ; 3 uses
  %i.rz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !197, !noalias !200
  %wide.load121 = load <4 x i32>, ptr %i.rz, align 4, !tbaa !3, !alias.scope !197, !noalias !200
  %i.sa = getelementptr i8, ptr %next.gep120, i64 16 ; 2 uses
  %wide.load122 = load <4 x i32>, ptr %next.gep120, align 4, !tbaa !3, !alias.scope !200
  %wide.load123 = load <4 x i32>, ptr %i.sa, align 4, !tbaa !3, !alias.scope !200
  store <4 x i32> %wide.load122, ptr %next.gep, align 4, !tbaa !3, !alias.scope !197, !noalias !200
  store <4 x i32> %wide.load123, ptr %i.rz, align 4, !tbaa !3, !alias.scope !197, !noalias !200
  store <4 x i32> %wide.load, ptr %next.gep120, align 4, !tbaa !3, !alias.scope !200
  store <4 x i32> %wide.load121, ptr %i.sa, align 4, !tbaa !3, !alias.scope !200
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sb = icmp eq i64 %index.next, %n.vec
  br i1 %i.sb, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.rr
  br i1 %cmp.n, label %ss_blockswap.exit, label %.lr.ph.i386.preheader

.lr.ph.i386.preheader:                            ; preds = %vector.memcheck, %bb.bl, %middle.block
  %.012.i.ph = phi ptr [ %i.rt, %vector.memcheck ], [ %i.rt, %bb.bl ], [ %i.rv, %middle.block ]
  %.0811.i.ph = phi i32 [ %.1223, %vector.memcheck ], [ %.1223, %bb.bl ], [ %i.rw, %middle.block ]
  %.0910.i.ph = phi ptr [ %.0226, %vector.memcheck ], [ %.0226, %bb.bl ], [ %i.ry, %middle.block ]
  br label %.lr.ph.i386

.lr.ph.i386:                                      ; preds = %.lr.ph.i386.preheader, %.lr.ph.i386
end_hunk_3
begin_hunk_4_@ss_swapmerge:bb.a
  %i.sf = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.sg = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %i.sh = icmp samesign ugt i32 %.0811.i, 1
  br i1 %i.sh, label %.lr.ph.i386, label %ss_blockswap.exit, !llvm.loop !203

ss_blockswap.exit:                                ; preds = %.lr.ph.i386, %middle.block
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.0226, i64 %i.rr ; 5 uses
end_hunk_4
begin_hunk_5_@ss_swapmerge:bb.a
  %i.so = getelementptr inbounds i8, ptr %.0230, i64 -4 ; 4 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !3
  %i.sq = icmp slt i32 %i.sp, 0
  br i1 %i.sq, label %.preheader, label %.loopexit.loopexit, !llvm.loop !204

bb.bo:                                            ; preds = %bb.bm
  %i.sr = icmp ult ptr %.0224, %i.rt
end_hunk_5
begin_hunk_6_@ss_swapmerge:bb.a
  %i.ss = load i32, ptr %.0228, align 4, !tbaa !3
  %i.st = icmp slt i32 %i.ss, 0
  %i.su = getelementptr inbounds nuw i8, ptr %.0228, i64 4
  br i1 %i.st, label %.preheader439, label %.loopexit.loopexit550, !llvm.loop !205

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre671 = ptrtoint ptr %i.so to i64
end_hunk_6
begin_hunk_7_@llvm.memset.p0.i64
!194 = distinct !{!194, !9}
!195 = distinct !{!195, !9}
!196 = distinct !{!196, !9}
!197 = !{!198}
!198 = distinct !{!198, !199}
!199 = distinct !{!199, !"LVerDomain"}
!200 = !{!201}
!201 = distinct !{!201, !199}
!202 = distinct !{!202, !9, !29, !30}
!203 = distinct !{!203, !9, !29}
!204 = distinct !{!204, !9}
!205 = distinct !{!205, !9}
end_hunk_7
