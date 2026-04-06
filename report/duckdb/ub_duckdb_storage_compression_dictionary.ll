begin_hunk_0_@_ZN6duckdb34DictionaryCompressionCompressState26CalculateSpaceRequirementsEbm:bb.a
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !165
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !220
  %i.bi = zext i32 %i.bh to i64
end_hunk_0
begin_hunk_1_@_ZN6duckdb34DictionaryCompressionCompressState26CalculateSpaceRequirementsEbm:bb.a
  %i.by = mul i64 %.0.i.i.i.i5, %i.bx
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add i64 %2, 24
  %i.cb = add i64 %i.ca, %i.be
  %3 = sub i64 %i.cb, %i.bf
  %i.cc = add i64 %3, %i.bi
  %i.cd = add i64 %i.cc, %i.bz
  %i.ce = icmp ule i64 %i.cd, %i.bq
  br label %bb.f
end_hunk_1
