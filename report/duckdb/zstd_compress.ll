inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@_ZN11duckdb_zstd23ZSTD_compressEnd_publicEPNS_11ZSTD_CCtx_sEPvmPKvm:bb.a
  %spec.select.i = select i1 %.not.i, i8 %i.n, i8 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %spec.select.i, ptr %i.w, align 1, !tbaa !220
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i32 2, ptr %0, align 8, !tbaa !195
  store i16 1, ptr %i.x, align 1, !tbaa !256
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 0, ptr %i.y, align 1, !tbaa !220
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.aa = add i64 %i.d, -5
  %6 = sub nuw i64 %i.aa, %.0.i.i
  br label %bb.h

bb.g:                                             ; preds = %bb.b
end_hunk_0
