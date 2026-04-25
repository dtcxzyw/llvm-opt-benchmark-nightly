inline.NumInlined: 85
inline.NumDeleted: 33
begin_hunk_0_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.br
  %.0226 = phi ptr [ %i.si, %bb.br ], [ %.0226.ph, %.backedge.outer ] ; 33 uses
  %.0224 = phi ptr [ %.1229, %bb.br ], [ %.0224.ph, %.backedge.outer ] ; 29 uses
  %.0217 = phi i32 [ %i.tq, %bb.br ], [ %.0217.ph, %.backedge.outer ] ; 10 uses
  %.0215 = phi i32 [ %i.tu, %bb.br ], [ %.0215.ph, %.backedge.outer ] ; 12 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  br label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread: ; preds = %.thread.i377, %bb.bk, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384, %bb.bl
  %.1223 = phi i32 [ %i.rl, %bb.bl ], [ %.0222545, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384 ], [ %.0222545, %bb.bk ], [ %.0222545, %.thread.i377 ] ; 6 uses
  %.1220 = phi i32 [ %i.ro, %bb.bl ], [ %.0219547, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384 ], [ %.0219547, %bb.bk ], [ %.0219547, %.thread.i377 ] ; 2 uses
  %i.rp = icmp sgt i32 %.1220, 0
  br i1 %i.rp, label %.lr.ph, label %._crit_edge, !llvm.loop !205
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  br i1 %i.rq, label %bb.bm, label %._crit_edge.thread

bb.bm:                                            ; preds = %._crit_edge
  %i.rr = zext nneg i32 %.1223 to i64             ; 4 uses
  %i.rs = sub nsw i64 0, %i.rr
  %i.rt = getelementptr inbounds [4 x i8], ptr %.0226, i64 %i.rs ; 7 uses
  %min.iters.check = icmp ult i32 %.1223, 8
  br i1 %min.iters.check, label %.lr.ph.i386.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bm
  %n.vec = and i64 %i.rr, 2147483640              ; 5 uses
  %i.ru = shl nuw nsw i64 %n.vec, 2
  %i.rv = getelementptr i8, ptr %i.rt, i64 %i.ru
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  %offset.idx119 = shl i64 %index, 2
  %next.gep120 = getelementptr i8, ptr %.0226, i64 %offset.idx119 ; 3 uses
  %i.rz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load121 = load <4 x i32>, ptr %i.rz, align 4, !tbaa !3
  %i.sa = getelementptr i8, ptr %next.gep120, i64 16 ; 2 uses
  %wide.load122 = load <4 x i32>, ptr %next.gep120, align 4, !tbaa !3
  %wide.load123 = load <4 x i32>, ptr %i.sa, align 4, !tbaa !3
  store <4 x i32> %wide.load122, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load123, ptr %i.rz, align 4, !tbaa !3
  store <4 x i32> %wide.load, ptr %next.gep120, align 4, !tbaa !3
  store <4 x i32> %wide.load121, ptr %i.sa, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sb = icmp eq i64 %index.next, %n.vec
  br i1 %i.sb, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.rr
  br i1 %cmp.n, label %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit, label %.lr.ph.i386.preheader

.lr.ph.i386.preheader:                            ; preds = %bb.bm, %middle.block
  %.012.i.ph = phi ptr [ %i.rt, %bb.bm ], [ %i.rv, %middle.block ]
  %.0811.i.ph = phi i32 [ %.1223, %bb.bm ], [ %i.rw, %middle.block ]
  %.0910.i.ph = phi ptr [ %.0226, %bb.bm ], [ %i.ry, %middle.block ]
  br label %.lr.ph.i386

.lr.ph.i386:                                      ; preds = %.lr.ph.i386.preheader, %.lr.ph.i386
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  %i.sf = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.sg = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %i.sh = icmp samesign ugt i32 %.0811.i, 1
  br i1 %i.sh, label %.lr.ph.i386, label %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit, !llvm.loop !207

_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit:      ; preds = %.lr.ph.i386, %middle.block
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %.0226, i64 %i.rr ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  %i.so = getelementptr inbounds i8, ptr %.0230, i64 -4 ; 4 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !3
  %i.sq = icmp slt i32 %i.sp, 0
  br i1 %i.sq, label %.preheader, label %.loopexit.loopexit, !llvm.loop !208

bb.bp:                                            ; preds = %bb.bn
  %i.sr = icmp ult ptr %.0224, %i.rt
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  %i.ss = load i32, ptr %.0228, align 4, !tbaa !3
  %i.st = icmp slt i32 %i.ss, 0
  %i.su = getelementptr inbounds nuw i8, ptr %.0228, i64 4
  br i1 %i.st, label %.preheader439, label %.loopexit.loopexit550, !llvm.loop !209

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre671 = ptrtoint ptr %i.so to i64
end_hunk_6
begin_hunk_7_@llvm.memset.p0.i64
!203 = distinct !{!203, !9}
!204 = distinct !{!204, !9}
!205 = distinct !{!205, !9}
!206 = distinct !{!206, !9, !29, !30}
!207 = distinct !{!207, !9, !30, !29}
!208 = distinct !{!208, !9}
!209 = distinct !{!209, !9}
end_hunk_7
