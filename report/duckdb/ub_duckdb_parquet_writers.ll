inline.NumInlined: 2405
inline.NumDeleted: 1305
begin_hunk_0_@_ZN6duckdb21PrimitiveColumnWriter7PrepareERNS_17ColumnWriterStateEPS1_RNS_6VectorEmb:bb.a
bb.o:                                             ; preds = %bb.n
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !97
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store <4 x i64> zeroinitializer, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ct = load ptr, ptr %i.bm, align 8, !tbaa !471
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store ptr %i.cu, ptr %i.bm, align 8, !tbaa !471
end_hunk_0
begin_hunk_1_@_ZN6duckdb21PrimitiveColumnWriter7PrepareERNS_17ColumnWriterStateEPS1_RNS_6VectorEmb:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store i64 %i.cq, ptr %i.dh, align 8, !tbaa !97
  %.sroa.6.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store <4 x i64> zeroinitializer, ptr %.sroa.6.0..sroa_idx70, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.cr
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15PageInformationESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_1
