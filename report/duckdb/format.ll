inline.NumInlined: 5790
inline.NumDeleted: 1347
begin_hunk_0_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !810, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !815
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !810, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.n, i64 20, i1 false)
  %i.o = zext i32 %i.i to i64
  %i.p = add nuw nsw i64 %i.m, %i.o               ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_2
begin_hunk_3_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.aj, align 8, !tbaa !815
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !810, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.bn, i64 20, i1 false)
  %i.bo = zext i32 %.119 to i64
  %i.bp = add nuw nsw i64 %i.bm, %i.bo            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_4
begin_hunk_5_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.ci, align 8, !tbaa !826
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_5
begin_hunk_6_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !810, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_6
begin_hunk_7_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !840
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_7
begin_hunk_8_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !810, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_8
begin_hunk_9_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !846
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_9
begin_hunk_10_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !930, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_10
begin_hunk_11_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !935
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_11
begin_hunk_12_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !930, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.n, i64 20, i1 false)
  %i.o = zext i32 %i.i to i64
  %i.p = add nuw nsw i64 %i.m, %i.o               ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_12
begin_hunk_13_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.aj, align 8, !tbaa !935
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_13
begin_hunk_14_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !930, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.bn, i64 20, i1 false)
  %i.bo = zext i32 %.119 to i64
  %i.bp = add nuw nsw i64 %i.bm, %i.bo            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_14
begin_hunk_15_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.ci, align 8, !tbaa !946
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_15
begin_hunk_16_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !930, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_16
begin_hunk_17_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !958
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_17
begin_hunk_18_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !930, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_18
begin_hunk_19_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !963
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_19
begin_hunk_20_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIwEENS1_12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2540, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %i.l, i64 40, i1 false)
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
end_hunk_20
begin_hunk_21_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIwEENS1_12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !2545
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(37) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_21
begin_hunk_22_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE6on_numEv:bb.a
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !2540, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.o = zext i32 %i.i to i64
  %i.p = add nuw nsw i64 %i.m, %i.o               ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
end_hunk_22
begin_hunk_23_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE6on_numEv:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.aj, align 8, !tbaa !2545
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(37) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_23
begin_hunk_24_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE6on_numEv:bb.a
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !2540, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(40) %i.bn, i64 40, i1 false)
  %i.bo = sext i8 %i.g to i32
  %i.bp = zext i32 %.119 to i64
  %i.bq = add nuw nsw i64 %i.bm, %i.bp            ; 3 uses
end_hunk_24
begin_hunk_25_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE6on_numEv:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.cj, align 8, !tbaa !2556
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_25
begin_hunk_26_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE6on_binEv:bb.a
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !2540, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(40) %i.aa, i64 40, i1 false)
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12
end_hunk_26
begin_hunk_27_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE6on_binEv:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !2568
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(37) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_27
begin_hunk_28_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE6on_octEv:bb.a
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !2540, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(40) %i.x, i64 40, i1 false)
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12
end_hunk_28
begin_hunk_29_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE6on_octEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !2573
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(37) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_29
begin_hunk_30_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIwEENS1_12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2776, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) %i.l, i64 40, i1 false)
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
end_hunk_30
begin_hunk_31_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIwEENS1_12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !2781
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(37) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_31
begin_hunk_32_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE6on_numEv:bb.a
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !2776, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(40) %i.n, i64 40, i1 false)
  %i.o = zext i32 %i.i to i64
  %i.p = add nuw nsw i64 %i.m, %i.o               ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
end_hunk_32
begin_hunk_33_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE6on_numEv:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.aj, align 8, !tbaa !2781
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(37) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_33
begin_hunk_34_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE6on_numEv:bb.a
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !2776, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(40) %i.bn, i64 40, i1 false)
  %i.bo = sext i8 %i.g to i32
  %i.bp = zext i32 %.119 to i64
  %i.bq = add nuw nsw i64 %i.bm, %i.bp            ; 3 uses
end_hunk_34
begin_hunk_35_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE6on_numEv:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.cj, align 8, !tbaa !2792
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_35
begin_hunk_36_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE6on_binEv:bb.a
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !2776, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(40) %i.aa, i64 40, i1 false)
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12
end_hunk_36
begin_hunk_37_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE6on_binEv:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !2804
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(37) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_37
begin_hunk_38_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE6on_octEv:bb.a
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !2776, !nonnull !174, !align !269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(40) %i.x, i64 40, i1 false)
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12
end_hunk_38
begin_hunk_39_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE6on_octEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !2809
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIwEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIwEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(37) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_39
