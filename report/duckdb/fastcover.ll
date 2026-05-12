inline.NumInlined: 29
inline.NumDeleted: 15
begin_hunk_0_@_ZN11duckdb_zstdL18FASTCOVER_ctx_initEPNS_15FASTCOVER_ctx_tEPKvPKmjjdjNS_17FASTCOVER_accel_tE:bb.a
  store i64 %7, ptr %i.bm, align 8
  %i.bn = add i32 %3, 1                           ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = tail call noalias ptr @calloc(i64 noundef %i.bo, i64 noundef 8) #15 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !28
  %i.br = icmp eq ptr %i.bp, null
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL18FASTCOVER_ctx_initEPNS_15FASTCOVER_ctx_tEPKvPKmjjdjNS_17FASTCOVER_accel_tE:bb.a
  br label %_ZN11duckdb_zstdL26FASTCOVER_computeFrequencyEPjPKNS_15FASTCOVER_ctx_tE.exit

bb.r:                                             ; preds = %.thread81
  %umax = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 2) ; 2 uses
  %wide.trip.count = zext i32 %umax to i64
  %i.cb = add nsw i64 %wide.trip.count, -1        ; 2 uses
end_hunk_1
