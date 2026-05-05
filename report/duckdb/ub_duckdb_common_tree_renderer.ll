inline.NumInlined: 5197
inline.NumDeleted: 1387
begin_hunk_0_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1551, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.e, align 8
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_0
begin_hunk_1_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !1556
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_1
begin_hunk_2_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1551, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.f, align 8
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_2
begin_hunk_3_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !1556
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !1551, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %.sroa.0.0.copyload4.i31 = load <2 x i64>, ptr %i.ap, align 8
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_4
begin_hunk_5_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !1556
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i31, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_5
begin_hunk_6_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !1551, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %.sroa.0.0.copyload52 = load <2 x i64>, ptr %i.ap, align 8
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_6
begin_hunk_7_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !1562
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload52, ptr %i.dr, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_7
begin_hunk_8_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1551, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %.sroa.0.0.copyload4 = load <2 x i64>, ptr %i.r, align 8
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_8
begin_hunk_9_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !1576
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload4, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_9
begin_hunk_10_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !1551, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %.sroa.0.0.copyload5 = load <2 x i64>, ptr %i.a, align 8
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_10
begin_hunk_11_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !1582
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload5, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_11
begin_hunk_12_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1669, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.e, align 8
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_12
begin_hunk_13_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !1674
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_13
begin_hunk_14_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1669, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.f, align 8
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_14
begin_hunk_15_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !1674
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_15
begin_hunk_16_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !1669, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %.sroa.0.0.copyload4.i31 = load <2 x i64>, ptr %i.ap, align 8
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_16
begin_hunk_17_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !1674
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i31, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_17
begin_hunk_18_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !1669, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %.sroa.0.0.copyload52 = load <2 x i64>, ptr %i.ap, align 8
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_18
begin_hunk_19_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !1680
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload52, ptr %i.dr, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_19
begin_hunk_20_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1669, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %.sroa.0.0.copyload4 = load <2 x i64>, ptr %i.r, align 8
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_20
begin_hunk_21_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !1692
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload4, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_21
begin_hunk_22_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !1669, !nonnull !564, !align !933
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %.sroa.0.0.copyload5 = load <2 x i64>, ptr %i.a, align 8
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_22
begin_hunk_23_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !1697
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload5, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_23
