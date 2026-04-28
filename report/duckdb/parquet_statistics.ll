inline.NumInlined: 975
inline.NumDeleted: 448
begin_hunk_0_@_ZN6duckdbL16ApplyBloomFilterERKNS_11TableFilterERNS_18ParquetBloomFilterE:bb.a
  %i.bq = lshr i32 %i.bp, 27
  %i.br = mul i32 %i.bg, 1550580529
  %i.bs = lshr i32 %i.br, 27
  %i.bt = lshr i32 %i.bj, 27
  %i.bu = lshr i32 %i.bk, 27
  %i.bv = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bw = lshr i32 %i.bv, %i.bi
  %i.bx = trunc i32 %i.bw to i1
end_hunk_0
begin_hunk_1_@_ZN6duckdbL16ApplyBloomFilterERKNS_11TableFilterERNS_18ParquetBloomFilterE:bb.a
bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = lshr i32 %i.cf, %i.bt
  %i.ch = trunc i32 %i.cg to i1
  br i1 %i.ch, label %bb.s, label %_ZN6duckdbL10ValueXXH64ERKNS_5ValueE.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = lshr i32 %i.cj, %i.bu
  %i.cl = trunc i32 %i.ck to i1
  br i1 %i.cl, label %bb.t, label %_ZN6duckdbL10ValueXXH64ERKNS_5ValueE.exit.thread

end_hunk_1
begin_hunk_2_@_ZN6duckdb18ParquetBloomFilter11FilterCheckEm:bb.a
  %i.s = lshr i32 %i.r, 27
  %i.t = mul i32 %i.i, 1550580529
  %i.u = lshr i32 %i.t, 27
  %i.v = lshr i32 %i.l, 27
  %i.w = lshr i32 %i.m, 27
  %i.x = load i32, ptr %i.h, align 4, !tbaa !3
  %i.y = lshr i32 %i.x, %i.k
  %i.z = trunc i32 %i.y to i1
end_hunk_2
begin_hunk_3_@_ZN6duckdb18ParquetBloomFilter11FilterCheckEm:bb.a
bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = lshr i32 %i.ah, %i.v
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN6duckdb17ParquetBloomBlock10BlockCheckERS0_j.exit

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = lshr i32 %i.al, %i.w
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %bb.e, label %_ZN6duckdb17ParquetBloomBlock10BlockCheckERS0_j.exit

end_hunk_3
