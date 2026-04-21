inline.NumInlined: 37
inline.NumDeleted: 11
begin_hunk_0_@_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi:bb.a

bb.t:                                             ; preds = %bb.s
  %i.bv = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1162.i.i, i1 true) ; 2 uses
  %6 = xor i32 %i.bv, 31
  %i.bw = sub nuw nsw i32 32, %i.bv
  %7 = shl nuw nsw i32 1, %6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.1159.i.i = phi i32 [ %7, %bb.t ], [ %.0158.i.i, %bb.r ]
  %.1138.i.i = phi i32 [ %i.bw, %bb.t ], [ %.0137.i.i, %bb.r ]
  %.not180.i.i = icmp ult i32 %i.bp, %i.e
  br i1 %.not180.i.i, label %bb.v, label %.thread18
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm:bb.a

bb.r:                                             ; preds = %bb.q
  %i.bu = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1162.i, i1 true) ; 2 uses
  %5 = xor i32 %i.bu, 31
  %i.bv = sub nuw nsw i32 32, %i.bu
  %6 = shl nuw nsw i32 1, %5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.1159.i = phi i32 [ %6, %bb.r ], [ %.0158.i, %bb.p ]
  %.1138.i = phi i32 [ %i.bv, %bb.r ], [ %.0137.i, %bb.p ]
  %.not180.i = icmp ult i32 %i.bo, %i.d
  br i1 %.not180.i, label %bb.t, label %.thread11
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi:bb.a
  %i.br = shl nuw nsw i32 2, %i.bo
  %i.bs = sub i32 %i.br, %i.bk                    ; 2 uses
  %i.bt = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bs, i1 true) ; 2 uses
  %10 = xor i32 %i.bt, 31
  %11 = shl nuw i32 1, %10
  %.not91.i.i = icmp eq i32 %11, %i.bs
  br i1 %.not91.i.i, label %bb.l, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

bb.l:                                             ; preds = %bb.k
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm:bb.a
  %i.bs = shl nuw nsw i32 2, %i.bp
  %i.bt = sub i32 %i.bs, %i.bl                    ; 2 uses
  %i.bu = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true) ; 2 uses
  %9 = xor i32 %i.bu, 31
  %10 = shl nuw i32 1, %9
  %.not91.i = icmp eq i32 %10, %i.bt
  br i1 %.not91.i, label %bb.j, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

bb.j:                                             ; preds = %bb.i
end_hunk_3
