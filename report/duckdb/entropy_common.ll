inline.NumInlined: 37
inline.NumDeleted: 11
begin_hunk_0_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %i.bm = add i32 %.075.i11.i, 1                  ; 2 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %.not90.i.i = icmp ugt i64 %.074.i25.i, %i.bn
  br i1 %.not90.i.i, label %.lr.ph13.i, label %bb.j, !llvm.loop !26

bb.j:                                             ; preds = %bb.i
  %10 = add i32 %i.bl, -4096
  %or.cond.i = icmp ult i32 %10, -4095
  br i1 %or.cond.i, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %11 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bl, i1 true) ; 2 uses
  %12 = sub nuw nsw i32 31, %11
  %i.bo = sub nuw nsw i32 32, %11
  store i32 %i.bo, ptr %4, align 4, !tbaa !3
  %i.bp = shl nuw nsw i32 2, %12
  %i.bq = sub nsw i32 %i.bp, %i.bl                ; 2 uses
  %i.br = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true) ; 2 uses
  %i.bs = lshr exact i32 -2147483648, %i.br
  %.not91.i.i = icmp eq i32 %i.bs, %i.bq
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %i.cg = add nuw nsw i64 %.073.i27.i, 1
  br label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit: ; preds = %.lr.ph13.i, %bb.m, %bb.l, %bb.k, %bb.j, %.loopexit.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ -72, %bb.c ], [ -72, %bb.e ], [ %i.ax, %bb.h ], [ -20, %bb.j ], [ %i.cg, %bb.m ], [ -20, %bb.k ], [ -20, %bb.l ], [ -20, %bb.f ], [ -72, %bb.g ], [ -20, %.loopexit.i ], [ -20, %.lr.ph13.i ]
  ret i64 %.0
}

end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %i.bn = add i32 %.075.i11, 1                    ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %.not90.i = icmp ugt i64 %.074.i25, %i.bo
  br i1 %.not90.i, label %.lr.ph13, label %bb.h, !llvm.loop !26

bb.h:                                             ; preds = %bb.g
  %9 = add i32 %i.bm, -4096
  %or.cond = icmp ult i32 %9, -4095
  br i1 %or.cond, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %10 = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bm, i1 true) ; 2 uses
  %11 = sub nuw nsw i32 31, %10
  %i.bp = sub nuw nsw i32 32, %10
  store i32 %i.bp, ptr %4, align 4, !tbaa !3
  %i.bq = shl nuw nsw i32 2, %11
  %i.br = sub nsw i32 %i.bq, %i.bm                ; 2 uses
  %i.bs = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.br, i1 true) ; 2 uses
  %i.bt = lshr exact i32 -2147483648, %i.bs
  %.not91.i = icmp eq i32 %i.bt, %i.br
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %i.ch = add nuw nsw i64 %.073.i27, 1
  br label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit: ; preds = %.lr.ph13, %.loopexit, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j, %bb.k
  %.3.i = phi i64 [ -72, %bb.a ], [ -72, %bb.c ], [ %i.ay, %bb.f ], [ -20, %bb.h ], [ %i.ch, %bb.k ], [ -20, %bb.i ], [ -20, %bb.j ], [ -20, %bb.d ], [ -72, %bb.e ], [ -20, %.loopexit ], [ -20, %.lr.ph13 ]
  ret i64 %.3.i
}

end_hunk_3
