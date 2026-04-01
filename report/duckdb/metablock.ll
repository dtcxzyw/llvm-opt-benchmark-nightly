begin_hunk_0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2176 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2184 ; 2 uses
  %.not4555.i = icmp eq i64 %8, 0                 ; 5 uses
  %i.g = add i32 %.sroa.12242.0.copyload, 16      ; 4 uses
  %notmask.i.us.i = shl nsw i32 -1, %.sroa.0234.0.copyload
  %i.h = xor i32 %notmask.i.us.i, -1              ; 2 uses
  %i.i = zext i32 %.sroa.0234.0.copyload to i64
  %invariant.op = sub i32 -16, %.sroa.12242.0.copyload
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.n
end_hunk_0
begin_hunk_1
  %i.bs = lshr i32 %i.bp, 10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !40
  %i.bv = add i32 %i.bq, %invariant.op            ; 2 uses
  %i.bw = lshr i32 %i.bv, %.sroa.0234.0.copyload
  %i.bx = and i32 %i.bv, %i.h
  %i.by = and i32 %i.bw, 1
end_hunk_1
begin_hunk_2

bb.s:                                             ; preds = %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216.thread
  %i.fq = load i32, ptr %.sroa.12242.0..sroa_idx, align 4, !tbaa !10
  %11 = icmp eq i32 %.sroa.12242.0.copyload, %i.fq
  %or.cond.i = or i1 %.not4555.i, %11
  br i1 %or.cond.i, label %_ZL25RecomputeDistancePrefixesPN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS4_.exit, label %.lr.ph.i217.preheader

bb.t:                                             ; preds = %_ZL19ComputeDistanceCostPKN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS5_PdPNS_17HistogramDistanceE.exit216.thread
  br i1 %.not4555.i, label %_ZL25RecomputeDistancePrefixesPN13duckdb_brotli7CommandEmPK20BrotliDistanceParamsS4_.exit, label %.lr.ph.i217.preheader

.lr.ph.i217.preheader:                            ; preds = %bb.t, %bb.s
  %invariant.op436 = sub i32 -16, %.sroa.12242.0.copyload
  br label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %.lr.ph.i217.preheader, %bb.z
end_hunk_2
begin_hunk_3
  %i.gd = lshr i32 %i.ga, 10
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !40
  %i.gg = add i32 %i.gb, %invariant.op436         ; 2 uses
  %i.gh = lshr i32 %i.gg, %.sroa.0234.0.copyload
  %i.gi = and i32 %i.gg, %i.h
  %i.gj = and i32 %i.gh, 1
end_hunk_3
