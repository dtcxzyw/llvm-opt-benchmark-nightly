inline.NumInlined: 85
inline.NumDeleted: 33
begin_hunk_0_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  %.lobit.i = ashr i32 %i.ae, 31
  %.pn.in.i = xor i32 %.lobit.i, %i.ae
  %.lobit186.i = lshr i32 %i.ae, 31
  %.pn.i = zext i32 %.pn.in.i to i64
  %.0127.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn.i
  %i.af = getelementptr inbounds i8, ptr %.0226, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3  ; 3 uses
  %.lobit187.i = ashr i32 %i.ag, 31
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  %.0143.i.ph = phi ptr [ %i.af, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.0143.i.ph.be, %.outer.backedge ]
  %.0134.i.ph = phi ptr [ %i.aj, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.0134.i.ph.be, %.outer.backedge ]
  %.1132.i.ph = phi ptr [ %.0131.i, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.1132.i.ph.be, %.outer.backedge ]
  %.1128.i.ph = phi ptr [ %.0127.i, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.1128.i.ph.be, %.outer.backedge ] ; 2 uses
  %.2.i.ph = phi i32 [ %.1.i, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.2.i.ph.be, %.outer.backedge ]
  %i.al = getelementptr i8, ptr %.1128.i.ph, i64 4
  br label %bb.d

end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
  store i32 %i.bx, ptr %.2151.i, align 4, !tbaa !3
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3  ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.i, label %10

bb.i:                                             ; preds = %bb.h
  %i.cb = xor i32 %i.bz, -1
  %8 = zext nneg i32 %i.cb to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %8
  %i.cc = or disjoint i32 %.3.i, 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.i, %10, %bb.q, %bb.r
  %.0149.i.ph.be = phi ptr [ %i.do, %bb.r ], [ %i.do, %bb.q ], [ %i.by, %10 ], [ %i.by, %bb.i ]
  %.0143.i.ph.be = phi ptr [ %i.dz, %bb.r ], [ %i.dz, %bb.q ], [ %.0143.i, %10 ], [ %.0143.i, %bb.i ]
  %.0134.i.ph.be = phi ptr [ %i.dx, %bb.r ], [ %i.dx, %bb.q ], [ %i.bw, %10 ], [ %i.bw, %bb.i ]
  %.1132.i.ph.be = phi ptr [ %i.eq, %bb.r ], [ %i.en, %bb.q ], [ %.1132.i, %10 ], [ %.1132.i, %bb.i ]
  %.1128.i.ph.be = phi ptr [ %.2129.i, %bb.r ], [ %.2129.i, %bb.q ], [ %12, %10 ], [ %9, %bb.i ]
  %.2.i.ph.be = phi i32 [ %.7.i, %bb.r ], [ %i.eo, %bb.q ], [ %.3.i, %10 ], [ %i.cc, %bb.i ]
  br label %.outer, !llvm.loop !179

10:                                               ; preds = %bb.h
  %11 = zext nneg i32 %i.bz to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %11
  br label %.outer.backedge

bb.j:                                             ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.i, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread185.i
  %i.cd = phi i32 [ %i.bg, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread185.i ], [ %i.bl, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.i ]
  %i.ce = icmp slt i32 %i.cd, 0
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
bb.p:                                             ; preds = %._crit_edge249.i
  %i.eh = load i32, ptr %i.do, align 4, !tbaa !3  ; 3 uses
  %.lobit188.i = ashr i32 %i.eh, 31
  %.pn178.in.i = xor i32 %.lobit188.i, %i.eh
  %i.ei = lshr i32 %i.eh, 31
  %.7.i = or i32 %i.ei, %.6.i                     ; 2 uses
  %.pn178.i = zext i32 %.pn178.in.i to i64
  %.2129.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn178.i ; 2 uses
  %i.ej = load i32, ptr %i.dz, align 4, !tbaa !3  ; 3 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.q, label %bb.r
end_hunk_3
