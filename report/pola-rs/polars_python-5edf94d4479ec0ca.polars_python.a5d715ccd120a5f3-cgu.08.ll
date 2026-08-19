inline.NumInlined: 15275
inline.NumDeleted: 4904
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMsB_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries25___pymethod_new_opt_i128__:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !187770
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !187770
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !187770
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !187770
  br label %bb.be, !dbg !187777

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !187776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !187779
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !187762
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !187762, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !187779
  %i.ag = load i64, ptr %i.q, align 8, !dbg !187780, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !187783
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !187784
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !187784 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !187783

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !187785
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !187786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !187785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !187792
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !187786
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !187786
  br label %bb.be, !dbg !187777

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !187792
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !187762
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !187762, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !187793
  %i.am = load i8, ptr %i.p, align 8, !dbg !187794, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !187794
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !187797

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !187798
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !187799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !187805
  br label %bb.be, !dbg !187777

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !187806, !noalias !187811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !187806, !noalias !187811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !187806, !noalias !187816
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !187821, !noalias !187822
  %i.aq = load i64, ptr %i.n, align 8, !dbg !187823, !range !1924, !noalias !187816, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !187826
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !187827
  %.sroa.033.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !187827, !noalias !187816 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !187826

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn6697.i.i, !dbg !187828

bb.k:                                             ; preds = %bb.i
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !187829
  %i.at = load <2 x i64>, ptr %.sroa.534.0..sroa_idx.i.i, align 8, !dbg !187829, !noalias !187830
  %.sroa.19.16..sroa.534.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !187829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.16..sroa.534.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !187829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !187831, !noalias !187816
  br label %bb.ay, !dbg !187832

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !187831, !noalias !187816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !187834, !noalias !187816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !187836, !noalias !187816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !187837
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !187837
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i, label %bb.m, !dbg !187837

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !187850
  br label %bb.q, !dbg !187851

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !187854
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !187854

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !187855 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !187859, !noalias !187860 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !187870
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !187872

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !187850
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !187873

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !187875, !noalias !187877
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !187878
  %i.az = or disjoint i8 %i.ay, -64, !dbg !187879
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !187879
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !187879, !noalias !187877
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !187880, !noalias !187882
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !187883, !noalias !187884
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !187883
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !187883, !noalias !187884
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !187883
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !187883, !noalias !187884
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !187885

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !187886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !187888, !noalias !187891
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !187892

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !187894
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !187894
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !187895 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !187850
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !187873
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !187873
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !187873, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !187896, !noalias !187822
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i
  %.sroa.075.093.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.476.092.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.091.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.075.093.i.i, ptr %i.l, align 8, !dbg !187898, !noalias !187816
  %.sroa.478.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !187898
  store i64 %.sroa.476.092.i.i, ptr %.sroa.478.0..sroa_idx.i.i, align 8, !dbg !187898, !noalias !187816
  %.sroa.579.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !187898
  store i64 %.sroa.5.091.i.i, ptr %.sroa.579.0..sroa_idx.i.i, align 8, !dbg !187898, !noalias !187816
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes10Int128TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.033.0.copyload.i.i), !dbg !187899, !noalias !187822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !187900, !noalias !187816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !187901, !noalias !187816
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !187903, !noalias !187822

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !187904

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !187905, !range !1924, !noalias !187816, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !187908
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !187909
  %.sroa.039.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !187909, !noalias !187816 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !187908

bb.t:                                             ; preds = %bb.s
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !187910
  %i.bf = load <2 x i64>, ptr %.sroa.540.0..sroa_idx.i.i, align 8, !dbg !187910, !noalias !187830
  %.sroa.19.16..sroa.540.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !187910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.16..sroa.540.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !187910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !187911, !noalias !187816
  %i.bg = ptrtoint ptr %.sroa.039.0.copyload.i.i to i64, !dbg !187912
  br label %bb.aw, !dbg !187919

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !187911, !noalias !187816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !187901, !noalias !187816
  store ptr %.sroa.039.0.copyload.i.i, ptr %i.j, align 8, !dbg !187901, !noalias !187816
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !187921

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !187923, !noalias !187822

.thread.i.i:                                      ; preds = %.body.i, %.body.thread104.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm102.i.i, %.body.thread104.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val73.i.i = load ptr, ptr %i.j, align 8, !dbg !187924, !noalias !187816, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val73.i.i) #50, !dbg !187925, !noalias !187822
  br label %bb.ax, !dbg !187904

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !187923, !range !8288, !noalias !187816, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !187923
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !187923

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !187932, !noalias !187816 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !187933
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !187933

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !187937, !noalias !187830
  %.sroa.19.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !187937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !187937
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !187938
  br label %bb.av, !dbg !187944

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !187946
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !187952

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !187953, !noalias !187816
  invoke void @_RNvXs0_NtNtNtNtCsbm5zPlkZccl_4pyo311conversions3std3num26slow_128bit_int_conversionnNtNtBd_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.h, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !187954, !noalias !187822

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !187961, !noalias !187965
  br label %.thread.i.i, !dbg !187968

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !187969), !dbg !187972
  %i.by = load i64, ptr %i.bj, align 16, !dbg !187979, !alias.scope !187969, !noalias !187982, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !187979, !range !2549, !alias.scope !187969, !noalias !187982, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !187979
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !187983

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecnE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !187989, !noalias !187990

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !187991, !alias.scope !188000, !noalias !187982, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.by, !dbg !188003
  store i128 0, ptr %i.cc, align 16, !dbg !188006, !noalias !187822
  %i.cd = add i64 %i.by, 1, !dbg !188010          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !188010, !alias.scope !188000, !noalias !187982
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !188011, !range !1927, !alias.scope !187969, !noalias !187982, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !188011
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !188012

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !188013, !alias.scope !188017, !noalias !187982, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !188020
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !188020
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !188023, !alias.scope !188017, !noalias !187982 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !188013

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !188024
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !188024

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !188028, !noalias !187990

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !188029, !alias.scope !188034, !noalias !187982, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !188037
  store i8 0, ptr %i.cl, align 1, !dbg !188039, !noalias !187822
  %i.cm = add i64 %i.ci, 1, !dbg !188041          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !188041, !alias.scope !188034, !noalias !187982
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !188042, !alias.scope !188017, !noalias !187982
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !188044

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !188042
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !188045 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !188050
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !188050, !noalias !188054
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !188055, !alias.scope !188017, !noalias !187982, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !188064
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !188064 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !188065, !noalias !188054
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !188068, !noalias !187822, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !188069
  %i.cu = and i8 %i.ct, 7, !dbg !188069
  %i.cv = shl nuw i8 1, %i.cu, !dbg !188069
  %i.cw = xor i8 %i.cv, -1, !dbg !188072
  %i.cx = and i8 %i.cs, %i.cw, !dbg !188073
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !188076, !noalias !187822
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !188077, !alias.scope !188017, !noalias !187982, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !188077
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !188077, !alias.scope !188017, !noalias !187982
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !188078

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !188079), !dbg !188082, !noalias !188054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !188083, !noalias !188086
  %i.da = load i64, ptr %i.bi, align 16, !dbg !188087, !range !2549, !alias.scope !188094, !noalias !187982, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !188095), !dbg !188098, !noalias !188054
  %i.db = add nuw i64 %i.da, 7, !dbg !188099
  %i.dc = lshr i64 %i.db, 3, !dbg !188104         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !188105, !noalias !188114
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !188105, !noalias !187990

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !188105, !range !1924, !noalias !188114, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !188115
  %i.df = load i64, ptr %i.bp, align 8, !dbg !188116, !range !1927, !noalias !188114, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !188115, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !188117, !noalias !188114
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !188118, !noalias !187990

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !188118

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !188120, !noalias !188114, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !188121
  call void @llvm.assume(i1 %i.di), !dbg !188125, !noalias !188054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !188128, !noalias !188114
  store i64 %i.df, ptr %i.d, align 8, !dbg !188129, !alias.scope !188095, !noalias !188086
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !188129, !alias.scope !188095, !noalias !188086
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !188129, !alias.scope !188095, !noalias !188086
  %i.dj = icmp ult i64 %i.cd, 576460752303423488, !dbg !188130
  call void @llvm.assume(i1 %i.dj), !dbg !188138, !noalias !188054
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !188139
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !188139

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !188142, !noalias !188086
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !188147
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !188147, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !188148, !noalias !188149

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !188150, !noalias !188149

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !188151, !noalias !188149

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !188152, !noalias !188149
  unreachable, !dbg !188152

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !188153, !noalias !188086, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !188168
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !188169 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !188174, !noalias !188149, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !188176
  %i.ds = and i8 %i.dr, 7, !dbg !188176
  %i.dt = shl nuw i8 1, %i.ds, !dbg !188176
  %i.du = xor i8 %i.dt, -1, !dbg !188179
  %i.dv = and i8 %i.dq, %i.du, !dbg !188180
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !188183, !noalias !188149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !188184, !noalias !187982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !188151, !noalias !188086
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !188082

.body.thread104.i.i:                              ; preds = %bb.at, %bb.aq
  %lpad.thr_comm102.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !187968

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !188185, !noalias !187965
  %i.dw = load i64, ptr %i.h, align 16, !dbg !188189, !range !1924, !noalias !187816, !noundef !11
  %i.dx = trunc nuw i64 %i.dw to i1, !dbg !188192
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !188192

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !188193
  %.sroa.052.0.copyload.i.i = load i64, ptr %i.dy, align 8, !dbg !188193, !noalias !187816
  %i.dz = load <2 x i64>, ptr %i.bh, align 16, !dbg !188193
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !188193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i64 40, i1 false), !dbg !188193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !188194, !noalias !187816
  br label %bb.av, !dbg !187968

bb.ap:                                            ; preds = %bb.an
  %i.ea = load i128, ptr %i.bh, align 16, !dbg !188195, !noalias !187816, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !188194, !noalias !187816
  %i.eb = load i64, ptr %i.bj, align 16, !dbg !188196, !alias.scope !188201, !noalias !187816, !noundef !11 ; 3 uses
  %i.ec = load i64, ptr %i.bi, align 16, !dbg !188196, !range !2549, !alias.scope !188201, !noalias !187816, !noundef !11
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !188196
  br i1 %i.ed, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !188204

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecnE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread104.i.i, !dbg !188210, !noalias !187822

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.bk, align 8, !dbg !188211, !alias.scope !188216, !noalias !187816, !nonnull !11, !noundef !11
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.eb, !dbg !188219
  store i128 %i.ea, ptr %i.ef, align 16, !dbg !188221, !noalias !187822
  %i.eg = add i64 %i.eb, 1, !dbg !188223
  store i64 %i.eg, ptr %i.bj, align 16, !dbg !188223, !alias.scope !188216, !noalias !187816
  %i.eh = load i64, ptr %i.bl, align 8, !dbg !188224, !range !1927, !alias.scope !188201, !noalias !187816, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eh, -9223372036854775808, !dbg !188224
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !188226

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ei = load i64, ptr %i.bm, align 16, !dbg !188227, !alias.scope !188229, !noalias !187816, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !188232
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !188232
  %i.el = load i64, ptr %i.bn, align 8, !dbg !188234, !alias.scope !188229, !noalias !187816 ; 4 uses
  br i1 %i.ek, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !188227

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp eq i64 %i.el, %i.eh, !dbg !188235
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !188235

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread104.i.i, !dbg !188238, !noalias !187822

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %i.bo, align 16, !dbg !188239, !alias.scope !188244, !noalias !187816, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !188247
  store i8 0, ptr %i.eo, align 1, !dbg !188249, !noalias !187822
  %i.ep = add i64 %i.el, 1, !dbg !188251          ; 2 uses
  store i64 %i.ep, ptr %i.bn, align 8, !dbg !188251, !alias.scope !188244, !noalias !187816
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !188252, !alias.scope !188229, !noalias !187816
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !188253

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eq = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ei, %bb.ar ], !dbg !188252
  %i.er = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.el, %bb.ar ], !dbg !188254 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.er, 0, !dbg !188257
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !188257
  %i.es = load ptr, ptr %i.bo, align 16, !dbg !188259, !alias.scope !188229, !noalias !187816, !nonnull !11, !noundef !11
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er, !dbg !188264
  %i.eu = getelementptr i8, ptr %i.et, i64 -1, !dbg !188264 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !dbg !188265
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !188267, !noalias !187822, !noundef !11
  %i.ew = trunc i64 %i.eq to i8, !dbg !188268
  %i.ex = and i8 %i.ew, 7, !dbg !188268
  %i.ey = shl nuw i8 1, %i.ex, !dbg !188268
  %i.ez = or i8 %i.ev, %i.ey, !dbg !188270
  store i8 %i.ez, ptr %i.eu, align 1, !dbg !188271, !noalias !187822
  %i.fa = load i64, ptr %i.bm, align 16, !dbg !188272, !alias.scope !188229, !noalias !187816, !noundef !11
  %i.fb = add i64 %i.fa, 1, !dbg !188272
  store i64 %i.fb, ptr %i.bm, align 16, !dbg !188272, !alias.scope !188229, !noalias !187816
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !188273

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !188274, !noalias !187822
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !188278

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecnE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraynE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !187923

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !188279, !noalias !187822
  br label %.thread.i.i, !dbg !188283

bb.au:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !187828, !noalias !187822
  unreachable, !dbg !187828

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.052.0.copyload.i.i, %bb.ao ], !dbg !188284
  %i.fd = phi <2 x i64> [ %i.bu, %bb.y ], [ %i.dz, %bb.ao ], !dbg !188285
  %.val71.i.i = load ptr, ptr %i.j, align 8, !dbg !187924, !noalias !187816, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val71.i.i) #50, !dbg !188286, !noalias !187822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !187924, !noalias !187816
  br label %bb.aw, !dbg !187924

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !188290
  %i.fe = phi <2 x i64> [ %i.bf, %bb.t ], [ %i.fd, %bb.av ], !dbg !188291
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes10Int128TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !187904, !noalias !187822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !187904, !noalias !187816
  br label %bb.ay, !dbg !188292

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn6697.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes10Int128TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !187904, !noalias !187822

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.033.0.copyload.i.i, %bb.k ]
  %i.ff = phi <2 x i64> [ %i.fe, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !188294, !noalias !187811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !188294, !noalias !187811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !188295
  %i.fg = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !188298
  br label %bb.ba, !dbg !188305

bb.az:                                            ; preds = %bb.w
  %.val72.i.i = load ptr, ptr %i.j, align 8, !dbg !187924, !noalias !187816, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val72.i.i) #50, !dbg !188308, !noalias !187822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !187924, !noalias !187816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !188312, !noalias !187816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.f, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !188312, !noalias !187816
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes10Int128TypeEINtB4_14ChunkedBuildernB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.f), !dbg !188313, !noalias !187822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !188314, !noalias !187816
  %i.fh = call { ptr, ptr } @_RNvXs2G_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10Int128TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !188315, !noalias !187822 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0, !dbg !188315 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1, !dbg !188315 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !188319
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ], !dbg !188319
  %i.fk = ptrtoint ptr %i.fi to i64, !dbg !188332
  %i.fl = ptrtoint ptr %i.fj to i64, !dbg !188332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !187904, !noalias !187816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !188294, !noalias !187811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !188294, !noalias !187811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !188295
  store i64 0, ptr %i.o, align 8, !dbg !188333
  %.sroa.12.8..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !188333
  store i64 %i.fk, ptr %.sroa.12.8..sroa_idx40, align 8, !dbg !188333
  %.sroa.17.8..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !188333
  store i64 %i.fl, ptr %.sroa.17.8..sroa_idx44, align 8, !dbg !188333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !188334, !noalias !188339
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !188343, !noalias !188346
  %i.fm = load i64, ptr %i.b, align 8, !dbg !188334, !range !1924, !noalias !188339, !noundef !11
  %i.fn = trunc nuw i64 %i.fm to i1, !dbg !188347
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !188348
  %.sroa.549.8.copyload51 = load ptr, ptr %i.fo, align 8, !dbg !188348, !noalias !188349 ; 2 uses
  br i1 %i.fn, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !188347

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !188350
  %i.fp = load <2 x i64>, ptr %.sroa.10.8..sroa_idx53, align 8, !dbg !188350, !noalias !188349
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !188350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx, i64 40, i1 false), !dbg !188350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !188351, !noalias !188339
  br label %bb.ba, !dbg !188305

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.549.0 = phi ptr [ %i.fg, %bb.ay ], [ %.sroa.549.8.copyload51, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !188352
  %i.fq = phi <2 x i64> [ %i.ff, %bb.ay ], [ %i.fp, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !188352
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188353
  store ptr %.sroa.549.0, ptr %i.fr, align 8, !dbg !188353
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !188353
  store <2 x i64> %i.fq, ptr %.sroa.560.0..sroa_idx, align 8, !dbg !188353
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !188353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.762.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, i64 40, i1 false), !dbg !188353
  br label %bb.bc, !dbg !188355

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !188351, !noalias !188339
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188356
  store ptr %.sroa.549.8.copyload51, ptr %i.fs, align 8, !dbg !188356
  br label %bb.bc, !dbg !188358

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !188359
  store i64 %storemerge, ptr %0, align 8, !dbg !188359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !188295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !187756
  br label %bb.bd, !dbg !188360

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !187739
  ret void, !dbg !188360

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !188361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !187756
  br label %bb.bd, !dbg !187754
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsC_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries21___pymethod_neq_u128__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !188363 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %.sroa.10.sroa.6 = alloca [40 x i8], align 8    ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.910.sroa.0 = alloca [40 x i8], align 16  ; 2 uses
  %i.g = alloca [80 x i8], align 16               ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !188364
  store ptr null, ptr %i.k, align 8, !dbg !188364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !188366
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @771, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.k, i64 noundef 1), !dbg !188366
  %i.l = load i64, ptr %i.j, align 8, !dbg !188368, !range !1924, !noundef !11
  %i.m = trunc nuw i64 %i.l to i1, !dbg !188370
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !188370

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !188371
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !188371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !188366
  store i64 1, ptr %0, align 8, !dbg !188372
  br label %bb.q, !dbg !188379

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !188366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !188381
  store ptr null, ptr %i.i, align 8, !dbg !188381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !188384
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !188386
  %i.p = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %.body, !dbg !188394 ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.q = icmp eq ptr %i.p, null, !dbg !188397
  br i1 %i.q, label %bb.d, label %._crit_edge85, !dbg !188399

bb.d:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !188400 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r)
          to label %bb.f unwind label %.body, !dbg !188402

.body:                                            ; preds = %._crit_edge85, %bb.c, %bb.d, %bb.i, %bb.j, %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.pr = load ptr, ptr %i.i, align 8, !dbg !188403, !alias.scope !188405
  %i.t = icmp eq ptr %.pr, null, !dbg !188403
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.e, !dbg !188403

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.t, !dbg !188408

bb.f:                                             ; preds = %bb.d
  %.sroa.018.0.copyload = load ptr, ptr %i.r, align 8, !dbg !188410
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !188410
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !188414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.221.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.519.0..sroa_idx, i64 56, i1 false), !dbg !188410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !188384
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188414
  store ptr %.sroa.018.0.copyload, ptr %i.u, align 8, !dbg !188414
  br label %bb.r, !dbg !188420

._crit_edge85:                                    ; preds = %.noexc
  %.pre = load ptr, ptr %i.k, align 8, !dbg !188384
  store ptr %i.p, ptr %i.i, align 8, !dbg !188422, !alias.scope !188424, !noalias !188429
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !188431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !188384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !188435
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentoKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noundef nonnull %.pre, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 3)
          to label %bb.g unwind label %.body, !dbg !188435

bb.g:                                             ; preds = %._crit_edge85
  %i.w = load i64, ptr %i.g, align 16, !dbg !188436, !range !1924, !noundef !11
  %i.x = trunc nuw i64 %i.w to i1, !dbg !188439
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !188439

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !188440
  %.sroa.025.0.copyload = load i64, ptr %i.y, align 8, !dbg !188440
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !188440
end_hunk_0
begin_hunk_1_@_RNvMsD_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries24___pymethod_new_opt_f32__:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188739
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !188739
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !188739
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !188739
  br label %bb.be, !dbg !188746

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !188745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !188748
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !188731
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !188731, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !188748
  %i.ag = load i64, ptr %i.q, align 8, !dbg !188749, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !188752
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !188753
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !188753 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !188752

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !188754
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !188755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !188754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !188761
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188755
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !188755
  br label %bb.be, !dbg !188746

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !188761
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !188731
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !188731, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !188762
  %i.am = load i8, ptr %i.p, align 8, !dbg !188763, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !188763
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !188766

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !188767
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !188768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !188774
  br label %bb.be, !dbg !188746

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !188775, !noalias !188780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !188775, !noalias !188780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !188775, !noalias !188785
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !188790, !noalias !188791
  %i.aq = load i64, ptr %i.n, align 8, !dbg !188792, !range !1924, !noalias !188785, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !188795
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !188796
  %.sroa.026.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !188796, !noalias !188785 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !188795

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn5182.i.i, !dbg !188797

bb.k:                                             ; preds = %bb.i
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !188798
  %i.at = load <2 x ptr>, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !dbg !188798, !noalias !188799
  %.sroa.17.16..sroa.527.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !188798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.527.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !188798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !188800, !noalias !188785
  br label %bb.ay, !dbg !188801

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !188800, !noalias !188785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !188803, !noalias !188785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !188805, !noalias !188785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !188806
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !188806
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i, label %bb.m, !dbg !188806

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !188819
  br label %bb.q, !dbg !188820

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !188823
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !188823

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !188824 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !188828, !noalias !188829 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !188839
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !188841

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !188819
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !188842

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !188844, !noalias !188846
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !188847
  %i.az = or disjoint i8 %i.ay, -64, !dbg !188848
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !188848
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !188848, !noalias !188846
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !188849, !noalias !188851
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !188852, !noalias !188853
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !188852
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !188852, !noalias !188853
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !188852
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !188852, !noalias !188853
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !188854

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !188855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !188857, !noalias !188860
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !188861

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !188863
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !188863
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !188864 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !188819
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !188842
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !188842
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !188842, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !188865, !noalias !188791
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i
  %.sroa.060.078.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.461.077.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.076.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.060.078.i.i, ptr %i.l, align 8, !dbg !188867, !noalias !188785
  %.sroa.463.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !188867
  store i64 %.sroa.461.077.i.i, ptr %.sroa.463.0..sroa_idx.i.i, align 8, !dbg !188867, !noalias !188785
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !188867
  store i64 %.sroa.5.076.i.i, ptr %.sroa.564.0..sroa_idx.i.i, align 8, !dbg !188867, !noalias !188785
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes11Float32TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.026.0.copyload.i.i), !dbg !188868, !noalias !188791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !188869, !noalias !188785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !188870, !noalias !188785
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !188872, !noalias !188791

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !188873

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !188874, !range !1924, !noalias !188785, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !188877
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !188878
  %.sroa.032.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !188878, !noalias !188785 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !188877

bb.t:                                             ; preds = %bb.s
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !188879
  %i.bf = load <2 x ptr>, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !dbg !188879, !noalias !188799
  %.sroa.17.16..sroa.533.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !188879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.533.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !188879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !188880, !noalias !188785
  %i.bg = ptrtoint ptr %.sroa.032.0.copyload.i.i to i64, !dbg !188881
  br label %bb.aw, !dbg !188888

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !188880, !noalias !188785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !188870, !noalias !188785
  store ptr %.sroa.032.0.copyload.i.i, ptr %i.j, align 8, !dbg !188870, !noalias !188785
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !188890

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !188892, !noalias !188791

.thread.i.i:                                      ; preds = %.body.i, %.body.thread89.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm87.i.i, %.body.thread89.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val58.i.i = load ptr, ptr %i.j, align 8, !dbg !188893, !noalias !188785, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val58.i.i) #50, !dbg !188894, !noalias !188791
  br label %bb.ax, !dbg !188873

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !188892, !range !8288, !noalias !188785, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !188892
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !188892

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !188898, !noalias !188785 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !188899
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !188899

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !188903, !noalias !188799
  %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !188903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !188903
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !188904
  br label %bb.av, !dbg !188910

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !188912
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !188918

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !188919, !noalias !188785
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo35types5floatfNtNtB9_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !188920, !noalias !188791

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !188927, !noalias !188931
  br label %.thread.i.i, !dbg !188934

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !188935), !dbg !188938
  %i.by = load i64, ptr %i.bj, align 16, !dbg !188941, !alias.scope !188935, !noalias !188944, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !188941, !range !2549, !alias.scope !188935, !noalias !188944, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !188941
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !188945

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !188951, !noalias !188952

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !188953, !alias.scope !188962, !noalias !188944, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.by, !dbg !188965
  store float 0.000000e+00, ptr %i.cc, align 4, !dbg !188968, !noalias !188791
  %i.cd = add i64 %i.by, 1, !dbg !188972          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !188972, !alias.scope !188962, !noalias !188944
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !188973, !range !1927, !alias.scope !188935, !noalias !188944, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !188973
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !188974

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !188975, !alias.scope !188978, !noalias !188944, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !188981
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !188981
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !188983, !alias.scope !188978, !noalias !188944 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !188975

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !188984
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !188984

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !188987, !noalias !188952

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !188988, !alias.scope !188993, !noalias !188944, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !188996
  store i8 0, ptr %i.cl, align 1, !dbg !188998, !noalias !188791
  %i.cm = add i64 %i.ci, 1, !dbg !189000          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !189000, !alias.scope !188993, !noalias !188944
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !189001, !alias.scope !188978, !noalias !188944
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !189002

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !189001
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !189003 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !189006
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !189006, !noalias !189008
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !189009, !alias.scope !188978, !noalias !188944, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !189014
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !189014 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !189015, !noalias !189008
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !189017, !noalias !188791, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !189018
  %i.cu = and i8 %i.ct, 7, !dbg !189018
  %i.cv = shl nuw i8 1, %i.cu, !dbg !189018
  %i.cw = xor i8 %i.cv, -1, !dbg !189020
  %i.cx = and i8 %i.cs, %i.cw, !dbg !189021
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !189022, !noalias !188791
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !189023, !alias.scope !188978, !noalias !188944, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !189023
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !189023, !alias.scope !188978, !noalias !188944
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !189024

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !189025), !dbg !189028, !noalias !189008
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !189029, !noalias !189032
  %i.da = load i64, ptr %i.bi, align 16, !dbg !189033, !range !2549, !alias.scope !189040, !noalias !188944, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !189041), !dbg !189044, !noalias !189008
  %i.db = add nuw i64 %i.da, 7, !dbg !189045
  %i.dc = lshr i64 %i.db, 3, !dbg !189048         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !189049, !noalias !189054
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !189049, !noalias !188952

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !189049, !range !1924, !noalias !189054, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !189055
  %i.df = load i64, ptr %i.bp, align 8, !dbg !189056, !range !1927, !noalias !189054, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !189055, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !189057, !noalias !189054
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !189058, !noalias !188952

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !189058

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !189059, !noalias !189054, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !189060
  call void @llvm.assume(i1 %i.di), !dbg !189062, !noalias !189008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !189064, !noalias !189054
  store i64 %i.df, ptr %i.d, align 8, !dbg !189065, !alias.scope !189041, !noalias !189032
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !189065, !alias.scope !189041, !noalias !189032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !189065, !alias.scope !189041, !noalias !189032
  %i.dj = icmp ult i64 %i.cd, 2305843009213693952, !dbg !189066
  call void @llvm.assume(i1 %i.dj), !dbg !189073, !noalias !189008
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !189074
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !189074

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !189077, !noalias !189032
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !189082
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !189082, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !189083, !noalias !189084

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !189085, !noalias !189084

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !189086, !noalias !189084

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !189087, !noalias !189084
  unreachable, !dbg !189087

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !189088, !noalias !189032, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !189103
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !189104 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !189109, !noalias !189084, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !189111
  %i.ds = and i8 %i.dr, 7, !dbg !189111
  %i.dt = shl nuw i8 1, %i.ds, !dbg !189111
  %i.du = xor i8 %i.dt, -1, !dbg !189114
  %i.dv = and i8 %i.dq, %i.du, !dbg !189115
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !189118, !noalias !189084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !189119, !noalias !188944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !189086, !noalias !189032
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !189028

.body.thread89.i.i:                               ; preds = %bb.at, %bb.aq
  %lpad.thr_comm87.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !188934

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !189120, !noalias !188931
  %i.dw = load i32, ptr %i.h, align 8, !dbg !189124, !range !114141, !noalias !188785, !noundef !11
  %i.dx = trunc nuw i32 %i.dw to i1, !dbg !189127
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !189127

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !189128
  %.sroa.5.8.copyload37 = load i64, ptr %i.dy, align 8, !dbg !189128, !noalias !188799
  %.sroa.12.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !189128
  %i.dz = load <2 x ptr>, ptr %.sroa.12.8..sroa_idx39, align 8, !dbg !189128, !noalias !188799
  %.sroa.17.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !189128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.8..sroa_idx51, i64 40, i1 false), !dbg !189128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !189129, !noalias !188785
  br label %bb.av, !dbg !188934

bb.ap:                                            ; preds = %bb.an
  %i.ea = load float, ptr %i.bh, align 4, !dbg !189130, !noalias !188785, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !189129, !noalias !188785
  %i.eb = load i64, ptr %i.bj, align 16, !dbg !189131, !alias.scope !189136, !noalias !188785, !noundef !11 ; 3 uses
  %i.ec = load i64, ptr %i.bi, align 16, !dbg !189131, !range !2549, !alias.scope !189136, !noalias !188785, !noundef !11
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !189131
  br i1 %i.ed, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !189139

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread89.i.i, !dbg !189145, !noalias !188791

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.bk, align 8, !dbg !189146, !alias.scope !189151, !noalias !188785, !nonnull !11, !noundef !11
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.eb, !dbg !189154
  store float %i.ea, ptr %i.ef, align 4, !dbg !189156, !noalias !188791
  %i.eg = add i64 %i.eb, 1, !dbg !189158
  store i64 %i.eg, ptr %i.bj, align 16, !dbg !189158, !alias.scope !189151, !noalias !188785
  %i.eh = load i64, ptr %i.bl, align 8, !dbg !189159, !range !1927, !alias.scope !189136, !noalias !188785, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eh, -9223372036854775808, !dbg !189159
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !189161

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ei = load i64, ptr %i.bm, align 16, !dbg !189162, !alias.scope !189164, !noalias !188785, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !189167
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !189167
  %i.el = load i64, ptr %i.bn, align 8, !dbg !189169, !alias.scope !189164, !noalias !188785 ; 4 uses
  br i1 %i.ek, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !189162

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp eq i64 %i.el, %i.eh, !dbg !189170
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !189170

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread89.i.i, !dbg !189173, !noalias !188791

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %i.bo, align 16, !dbg !189174, !alias.scope !189179, !noalias !188785, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !189182
  store i8 0, ptr %i.eo, align 1, !dbg !189184, !noalias !188791
  %i.ep = add i64 %i.el, 1, !dbg !189186          ; 2 uses
  store i64 %i.ep, ptr %i.bn, align 8, !dbg !189186, !alias.scope !189179, !noalias !188785
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !189187, !alias.scope !189164, !noalias !188785
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !189188

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eq = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ei, %bb.ar ], !dbg !189187
  %i.er = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.el, %bb.ar ], !dbg !189189 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.er, 0, !dbg !189192
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !189192
  %i.es = load ptr, ptr %i.bo, align 16, !dbg !189194, !alias.scope !189164, !noalias !188785, !nonnull !11, !noundef !11
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er, !dbg !189199
  %i.eu = getelementptr i8, ptr %i.et, i64 -1, !dbg !189199 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !dbg !189200
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !189202, !noalias !188791, !noundef !11
  %i.ew = trunc i64 %i.eq to i8, !dbg !189203
  %i.ex = and i8 %i.ew, 7, !dbg !189203
  %i.ey = shl nuw i8 1, %i.ex, !dbg !189203
  %i.ez = or i8 %i.ev, %i.ey, !dbg !189205
  store i8 %i.ez, ptr %i.eu, align 1, !dbg !189206, !noalias !188791
  %i.fa = load i64, ptr %i.bm, align 16, !dbg !189207, !alias.scope !189164, !noalias !188785, !noundef !11
  %i.fb = add i64 %i.fa, 1, !dbg !189207
  store i64 %i.fb, ptr %i.bm, align 16, !dbg !189207, !alias.scope !189164, !noalias !188785
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !189208

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !189209, !noalias !188791
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !189213

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecfE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayfE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !188892

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !189214, !noalias !188791
  br label %.thread.i.i, !dbg !189218

bb.au:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !188797, !noalias !188791
  unreachable, !dbg !188797

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.5.8.copyload37, %bb.ao ], !dbg !189219
  %i.fd = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dz, %bb.ao ], !dbg !189219
  %.val56.i.i = load ptr, ptr %i.j, align 8, !dbg !188893, !noalias !188785, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val56.i.i) #50, !dbg !189220, !noalias !188791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !188893, !noalias !188785
  br label %bb.aw, !dbg !188893

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !189224
  %i.fe = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fd, %bb.av ], !dbg !189225
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes11Float32TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !188873, !noalias !188791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !188873, !noalias !188785
  br label %bb.ay, !dbg !189226

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn5182.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes11Float32TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !188873, !noalias !188791

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.026.0.copyload.i.i, %bb.k ]
  %i.ff = phi <2 x ptr> [ %i.fe, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !189228, !noalias !188780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !189228, !noalias !188780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !189229
  %i.fg = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !189232
  br label %bb.ba, !dbg !189239

bb.az:                                            ; preds = %bb.w
  %.val57.i.i = load ptr, ptr %i.j, align 8, !dbg !188893, !noalias !188785, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val57.i.i) #50, !dbg !189242, !noalias !188791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !188893, !noalias !188785
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !189246, !noalias !188785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.f, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !189246, !noalias !188785
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes11Float32TypeEINtB4_14ChunkedBuilderfB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.f), !dbg !189247, !noalias !188791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !189248, !noalias !188785
  %i.fh = call { ptr, ptr } @_RNvXs2z_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_11Float32TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !189249, !noalias !188791 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0, !dbg !189249 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1, !dbg !189249 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !189253
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ], !dbg !189253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !188873, !noalias !188785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !189228, !noalias !188780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !189228, !noalias !188780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !189229
  store i64 0, ptr %i.o, align 8, !dbg !189266
  %.sroa.12.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !189266
  store ptr %i.fi, ptr %.sroa.12.8..sroa_idx41, align 8, !dbg !189266
  %.sroa.16.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !189266
  store ptr %i.fj, ptr %.sroa.16.8..sroa_idx47, align 8, !dbg !189266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !189267, !noalias !189272
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !189276, !noalias !189279
  %i.fk = load i64, ptr %i.b, align 8, !dbg !189267, !range !1924, !noalias !189272, !noundef !11
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !189280
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !189281
  %.sroa.553.8.copyload55 = load ptr, ptr %i.fm, align 8, !dbg !189281, !noalias !189282 ; 2 uses
  br i1 %i.fl, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !189280

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !189283
  %i.fn = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx57, align 8, !dbg !189283, !noalias !189282
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !189283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx, i64 40, i1 false), !dbg !189283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !189284, !noalias !189272
  br label %bb.ba, !dbg !189239

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.553.0 = phi ptr [ %i.fg, %bb.ay ], [ %.sroa.553.8.copyload55, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !189285
  %i.fo = phi <2 x ptr> [ %i.ff, %bb.ay ], [ %i.fn, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !189285
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189286
  store ptr %.sroa.553.0, ptr %i.fp, align 8, !dbg !189286
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !189286
  store <2 x ptr> %i.fo, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !189286
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !189286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, i64 40, i1 false), !dbg !189286
  br label %bb.bc, !dbg !189288

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !189284, !noalias !189272
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189289
  store ptr %.sroa.553.8.copyload55, ptr %i.fq, align 8, !dbg !189289
  br label %bb.bc, !dbg !189291

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !189292
  store i64 %storemerge, ptr %0, align 8, !dbg !189292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !189229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !188725
  br label %bb.bd, !dbg !189293

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !188708
  ret void, !dbg !189293

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !189294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !188725
  br label %bb.bd, !dbg !188723
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsE_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries19___pymethod_neq_i8__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !189296 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %.sroa.10.sroa.6 = alloca [40 x i8], align 8    ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !189297
  store ptr null, ptr %i.k, align 8, !dbg !189297
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !189299
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @777, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.k, i64 noundef 1), !dbg !189299
  %i.l = load i64, ptr %i.j, align 8, !dbg !189301, !range !1924, !noundef !11
  %i.m = trunc nuw i64 %i.l to i1, !dbg !189303
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !189303

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !189304
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !189304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !189299
  store i64 1, ptr %0, align 8, !dbg !189305
  br label %bb.q, !dbg !189312

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !189299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !189314
  store ptr null, ptr %i.i, align 8, !dbg !189314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !189317
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !189319
  %i.p = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %.body, !dbg !189327 ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.q = icmp eq ptr %i.p, null, !dbg !189330
  br i1 %i.q, label %bb.d, label %._crit_edge70, !dbg !189332

bb.d:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !189333 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r)
          to label %bb.f unwind label %.body, !dbg !189335

.body:                                            ; preds = %._crit_edge70, %bb.c, %bb.d, %bb.i, %bb.j, %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.pr = load ptr, ptr %i.i, align 8, !dbg !189336, !alias.scope !189338
  %i.t = icmp eq ptr %.pr, null, !dbg !189336
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.e, !dbg !189336

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.t, !dbg !189341

bb.f:                                             ; preds = %bb.d
  %.sroa.012.0.copyload = load ptr, ptr %i.r, align 8, !dbg !189343
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !189343
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !189347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.215.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.513.0..sroa_idx, i64 56, i1 false), !dbg !189343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !189317
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189347
  store ptr %.sroa.012.0.copyload, ptr %i.u, align 8, !dbg !189347
  br label %bb.r, !dbg !189353

._crit_edge70:                                    ; preds = %.noexc
  %.pre = load ptr, ptr %i.k, align 8, !dbg !189317
  store ptr %i.p, ptr %i.i, align 8, !dbg !189355, !alias.scope !189357, !noalias !189362
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !189364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !189317
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentaKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %.pre, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 3)
          to label %bb.g unwind label %.body, !dbg !189368

bb.g:                                             ; preds = %._crit_edge70
  %i.w = load i8, ptr %i.g, align 8, !dbg !189369, !range !15679, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1, !dbg !189369
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !189372

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !189373
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !dbg !189380
  br label %bb.r, !dbg !189353

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !189381
end_hunk_1
begin_hunk_2_@_RNvMsF_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries24___pymethod_new_opt_f64__:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189672
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !189672
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !189672
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !189672
  br label %bb.be, !dbg !189679

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !189678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !189681
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !189664
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !189664, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !189681
  %i.ag = load i64, ptr %i.q, align 8, !dbg !189682, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !189685
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !189686
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !189686 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !189685

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !189687
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !189688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !189687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !189694
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189688
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !189688
  br label %bb.be, !dbg !189679

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !189694
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !189664
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !189664, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !189695
  %i.am = load i8, ptr %i.p, align 8, !dbg !189696, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !189696
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !189699

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !189700
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !189701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !189707
  br label %bb.be, !dbg !189679

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !189708, !noalias !189713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !189708, !noalias !189713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !189708, !noalias !189718
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !189723, !noalias !189724
  %i.aq = load i64, ptr %i.n, align 8, !dbg !189725, !range !1924, !noalias !189718, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !189728
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !189729
  %.sroa.031.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !189729, !noalias !189718 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !189728

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn6293.i.i, !dbg !189730

bb.k:                                             ; preds = %bb.i
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !189731
  %i.at = load <2 x ptr>, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !dbg !189731, !noalias !189732
  %.sroa.18.16..sroa.532.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !189731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.532.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !189731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !189733, !noalias !189718
  br label %bb.ay, !dbg !189734

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !189733, !noalias !189718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !189736, !noalias !189718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !189738, !noalias !189718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !189739
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !189739
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i, label %bb.m, !dbg !189739

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !189752
  br label %bb.q, !dbg !189753

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !189756
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !189756

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !189757 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !189761, !noalias !189762 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !189772
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !189774

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !189752
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !189775

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !189777, !noalias !189779
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !189780
  %i.az = or disjoint i8 %i.ay, -64, !dbg !189781
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !189781
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !189781, !noalias !189779
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !189782, !noalias !189784
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !189785, !noalias !189786
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !189785
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !189785, !noalias !189786
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !189785
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !189785, !noalias !189786
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !189787

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !189788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !189790, !noalias !189793
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !189794

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !189796
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !189796
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !189797 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !189752
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !189775
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !189775
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !189775, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !189798, !noalias !189724
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i
  %.sroa.071.089.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.472.088.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.087.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.071.089.i.i, ptr %i.l, align 8, !dbg !189800, !noalias !189718
  %.sroa.474.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !189800
  store i64 %.sroa.472.088.i.i, ptr %.sroa.474.0..sroa_idx.i.i, align 8, !dbg !189800, !noalias !189718
  %.sroa.575.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !189800
  store i64 %.sroa.5.087.i.i, ptr %.sroa.575.0..sroa_idx.i.i, align 8, !dbg !189800, !noalias !189718
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes11Float64TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.031.0.copyload.i.i), !dbg !189801, !noalias !189724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !189802, !noalias !189718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !189803, !noalias !189718
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !189805, !noalias !189724

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !189806

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !189807, !range !1924, !noalias !189718, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !189810
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !189811
  %.sroa.037.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !189811, !noalias !189718 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !189810

bb.t:                                             ; preds = %bb.s
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !189812
  %i.bf = load <2 x ptr>, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !dbg !189812, !noalias !189732
  %.sroa.18.16..sroa.538.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !189812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.538.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !189812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !189813, !noalias !189718
  %i.bg = ptrtoint ptr %.sroa.037.0.copyload.i.i to i64, !dbg !189814
  br label %bb.aw, !dbg !189821

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !189813, !noalias !189718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !189803, !noalias !189718
  store ptr %.sroa.037.0.copyload.i.i, ptr %i.j, align 8, !dbg !189803, !noalias !189718
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !189823

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !189825, !noalias !189724

.thread.i.i:                                      ; preds = %.body.i, %.body.thread100.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm98.i.i, %.body.thread100.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val69.i.i = load ptr, ptr %i.j, align 8, !dbg !189826, !noalias !189718, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val69.i.i) #50, !dbg !189827, !noalias !189724
  br label %bb.ax, !dbg !189806

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !189825, !range !8288, !noalias !189718, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !189825
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !189825

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !189831, !noalias !189718 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !189832
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !189832

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !189836, !noalias !189732
  %.sroa.18.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !189836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !189836
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !189837
  br label %bb.av, !dbg !189843

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !189845
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !189851

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !189852, !noalias !189718
  invoke void @_RNvXs2_NtNtCsbm5zPlkZccl_4pyo35types5floatdNtNtB9_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !189853, !noalias !189724

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !189860, !noalias !189864
  br label %.thread.i.i, !dbg !189867

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !189868), !dbg !189871
  %i.by = load i64, ptr %i.bj, align 16, !dbg !189874, !alias.scope !189868, !noalias !189877, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !189874, !range !2549, !alias.scope !189868, !noalias !189877, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !189874
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !189878

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !189884, !noalias !189885

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !189886, !alias.scope !189895, !noalias !189877, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.by, !dbg !189898
  store double 0.000000e+00, ptr %i.cc, align 8, !dbg !189901, !noalias !189724
  %i.cd = add i64 %i.by, 1, !dbg !189905          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !189905, !alias.scope !189895, !noalias !189877
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !189906, !range !1927, !alias.scope !189868, !noalias !189877, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !189906
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !189907

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !189908, !alias.scope !189911, !noalias !189877, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !189914
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !189914
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !189916, !alias.scope !189911, !noalias !189877 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !189908

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !189917
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !189917

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !189920, !noalias !189885

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !189921, !alias.scope !189926, !noalias !189877, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !189929
  store i8 0, ptr %i.cl, align 1, !dbg !189931, !noalias !189724
  %i.cm = add i64 %i.ci, 1, !dbg !189933          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !189933, !alias.scope !189926, !noalias !189877
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !189934, !alias.scope !189911, !noalias !189877
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !189935

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !189934
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !189936 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !189939
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !189939, !noalias !189941
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !189942, !alias.scope !189911, !noalias !189877, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !189947
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !189947 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !189948, !noalias !189941
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !189950, !noalias !189724, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !189951
  %i.cu = and i8 %i.ct, 7, !dbg !189951
  %i.cv = shl nuw i8 1, %i.cu, !dbg !189951
  %i.cw = xor i8 %i.cv, -1, !dbg !189953
  %i.cx = and i8 %i.cs, %i.cw, !dbg !189954
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !189955, !noalias !189724
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !189956, !alias.scope !189911, !noalias !189877, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !189956
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !189956, !alias.scope !189911, !noalias !189877
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !189957

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !189958), !dbg !189961, !noalias !189941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !189962, !noalias !189965
  %i.da = load i64, ptr %i.bi, align 16, !dbg !189966, !range !2549, !alias.scope !189973, !noalias !189877, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !189974), !dbg !189977, !noalias !189941
  %i.db = add nuw i64 %i.da, 7, !dbg !189978
  %i.dc = lshr i64 %i.db, 3, !dbg !189981         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !189982, !noalias !189987
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !189982, !noalias !189885

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !189982, !range !1924, !noalias !189987, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !189988
  %i.df = load i64, ptr %i.bp, align 8, !dbg !189989, !range !1927, !noalias !189987, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !189988, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !189990, !noalias !189987
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !189991, !noalias !189885

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !189991

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !189992, !noalias !189987, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !189993
  call void @llvm.assume(i1 %i.di), !dbg !189995, !noalias !189941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !189997, !noalias !189987
  store i64 %i.df, ptr %i.d, align 8, !dbg !189998, !alias.scope !189974, !noalias !189965
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !189998, !alias.scope !189974, !noalias !189965
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !189998, !alias.scope !189974, !noalias !189965
  %i.dj = icmp ult i64 %i.cd, 1152921504606846976, !dbg !189999
  call void @llvm.assume(i1 %i.dj), !dbg !190006, !noalias !189941
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !190007
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !190007

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !190010, !noalias !189965
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !190015
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !190015, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !190016, !noalias !190017

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !190018, !noalias !190017

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !190019, !noalias !190017

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !190020, !noalias !190017
  unreachable, !dbg !190020

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !190021, !noalias !189965, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !190036
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !190037 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !190042, !noalias !190017, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !190044
  %i.ds = and i8 %i.dr, 7, !dbg !190044
  %i.dt = shl nuw i8 1, %i.ds, !dbg !190044
  %i.du = xor i8 %i.dt, -1, !dbg !190047
  %i.dv = and i8 %i.dq, %i.du, !dbg !190048
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !190051, !noalias !190017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !190052, !noalias !189877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !190019, !noalias !189965
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !189961

.body.thread100.i.i:                              ; preds = %bb.at, %bb.aq
  %lpad.thr_comm98.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !189867

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !190053, !noalias !189864
  %i.dw = load i64, ptr %i.h, align 8, !dbg !190057, !range !1924, !noalias !189718, !noundef !11
  %i.dx = trunc nuw i64 %i.dw to i1, !dbg !190060
  %.sroa.049.0.copyload.i.i = load double, ptr %i.bh, align 8, !dbg !190061, !noalias !189718 ; 2 uses
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !190060

bb.ao:                                            ; preds = %bb.an
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !190062
  %i.dy = load <2 x ptr>, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !dbg !190062, !noalias !189732
  %.sroa.18.16..sroa.550.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !190062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.550.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !190062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !190063, !noalias !189718
  %i.dz = bitcast double %.sroa.049.0.copyload.i.i to i64, !dbg !190064
  br label %bb.av, !dbg !189867

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !190063, !noalias !189718
  %i.ea = load i64, ptr %i.bj, align 16, !dbg !190070, !alias.scope !190075, !noalias !189718, !noundef !11 ; 3 uses
  %i.eb = load i64, ptr %i.bi, align 16, !dbg !190070, !range !2549, !alias.scope !190075, !noalias !189718, !noundef !11
  %i.ec = icmp eq i64 %i.ea, %i.eb, !dbg !190070
  br i1 %i.ec, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !190078

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread100.i.i, !dbg !190084, !noalias !189724

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ed = load ptr, ptr %i.bk, align 8, !dbg !190085, !alias.scope !190090, !noalias !189718, !nonnull !11, !noundef !11
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ea, !dbg !190093
  store double %.sroa.049.0.copyload.i.i, ptr %i.ee, align 8, !dbg !190095, !noalias !189724
  %i.ef = add i64 %i.ea, 1, !dbg !190097
  store i64 %i.ef, ptr %i.bj, align 16, !dbg !190097, !alias.scope !190090, !noalias !189718
  %i.eg = load i64, ptr %i.bl, align 8, !dbg !190098, !range !1927, !alias.scope !190075, !noalias !189718, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eg, -9223372036854775808, !dbg !190098
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !190100

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.eh = load i64, ptr %i.bm, align 16, !dbg !190101, !alias.scope !190103, !noalias !189718, !noundef !11 ; 2 uses
  %i.ei = and i64 %i.eh, 7, !dbg !190106
  %i.ej = icmp eq i64 %i.ei, 0, !dbg !190106
  %i.ek = load i64, ptr %i.bn, align 8, !dbg !190108, !alias.scope !190103, !noalias !189718 ; 4 uses
  br i1 %i.ej, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !190101

bb.as:                                            ; preds = %bb.ar
  %i.el = icmp eq i64 %i.ek, %i.eg, !dbg !190109
  br i1 %i.el, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !190109

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread100.i.i, !dbg !190112, !noalias !189724

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.em = load ptr, ptr %i.bo, align 16, !dbg !190113, !alias.scope !190118, !noalias !189718, !nonnull !11, !noundef !11
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ek, !dbg !190121
  store i8 0, ptr %i.en, align 1, !dbg !190123, !noalias !189724
  %i.eo = add i64 %i.ek, 1, !dbg !190125          ; 2 uses
  store i64 %i.eo, ptr %i.bn, align 8, !dbg !190125, !alias.scope !190118, !noalias !189718
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !190126, !alias.scope !190103, !noalias !189718
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !190127

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.ep = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.eh, %bb.ar ], !dbg !190126
  %i.eq = phi i64 [ %i.eo, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ek, %bb.ar ], !dbg !190128 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.eq, 0, !dbg !190131
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !190131
  %i.er = load ptr, ptr %i.bo, align 16, !dbg !190133, !alias.scope !190103, !noalias !189718, !nonnull !11, !noundef !11
  %i.es = getelementptr i8, ptr %i.er, i64 %i.eq, !dbg !190138
  %i.et = getelementptr i8, ptr %i.es, i64 -1, !dbg !190138 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ], !dbg !190139
  %i.eu = load i8, ptr %i.et, align 1, !dbg !190141, !noalias !189724, !noundef !11
  %i.ev = trunc i64 %i.ep to i8, !dbg !190142
  %i.ew = and i8 %i.ev, 7, !dbg !190142
  %i.ex = shl nuw i8 1, %i.ew, !dbg !190142
  %i.ey = or i8 %i.eu, %i.ex, !dbg !190144
  store i8 %i.ey, ptr %i.et, align 1, !dbg !190145, !noalias !189724
  %i.ez = load i64, ptr %i.bm, align 16, !dbg !190146, !alias.scope !190103, !noalias !189718, !noundef !11
  %i.fa = add i64 %i.ez, 1, !dbg !190146
  store i64 %i.fa, ptr %i.bm, align 16, !dbg !190146, !alias.scope !190103, !noalias !189718
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !190147

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !190148, !noalias !189724
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !190152

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecdE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraydE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !189825

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !190153, !noalias !189724
  br label %.thread.i.i, !dbg !190157

bb.au:                                            ; preds = %bb.ax
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !189730, !noalias !189724
  unreachable, !dbg !189730

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %i.dz, %bb.ao ], !dbg !190158
  %i.fc = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dy, %bb.ao ], !dbg !190159
  %.val67.i.i = load ptr, ptr %i.j, align 8, !dbg !189826, !noalias !189718, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val67.i.i) #50, !dbg !190160, !noalias !189724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !189826, !noalias !189718
  br label %bb.aw, !dbg !189826

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !190164
  %i.fd = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fc, %bb.av ], !dbg !190165
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes11Float64TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !189806, !noalias !189724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !189806, !noalias !189718
  br label %bb.ay, !dbg !190166

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn6293.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes11Float64TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !189806, !noalias !189724

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.031.0.copyload.i.i, %bb.k ]
  %i.fe = phi <2 x ptr> [ %i.fd, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !190168, !noalias !189713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !190168, !noalias !189713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !190169
  %i.ff = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !190172
  br label %bb.ba, !dbg !190179

bb.az:                                            ; preds = %bb.w
  %.val68.i.i = load ptr, ptr %i.j, align 8, !dbg !189826, !noalias !189718, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val68.i.i) #50, !dbg !190182, !noalias !189724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !189826, !noalias !189718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !190186, !noalias !189718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.f, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !190186, !noalias !189718
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes11Float64TypeEINtB4_14ChunkedBuilderdB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.f), !dbg !190187, !noalias !189724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !190188, !noalias !189718
  %i.fg = call { ptr, ptr } @_RNvXs2A_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_11Float64TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !190189, !noalias !189724 ; 2 uses
  %i.fh = extractvalue { ptr, ptr } %i.fg, 0, !dbg !190189 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fg, 1, !dbg !190189 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fh) ], !dbg !190193
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !190193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !189806, !noalias !189718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !190168, !noalias !189713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !190168, !noalias !189713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !190169
  store i64 0, ptr %i.o, align 8, !dbg !190206
  %.sroa.12.8..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !190206
  store ptr %i.fh, ptr %.sroa.12.8..sroa_idx38, align 8, !dbg !190206
  %.sroa.17.8..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !190206
  store ptr %i.fi, ptr %.sroa.17.8..sroa_idx43, align 8, !dbg !190206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !190207, !noalias !190212
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !190216, !noalias !190219
  %i.fj = load i64, ptr %i.b, align 8, !dbg !190207, !range !1924, !noalias !190212, !noundef !11
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !190220
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !190221
  %.sroa.549.8.copyload51 = load ptr, ptr %i.fl, align 8, !dbg !190221, !noalias !190222 ; 2 uses
  br i1 %i.fk, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !190220

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !190223
  %i.fm = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx53, align 8, !dbg !190223, !noalias !190222
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !190223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx, i64 40, i1 false), !dbg !190223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !190224, !noalias !190212
  br label %bb.ba, !dbg !190179

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.549.0 = phi ptr [ %i.ff, %bb.ay ], [ %.sroa.549.8.copyload51, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !190225
  %i.fn = phi <2 x ptr> [ %i.fe, %bb.ay ], [ %i.fm, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !190225
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190226
  store ptr %.sroa.549.0, ptr %i.fo, align 8, !dbg !190226
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !190226
  store <2 x ptr> %i.fn, ptr %.sroa.560.0..sroa_idx, align 8, !dbg !190226
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !190226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.762.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, i64 40, i1 false), !dbg !190226
  br label %bb.bc, !dbg !190228

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !190224, !noalias !190212
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190229
  store ptr %.sroa.549.8.copyload51, ptr %i.fp, align 8, !dbg !190229
  br label %bb.bc, !dbg !190231

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !190232
  store i64 %storemerge, ptr %0, align 8, !dbg !190232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !190169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !189658
  br label %bb.bd, !dbg !190233

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !189641
  ret void, !dbg !190233

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !190234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !189658
  br label %bb.bd, !dbg !189656
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsG_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries20___pymethod_neq_i16__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !190236 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %.sroa.10.sroa.6 = alloca [40 x i8], align 8    ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !190237
  store ptr null, ptr %i.k, align 8, !dbg !190237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !190239
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @783, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.k, i64 noundef 1), !dbg !190239
  %i.l = load i64, ptr %i.j, align 8, !dbg !190241, !range !1924, !noundef !11
  %i.m = trunc nuw i64 %i.l to i1, !dbg !190243
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !190243

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !190244
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !190244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !190239
  store i64 1, ptr %0, align 8, !dbg !190245
  br label %bb.q, !dbg !190252

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !190239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !190254
  store ptr null, ptr %i.i, align 8, !dbg !190254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !190257
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !190259
  %i.p = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %.body, !dbg !190267 ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.q = icmp eq ptr %i.p, null, !dbg !190270
  br i1 %i.q, label %bb.d, label %._crit_edge70, !dbg !190272

bb.d:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !190273 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r)
          to label %bb.f unwind label %.body, !dbg !190275

.body:                                            ; preds = %._crit_edge70, %bb.c, %bb.d, %bb.i, %bb.j, %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.pr = load ptr, ptr %i.i, align 8, !dbg !190276, !alias.scope !190278
  %i.t = icmp eq ptr %.pr, null, !dbg !190276
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.e, !dbg !190276

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.t, !dbg !190281

bb.f:                                             ; preds = %bb.d
  %.sroa.012.0.copyload = load ptr, ptr %i.r, align 8, !dbg !190283
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !190283
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !190287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.215.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.513.0..sroa_idx, i64 56, i1 false), !dbg !190283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !190257
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190287
  store ptr %.sroa.012.0.copyload, ptr %i.u, align 8, !dbg !190287
  br label %bb.r, !dbg !190293

._crit_edge70:                                    ; preds = %.noexc
  %.pre = load ptr, ptr %i.k, align 8, !dbg !190257
  store ptr %i.p, ptr %i.i, align 8, !dbg !190295, !alias.scope !190297, !noalias !190302
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !190304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !190257
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentsKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %.pre, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 3)
          to label %bb.g unwind label %.body, !dbg !190308

bb.g:                                             ; preds = %._crit_edge70
  %i.w = load i16, ptr %i.g, align 8, !dbg !190309, !range !110717, !noundef !11
  %i.x = trunc nuw i16 %i.w to i1, !dbg !190312
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !190312

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !190313
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !dbg !190320
  br label %bb.r, !dbg !190293

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 2, !dbg !190321
end_hunk_2
begin_hunk_3_@_RNvMsH_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries24___pymethod_new_opt_f16__:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190610
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !190610
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !190610
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !190610
  br label %bb.bs, !dbg !190617

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !190616
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !190619
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !190604
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !190604, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @787, i64 noundef 6), !dbg !190619
  %i.ag = load i64, ptr %i.q, align 8, !dbg !190620, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !190622
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !190623
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !190623 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !190622

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !190624
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !190625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !190624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !190631
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190625
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !190625
  br label %bb.bs, !dbg !190617

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !190631
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !190604
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !190604, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 7), !dbg !190632
  %i.am = load i8, ptr %i.p, align 8, !dbg !190633, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !190633
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !190635

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !190636
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !190637
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !190643
  br label %bb.bs, !dbg !190617

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !190644, !noalias !190649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !190644, !noalias !190649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !190644, !noalias !190654
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !190659, !noalias !190660
  %i.aq = load i64, ptr %i.n, align 8, !dbg !190661, !range !1924, !noalias !190654, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !190664
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !190665
  %.sroa.027.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !190665, !noalias !190654 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !190664

bb.j:                                             ; preds = %bb.bl
  resume { ptr, i32 } %.pn5296.i.i, !dbg !190666

bb.k:                                             ; preds = %bb.i
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !190667
  %i.at = load <2 x ptr>, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !dbg !190667, !noalias !190668
  %.sroa.18.16..sroa.528.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !190667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.528.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !190667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !190669, !noalias !190654
  br label %bb.bm, !dbg !190670

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !190669, !noalias !190654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !190672, !noalias !190654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !190674, !noalias !190654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !190675
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !190675
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread84.i.i, label %bb.m, !dbg !190675

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread84.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !190688
  br label %bb.q, !dbg !190689

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !190692
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !190692

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !190693 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !190697, !noalias !190698 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !190708
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !190710

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !190688
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !190711

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.f, i8 0, i64 23, i1 false), !dbg !190713, !noalias !190715
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !190716
  %i.az = or disjoint i8 %i.ay, -64, !dbg !190717
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !190717
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !190717, !noalias !190715
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !190718, !noalias !190720
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.f, align 8, !dbg !190721, !noalias !190722
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !190721
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !190721, !noalias !190722
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !190721
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !190721, !noalias !190722
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !190723

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !190724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !190726, !noalias !190729
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !190730

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !190732
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !190732
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !190733 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !190688
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !190711
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !190711
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !190711, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !190734, !noalias !190660
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread84.i.i
  %.sroa.065.092.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread84.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.466.091.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread84.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.567.090.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread84.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.065.092.i.i, ptr %i.l, align 8, !dbg !190736, !noalias !190654
  %.sroa.469.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !190736
  store i64 %.sroa.466.091.i.i, ptr %.sroa.469.0..sroa_idx.i.i, align 8, !dbg !190736, !noalias !190654
  %.sroa.570.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !190736
  store i64 %.sroa.567.090.i.i, ptr %.sroa.570.0..sroa_idx.i.i, align 8, !dbg !190736, !noalias !190654
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes11Float16TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.027.0.copyload.i.i), !dbg !190737, !noalias !190660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !190738, !noalias !190654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !190739, !noalias !190654
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !190741, !noalias !190660

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl, !dbg !190742

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !190743, !range !1924, !noalias !190654, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !190746
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !190747
  %.sroa.033.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !190747, !noalias !190654 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !190746

bb.t:                                             ; preds = %bb.s
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !190748
  %i.bf = load <2 x ptr>, ptr %.sroa.534.0..sroa_idx.i.i, align 8, !dbg !190748, !noalias !190668
  %.sroa.18.16..sroa.534.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !190748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.534.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !190748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !190749, !noalias !190654
  %i.bg = ptrtoint ptr %.sroa.033.0.copyload.i.i to i64, !dbg !190750
  br label %bb.bk, !dbg !190757

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !190749, !noalias !190654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !190739, !noalias !190654
  store ptr %.sroa.033.0.copyload.i.i, ptr %i.j, align 8, !dbg !190739, !noalias !190654
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !190759

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !190761, !noalias !190660

.thread.i.i:                                      ; preds = %.body.i, %.body.thread103.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm101.i.i, %.body.thread103.i.i ], [ %i.ee, %.body.thread.i.i ]
  %.val59.i.i = load ptr, ptr %i.j, align 8, !dbg !190762, !noalias !190654, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val59.i.i) #50, !dbg !190763, !noalias !190660
  br label %bb.bl, !dbg !190742

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !190761, !range !8288, !noalias !190654, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !190761
  br i1 %.not.i.i, label %bb.bn, label %bb.x, !dbg !190761

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !190767, !noalias !190654 ; 7 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !190768
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !190768

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !190772, !noalias !190668
  %.sroa.18.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !190772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !190772
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !190773
  br label %bb.bj, !dbg !190779

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !190781
  br i1 %i.bw, label %bb.aq, label %bb.aa, !dbg !190787

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !190788, !noalias !190793
  invoke void @_RNvXs2_NtNtCsbm5zPlkZccl_4pyo35types5floatdNtNtB9_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.ab unwind label %.body.thread.i.i, !dbg !190796, !noalias !190799

bb.ab:                                            ; preds = %bb.aa
  %i.bx = load i64, ptr %i.e, align 8, !dbg !190800, !range !1924, !noalias !190793, !noundef !11
  %i.by = trunc nuw i64 %i.bx to i1, !dbg !190803
  %.sroa.05.0.copyload.i.i.i = load double, ptr %i.bh, align 8, !dbg !190804, !noalias !190793 ; 3 uses
  br i1 %i.by, label %bb.bc, label %bb.ac, !dbg !190803

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !190805, !noalias !190793
  %i.bz = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !190806, !noalias !190793 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0, !dbg !190844
  br i1 %i.ca, label %bb.ad, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, !dbg !190844, !prof !1928

bb.ad:                                            ; preds = %bb.ac
  %i.cb = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc.i.i.i unwind label %.body.thread.i.i, !dbg !190846, !noalias !190799

.noexc.i.i.i:                                     ; preds = %bb.ad
  %i.cc = and i128 %i.cb, 36028797018963968, !dbg !190852
  %.not1.i.i.i = icmp eq i128 %i.cc, 0, !dbg !190852
  br i1 %.not1.i.i.i, label %bb.ae, label %bb.ap, !dbg !190858

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.ac
  %i.cd = and i64 %i.bz, 36028797018963968, !dbg !190859
  %.not.i.i.i = icmp eq i64 %i.cd, 0, !dbg !190859
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ap, !dbg !190858

bb.ae:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i.i.i
  %i.ce = bitcast double %.sroa.05.0.copyload.i.i.i to i64, !dbg !190860 ; 2 uses
  %i.cf = lshr i64 %i.ce, 32, !dbg !190863
  %i.cg = trunc nuw i64 %i.cf to i32, !dbg !190863 ; 5 uses
  %i.ch = and i32 %i.cg, -2147483648, !dbg !190865 ; 2 uses
  %i.ci = and i32 %i.cg, 2146435072, !dbg !190867 ; 6 uses
  %i.cj = and i32 %i.cg, 1048575, !dbg !190869    ; 4 uses
  %i.ck = icmp eq i32 %i.ci, 2146435072, !dbg !190871
  br i1 %i.ck, label %bb.af, label %bb.ag, !dbg !190871

bb.af:                                            ; preds = %bb.ae
  %i.cl = icmp eq i32 %i.cj, 0, !dbg !190873
  %i.cm = and i64 %i.ce, 4294967295
  %i.cn = icmp eq i64 %i.cm, 0
  %or.cond.i.i.i.i = and i1 %i.cn, %i.cl, !dbg !190873
  %..i.i.i.i = select i1 %or.cond.i.i.i.i, i32 0, i32 512, !dbg !190874
  %i.co = lshr exact i32 %i.ch, 16, !dbg !190875
  %i.cp = lshr i32 %i.cj, 10, !dbg !190877
  %i.cq = or disjoint i32 %i.cp, %i.co, !dbg !190875
  %i.cr = or i32 %i.cq, %..i.i.i.i, !dbg !190878
  %i.cs = trunc nuw i32 %i.cr to i16, !dbg !190878
  %i.ct = or disjoint i16 %i.cs, 31744, !dbg !190878
  br label %bb.bd, !dbg !190879

bb.ag:                                            ; preds = %bb.ae
  %i.cu = lshr exact i32 %i.ch, 16, !dbg !190881  ; 4 uses
  %i.cv = lshr exact i32 %i.ci, 20, !dbg !190882  ; 2 uses
  %i.cw = icmp samesign ugt i32 %i.ci, 1088421888, !dbg !190884
  br i1 %i.cw, label %bb.ai, label %bb.ah, !dbg !190884

bb.ah:                                            ; preds = %bb.ag
  %i.cx = icmp samesign ult i32 %i.ci, 1058013184, !dbg !190887
  br i1 %i.cx, label %bb.ak, label %bb.aj, !dbg !190887

bb.ai:                                            ; preds = %bb.ag
  %i.cy = trunc nuw i32 %i.cu to i16, !dbg !190888
  %i.cz = or disjoint i16 %i.cy, 31744, !dbg !190888
  br label %bb.bd, !dbg !190889

bb.aj:                                            ; preds = %bb.ah
  %i.da = lshr exact i32 %i.ci, 10, !dbg !190891
  %i.db = add nuw nsw i32 %i.da, 16384, !dbg !190891
  %i.dc = lshr i32 %i.cj, 10, !dbg !190892
  %i.dd = and i32 %i.cg, 512, !dbg !190894
  %i.de = icmp ne i32 %i.dd, 0, !dbg !190894
  %i.df = and i32 %i.cg, 1535
  %i.dg = icmp ne i32 %i.df, 0
  %or.cond3.not.i.i.i.i = and i1 %i.de, %i.dg, !dbg !190897
  %i.dh = or disjoint i32 %i.db, %i.dc, !dbg !190897
  %i.di = or i32 %i.dh, %i.cu, !dbg !190897
  %i.dj = trunc i32 %i.di to i16, !dbg !190897
  %i.dk = zext i1 %or.cond3.not.i.i.i.i to i16, !dbg !190894
  %spec.select9.i.i.i.i = add i16 %i.dj, %i.dk, !dbg !190894
  br label %bb.bd, !dbg !190894

bb.ak:                                            ; preds = %bb.ah
  %i.dl = icmp samesign ult i32 %i.ci, 1045430272, !dbg !190898
  br i1 %i.dl, label %bb.am, label %bb.al, !dbg !190898

bb.al:                                            ; preds = %bb.ak
  %i.dm = sub nsw i32 1018, %i.cv, !dbg !190898   ; 2 uses
  %i.dn = or disjoint i32 %i.cj, 1048576, !dbg !190899 ; 3 uses
  %i.do = sub nsw i32 27, %i.cv, !dbg !190900
  %i.dp = and i32 %i.do, 31, !dbg !190902
  %i.dq = lshr i32 %i.dn, %i.dp, !dbg !190902     ; 2 uses
  %i.dr = shl nuw nsw i32 1, %i.dm, !dbg !190903
  %i.ds = and i32 %i.dr, %i.dn, !dbg !190905
  %i.dt = icmp eq i32 %i.ds, 0, !dbg !190905
  br i1 %i.dt, label %bb.ao, label %bb.an, !dbg !190905

bb.am:                                            ; preds = %bb.ak
  %i.du = trunc nuw i32 %i.cu to i16, !dbg !190907
  br label %bb.bd, !dbg !190889

bb.an:                                            ; preds = %bb.al
  %i.dv = shl nuw nsw i32 3, %i.dm, !dbg !190908
  %i.dw = add nuw nsw i32 %i.dv, 2097151, !dbg !190909
  %i.dx = and i32 %i.dw, %i.dn, !dbg !190910
  %i.dy = icmp ne i32 %i.dx, 0, !dbg !190910
  %i.dz = zext i1 %i.dy to i32, !dbg !190910
  %spec.select.i.i.i.i = add nuw nsw i32 %i.dq, %i.dz, !dbg !190910
  br label %bb.ao, !dbg !190910

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.sroa.05.0.i.i.i.i = phi i32 [ %i.dq, %bb.al ], [ %spec.select.i.i.i.i, %bb.an ], !dbg !190911
  %i.ea = or i32 %.sroa.05.0.i.i.i.i, %i.cu, !dbg !190912
  %i.eb = trunc i32 %i.ea to i16, !dbg !190912
  br label %bb.bd, !dbg !190889

bb.ap:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.noexc.i.i.i
  %i.ec = fptrunc double %.sroa.05.0.copyload.i.i.i to float, !dbg !190913
  %i.ed = call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.ec), !dbg !190914
  br label %bb.bd, !dbg !190914

.body.thread.i.i:                                 ; preds = %bb.ad, %bb.aa
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !190915, !noalias !190799
  br label %.thread.i.i, !dbg !190919

bb.aq:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !190920), !dbg !190923
  %i.ef = load i64, ptr %i.bj, align 16, !dbg !190926, !alias.scope !190920, !noalias !190929, !noundef !11 ; 6 uses
  %i.eg = load i64, ptr %i.bi, align 16, !dbg !190926, !range !2549, !alias.scope !190920, !noalias !190929, !noundef !11
  %i.eh = icmp eq i64 %i.ef, %i.eg, !dbg !190926
  br i1 %i.eh, label %bb.ar, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !190930

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !190936, !noalias !190937

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ar, %bb.aq
  %i.ei = load ptr, ptr %i.bk, align 8, !dbg !190938, !alias.scope !190947, !noalias !190929, !nonnull !11, !noundef !11
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %i.ef, !dbg !190950
  store i16 0, ptr %i.ej, align 2, !dbg !190953, !noalias !190660
  %i.ek = add i64 %i.ef, 1, !dbg !190957          ; 4 uses
  store i64 %i.ek, ptr %i.bj, align 16, !dbg !190957, !alias.scope !190947, !noalias !190929
  %i.el = load i64, ptr %i.bl, align 8, !dbg !190958, !range !1927, !alias.scope !190920, !noalias !190929, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.el, -9223372036854775808, !dbg !190958
  br i1 %.not.i1.i, label %bb.av, label %bb.as, !dbg !190959

bb.as:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.em = load i64, ptr %i.bm, align 16, !dbg !190960, !alias.scope !190963, !noalias !190929, !noundef !11 ; 2 uses
  %i.en = and i64 %i.em, 7, !dbg !190966
  %i.eo = icmp eq i64 %i.en, 0, !dbg !190966
  %i.ep = load i64, ptr %i.bn, align 8, !dbg !190968, !alias.scope !190963, !noalias !190929 ; 4 uses
  br i1 %i.eo, label %bb.at, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !190960

bb.at:                                            ; preds = %bb.as
  %i.eq = icmp eq i64 %i.ep, %i.el, !dbg !190969
  br i1 %i.eq, label %bb.au, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !190969

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !190972, !noalias !190937

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.au, %bb.at
  %i.er = load ptr, ptr %i.bo, align 16, !dbg !190973, !alias.scope !190978, !noalias !190929, !nonnull !11, !noundef !11
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep, !dbg !190981
  store i8 0, ptr %i.es, align 1, !dbg !190983, !noalias !190660
  %i.et = add i64 %i.ep, 1, !dbg !190985          ; 2 uses
  store i64 %i.et, ptr %i.bn, align 8, !dbg !190985, !alias.scope !190978, !noalias !190929
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !190986, !alias.scope !190963, !noalias !190929
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !190987

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.as
  %i.eu = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.em, %bb.as ], !dbg !190986
  %i.ev = phi i64 [ %i.et, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ep, %bb.as ], !dbg !190988 ; 2 uses
  %.not.i.i2.i = icmp ne i64 %i.ev, 0, !dbg !190991
  call void @llvm.assume(i1 %.not.i.i2.i), !dbg !190991, !noalias !190993
  %i.ew = load ptr, ptr %i.bo, align 16, !dbg !190994, !alias.scope !190963, !noalias !190929, !nonnull !11, !noundef !11
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.ev, !dbg !190999
  %i.ey = getelementptr i8, ptr %i.ex, i64 -1, !dbg !190999 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ], !dbg !191000, !noalias !190993
  %i.ez = load i8, ptr %i.ey, align 1, !dbg !191002, !noalias !190660, !noundef !11
  %i.fa = trunc i64 %i.eu to i8, !dbg !191003
  %i.fb = and i8 %i.fa, 7, !dbg !191003
  %i.fc = shl nuw i8 1, %i.fb, !dbg !191003
  %i.fd = xor i8 %i.fc, -1, !dbg !191005
  %i.fe = and i8 %i.ez, %i.fd, !dbg !191006
  store i8 %i.fe, ptr %i.ey, align 1, !dbg !191007, !noalias !190660
  %i.ff = load i64, ptr %i.bm, align 16, !dbg !191008, !alias.scope !190963, !noalias !190929, !noundef !11
  %i.fg = add i64 %i.ff, 1, !dbg !191008
  store i64 %i.fg, ptr %i.bm, align 16, !dbg !191008, !alias.scope !190963, !noalias !190929
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !191009

bb.av:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !191010), !dbg !191013, !noalias !190993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !191014, !noalias !191017
  %i.fh = load i64, ptr %i.bi, align 16, !dbg !191018, !range !2549, !alias.scope !191025, !noalias !190929, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !191026), !dbg !191029, !noalias !190993
  %i.fi = add nuw i64 %i.fh, 7, !dbg !191030
  %i.fj = lshr i64 %i.fi, 3, !dbg !191033         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !191034, !noalias !191039
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.fj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.i unwind label %.loopexit.i, !dbg !191034, !noalias !190937

.noexc4.i:                                        ; preds = %bb.av
  %i.fk = load i64, ptr %i.c, align 8, !dbg !191034, !range !1924, !noalias !191039, !noundef !11
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !191040
  %i.fm = load i64, ptr %i.bp, align 8, !dbg !191041, !range !1927, !noalias !191039, !noundef !11 ; 3 uses
  br i1 %i.fl, label %bb.aw, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !191040, !prof !1928

bb.aw:                                            ; preds = %.noexc4.i
  %i.fn = load i64, ptr %i.bq, align 8, !dbg !191042, !noalias !191039
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.fm, i64 %i.fn) #54
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !dbg !191043, !noalias !190937

.noexc5.i:                                        ; preds = %bb.aw
  unreachable, !dbg !191043

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc4.i
  %i.fo = load ptr, ptr %i.bq, align 8, !dbg !191044, !noalias !191039, !nonnull !11, !noundef !11
  %i.fp = icmp samesign ule i64 %i.fj, %i.fm, !dbg !191045
  call void @llvm.assume(i1 %i.fp), !dbg !191047, !noalias !190993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !191049, !noalias !191039
  store i64 %i.fm, ptr %i.d, align 8, !dbg !191050, !alias.scope !191026, !noalias !191017
  store ptr %i.fo, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !191050, !alias.scope !191026, !noalias !191017
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !191050, !alias.scope !191026, !noalias !191017
  %i.fq = icmp ult i64 %i.ek, 4611686018427387904, !dbg !191051
  call void @llvm.assume(i1 %i.fq), !dbg !191058, !noalias !190993
  %i.fr = icmp eq i64 %i.ek, 0, !dbg !191059
  br i1 %i.fr, label %.thread.i.i.i, label %bb.ay, !dbg !191059

bb.ax:                                            ; preds = %bb.ay
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !191062, !noalias !191017
  %i.fs = icmp ult i64 %i.ef, %.pre.i.i.i, !dbg !191067
  br i1 %i.fs, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !191067, !prof !132892

bb.ay:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.ek)
          to label %bb.ax unwind label %.loopexit6.i, !dbg !191068, !noalias !191069

.thread.i.i.i:                                    ; preds = %bb.ax, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.az unwind label %.loopexit.split-lp7.i, !dbg !191070, !noalias !191069

bb.az:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit6.i:                                     ; preds = %bb.ay
  %lpad.loopexit8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp7.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp9.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.split-lp7.i, %.loopexit6.i
  %lpad.phi10.i = phi { ptr, i32 } [ %lpad.loopexit8.i, %.loopexit6.i ], [ %lpad.loopexit.split-lp9.i, %.loopexit.split-lp7.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.bb, !dbg !191071, !noalias !191069

bb.bb:                                            ; preds = %bb.ba
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !191072, !noalias !191069
  unreachable, !dbg !191072

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ax
  %i.fu = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !191073, !noalias !191017, !nonnull !11, !noundef !11
  %i.fv = lshr i64 %i.ef, 3, !dbg !191088
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv, !dbg !191089 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !dbg !191094, !noalias !191069, !noundef !11
  %i.fy = trunc i64 %i.ef to i8, !dbg !191096
  %i.fz = and i8 %i.fy, 7, !dbg !191096
  %i.ga = shl nuw i8 1, %i.fz, !dbg !191096
  %i.gb = xor i8 %i.ga, -1, !dbg !191099
  %i.gc = and i8 %i.fx, %i.gb, !dbg !191100
  store i8 %i.gc, ptr %i.fw, align 1, !dbg !191103, !noalias !191069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !191104, !noalias !190929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !191071, !noalias !191017
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !191013

.body.thread103.i.i:                              ; preds = %bb.bh, %bb.be
  %lpad.thr_comm101.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !190919

bb.bc:                                            ; preds = %bb.ab
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !191105
  %i.gd = load <2 x ptr>, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !dbg !191105, !noalias !190668
  %.sroa.18.16..sroa.56.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !191105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.56.0..sroa_idx.i.i.i.sroa_idx, i64 40, i1 false), !dbg !191105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !190805, !noalias !190793
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !191106, !noalias !190799
  %i.ge = bitcast double %.sroa.05.0.copyload.i.i.i to i64, !dbg !191110
  br label %bb.bj, !dbg !190919

bb.bd:                                            ; preds = %bb.ap, %bb.ao, %bb.am, %bb.aj, %bb.ai, %bb.af
  %.sroa.5.0.ph.i.i = phi i16 [ %spec.select9.i.i.i.i, %bb.aj ], [ %i.eb, %bb.ao ], [ %i.du, %bb.am ], [ %i.cz, %bb.ai ], [ %i.ct, %bb.af ], [ %i.ed, %bb.ap ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !191106, !noalias !190799
  %i.gf = load i64, ptr %i.bj, align 16, !dbg !191116, !alias.scope !191121, !noalias !190654, !noundef !11 ; 3 uses
  %i.gg = load i64, ptr %i.bi, align 16, !dbg !191116, !range !2549, !alias.scope !191121, !noalias !190654, !noundef !11
  %i.gh = icmp eq i64 %i.gf, %i.gg, !dbg !191116
  br i1 %i.gh, label %bb.be, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !191124

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread103.i.i, !dbg !191130, !noalias !190660

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.be, %bb.bd
  %i.gi = load ptr, ptr %i.bk, align 8, !dbg !191131, !alias.scope !191136, !noalias !190654, !nonnull !11, !noundef !11
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gf, !dbg !191139
  store i16 %.sroa.5.0.ph.i.i, ptr %i.gj, align 2, !dbg !191141, !noalias !190660
  %i.gk = add i64 %i.gf, 1, !dbg !191143
  store i64 %i.gk, ptr %i.bj, align 16, !dbg !191143, !alias.scope !191136, !noalias !190654
  %i.gl = load i64, ptr %i.bl, align 8, !dbg !191144, !range !1927, !alias.scope !191121, !noalias !190654, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.gl, -9223372036854775808, !dbg !191144
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.bf, !dbg !191146

bb.bf:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.gm = load i64, ptr %i.bm, align 16, !dbg !191147, !alias.scope !191149, !noalias !190654, !noundef !11 ; 2 uses
  %i.gn = and i64 %i.gm, 7, !dbg !191152
  %i.go = icmp eq i64 %i.gn, 0, !dbg !191152
  %i.gp = load i64, ptr %i.bn, align 8, !dbg !191154, !alias.scope !191149, !noalias !190654 ; 4 uses
  br i1 %i.go, label %bb.bg, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !191147

bb.bg:                                            ; preds = %bb.bf
  %i.gq = icmp eq i64 %i.gp, %i.gl, !dbg !191155
  br i1 %i.gq, label %bb.bh, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !191155

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread103.i.i, !dbg !191158, !noalias !190660

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.bh, %bb.bg
  %i.gr = load ptr, ptr %i.bo, align 16, !dbg !191159, !alias.scope !191164, !noalias !190654, !nonnull !11, !noundef !11
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gp, !dbg !191167
  store i8 0, ptr %i.gs, align 1, !dbg !191169, !noalias !190660
  %i.gt = add i64 %i.gp, 1, !dbg !191171          ; 2 uses
  store i64 %i.gt, ptr %i.bn, align 8, !dbg !191171, !alias.scope !191164, !noalias !190654
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !191172, !alias.scope !191149, !noalias !190654
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !191173

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.bf
  %i.gu = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.gm, %bb.bf ], !dbg !191172
  %i.gv = phi i64 [ %i.gt, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.gp, %bb.bf ], !dbg !191174 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.gv, 0, !dbg !191177
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !191177
  %i.gw = load ptr, ptr %i.bo, align 16, !dbg !191179, !alias.scope !191149, !noalias !190654, !nonnull !11, !noundef !11
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.gv, !dbg !191184
  %i.gy = getelementptr i8, ptr %i.gx, i64 -1, !dbg !191184 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gy) ], !dbg !191185
  %i.gz = load i8, ptr %i.gy, align 1, !dbg !191187, !noalias !190660, !noundef !11
  %i.ha = trunc i64 %i.gu to i8, !dbg !191188
  %i.hb = and i8 %i.ha, 7, !dbg !191188
  %i.hc = shl nuw i8 1, %i.hb, !dbg !191188
  %i.hd = or i8 %i.gz, %i.hc, !dbg !191190
  store i8 %i.hd, ptr %i.gy, align 1, !dbg !191191, !noalias !190660
  %i.he = load i64, ptr %i.bm, align 16, !dbg !191192, !alias.scope !191149, !noalias !190654, !noundef !11
  %i.hf = add i64 %i.he, 1, !dbg !191192
  store i64 %i.hf, ptr %i.bm, align 16, !dbg !191192, !alias.scope !191149, !noalias !190654
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !191193

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !191194, !noalias !190660
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !191198

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16E4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !190761

.loopexit.i:                                      ; preds = %bb.av, %bb.au, %bb.ar
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.aw
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.ba
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi10.i, %bb.ba ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !191199, !noalias !190660
  br label %.thread.i.i, !dbg !191203

bb.bi:                                            ; preds = %bb.bl
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !190666, !noalias !190660
  unreachable, !dbg !190666

bb.bj:                                            ; preds = %bb.bc, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %i.ge, %bb.bc ], !dbg !191204
  %i.hh = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.gd, %bb.bc ], !dbg !191205
  %.val57.i.i = load ptr, ptr %i.j, align 8, !dbg !190762, !noalias !190654, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val57.i.i) #50, !dbg !191206, !noalias !190660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !190762, !noalias !190654
  br label %bb.bk, !dbg !190762

bb.bk:                                            ; preds = %bb.bj, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.bj ], !dbg !191210
  %i.hi = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.hh, %bb.bj ], !dbg !191211
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes11Float16TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !190742, !noalias !190660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !190742, !noalias !190654
  br label %bb.bm, !dbg !191212

bb.bl:                                            ; preds = %.thread.i.i, %bb.r
  %.pn5296.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes11Float16TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.bi, !dbg !190742, !noalias !190660

bb.bm:                                            ; preds = %bb.k, %bb.bk
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.bk ], [ %.sroa.027.0.copyload.i.i, %bb.k ]
  %i.hj = phi <2 x ptr> [ %i.hi, %bb.bk ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !191214, !noalias !190649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !191214, !noalias !190649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !191215
  %i.hk = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !191218
  br label %bb.bo, !dbg !191225

bb.bn:                                            ; preds = %bb.w
  %.val58.i.i = load ptr, ptr %i.j, align 8, !dbg !190762, !noalias !190654, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val58.i.i) #50, !dbg !191228, !noalias !190660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !190762, !noalias !190654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !191232, !noalias !190654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.g, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !191232, !noalias !190654
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes11Float16TypeEINtB4_14ChunkedBuilderNtNtCs2mZqlW55729_12polars_utils7float164pf16B1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.g), !dbg !191233, !noalias !190660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !191234, !noalias !190654
  %i.hl = call { ptr, ptr } @_RNvXs2y_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_11Float16TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h), !dbg !191235, !noalias !190660 ; 2 uses
  %i.hm = extractvalue { ptr, ptr } %i.hl, 0, !dbg !191235 ; 2 uses
  %i.hn = extractvalue { ptr, ptr } %i.hl, 1, !dbg !191235 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hm) ], !dbg !191239
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hn) ], !dbg !191239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !190742, !noalias !190654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !191214, !noalias !190649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !191214, !noalias !190649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !191215
  store i64 0, ptr %i.o, align 8, !dbg !191252
  %.sroa.12.8..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !191252
  store ptr %i.hm, ptr %.sroa.12.8..sroa_idx38, align 8, !dbg !191252
  %.sroa.17.8..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !191252
  store ptr %i.hn, ptr %.sroa.17.8..sroa_idx43, align 8, !dbg !191252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !191253, !noalias !191258
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !191262, !noalias !191265
  %i.ho = load i64, ptr %i.b, align 8, !dbg !191253, !range !1924, !noalias !191258, !noundef !11
  %i.hp = trunc nuw i64 %i.ho to i1, !dbg !191266
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !191267
  %.sroa.549.8.copyload51 = load ptr, ptr %i.hq, align 8, !dbg !191267, !noalias !191268 ; 2 uses
  br i1 %i.hp, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bp, !dbg !191266

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.bn
  %.sroa.10.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !191269
  %i.hr = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx53, align 8, !dbg !191269, !noalias !191268
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !191269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx, i64 40, i1 false), !dbg !191269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !191270, !noalias !191258
  br label %bb.bo, !dbg !191225

bb.bo:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.bm
  %.sroa.549.0 = phi ptr [ %i.hk, %bb.bm ], [ %.sroa.549.8.copyload51, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !191271
  %i.hs = phi <2 x ptr> [ %i.hj, %bb.bm ], [ %i.hr, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !191271
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !191272
  store ptr %.sroa.549.0, ptr %i.ht, align 8, !dbg !191272
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !191272
  store <2 x ptr> %i.hs, ptr %.sroa.560.0..sroa_idx, align 8, !dbg !191272
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !191272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.762.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, i64 40, i1 false), !dbg !191272
  br label %bb.bq, !dbg !191274

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !191270, !noalias !191258
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !191275
  store ptr %.sroa.549.8.copyload51, ptr %i.hu, align 8, !dbg !191275
  br label %bb.bq, !dbg !191277

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %storemerge = phi i64 [ 0, %bb.bp ], [ 1, %bb.bo ], !dbg !191278
  store i64 %storemerge, ptr %0, align 8, !dbg !191278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !191215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !190598
  br label %bb.br, !dbg !191279

bb.br:                                            ; preds = %bb.b, %bb.bs, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !190581
  ret void, !dbg !191279

bb.bs:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !191280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !190598
  br label %bb.br, !dbg !190596
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsI_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries20___pymethod_neq_i32__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !191282 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.10.sroa.6 = alloca [40 x i8], align 8    ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !191283
  store ptr null, ptr %i.k, align 8, !dbg !191283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !191285
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @791, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.k, i64 noundef 1), !dbg !191285
  %i.l = load i64, ptr %i.j, align 8, !dbg !191287, !range !1924, !noundef !11
  %i.m = trunc nuw i64 %i.l to i1, !dbg !191289
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !191289

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !191290
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !191291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !191290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !191285
  store i64 1, ptr %0, align 8, !dbg !191291
  br label %bb.q, !dbg !191298

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !191285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !191300
  store ptr null, ptr %i.i, align 8, !dbg !191300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !191303
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !191305
  %i.p = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %.body, !dbg !191313 ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.q = icmp eq ptr %i.p, null, !dbg !191316
  br i1 %i.q, label %bb.d, label %._crit_edge69, !dbg !191318

bb.d:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !191319 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r)
          to label %bb.f unwind label %.body, !dbg !191321

.body:                                            ; preds = %._crit_edge69, %bb.c, %bb.d, %bb.i, %bb.j, %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.pr = load ptr, ptr %i.i, align 8, !dbg !191322, !alias.scope !191324
  %i.t = icmp eq ptr %.pr, null, !dbg !191322
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.e, !dbg !191322

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.t, !dbg !191327

bb.f:                                             ; preds = %bb.d
  %.sroa.011.0.copyload = load ptr, ptr %i.r, align 8, !dbg !191329
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !191329
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !191333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.512.0..sroa_idx, i64 56, i1 false), !dbg !191329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !191303
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !191333
  store ptr %.sroa.011.0.copyload, ptr %i.u, align 8, !dbg !191333
  br label %bb.r, !dbg !191339

._crit_edge69:                                    ; preds = %.noexc
  %.pre = load ptr, ptr %i.k, align 8, !dbg !191303
  store ptr %i.p, ptr %i.i, align 8, !dbg !191341, !alias.scope !191343, !noalias !191348
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !191350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !191303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !191354
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentlKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %.pre, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 3)
          to label %bb.g unwind label %.body, !dbg !191354

bb.g:                                             ; preds = %._crit_edge69
  %i.w = load i32, ptr %i.g, align 8, !dbg !191355, !range !114141, !noundef !11
  %i.x = trunc nuw i32 %i.w to i1, !dbg !191358
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !191358

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !191359
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !191360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !dbg !191359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !191366
  br label %bb.r, !dbg !191339

end_hunk_3
begin_hunk_4_@_RNvMsj_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries23___pymethod_new_opt_u8__:bb.a
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !227478
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !227478
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !227478
  br label %bb.be, !dbg !227485

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !227484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !227487
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !227470
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !227470, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !227487
  %i.ag = load i64, ptr %i.q, align 8, !dbg !227488, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !227491
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !227492
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !227492 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !227491

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !227493
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !227494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !227493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !227500
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !227494
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !227494
  br label %bb.be, !dbg !227485

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !227500
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !227470
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !227470, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !227501
  %i.am = load i8, ptr %i.p, align 8, !dbg !227502, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !227502
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !227505

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !227506
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !227507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !227513
  br label %bb.be, !dbg !227485

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !227514, !noalias !227519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !227514, !noalias !227519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !227514, !noalias !227519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !227514, !noalias !227524
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !227529, !noalias !227530
  %i.aq = load i64, ptr %i.n, align 8, !dbg !227531, !range !1924, !noalias !227524, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !227534
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !227535
  %.sroa.027.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !227535, !noalias !227524 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !227534

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn5283.i.i, !dbg !227536

bb.k:                                             ; preds = %bb.i
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !227537
  %i.at = load <2 x ptr>, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !dbg !227537, !noalias !227538
  %.sroa.17.16..sroa.528.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !227537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.528.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !227537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !227539, !noalias !227524
  br label %bb.ay, !dbg !227540

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !227539, !noalias !227524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !227542, !noalias !227524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !227544, !noalias !227524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !227545
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !227545
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i, label %bb.m, !dbg !227545

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !227558
  br label %bb.q, !dbg !227559

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !227562
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !227562

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !227563 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !227567, !noalias !227568 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !227578
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !227580

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !227558
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !227581

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !227583, !noalias !227585
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !227586
  %i.az = or disjoint i8 %i.ay, -64, !dbg !227587
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !227587
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !227587, !noalias !227585
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !227588, !noalias !227590
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !227591, !noalias !227592
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !227591
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !227591, !noalias !227592
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !227591
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !227591, !noalias !227592
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !227593

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !227594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !227596, !noalias !227599
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !227600

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !227602
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !227602
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !227603 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !227558
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !227581
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !227581
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !227581, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !227604, !noalias !227530
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i
  %.sroa.061.079.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.462.078.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.077.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.061.079.i.i, ptr %i.l, align 8, !dbg !227606, !noalias !227524
  %.sroa.464.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !227606
  store i64 %.sroa.462.078.i.i, ptr %.sroa.464.0..sroa_idx.i.i, align 8, !dbg !227606, !noalias !227524
  %.sroa.565.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !227606
  store i64 %.sroa.5.077.i.i, ptr %.sroa.565.0..sroa_idx.i.i, align 8, !dbg !227606, !noalias !227524
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes9UInt8TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.027.0.copyload.i.i), !dbg !227607, !noalias !227530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !227608, !noalias !227524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !227609, !noalias !227524
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !227611, !noalias !227530

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !227612

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !227613, !range !1924, !noalias !227524, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !227616
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !227617
  %.sroa.033.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !227617, !noalias !227524 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !227616

bb.t:                                             ; preds = %bb.s
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !227618
  %i.bf = load <2 x ptr>, ptr %.sroa.534.0..sroa_idx.i.i, align 8, !dbg !227618, !noalias !227538
  %.sroa.17.16..sroa.534.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !227618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.534.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !227618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !227619, !noalias !227524
  %i.bg = ptrtoint ptr %.sroa.033.0.copyload.i.i to i64, !dbg !227620
  br label %bb.aw, !dbg !227627

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !227619, !noalias !227524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !227609, !noalias !227524
  store ptr %.sroa.033.0.copyload.i.i, ptr %i.j, align 8, !dbg !227609, !noalias !227524
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !227629

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !227631, !noalias !227530

.thread.i.i:                                      ; preds = %.body.i, %.body.thread90.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm88.i.i, %.body.thread90.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val59.i.i = load ptr, ptr %i.j, align 8, !dbg !227632, !noalias !227524, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val59.i.i) #50, !dbg !227633, !noalias !227530
  br label %bb.ax, !dbg !227612

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !227631, !range !8288, !noalias !227524, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !227631
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !227631

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !227637, !noalias !227524 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !227638
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !227638

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !227642, !noalias !227538
  %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !227642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !227642
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !227643
  br label %bb.av, !dbg !227649

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !227651
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !227657

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXs0_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numhNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !227658, !noalias !227530

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !227665, !noalias !227669
  br label %.thread.i.i, !dbg !227672

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !227673), !dbg !227676
  %i.by = load i64, ptr %i.bj, align 16, !dbg !227679, !alias.scope !227673, !noalias !227682, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !227679, !range !2549, !alias.scope !227673, !noalias !227682, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !227679
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !227683

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !227687, !noalias !227688

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !227689, !alias.scope !227694, !noalias !227682, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by, !dbg !227697
  store i8 0, ptr %i.cc, align 1, !dbg !227699, !noalias !227530
  %i.cd = add i64 %i.by, 1, !dbg !227701          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !227701, !alias.scope !227694, !noalias !227682
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !227702, !range !1927, !alias.scope !227673, !noalias !227682, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !227702
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !227703

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !227704, !alias.scope !227707, !noalias !227682, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !227710
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !227710
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !227712, !alias.scope !227707, !noalias !227682 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !227704

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !227713
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i2.i, !dbg !227713

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i2.i unwind label %.loopexit.i, !dbg !227716, !noalias !227688

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i2.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !227717, !alias.scope !227722, !noalias !227682, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !227725
  store i8 0, ptr %i.cl, align 1, !dbg !227727, !noalias !227530
  %i.cm = add i64 %i.ci, 1, !dbg !227729          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !227729, !alias.scope !227722, !noalias !227682
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !227730, !alias.scope !227707, !noalias !227682
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !227731

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i2.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i2.i ], [ %i.cf, %bb.ad ], !dbg !227730
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i2.i ], [ %i.ci, %bb.ad ], !dbg !227732 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !227735
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !227735, !noalias !227737
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !227738, !alias.scope !227707, !noalias !227682, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !227743
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !227743 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !227744, !noalias !227737
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !227746, !noalias !227530, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !227747
  %i.cu = and i8 %i.ct, 7, !dbg !227747
  %i.cv = shl nuw i8 1, %i.cu, !dbg !227747
  %i.cw = xor i8 %i.cv, -1, !dbg !227749
  %i.cx = and i8 %i.cs, %i.cw, !dbg !227750
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !227751, !noalias !227530
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !227752, !alias.scope !227707, !noalias !227682, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !227752
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !227752, !alias.scope !227707, !noalias !227682
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !227753

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !227754), !dbg !227757, !noalias !227737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !227758, !noalias !227761
  %i.da = load i64, ptr %i.bi, align 16, !dbg !227762, !range !2549, !alias.scope !227769, !noalias !227682, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !227770), !dbg !227773, !noalias !227737
  %i.db = add nuw i64 %i.da, 7, !dbg !227774
  %i.dc = lshr i64 %i.db, 3, !dbg !227777         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !227778, !noalias !227783
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.i unwind label %.loopexit.i, !dbg !227778, !noalias !227688

.noexc4.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !227778, !range !1924, !noalias !227783, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !227784
  %i.df = load i64, ptr %i.bp, align 8, !dbg !227785, !range !1927, !noalias !227783, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !227784, !prof !1928

bb.ah:                                            ; preds = %.noexc4.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !227786, !noalias !227783
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc5.i unwind label %.loopexit.split-lp.i, !dbg !227787, !noalias !227688

.noexc5.i:                                        ; preds = %bb.ah
  unreachable, !dbg !227787

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc4.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !227788, !noalias !227783, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !227789
  call void @llvm.assume(i1 %i.di), !dbg !227791, !noalias !227737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !227793, !noalias !227783
  store i64 %i.df, ptr %i.d, align 8, !dbg !227794, !alias.scope !227770, !noalias !227761
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !227794, !alias.scope !227770, !noalias !227761
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !227794, !alias.scope !227770, !noalias !227761
  %i.dj = icmp sgt i64 %i.cd, -1, !dbg !227795
  call void @llvm.assume(i1 %i.dj), !dbg !227802, !noalias !227737
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !227803
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !227803

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !227806, !noalias !227761
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !227811
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !227811, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit6.i, !dbg !227812, !noalias !227813

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp7.i, !dbg !227814, !noalias !227813

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit6.i:                                     ; preds = %bb.aj
  %lpad.loopexit8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp7.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp9.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp7.i, %.loopexit6.i
  %lpad.phi10.i = phi { ptr, i32 } [ %lpad.loopexit8.i, %.loopexit6.i ], [ %lpad.loopexit.split-lp9.i, %.loopexit.split-lp7.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !227815, !noalias !227813

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !227816, !noalias !227813
  unreachable, !dbg !227816

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !227817, !noalias !227761, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !227832
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !227833 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !227838, !noalias !227813, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !227840
  %i.ds = and i8 %i.dr, 7, !dbg !227840
  %i.dt = shl nuw i8 1, %i.ds, !dbg !227840
  %i.du = xor i8 %i.dt, -1, !dbg !227843
  %i.dv = and i8 %i.dq, %i.du, !dbg !227844
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !227847, !noalias !227813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !227848, !noalias !227682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !227815, !noalias !227761
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !227757

.body.thread90.i.i:                               ; preds = %bb.at, %bb.aq
  %lpad.thr_comm88.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !227672

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !227849, !noalias !227669
  %i.dw = load i8, ptr %i.f, align 8, !dbg !227853, !range !15679, !noalias !227524, !noundef !11
  %i.dx = trunc nuw i8 %i.dw to i1, !dbg !227853
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !227856

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !227857
  %.sroa.5.8.copyload37 = load i64, ptr %i.dy, align 8, !dbg !227858, !noalias !227538
  %.sroa.12.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !227858
  %i.dz = load <2 x ptr>, ptr %.sroa.12.8..sroa_idx39, align 8, !dbg !227858, !noalias !227538
  %.sroa.17.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !227858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.8..sroa_idx51, i64 40, i1 false), !dbg !227858
  br label %bb.av, !dbg !227672

bb.ap:                                            ; preds = %bb.an
  %i.ea = load i8, ptr %i.bh, align 1, !dbg !227859, !noalias !227524, !noundef !11
  %i.eb = load i64, ptr %i.bj, align 16, !dbg !227860, !alias.scope !227865, !noalias !227524, !noundef !11 ; 3 uses
  %i.ec = load i64, ptr %i.bi, align 16, !dbg !227860, !range !2549, !alias.scope !227865, !noalias !227524, !noundef !11
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !227860
  br i1 %i.ed, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !227868

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread90.i.i, !dbg !227874, !noalias !227530

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.bk, align 8, !dbg !227875, !alias.scope !227880, !noalias !227524, !nonnull !11, !noundef !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eb, !dbg !227883
  store i8 %i.ea, ptr %i.ef, align 1, !dbg !227885, !noalias !227530
  %i.eg = add i64 %i.eb, 1, !dbg !227887
  store i64 %i.eg, ptr %i.bj, align 16, !dbg !227887, !alias.scope !227880, !noalias !227524
  %i.eh = load i64, ptr %i.bl, align 8, !dbg !227888, !range !1927, !alias.scope !227865, !noalias !227524, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eh, -9223372036854775808, !dbg !227888
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !227890

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ei = load i64, ptr %i.bm, align 16, !dbg !227891, !alias.scope !227893, !noalias !227524, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !227896
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !227896
  %i.el = load i64, ptr %i.bn, align 8, !dbg !227898, !alias.scope !227893, !noalias !227524 ; 4 uses
  br i1 %i.ek, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !227891

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp eq i64 %i.el, %i.eh, !dbg !227899
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !227899

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread90.i.i, !dbg !227902, !noalias !227530

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %i.bo, align 16, !dbg !227903, !alias.scope !227908, !noalias !227524, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !227911
  store i8 0, ptr %i.eo, align 1, !dbg !227913, !noalias !227530
  %i.ep = add i64 %i.el, 1, !dbg !227915          ; 2 uses
  store i64 %i.ep, ptr %i.bn, align 8, !dbg !227915, !alias.scope !227908, !noalias !227524
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !227916, !alias.scope !227893, !noalias !227524
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !227917

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eq = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ei, %bb.ar ], !dbg !227916
  %i.er = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.el, %bb.ar ], !dbg !227918 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.er, 0, !dbg !227921
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !227921
  %i.es = load ptr, ptr %i.bo, align 16, !dbg !227923, !alias.scope !227893, !noalias !227524, !nonnull !11, !noundef !11
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er, !dbg !227928
  %i.eu = getelementptr i8, ptr %i.et, i64 -1, !dbg !227928 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !dbg !227929
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !227931, !noalias !227530, !noundef !11
  %i.ew = trunc i64 %i.eq to i8, !dbg !227932
  %i.ex = and i8 %i.ew, 7, !dbg !227932
  %i.ey = shl nuw i8 1, %i.ex, !dbg !227932
  %i.ez = or i8 %i.ev, %i.ey, !dbg !227934
  store i8 %i.ez, ptr %i.eu, align 1, !dbg !227935, !noalias !227530
  %i.fa = load i64, ptr %i.bm, align 16, !dbg !227936, !alias.scope !227893, !noalias !227524, !noundef !11
  %i.fb = add i64 %i.fa, 1, !dbg !227936
  store i64 %i.fb, ptr %i.bm, align 16, !dbg !227936, !alias.scope !227893, !noalias !227524
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !227937

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !227938, !noalias !227530
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !227942

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayhE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !227631

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi10.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !227943, !noalias !227530
  br label %.thread.i.i, !dbg !227947

bb.au:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !227536, !noalias !227530
  unreachable, !dbg !227536

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.5.8.copyload37, %bb.ao ], !dbg !227948
  %i.fd = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dz, %bb.ao ], !dbg !227948
  %.val57.i.i = load ptr, ptr %i.j, align 8, !dbg !227632, !noalias !227524, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val57.i.i) #50, !dbg !227949, !noalias !227530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !227632, !noalias !227524
  br label %bb.aw, !dbg !227632

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !227953
  %i.fe = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fd, %bb.av ], !dbg !227954
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes9UInt8TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !227612, !noalias !227530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !227612, !noalias !227524
  br label %bb.ay, !dbg !227955

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn5283.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes9UInt8TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !227612, !noalias !227530

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.027.0.copyload.i.i, %bb.k ]
  %i.ff = phi <2 x ptr> [ %i.fe, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !227957, !noalias !227519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !227957, !noalias !227519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !227957, !noalias !227519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !227958
  %i.fg = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !227961
  br label %bb.ba, !dbg !227968

bb.az:                                            ; preds = %bb.w
  %.val58.i.i = load ptr, ptr %i.j, align 8, !dbg !227632, !noalias !227524, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val58.i.i) #50, !dbg !227971, !noalias !227530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !227632, !noalias !227524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !227975, !noalias !227524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.g, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !227975, !noalias !227524
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes9UInt8TypeEINtB4_14ChunkedBuilderhB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.g), !dbg !227976, !noalias !227530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !227977, !noalias !227524
  %i.fh = call { ptr, ptr } @_RNvXs2q_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_9UInt8TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h), !dbg !227978, !noalias !227530 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0, !dbg !227978 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1, !dbg !227978 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !227982
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ], !dbg !227982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !227612, !noalias !227524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !227957, !noalias !227519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !227957, !noalias !227519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !227957, !noalias !227519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !227958
  store i64 0, ptr %i.o, align 8, !dbg !227995
  %.sroa.12.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !227995
  store ptr %i.fi, ptr %.sroa.12.8..sroa_idx41, align 8, !dbg !227995
  %.sroa.16.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !227995
  store ptr %i.fj, ptr %.sroa.16.8..sroa_idx47, align 8, !dbg !227995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !227996, !noalias !228001
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !228005, !noalias !228008
  %i.fk = load i64, ptr %i.b, align 8, !dbg !227996, !range !1924, !noalias !228001, !noundef !11
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !228009
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !228010
  %.sroa.553.8.copyload55 = load ptr, ptr %i.fm, align 8, !dbg !228010, !noalias !228011 ; 2 uses
  br i1 %i.fl, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !228009

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !228012
  %i.fn = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx57, align 8, !dbg !228012, !noalias !228011
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !228012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx, i64 40, i1 false), !dbg !228012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !228013, !noalias !228001
  br label %bb.ba, !dbg !227968

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.553.0 = phi ptr [ %i.fg, %bb.ay ], [ %.sroa.553.8.copyload55, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !228014
  %i.fo = phi <2 x ptr> [ %i.ff, %bb.ay ], [ %i.fn, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !228014
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !228015
  store ptr %.sroa.553.0, ptr %i.fp, align 8, !dbg !228015
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !228015
  store <2 x ptr> %i.fo, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !228015
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !228015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, i64 40, i1 false), !dbg !228015
  br label %bb.bc, !dbg !228017

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !228013, !noalias !228001
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !228018
  store ptr %.sroa.553.8.copyload55, ptr %i.fq, align 8, !dbg !228018
  br label %bb.bc, !dbg !228020

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !228021
  store i64 %storemerge, ptr %0, align 8, !dbg !228021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !227958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !227464
  br label %bb.bd, !dbg !228022

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !227447
  ret void, !dbg !228022

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !228023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !227464
  br label %bb.bd, !dbg !227462
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsj_NtNtCseeLknQCOKOd_13polars_python6series7generalNtB7_8PySeries20___pymethod_get_i64__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !228025 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 14 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !228026
  store ptr null, ptr %i.g, align 8, !dbg !228026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !228028
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1156, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.g, i64 noundef 1), !dbg !228028
  %i.h = load i64, ptr %i.f, align 8, !dbg !228030, !range !1924, !noundef !11
  %i.i = trunc nuw i64 %i.h to i1, !dbg !228032
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !228032

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !228033
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !228034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !dbg !228033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !228028
  store i64 1, ptr %0, align 8, !dbg !228034
  br label %bb.af, !dbg !228041

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !228028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !228043
  store ptr null, ptr %i.e, align 8, !dbg !228043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !228046
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !228048
  %i.l = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.g, !dbg !228056 ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.m = icmp eq ptr %i.l, null, !dbg !228059
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !228061

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !228062 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n)
          to label %bb.i unwind label %bb.g, !dbg !228064

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %i.e, align 8, !dbg !228065, !alias.scope !228068, !noalias !228075, !noundef !11
  %i.p = icmp eq ptr %i.o, null, !dbg !228065
  br i1 %i.p, label %bb.j, label %bb.f, !dbg !228065

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.j unwind label %.body.thread, !dbg !228077, !noalias !228075

.body.thread:                                     ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.e, align 8, !dbg !228079, !alias.scope !228080, !noalias !228075
  br label %bb.h, !dbg !228081

bb.g:                                             ; preds = %bb.ab, %bb.y, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.d, %bb.c, %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !228043

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB18_9datatypes9Int64TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit8.i, %bb.n, %bb.g
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn.i, %bb.n ], [ %.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB18_9datatypes9Int64TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit8.i ] ; 2 uses
  %.pr = load ptr, ptr %i.e, align 8, !dbg !228081, !alias.scope !228083
  %i.s = icmp eq ptr %.pr, null, !dbg !228081
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.h, !dbg !228081

bb.h:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.q, %.body.thread ], [ %eh.lpad-body.ph, %.body ]
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.ai, !dbg !228086

bb.i:                                             ; preds = %bb.d
  %.sroa.019.0.copyload = load ptr, ptr %i.n, align 8, !dbg !228088
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !228088
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !228092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.222.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.520.0..sroa_idx, i64 56, i1 false), !dbg !228088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !228046
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !228092
  store ptr %.sroa.019.0.copyload, ptr %i.t, align 8, !dbg !228092
  br label %bb.ag, !dbg !228098

bb.j:                                             ; preds = %bb.f, %bb.e
  store ptr %i.l, ptr %i.e, align 8, !dbg !228079, !alias.scope !228080, !noalias !228075
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !228100 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !228046
end_hunk_4
begin_hunk_5_@_RNvMsl_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries24___pymethod_new_opt_u16__:bb.a
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !228618
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !228618
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !228618
  br label %bb.be, !dbg !228625

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !228624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !228627
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !228610
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !228610, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !228627
  %i.ag = load i64, ptr %i.q, align 8, !dbg !228628, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !228631
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !228632
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !228632 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !228631

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !228633
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !228634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !228633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !228640
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !228634
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !228634
  br label %bb.be, !dbg !228625

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !228640
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !228610
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !228610, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !228641
  %i.am = load i8, ptr %i.p, align 8, !dbg !228642, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !228642
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !228645

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !228646
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !228647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !228653
  br label %bb.be, !dbg !228625

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !228654, !noalias !228659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !228654, !noalias !228659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !228654, !noalias !228659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !228654, !noalias !228664
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !228669, !noalias !228670
  %i.aq = load i64, ptr %i.n, align 8, !dbg !228671, !range !1924, !noalias !228664, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !228674
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !228675
  %.sroa.027.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !228675, !noalias !228664 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !228674

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn5283.i.i, !dbg !228676

bb.k:                                             ; preds = %bb.i
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !228677
  %i.at = load <2 x ptr>, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !dbg !228677, !noalias !228678
  %.sroa.17.16..sroa.528.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !228677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.528.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !228677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !228679, !noalias !228664
  br label %bb.ay, !dbg !228680

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !228679, !noalias !228664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !228682, !noalias !228664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !228684, !noalias !228664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !228685
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !228685
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i, label %bb.m, !dbg !228685

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !228698
  br label %bb.q, !dbg !228699

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !228702
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !228702

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !228703 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !228707, !noalias !228708 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !228718
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !228720

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !228698
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !228721

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !228723, !noalias !228725
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !228726
  %i.az = or disjoint i8 %i.ay, -64, !dbg !228727
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !228727
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !228727, !noalias !228725
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !228728, !noalias !228730
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !228731, !noalias !228732
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !228731
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !228731, !noalias !228732
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !228731
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !228731, !noalias !228732
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !228733

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !228734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !228736, !noalias !228739
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !228740

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !228742
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !228742
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !228743 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !228698
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !228721
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !228721
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !228721, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !228744, !noalias !228670
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i
  %.sroa.061.079.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.462.078.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.077.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.061.079.i.i, ptr %i.l, align 8, !dbg !228746, !noalias !228664
  %.sroa.464.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !228746
  store i64 %.sroa.462.078.i.i, ptr %.sroa.464.0..sroa_idx.i.i, align 8, !dbg !228746, !noalias !228664
  %.sroa.565.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !228746
  store i64 %.sroa.5.077.i.i, ptr %.sroa.565.0..sroa_idx.i.i, align 8, !dbg !228746, !noalias !228664
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes10UInt16TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.027.0.copyload.i.i), !dbg !228747, !noalias !228670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !228748, !noalias !228664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !228749, !noalias !228664
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !228751, !noalias !228670

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !228752

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !228753, !range !1924, !noalias !228664, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !228756
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !228757
  %.sroa.033.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !228757, !noalias !228664 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !228756

bb.t:                                             ; preds = %bb.s
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !228758
  %i.bf = load <2 x ptr>, ptr %.sroa.534.0..sroa_idx.i.i, align 8, !dbg !228758, !noalias !228678
  %.sroa.17.16..sroa.534.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !228758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.534.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !228758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !228759, !noalias !228664
  %i.bg = ptrtoint ptr %.sroa.033.0.copyload.i.i to i64, !dbg !228760
  br label %bb.aw, !dbg !228767

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !228759, !noalias !228664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !228749, !noalias !228664
  store ptr %.sroa.033.0.copyload.i.i, ptr %i.j, align 8, !dbg !228749, !noalias !228664
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !228769

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !228771, !noalias !228670

.thread.i.i:                                      ; preds = %.body.i, %.body.thread90.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm88.i.i, %.body.thread90.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val59.i.i = load ptr, ptr %i.j, align 8, !dbg !228772, !noalias !228664, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val59.i.i) #50, !dbg !228773, !noalias !228670
  br label %bb.ax, !dbg !228752

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !228771, !range !8288, !noalias !228664, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !228771
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !228771

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !228777, !noalias !228664 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !228778
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !228778

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !228782, !noalias !228678
  %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !228782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !228782
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !228783
  br label %bb.av, !dbg !228789

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !228791
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !228797

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXsb_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numtNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !228798, !noalias !228670

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !228805, !noalias !228809
  br label %.thread.i.i, !dbg !228812

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !228813), !dbg !228816
  %i.by = load i64, ptr %i.bj, align 16, !dbg !228819, !alias.scope !228813, !noalias !228822, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !228819, !range !2549, !alias.scope !228813, !noalias !228822, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !228819
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !228823

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !228829, !noalias !228830

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !228831, !alias.scope !228840, !noalias !228822, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.by, !dbg !228843
  store i16 0, ptr %i.cc, align 2, !dbg !228846, !noalias !228670
  %i.cd = add i64 %i.by, 1, !dbg !228850          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !228850, !alias.scope !228840, !noalias !228822
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !228851, !range !1927, !alias.scope !228813, !noalias !228822, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !228851
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !228852

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !228853, !alias.scope !228856, !noalias !228822, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !228859
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !228859
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !228861, !alias.scope !228856, !noalias !228822 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !228853

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !228862
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !228862

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !228865, !noalias !228830

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !228866, !alias.scope !228871, !noalias !228822, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !228874
  store i8 0, ptr %i.cl, align 1, !dbg !228876, !noalias !228670
  %i.cm = add i64 %i.ci, 1, !dbg !228878          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !228878, !alias.scope !228871, !noalias !228822
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !228879, !alias.scope !228856, !noalias !228822
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !228880

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !228879
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !228881 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !228884
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !228884, !noalias !228886
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !228887, !alias.scope !228856, !noalias !228822, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !228892
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !228892 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !228893, !noalias !228886
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !228895, !noalias !228670, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !228896
  %i.cu = and i8 %i.ct, 7, !dbg !228896
  %i.cv = shl nuw i8 1, %i.cu, !dbg !228896
  %i.cw = xor i8 %i.cv, -1, !dbg !228898
  %i.cx = and i8 %i.cs, %i.cw, !dbg !228899
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !228900, !noalias !228670
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !228901, !alias.scope !228856, !noalias !228822, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !228901
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !228901, !alias.scope !228856, !noalias !228822
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !228902

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !228903), !dbg !228906, !noalias !228886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !228907, !noalias !228910
  %i.da = load i64, ptr %i.bi, align 16, !dbg !228911, !range !2549, !alias.scope !228918, !noalias !228822, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !228919), !dbg !228922, !noalias !228886
  %i.db = add nuw i64 %i.da, 7, !dbg !228923
  %i.dc = lshr i64 %i.db, 3, !dbg !228926         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !228927, !noalias !228932
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !228927, !noalias !228830

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !228927, !range !1924, !noalias !228932, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !228933
  %i.df = load i64, ptr %i.bp, align 8, !dbg !228934, !range !1927, !noalias !228932, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !228933, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !228935, !noalias !228932
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !228936, !noalias !228830

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !228936

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !228937, !noalias !228932, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !228938
  call void @llvm.assume(i1 %i.di), !dbg !228940, !noalias !228886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !228942, !noalias !228932
  store i64 %i.df, ptr %i.d, align 8, !dbg !228943, !alias.scope !228919, !noalias !228910
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !228943, !alias.scope !228919, !noalias !228910
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !228943, !alias.scope !228919, !noalias !228910
  %i.dj = icmp ult i64 %i.cd, 4611686018427387904, !dbg !228944
  call void @llvm.assume(i1 %i.dj), !dbg !228951, !noalias !228886
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !228952
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !228952

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !228955, !noalias !228910
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !228960
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !228960, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !228961, !noalias !228962

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !228963, !noalias !228962

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !228964, !noalias !228962

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !228965, !noalias !228962
  unreachable, !dbg !228965

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !228966, !noalias !228910, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !228981
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !228982 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !228987, !noalias !228962, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !228989
  %i.ds = and i8 %i.dr, 7, !dbg !228989
  %i.dt = shl nuw i8 1, %i.ds, !dbg !228989
  %i.du = xor i8 %i.dt, -1, !dbg !228992
  %i.dv = and i8 %i.dq, %i.du, !dbg !228993
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !228996, !noalias !228962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !228997, !noalias !228822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !228964, !noalias !228910
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !228906

.body.thread90.i.i:                               ; preds = %bb.at, %bb.aq
  %lpad.thr_comm88.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !228812

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !228998, !noalias !228809
  %i.dw = load i16, ptr %i.f, align 8, !dbg !229002, !range !110717, !noalias !228664, !noundef !11
  %i.dx = trunc nuw i16 %i.dw to i1, !dbg !229005
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !229005

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !229006
  %.sroa.5.8.copyload37 = load i64, ptr %i.dy, align 8, !dbg !229007, !noalias !228678
  %.sroa.12.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !229007
  %i.dz = load <2 x ptr>, ptr %.sroa.12.8..sroa_idx39, align 8, !dbg !229007, !noalias !228678
  %.sroa.17.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !229007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.8..sroa_idx51, i64 40, i1 false), !dbg !229007
  br label %bb.av, !dbg !228812

bb.ap:                                            ; preds = %bb.an
  %i.ea = load i16, ptr %i.bh, align 2, !dbg !229008, !noalias !228664, !noundef !11
  %i.eb = load i64, ptr %i.bj, align 16, !dbg !229009, !alias.scope !229014, !noalias !228664, !noundef !11 ; 3 uses
  %i.ec = load i64, ptr %i.bi, align 16, !dbg !229009, !range !2549, !alias.scope !229014, !noalias !228664, !noundef !11
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !229009
  br i1 %i.ed, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !229017

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVectE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread90.i.i, !dbg !229023, !noalias !228670

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.bk, align 8, !dbg !229024, !alias.scope !229029, !noalias !228664, !nonnull !11, !noundef !11
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.eb, !dbg !229032
  store i16 %i.ea, ptr %i.ef, align 2, !dbg !229034, !noalias !228670
  %i.eg = add i64 %i.eb, 1, !dbg !229036
  store i64 %i.eg, ptr %i.bj, align 16, !dbg !229036, !alias.scope !229029, !noalias !228664
  %i.eh = load i64, ptr %i.bl, align 8, !dbg !229037, !range !1927, !alias.scope !229014, !noalias !228664, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eh, -9223372036854775808, !dbg !229037
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !229039

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ei = load i64, ptr %i.bm, align 16, !dbg !229040, !alias.scope !229042, !noalias !228664, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !229045
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !229045
  %i.el = load i64, ptr %i.bn, align 8, !dbg !229047, !alias.scope !229042, !noalias !228664 ; 4 uses
  br i1 %i.ek, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !229040

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp eq i64 %i.el, %i.eh, !dbg !229048
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !229048

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread90.i.i, !dbg !229051, !noalias !228670

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %i.bo, align 16, !dbg !229052, !alias.scope !229057, !noalias !228664, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !229060
  store i8 0, ptr %i.eo, align 1, !dbg !229062, !noalias !228670
  %i.ep = add i64 %i.el, 1, !dbg !229064          ; 2 uses
  store i64 %i.ep, ptr %i.bn, align 8, !dbg !229064, !alias.scope !229057, !noalias !228664
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !229065, !alias.scope !229042, !noalias !228664
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !229066

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eq = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ei, %bb.ar ], !dbg !229065
  %i.er = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.el, %bb.ar ], !dbg !229067 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.er, 0, !dbg !229070
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !229070
  %i.es = load ptr, ptr %i.bo, align 16, !dbg !229072, !alias.scope !229042, !noalias !228664, !nonnull !11, !noundef !11
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er, !dbg !229077
  %i.eu = getelementptr i8, ptr %i.et, i64 -1, !dbg !229077 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !dbg !229078
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !229080, !noalias !228670, !noundef !11
  %i.ew = trunc i64 %i.eq to i8, !dbg !229081
  %i.ex = and i8 %i.ew, 7, !dbg !229081
  %i.ey = shl nuw i8 1, %i.ex, !dbg !229081
  %i.ez = or i8 %i.ev, %i.ey, !dbg !229083
  store i8 %i.ez, ptr %i.eu, align 1, !dbg !229084, !noalias !228670
  %i.fa = load i64, ptr %i.bm, align 16, !dbg !229085, !alias.scope !229042, !noalias !228664, !noundef !11
  %i.fb = add i64 %i.fa, 1, !dbg !229085
  store i64 %i.fb, ptr %i.bm, align 16, !dbg !229085, !alias.scope !229042, !noalias !228664
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !229086

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !229087, !noalias !228670
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !229091

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VectE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraytE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !228771

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !229092, !noalias !228670
  br label %.thread.i.i, !dbg !229096

bb.au:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !228676, !noalias !228670
  unreachable, !dbg !228676

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.5.8.copyload37, %bb.ao ], !dbg !229097
  %i.fd = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dz, %bb.ao ], !dbg !229097
  %.val57.i.i = load ptr, ptr %i.j, align 8, !dbg !228772, !noalias !228664, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val57.i.i) #50, !dbg !229098, !noalias !228670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !228772, !noalias !228664
  br label %bb.aw, !dbg !228772

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !229102
  %i.fe = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fd, %bb.av ], !dbg !229103
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes10UInt16TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !228752, !noalias !228670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !228752, !noalias !228664
  br label %bb.ay, !dbg !229104

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn5283.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes10UInt16TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !228752, !noalias !228670

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.027.0.copyload.i.i, %bb.k ]
  %i.ff = phi <2 x ptr> [ %i.fe, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !229106, !noalias !228659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !229106, !noalias !228659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !229106, !noalias !228659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !229107
  %i.fg = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !229110
  br label %bb.ba, !dbg !229117

bb.az:                                            ; preds = %bb.w
  %.val58.i.i = load ptr, ptr %i.j, align 8, !dbg !228772, !noalias !228664, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val58.i.i) #50, !dbg !229120, !noalias !228670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !228772, !noalias !228664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !229124, !noalias !228664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.g, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !229124, !noalias !228664
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes10UInt16TypeEINtB4_14ChunkedBuildertB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.g), !dbg !229125, !noalias !228670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !229126, !noalias !228664
  %i.fh = call { ptr, ptr } @_RNvXs2r_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10UInt16TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h), !dbg !229127, !noalias !228670 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0, !dbg !229127 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1, !dbg !229127 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !229131
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ], !dbg !229131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !228752, !noalias !228664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !229106, !noalias !228659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !229106, !noalias !228659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !229106, !noalias !228659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !229107
  store i64 0, ptr %i.o, align 8, !dbg !229144
  %.sroa.12.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !229144
  store ptr %i.fi, ptr %.sroa.12.8..sroa_idx41, align 8, !dbg !229144
  %.sroa.16.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !229144
  store ptr %i.fj, ptr %.sroa.16.8..sroa_idx47, align 8, !dbg !229144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !229145, !noalias !229150
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !229154, !noalias !229157
  %i.fk = load i64, ptr %i.b, align 8, !dbg !229145, !range !1924, !noalias !229150, !noundef !11
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !229158
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !229159
  %.sroa.553.8.copyload55 = load ptr, ptr %i.fm, align 8, !dbg !229159, !noalias !229160 ; 2 uses
  br i1 %i.fl, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !229158

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !229161
  %i.fn = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx57, align 8, !dbg !229161, !noalias !229160
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !229161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx, i64 40, i1 false), !dbg !229161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !229162, !noalias !229150
  br label %bb.ba, !dbg !229117

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.553.0 = phi ptr [ %i.fg, %bb.ay ], [ %.sroa.553.8.copyload55, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !229163
  %i.fo = phi <2 x ptr> [ %i.ff, %bb.ay ], [ %i.fn, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !229163
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !229164
  store ptr %.sroa.553.0, ptr %i.fp, align 8, !dbg !229164
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !229164
  store <2 x ptr> %i.fo, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !229164
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !229164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, i64 40, i1 false), !dbg !229164
  br label %bb.bc, !dbg !229166

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !229162, !noalias !229150
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !229167
  store ptr %.sroa.553.8.copyload55, ptr %i.fq, align 8, !dbg !229167
  br label %bb.bc, !dbg !229169

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !229170
  store i64 %storemerge, ptr %0, align 8, !dbg !229170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !229107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !228604
  br label %bb.bd, !dbg !229171

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !228587
  ret void, !dbg !229171

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !229172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !228604
  br label %bb.bd, !dbg !228602
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsl_NtNtCseeLknQCOKOd_13polars_python6series7generalNtB7_8PySeries20___pymethod_get_str__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !229174 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 10 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [72 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 14 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !229175
  store ptr null, ptr %i.o, align 8, !dbg !229175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !229177
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1164, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.o, i64 noundef 1), !dbg !229177
  %i.p = load i64, ptr %i.n, align 8, !dbg !229179, !range !1924, !noundef !11
  %i.q = trunc nuw i64 %i.p to i1, !dbg !229181
  %.sink42.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !229181
  %.sink42.i.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !229181
  %.sink42.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !229181
  %.sink42.i.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !229181
  %.sink42.i.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !229181
  %.sink42.i.sroa.gep53 = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !229181
  br i1 %i.q, label %bb.b, label %bb.c, !dbg !229181

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !229182
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !229183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !229182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !229177
  store i64 1, ptr %0, align 8, !dbg !229183
  br label %bb.at, !dbg !229190

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !229177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !229192
  store ptr null, ptr %i.m, align 8, !dbg !229192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !229195
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !229197
  %i.t = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.g, !dbg !229205 ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.u = icmp eq ptr %i.t, null, !dbg !229208
  br i1 %i.u, label %bb.d, label %bb.e, !dbg !229210

bb.d:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !229211 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.v)
          to label %bb.i unwind label %bb.g, !dbg !229213

bb.e:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %i.m, align 8, !dbg !229214, !alias.scope !229217, !noalias !229224, !noundef !11
  %i.x = icmp eq ptr %i.w, null, !dbg !229214
  br i1 %i.x, label %bb.j, label %bb.f, !dbg !229214

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.j unwind label %.body.thread, !dbg !229226, !noalias !229224

.body.thread:                                     ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  store ptr %i.t, ptr %i.m, align 8, !dbg !229228, !alias.scope !229229, !noalias !229224
  br label %bb.h, !dbg !229230

bb.g:                                             ; preds = %bb.ap, %bb.an, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.d, %bb.c, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !229192

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB18_9datatypes10StringTypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit17.i, %bb.n, %bb.g
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.z, %bb.g ], [ %.pn.i, %bb.n ], [ %.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB18_9datatypes10StringTypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit17.i ] ; 2 uses
  %.pr = load ptr, ptr %i.m, align 8, !dbg !229230, !alias.scope !229232
  %i.aa = icmp eq ptr %.pr, null, !dbg !229230
  br i1 %i.aa, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.h, !dbg !229230

bb.h:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body55 = phi { ptr, i32 } [ %i.y, %.body.thread ], [ %eh.lpad-body.ph, %.body ]
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.aw, !dbg !229235

end_hunk_5
begin_hunk_6_@_RNvMsn_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries24___pymethod_new_opt_u32__:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !230031
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !230031
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !230031
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !230031
  br label %bb.be, !dbg !230038

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !230037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !230040
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !230023
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !230023, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !230040
  %i.ag = load i64, ptr %i.q, align 8, !dbg !230041, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !230044
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !230045
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !230045 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !230044

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !230046
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !230047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !230046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !230053
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !230047
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !230047
  br label %bb.be, !dbg !230038

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !230053
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !230023
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !230023, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !230054
  %i.am = load i8, ptr %i.p, align 8, !dbg !230055, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !230055
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !230058

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !230059
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !230060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !230066
  br label %bb.be, !dbg !230038

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !230067, !noalias !230072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !230067, !noalias !230072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !230067, !noalias !230077
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !230082, !noalias !230083
  %i.aq = load i64, ptr %i.n, align 8, !dbg !230084, !range !1924, !noalias !230077, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !230087
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !230088
  %.sroa.026.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !230088, !noalias !230077 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !230087

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn5182.i.i, !dbg !230089

bb.k:                                             ; preds = %bb.i
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !230090
  %i.at = load <2 x ptr>, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !dbg !230090, !noalias !230091
  %.sroa.17.16..sroa.527.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !230090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.527.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !230090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !230092, !noalias !230077
  br label %bb.ay, !dbg !230093

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !230092, !noalias !230077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !230095, !noalias !230077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !230097, !noalias !230077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !230098
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !230098
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i, label %bb.m, !dbg !230098

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !230111
  br label %bb.q, !dbg !230112

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !230115
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !230115

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !230116 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !230120, !noalias !230121 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !230131
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !230133

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !230111
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !230134

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !230136, !noalias !230138
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !230139
  %i.az = or disjoint i8 %i.ay, -64, !dbg !230140
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !230140
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !230140, !noalias !230138
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !230141, !noalias !230143
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !230144, !noalias !230145
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !230144
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !230144, !noalias !230145
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !230144
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !230144, !noalias !230145
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !230146

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !230147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !230149, !noalias !230152
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !230153

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !230155
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !230155
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !230156 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !230111
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !230134
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !230134
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !230134, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !230157, !noalias !230083
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i
  %.sroa.060.078.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.461.077.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.076.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.060.078.i.i, ptr %i.l, align 8, !dbg !230159, !noalias !230077
  %.sroa.463.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !230159
  store i64 %.sroa.461.077.i.i, ptr %.sroa.463.0..sroa_idx.i.i, align 8, !dbg !230159, !noalias !230077
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !230159
  store i64 %.sroa.5.076.i.i, ptr %.sroa.564.0..sroa_idx.i.i, align 8, !dbg !230159, !noalias !230077
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes10UInt32TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.026.0.copyload.i.i), !dbg !230160, !noalias !230083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !230161, !noalias !230077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !230162, !noalias !230077
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !230164, !noalias !230083

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !230165

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !230166, !range !1924, !noalias !230077, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !230169
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !230170
  %.sroa.032.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !230170, !noalias !230077 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !230169

bb.t:                                             ; preds = %bb.s
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !230171
  %i.bf = load <2 x ptr>, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !dbg !230171, !noalias !230091
  %.sroa.17.16..sroa.533.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !230171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.533.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !230171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !230172, !noalias !230077
  %i.bg = ptrtoint ptr %.sroa.032.0.copyload.i.i to i64, !dbg !230173
  br label %bb.aw, !dbg !230180

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !230172, !noalias !230077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !230162, !noalias !230077
  store ptr %.sroa.032.0.copyload.i.i, ptr %i.j, align 8, !dbg !230162, !noalias !230077
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !230182

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !230184, !noalias !230083

.thread.i.i:                                      ; preds = %.body.i, %.body.thread89.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm87.i.i, %.body.thread89.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val58.i.i = load ptr, ptr %i.j, align 8, !dbg !230185, !noalias !230077, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val58.i.i) #50, !dbg !230186, !noalias !230083
  br label %bb.ax, !dbg !230165

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !230184, !range !8288, !noalias !230077, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !230184
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !230184

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !230190, !noalias !230077 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !230191
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !230191

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !230195, !noalias !230091
  %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !230195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !230195
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !230196
  br label %bb.av, !dbg !230202

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !230204
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !230210

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !230211, !noalias !230077
  invoke void @_RNvXsh_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3nummNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !230212, !noalias !230083

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !230219, !noalias !230223
  br label %.thread.i.i, !dbg !230226

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !230227), !dbg !230230
  %i.by = load i64, ptr %i.bj, align 16, !dbg !230233, !alias.scope !230227, !noalias !230236, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !230233, !range !2549, !alias.scope !230227, !noalias !230236, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !230233
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !230237

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !230241, !noalias !230242

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !230243, !alias.scope !230248, !noalias !230236, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.by, !dbg !230251
  store i32 0, ptr %i.cc, align 4, !dbg !230253, !noalias !230083
  %i.cd = add i64 %i.by, 1, !dbg !230255          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !230255, !alias.scope !230248, !noalias !230236
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !230256, !range !1927, !alias.scope !230227, !noalias !230236, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !230256
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !230257

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !230258, !alias.scope !230261, !noalias !230236, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !230264
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !230264
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !230266, !alias.scope !230261, !noalias !230236 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !230258

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !230267
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !230267

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !230270, !noalias !230242

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !230271, !alias.scope !230276, !noalias !230236, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !230279
  store i8 0, ptr %i.cl, align 1, !dbg !230281, !noalias !230083
  %i.cm = add i64 %i.ci, 1, !dbg !230283          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !230283, !alias.scope !230276, !noalias !230236
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !230284, !alias.scope !230261, !noalias !230236
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !230285

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !230284
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !230286 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !230289
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !230289, !noalias !230291
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !230292, !alias.scope !230261, !noalias !230236, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !230297
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !230297 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !230298, !noalias !230291
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !230300, !noalias !230083, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !230301
  %i.cu = and i8 %i.ct, 7, !dbg !230301
  %i.cv = shl nuw i8 1, %i.cu, !dbg !230301
  %i.cw = xor i8 %i.cv, -1, !dbg !230303
  %i.cx = and i8 %i.cs, %i.cw, !dbg !230304
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !230305, !noalias !230083
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !230306, !alias.scope !230261, !noalias !230236, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !230306
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !230306, !alias.scope !230261, !noalias !230236
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !230307

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !230308), !dbg !230311, !noalias !230291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !230312, !noalias !230315
  %i.da = load i64, ptr %i.bi, align 16, !dbg !230316, !range !2549, !alias.scope !230323, !noalias !230236, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !230324), !dbg !230327, !noalias !230291
  %i.db = add nuw i64 %i.da, 7, !dbg !230328
  %i.dc = lshr i64 %i.db, 3, !dbg !230331         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !230332, !noalias !230337
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !230332, !noalias !230242

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !230332, !range !1924, !noalias !230337, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !230338
  %i.df = load i64, ptr %i.bp, align 8, !dbg !230339, !range !1927, !noalias !230337, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !230338, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !230340, !noalias !230337
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !230341, !noalias !230242

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !230341

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !230342, !noalias !230337, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !230343
  call void @llvm.assume(i1 %i.di), !dbg !230345, !noalias !230291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !230347, !noalias !230337
  store i64 %i.df, ptr %i.d, align 8, !dbg !230348, !alias.scope !230324, !noalias !230315
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !230348, !alias.scope !230324, !noalias !230315
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !230348, !alias.scope !230324, !noalias !230315
  %i.dj = icmp ult i64 %i.cd, 2305843009213693952, !dbg !230349
  call void @llvm.assume(i1 %i.dj), !dbg !230356, !noalias !230291
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !230357
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !230357

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !230360, !noalias !230315
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !230365
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !230365, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !230366, !noalias !230367

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !230368, !noalias !230367

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !230369, !noalias !230367

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !230370, !noalias !230367
  unreachable, !dbg !230370

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !230371, !noalias !230315, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !230386
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !230387 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !230392, !noalias !230367, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !230394
  %i.ds = and i8 %i.dr, 7, !dbg !230394
  %i.dt = shl nuw i8 1, %i.ds, !dbg !230394
  %i.du = xor i8 %i.dt, -1, !dbg !230397
  %i.dv = and i8 %i.dq, %i.du, !dbg !230398
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !230401, !noalias !230367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !230402, !noalias !230236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !230369, !noalias !230315
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !230311

.body.thread89.i.i:                               ; preds = %bb.at, %bb.aq
  %lpad.thr_comm87.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !230226

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !230403, !noalias !230223
  %i.dw = load i32, ptr %i.h, align 8, !dbg !230407, !range !114141, !noalias !230077, !noundef !11
  %i.dx = trunc nuw i32 %i.dw to i1, !dbg !230410
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !230410

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !230411
  %.sroa.5.8.copyload37 = load i64, ptr %i.dy, align 8, !dbg !230411, !noalias !230091
  %.sroa.12.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !230411
  %i.dz = load <2 x ptr>, ptr %.sroa.12.8..sroa_idx39, align 8, !dbg !230411, !noalias !230091
  %.sroa.17.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !230411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.8..sroa_idx51, i64 40, i1 false), !dbg !230411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !230412, !noalias !230077
  br label %bb.av, !dbg !230226

bb.ap:                                            ; preds = %bb.an
  %i.ea = load i32, ptr %i.bh, align 4, !dbg !230413, !noalias !230077, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !230412, !noalias !230077
  %i.eb = load i64, ptr %i.bj, align 16, !dbg !230414, !alias.scope !230419, !noalias !230077, !noundef !11 ; 3 uses
  %i.ec = load i64, ptr %i.bi, align 16, !dbg !230414, !range !2549, !alias.scope !230419, !noalias !230077, !noundef !11
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !230414
  br i1 %i.ed, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !230422

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread89.i.i, !dbg !230428, !noalias !230083

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.bk, align 8, !dbg !230429, !alias.scope !230434, !noalias !230077, !nonnull !11, !noundef !11
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.eb, !dbg !230437
  store i32 %i.ea, ptr %i.ef, align 4, !dbg !230439, !noalias !230083
  %i.eg = add i64 %i.eb, 1, !dbg !230441
  store i64 %i.eg, ptr %i.bj, align 16, !dbg !230441, !alias.scope !230434, !noalias !230077
  %i.eh = load i64, ptr %i.bl, align 8, !dbg !230442, !range !1927, !alias.scope !230419, !noalias !230077, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eh, -9223372036854775808, !dbg !230442
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !230444

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ei = load i64, ptr %i.bm, align 16, !dbg !230445, !alias.scope !230447, !noalias !230077, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !230450
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !230450
  %i.el = load i64, ptr %i.bn, align 8, !dbg !230452, !alias.scope !230447, !noalias !230077 ; 4 uses
  br i1 %i.ek, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !230445

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp eq i64 %i.el, %i.eh, !dbg !230453
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !230453

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread89.i.i, !dbg !230456, !noalias !230083

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %i.bo, align 16, !dbg !230457, !alias.scope !230462, !noalias !230077, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !230465
  store i8 0, ptr %i.eo, align 1, !dbg !230467, !noalias !230083
  %i.ep = add i64 %i.el, 1, !dbg !230469          ; 2 uses
  store i64 %i.ep, ptr %i.bn, align 8, !dbg !230469, !alias.scope !230462, !noalias !230077
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !230470, !alias.scope !230447, !noalias !230077
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !230471

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eq = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ei, %bb.ar ], !dbg !230470
  %i.er = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.el, %bb.ar ], !dbg !230472 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.er, 0, !dbg !230475
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !230475
  %i.es = load ptr, ptr %i.bo, align 16, !dbg !230477, !alias.scope !230447, !noalias !230077, !nonnull !11, !noundef !11
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er, !dbg !230482
  %i.eu = getelementptr i8, ptr %i.et, i64 -1, !dbg !230482 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !dbg !230483
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !230485, !noalias !230083, !noundef !11
  %i.ew = trunc i64 %i.eq to i8, !dbg !230486
  %i.ex = and i8 %i.ew, 7, !dbg !230486
  %i.ey = shl nuw i8 1, %i.ex, !dbg !230486
  %i.ez = or i8 %i.ev, %i.ey, !dbg !230488
  store i8 %i.ez, ptr %i.eu, align 1, !dbg !230489, !noalias !230083
  %i.fa = load i64, ptr %i.bm, align 16, !dbg !230490, !alias.scope !230447, !noalias !230077, !noundef !11
  %i.fb = add i64 %i.fa, 1, !dbg !230490
  store i64 %i.fb, ptr %i.bm, align 16, !dbg !230490, !alias.scope !230447, !noalias !230077
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !230491

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !230492, !noalias !230083
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !230496

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraymE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !230184

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !230497, !noalias !230083
  br label %.thread.i.i, !dbg !230501

bb.au:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !230089, !noalias !230083
  unreachable, !dbg !230089

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.5.8.copyload37, %bb.ao ], !dbg !230502
  %i.fd = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dz, %bb.ao ], !dbg !230502
  %.val56.i.i = load ptr, ptr %i.j, align 8, !dbg !230185, !noalias !230077, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val56.i.i) #50, !dbg !230503, !noalias !230083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !230185, !noalias !230077
  br label %bb.aw, !dbg !230185

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !230507
  %i.fe = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fd, %bb.av ], !dbg !230508
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes10UInt32TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !230165, !noalias !230083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !230165, !noalias !230077
  br label %bb.ay, !dbg !230509

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn5182.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes10UInt32TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !230165, !noalias !230083

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.026.0.copyload.i.i, %bb.k ]
  %i.ff = phi <2 x ptr> [ %i.fe, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !230511, !noalias !230072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !230511, !noalias !230072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !230512
  %i.fg = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !230515
  br label %bb.ba, !dbg !230522

bb.az:                                            ; preds = %bb.w
  %.val57.i.i = load ptr, ptr %i.j, align 8, !dbg !230185, !noalias !230077, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val57.i.i) #50, !dbg !230525, !noalias !230083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !230185, !noalias !230077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !230529, !noalias !230077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.f, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !230529, !noalias !230077
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes10UInt32TypeEINtB4_14ChunkedBuildermB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.f), !dbg !230530, !noalias !230083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !230531, !noalias !230077
  %i.fh = call { ptr, ptr } @_RNvXs2w_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10UInt32TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !230532, !noalias !230083 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0, !dbg !230532 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1, !dbg !230532 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !230536
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ], !dbg !230536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !230165, !noalias !230077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !230511, !noalias !230072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !230511, !noalias !230072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !230512
  store i64 0, ptr %i.o, align 8, !dbg !230549
  %.sroa.12.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !230549
  store ptr %i.fi, ptr %.sroa.12.8..sroa_idx41, align 8, !dbg !230549
  %.sroa.16.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !230549
  store ptr %i.fj, ptr %.sroa.16.8..sroa_idx47, align 8, !dbg !230549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !230550, !noalias !230555
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !230559, !noalias !230562
  %i.fk = load i64, ptr %i.b, align 8, !dbg !230550, !range !1924, !noalias !230555, !noundef !11
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !230563
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !230564
  %.sroa.553.8.copyload55 = load ptr, ptr %i.fm, align 8, !dbg !230564, !noalias !230565 ; 2 uses
  br i1 %i.fl, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !230563

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !230566
  %i.fn = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx57, align 8, !dbg !230566, !noalias !230565
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !230566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx, i64 40, i1 false), !dbg !230566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !230567, !noalias !230555
  br label %bb.ba, !dbg !230522

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.553.0 = phi ptr [ %i.fg, %bb.ay ], [ %.sroa.553.8.copyload55, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !230568
  %i.fo = phi <2 x ptr> [ %i.ff, %bb.ay ], [ %i.fn, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !230568
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !230569
  store ptr %.sroa.553.0, ptr %i.fp, align 8, !dbg !230569
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !230569
  store <2 x ptr> %i.fo, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !230569
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !230569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, i64 40, i1 false), !dbg !230569
  br label %bb.bc, !dbg !230571

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !230567, !noalias !230555
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !230572
  store ptr %.sroa.553.8.copyload55, ptr %i.fq, align 8, !dbg !230572
  br label %bb.bc, !dbg !230574

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !230575
  store i64 %storemerge, ptr %0, align 8, !dbg !230575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !230512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !230017
  br label %bb.bd, !dbg !230576

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !230000
  ret void, !dbg !230576

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !230577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !230017
  br label %bb.bd, !dbg !230015
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsn_NtNtCseeLknQCOKOd_13polars_python6series7generalNtB7_8PySeries21___pymethod_get_date__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !230579 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 14 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !230580
  store ptr null, ptr %i.g, align 8, !dbg !230580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !230582
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1172, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.g, i64 noundef 1), !dbg !230582
  %i.h = load i64, ptr %i.f, align 8, !dbg !230584, !range !1924, !noundef !11
  %i.i = trunc nuw i64 %i.h to i1, !dbg !230586
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !230586

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !230587
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !230588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !dbg !230587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !230582
  store i64 1, ptr %0, align 8, !dbg !230588
  br label %bb.af, !dbg !230595

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !230582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !230597
  store ptr null, ptr %i.e, align 8, !dbg !230597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !230600
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !230602
  %i.l = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.g, !dbg !230610 ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.m = icmp eq ptr %i.l, null, !dbg !230613
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !230615

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !230616 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n)
          to label %bb.i unwind label %bb.g, !dbg !230618

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %i.e, align 8, !dbg !230619, !alias.scope !230622, !noalias !230629, !noundef !11
  %i.p = icmp eq ptr %i.o, null, !dbg !230619
  br i1 %i.p, label %bb.j, label %bb.f, !dbg !230619

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.j unwind label %.body.thread, !dbg !230631, !noalias !230629

.body.thread:                                     ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.e, align 8, !dbg !230633, !alias.scope !230634, !noalias !230629
  br label %bb.h, !dbg !230635

bb.g:                                             ; preds = %bb.ab, %bb.y, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.d, %bb.c, %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !230597

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB1a_9datatypes8DateTypeNtB28_9Int32TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit8.i, %bb.n, %bb.g
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn.i, %bb.n ], [ %.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB1a_9datatypes8DateTypeNtB28_9Int32TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit8.i ] ; 2 uses
  %.pr = load ptr, ptr %i.e, align 8, !dbg !230635, !alias.scope !230637
  %i.s = icmp eq ptr %.pr, null, !dbg !230635
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.h, !dbg !230635

bb.h:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body46 = phi { ptr, i32 } [ %i.q, %.body.thread ], [ %eh.lpad-body.ph, %.body ]
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.ai, !dbg !230640

bb.i:                                             ; preds = %bb.d
  %.sroa.019.0.copyload = load ptr, ptr %i.n, align 8, !dbg !230642
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !230642
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !230646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.222.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.520.0..sroa_idx, i64 56, i1 false), !dbg !230642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !230600
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !230646
  store ptr %.sroa.019.0.copyload, ptr %i.t, align 8, !dbg !230646
  br label %bb.ag, !dbg !230652

bb.j:                                             ; preds = %bb.f, %bb.e
  store ptr %i.l, ptr %i.e, align 8, !dbg !230633, !alias.scope !230634, !noalias !230629
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !230654 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !230600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !230658
  %i.v = load ptr, ptr %i.g, align 8, !dbg !230600, !nonnull !11, !noundef !11
end_hunk_6
begin_hunk_7_@_RNvMsp_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries24___pymethod_new_opt_u64__:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231180
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !231180
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !231180
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !231180
  br label %bb.be, !dbg !231187

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !231186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !231189
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !231172
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !231172, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !231189
  %i.ag = load i64, ptr %i.q, align 8, !dbg !231190, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !231193
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !231194
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !231194 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !231193

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !231195
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !231196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !231195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !231202
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231196
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !231196
  br label %bb.be, !dbg !231187

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !231202
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !231172
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !231172, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !231203
  %i.am = load i8, ptr %i.p, align 8, !dbg !231204, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !231204
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !231207

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !231208
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !231215
  br label %bb.be, !dbg !231187

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !231216, !noalias !231221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !231216, !noalias !231221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !231216, !noalias !231226
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !231231, !noalias !231232
  %i.aq = load i64, ptr %i.n, align 8, !dbg !231233, !range !1924, !noalias !231226, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !231236
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !231237
  %.sroa.031.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !231237, !noalias !231226 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !231236

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn6293.i.i, !dbg !231238

bb.k:                                             ; preds = %bb.i
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !231239
  %i.at = load <2 x ptr>, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !dbg !231239, !noalias !231240
  %.sroa.18.16..sroa.532.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !231239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.532.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !231239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !231241, !noalias !231226
  br label %bb.ay, !dbg !231242

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !231241, !noalias !231226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !231244, !noalias !231226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !231246, !noalias !231226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !231247
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !231247
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i, label %bb.m, !dbg !231247

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !231260
  br label %bb.q, !dbg !231261

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !231264
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !231264

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !231265 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !231269, !noalias !231270 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !231280
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !231282

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !231260
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !231283

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !231285, !noalias !231287
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !231288
  %i.az = or disjoint i8 %i.ay, -64, !dbg !231289
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !231289
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !231289, !noalias !231287
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !231290, !noalias !231292
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !231293, !noalias !231294
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !231293
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !231293, !noalias !231294
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !231293
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !231293, !noalias !231294
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !231295

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !231296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !231298, !noalias !231301
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !231302

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !231304
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !231304
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !231305 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !231260
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !231283
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !231283
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !231283, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !231306, !noalias !231232
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i
  %.sroa.071.089.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.472.088.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.087.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.071.089.i.i, ptr %i.l, align 8, !dbg !231308, !noalias !231226
  %.sroa.474.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !231308
  store i64 %.sroa.472.088.i.i, ptr %.sroa.474.0..sroa_idx.i.i, align 8, !dbg !231308, !noalias !231226
  %.sroa.575.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !231308
  store i64 %.sroa.5.087.i.i, ptr %.sroa.575.0..sroa_idx.i.i, align 8, !dbg !231308, !noalias !231226
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes10UInt64TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.031.0.copyload.i.i), !dbg !231309, !noalias !231232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !231310, !noalias !231226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !231311, !noalias !231226
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !231313, !noalias !231232

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !231314

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !231315, !range !1924, !noalias !231226, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !231318
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !231319
  %.sroa.037.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !231319, !noalias !231226 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !231318

bb.t:                                             ; preds = %bb.s
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !231320
  %i.bf = load <2 x ptr>, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !dbg !231320, !noalias !231240
  %.sroa.18.16..sroa.538.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !231320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.538.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !231320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !231321, !noalias !231226
  %i.bg = ptrtoint ptr %.sroa.037.0.copyload.i.i to i64, !dbg !231322
  br label %bb.aw, !dbg !231329

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !231321, !noalias !231226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !231311, !noalias !231226
  store ptr %.sroa.037.0.copyload.i.i, ptr %i.j, align 8, !dbg !231311, !noalias !231226
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !231331

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !231333, !noalias !231232

.thread.i.i:                                      ; preds = %.body.i, %.body.thread100.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm98.i.i, %.body.thread100.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val69.i.i = load ptr, ptr %i.j, align 8, !dbg !231334, !noalias !231226, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val69.i.i) #50, !dbg !231335, !noalias !231232
  br label %bb.ax, !dbg !231314

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !231333, !range !8288, !noalias !231226, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !231333
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !231333

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !231339, !noalias !231226 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !231340
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !231340

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !231344, !noalias !231240
  %.sroa.18.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !231344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !231344
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !231345
  br label %bb.av, !dbg !231351

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !231353
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !231359

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !231360, !noalias !231226
  invoke void @_RNvXst_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numyNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !231361, !noalias !231232

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !231368, !noalias !231372
  br label %.thread.i.i, !dbg !231375

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !231376), !dbg !231379
  %i.by = load i64, ptr %i.bj, align 16, !dbg !231382, !alias.scope !231376, !noalias !231385, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !231382, !range !2549, !alias.scope !231376, !noalias !231385, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !231382
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !231386

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !231392, !noalias !231393

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !231394, !alias.scope !231403, !noalias !231385, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.by, !dbg !231406
  store i64 0, ptr %i.cc, align 8, !dbg !231409, !noalias !231232
  %i.cd = add i64 %i.by, 1, !dbg !231413          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !231413, !alias.scope !231403, !noalias !231385
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !231414, !range !1927, !alias.scope !231376, !noalias !231385, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !231414
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !231415

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !231416, !alias.scope !231419, !noalias !231385, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !231422
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !231422
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !231424, !alias.scope !231419, !noalias !231385 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !231416

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !231425
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !231425

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !231428, !noalias !231393

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !231429, !alias.scope !231434, !noalias !231385, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !231437
  store i8 0, ptr %i.cl, align 1, !dbg !231439, !noalias !231232
  %i.cm = add i64 %i.ci, 1, !dbg !231441          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !231441, !alias.scope !231434, !noalias !231385
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !231442, !alias.scope !231419, !noalias !231385
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !231443

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !231442
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !231444 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !231447
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !231447, !noalias !231449
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !231450, !alias.scope !231419, !noalias !231385, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !231455
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !231455 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !231456, !noalias !231449
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !231458, !noalias !231232, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !231459
  %i.cu = and i8 %i.ct, 7, !dbg !231459
  %i.cv = shl nuw i8 1, %i.cu, !dbg !231459
  %i.cw = xor i8 %i.cv, -1, !dbg !231461
  %i.cx = and i8 %i.cs, %i.cw, !dbg !231462
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !231463, !noalias !231232
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !231464, !alias.scope !231419, !noalias !231385, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !231464
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !231464, !alias.scope !231419, !noalias !231385
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !231465

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !231466), !dbg !231469, !noalias !231449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !231470, !noalias !231473
  %i.da = load i64, ptr %i.bi, align 16, !dbg !231474, !range !2549, !alias.scope !231481, !noalias !231385, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !231482), !dbg !231485, !noalias !231449
  %i.db = add nuw i64 %i.da, 7, !dbg !231486
  %i.dc = lshr i64 %i.db, 3, !dbg !231489         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !231490, !noalias !231495
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !231490, !noalias !231393

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !231490, !range !1924, !noalias !231495, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !231496
  %i.df = load i64, ptr %i.bp, align 8, !dbg !231497, !range !1927, !noalias !231495, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !231496, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !231498, !noalias !231495
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !231499, !noalias !231393

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !231499

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !231500, !noalias !231495, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !231501
  call void @llvm.assume(i1 %i.di), !dbg !231503, !noalias !231449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !231505, !noalias !231495
  store i64 %i.df, ptr %i.d, align 8, !dbg !231506, !alias.scope !231482, !noalias !231473
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !231506, !alias.scope !231482, !noalias !231473
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !231506, !alias.scope !231482, !noalias !231473
  %i.dj = icmp ult i64 %i.cd, 1152921504606846976, !dbg !231507
  call void @llvm.assume(i1 %i.dj), !dbg !231514, !noalias !231449
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !231515
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !231515

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !231518, !noalias !231473
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !231523
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !231523, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !231524, !noalias !231525

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !231526, !noalias !231525

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !231527, !noalias !231525

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !231528, !noalias !231525
  unreachable, !dbg !231528

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !231529, !noalias !231473, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !231544
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !231545 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !231550, !noalias !231525, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !231552
  %i.ds = and i8 %i.dr, 7, !dbg !231552
  %i.dt = shl nuw i8 1, %i.ds, !dbg !231552
  %i.du = xor i8 %i.dt, -1, !dbg !231555
  %i.dv = and i8 %i.dq, %i.du, !dbg !231556
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !231559, !noalias !231525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !231560, !noalias !231385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !231527, !noalias !231473
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !231469

.body.thread100.i.i:                              ; preds = %bb.at, %bb.aq
  %lpad.thr_comm98.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !231375

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !231561, !noalias !231372
  %i.dw = load i64, ptr %i.h, align 8, !dbg !231565, !range !1924, !noalias !231226, !noundef !11
  %i.dx = trunc nuw i64 %i.dw to i1, !dbg !231568
  %.sroa.049.0.copyload.i.i = load i64, ptr %i.bh, align 8, !dbg !231569, !noalias !231226 ; 2 uses
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !231568

bb.ao:                                            ; preds = %bb.an
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !231570
  %i.dy = load <2 x ptr>, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !dbg !231570, !noalias !231240
  %.sroa.18.16..sroa.550.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !231570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.550.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !231570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !231571, !noalias !231226
  br label %bb.av, !dbg !231375

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !231571, !noalias !231226
  %i.dz = load i64, ptr %i.bj, align 16, !dbg !231572, !alias.scope !231577, !noalias !231226, !noundef !11 ; 3 uses
  %i.ea = load i64, ptr %i.bi, align 16, !dbg !231572, !range !2549, !alias.scope !231577, !noalias !231226, !noundef !11
  %i.eb = icmp eq i64 %i.dz, %i.ea, !dbg !231572
  br i1 %i.eb, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !231580

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread100.i.i, !dbg !231586, !noalias !231232

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ec = load ptr, ptr %i.bk, align 8, !dbg !231587, !alias.scope !231592, !noalias !231226, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dz, !dbg !231595
  store i64 %.sroa.049.0.copyload.i.i, ptr %i.ed, align 8, !dbg !231597, !noalias !231232
  %i.ee = add i64 %i.dz, 1, !dbg !231599
  store i64 %i.ee, ptr %i.bj, align 16, !dbg !231599, !alias.scope !231592, !noalias !231226
  %i.ef = load i64, ptr %i.bl, align 8, !dbg !231600, !range !1927, !alias.scope !231577, !noalias !231226, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.ef, -9223372036854775808, !dbg !231600
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !231602

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.eg = load i64, ptr %i.bm, align 16, !dbg !231603, !alias.scope !231605, !noalias !231226, !noundef !11 ; 2 uses
  %i.eh = and i64 %i.eg, 7, !dbg !231608
  %i.ei = icmp eq i64 %i.eh, 0, !dbg !231608
  %i.ej = load i64, ptr %i.bn, align 8, !dbg !231610, !alias.scope !231605, !noalias !231226 ; 4 uses
  br i1 %i.ei, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !231603

bb.as:                                            ; preds = %bb.ar
  %i.ek = icmp eq i64 %i.ej, %i.ef, !dbg !231611
  br i1 %i.ek, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !231611

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread100.i.i, !dbg !231614, !noalias !231232

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.el = load ptr, ptr %i.bo, align 16, !dbg !231615, !alias.scope !231620, !noalias !231226, !nonnull !11, !noundef !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ej, !dbg !231623
  store i8 0, ptr %i.em, align 1, !dbg !231625, !noalias !231232
  %i.en = add i64 %i.ej, 1, !dbg !231627          ; 2 uses
  store i64 %i.en, ptr %i.bn, align 8, !dbg !231627, !alias.scope !231620, !noalias !231226
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !231628, !alias.scope !231605, !noalias !231226
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !231629

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eo = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.eg, %bb.ar ], !dbg !231628
  %i.ep = phi i64 [ %i.en, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ej, %bb.ar ], !dbg !231630 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.ep, 0, !dbg !231633
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !231633
  %i.eq = load ptr, ptr %i.bo, align 16, !dbg !231635, !alias.scope !231605, !noalias !231226, !nonnull !11, !noundef !11
  %i.er = getelementptr i8, ptr %i.eq, i64 %i.ep, !dbg !231640
  %i.es = getelementptr i8, ptr %i.er, i64 -1, !dbg !231640 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ], !dbg !231641
  %i.et = load i8, ptr %i.es, align 1, !dbg !231643, !noalias !231232, !noundef !11
  %i.eu = trunc i64 %i.eo to i8, !dbg !231644
  %i.ev = and i8 %i.eu, 7, !dbg !231644
  %i.ew = shl nuw i8 1, %i.ev, !dbg !231644
  %i.ex = or i8 %i.et, %i.ew, !dbg !231646
  store i8 %i.ex, ptr %i.es, align 1, !dbg !231647, !noalias !231232
  %i.ey = load i64, ptr %i.bm, align 16, !dbg !231648, !alias.scope !231605, !noalias !231226, !noundef !11
  %i.ez = add i64 %i.ey, 1, !dbg !231648
  store i64 %i.ez, ptr %i.bm, align 16, !dbg !231648, !alias.scope !231605, !noalias !231226
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !231649

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !231650, !noalias !231232
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !231654

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecyE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayyE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !231333

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !231655, !noalias !231232
  br label %.thread.i.i, !dbg !231659

bb.au:                                            ; preds = %bb.ax
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !231238, !noalias !231232
  unreachable, !dbg !231238

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.049.0.copyload.i.i, %bb.ao ], !dbg !231660
  %i.fb = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dy, %bb.ao ], !dbg !231661
  %.val67.i.i = load ptr, ptr %i.j, align 8, !dbg !231334, !noalias !231226, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val67.i.i) #50, !dbg !231662, !noalias !231232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !231334, !noalias !231226
  br label %bb.aw, !dbg !231334

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !231666
  %i.fc = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fb, %bb.av ], !dbg !231667
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes10UInt64TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !231314, !noalias !231232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !231314, !noalias !231226
  br label %bb.ay, !dbg !231668

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn6293.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes10UInt64TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !231314, !noalias !231232

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.031.0.copyload.i.i, %bb.k ]
  %i.fd = phi <2 x ptr> [ %i.fc, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !231670, !noalias !231221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !231670, !noalias !231221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !231671
  %i.fe = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !231674
  br label %bb.ba, !dbg !231681

bb.az:                                            ; preds = %bb.w
  %.val68.i.i = load ptr, ptr %i.j, align 8, !dbg !231334, !noalias !231226, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val68.i.i) #50, !dbg !231684, !noalias !231232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !231334, !noalias !231226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !231688, !noalias !231226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.f, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !231688, !noalias !231226
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes10UInt64TypeEINtB4_14ChunkedBuilderyB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.f), !dbg !231689, !noalias !231232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !231690, !noalias !231226
  %i.ff = call { ptr, ptr } @_RNvXs2x_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10UInt64TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !231691, !noalias !231232 ; 2 uses
  %i.fg = extractvalue { ptr, ptr } %i.ff, 0, !dbg !231691 ; 2 uses
  %i.fh = extractvalue { ptr, ptr } %i.ff, 1, !dbg !231691 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ], !dbg !231695
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fh) ], !dbg !231695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !231314, !noalias !231226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !231670, !noalias !231221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !231670, !noalias !231221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !231671
  store i64 0, ptr %i.o, align 8, !dbg !231708
  %.sroa.12.8..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !231708
  store ptr %i.fg, ptr %.sroa.12.8..sroa_idx38, align 8, !dbg !231708
  %.sroa.17.8..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !231708
  store ptr %i.fh, ptr %.sroa.17.8..sroa_idx43, align 8, !dbg !231708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !231709, !noalias !231714
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !231718, !noalias !231721
  %i.fi = load i64, ptr %i.b, align 8, !dbg !231709, !range !1924, !noalias !231714, !noundef !11
  %i.fj = trunc nuw i64 %i.fi to i1, !dbg !231722
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !231723
  %.sroa.549.8.copyload51 = load ptr, ptr %i.fk, align 8, !dbg !231723, !noalias !231724 ; 2 uses
  br i1 %i.fj, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !231722

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !231725
  %i.fl = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx53, align 8, !dbg !231725, !noalias !231724
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !231725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx, i64 40, i1 false), !dbg !231725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !231726, !noalias !231714
  br label %bb.ba, !dbg !231681

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.549.0 = phi ptr [ %i.fe, %bb.ay ], [ %.sroa.549.8.copyload51, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !231727
  %i.fm = phi <2 x ptr> [ %i.fd, %bb.ay ], [ %i.fl, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !231727
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231728
  store ptr %.sroa.549.0, ptr %i.fn, align 8, !dbg !231728
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !231728
  store <2 x ptr> %i.fm, ptr %.sroa.560.0..sroa_idx, align 8, !dbg !231728
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !231728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.762.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, i64 40, i1 false), !dbg !231728
  br label %bb.bc, !dbg !231730

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !231726, !noalias !231714
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231731
  store ptr %.sroa.549.8.copyload51, ptr %i.fo, align 8, !dbg !231731
  br label %bb.bc, !dbg !231733

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !231734
  store i64 %storemerge, ptr %0, align 8, !dbg !231734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !231671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !231166
  br label %bb.bd, !dbg !231735

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !231149
  ret void, !dbg !231735

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !231736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !231166
  br label %bb.bd, !dbg !231164
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsp_NtNtCseeLknQCOKOd_13polars_python6series7generalNtB7_8PySeries25___pymethod_get_datetime__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !231738 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 14 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !231739
  store ptr null, ptr %i.g, align 8, !dbg !231739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !231741
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1180, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.g, i64 noundef 1), !dbg !231741
  %i.h = load i64, ptr %i.f, align 8, !dbg !231743, !range !1924, !noundef !11
  %i.i = trunc nuw i64 %i.h to i1, !dbg !231745
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !231745

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !231746
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !dbg !231746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !231741
  store i64 1, ptr %0, align 8, !dbg !231747
  br label %bb.af, !dbg !231754

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !231741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !231756
  store ptr null, ptr %i.e, align 8, !dbg !231756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !231759
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !231761
  %i.l = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.g, !dbg !231769 ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.m = icmp eq ptr %i.l, null, !dbg !231772
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !231774

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !231775 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n)
          to label %bb.i unwind label %bb.g, !dbg !231777

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %i.e, align 8, !dbg !231778, !alias.scope !231781, !noalias !231788, !noundef !11
  %i.p = icmp eq ptr %i.o, null, !dbg !231778
  br i1 %i.p, label %bb.j, label %bb.f, !dbg !231778

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.j unwind label %.body.thread, !dbg !231790, !noalias !231788

.body.thread:                                     ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.e, align 8, !dbg !231792, !alias.scope !231793, !noalias !231788
  br label %bb.h, !dbg !231794

bb.g:                                             ; preds = %bb.ab, %bb.y, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.d, %bb.c, %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !231756

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB1a_9datatypes12DatetimeTypeNtB28_9Int64TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit8.i, %bb.n, %bb.g
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn.i, %bb.n ], [ %.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB1a_9datatypes12DatetimeTypeNtB28_9Int64TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit8.i ] ; 2 uses
  %.pr = load ptr, ptr %i.e, align 8, !dbg !231794, !alias.scope !231796
  %i.s = icmp eq ptr %.pr, null, !dbg !231794
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.h, !dbg !231794

bb.h:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.q, %.body.thread ], [ %eh.lpad-body.ph, %.body ]
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.ai, !dbg !231799

bb.i:                                             ; preds = %bb.d
  %.sroa.019.0.copyload = load ptr, ptr %i.n, align 8, !dbg !231801
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !231801
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !231805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.222.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.520.0..sroa_idx, i64 56, i1 false), !dbg !231801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !231759
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !231805
  store ptr %.sroa.019.0.copyload, ptr %i.t, align 8, !dbg !231805
  br label %bb.ag, !dbg !231811

bb.j:                                             ; preds = %bb.f, %bb.e
  store ptr %i.l, ptr %i.e, align 8, !dbg !231792, !alias.scope !231793, !noalias !231788
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !231813 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !231759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !231817
  %i.v = load ptr, ptr %i.g, align 8, !dbg !231759, !nonnull !11, !noundef !11
end_hunk_7
begin_hunk_8_@_RNvMsr_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries25___pymethod_new_opt_u128__:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !232336
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !232336
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !232336
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !232336
  br label %bb.be, !dbg !232343

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !232342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !232345
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !232328
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !232328, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !232345
  %i.ag = load i64, ptr %i.q, align 8, !dbg !232346, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !232349
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !232350
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !232350 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !232349

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !232351
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !232352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !232351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !232358
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !232352
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !232352
  br label %bb.be, !dbg !232343

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !232358
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !232328
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !232328, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !232359
  %i.am = load i8, ptr %i.p, align 8, !dbg !232360, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !232360
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !232363

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !232364
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !232365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !232371
  br label %bb.be, !dbg !232343

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !232372, !noalias !232377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !232372, !noalias !232377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !232372, !noalias !232382
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !232387, !noalias !232388
  %i.aq = load i64, ptr %i.n, align 8, !dbg !232389, !range !1924, !noalias !232382, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !232392
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !232393
  %.sroa.033.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !232393, !noalias !232382 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !232392

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn6697.i.i, !dbg !232394

bb.k:                                             ; preds = %bb.i
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !232395
  %i.at = load <2 x i64>, ptr %.sroa.534.0..sroa_idx.i.i, align 8, !dbg !232395, !noalias !232396
  %.sroa.19.16..sroa.534.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !232395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.16..sroa.534.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !232395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !232397, !noalias !232382
  br label %bb.ay, !dbg !232398

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !232397, !noalias !232382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !232400, !noalias !232382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !232402, !noalias !232382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !232403
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !232403
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i, label %bb.m, !dbg !232403

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !232416
  br label %bb.q, !dbg !232417

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !232420
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !232420

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !232421 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !232425, !noalias !232426 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !232436
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !232438

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !232416
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !232439

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !232441, !noalias !232443
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !232444
  %i.az = or disjoint i8 %i.ay, -64, !dbg !232445
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !232445
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !232445, !noalias !232443
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !232446, !noalias !232448
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !232449, !noalias !232450
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !232449
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !232449, !noalias !232450
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !232449
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !232449, !noalias !232450
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !232451

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !232452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !232454, !noalias !232457
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !232458

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !232460
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !232460
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !232461 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !232416
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !232439
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !232439
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !232439, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !232462, !noalias !232388
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i
  %.sroa.075.093.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.476.092.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.091.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread85.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.075.093.i.i, ptr %i.l, align 8, !dbg !232464, !noalias !232382
  %.sroa.478.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !232464
  store i64 %.sroa.476.092.i.i, ptr %.sroa.478.0..sroa_idx.i.i, align 8, !dbg !232464, !noalias !232382
  %.sroa.579.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !232464
  store i64 %.sroa.5.091.i.i, ptr %.sroa.579.0..sroa_idx.i.i, align 8, !dbg !232464, !noalias !232382
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes11UInt128TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.033.0.copyload.i.i), !dbg !232465, !noalias !232388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !232466, !noalias !232382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !232467, !noalias !232382
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !232469, !noalias !232388

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !232470

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !232471, !range !1924, !noalias !232382, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !232474
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !232475
  %.sroa.039.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !232475, !noalias !232382 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !232474

bb.t:                                             ; preds = %bb.s
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !232476
  %i.bf = load <2 x i64>, ptr %.sroa.540.0..sroa_idx.i.i, align 8, !dbg !232476, !noalias !232396
  %.sroa.19.16..sroa.540.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !232476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.16..sroa.540.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !232476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !232477, !noalias !232382
  %i.bg = ptrtoint ptr %.sroa.039.0.copyload.i.i to i64, !dbg !232478
  br label %bb.aw, !dbg !232485

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !232477, !noalias !232382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !232467, !noalias !232382
  store ptr %.sroa.039.0.copyload.i.i, ptr %i.j, align 8, !dbg !232467, !noalias !232382
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !232487

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !232489, !noalias !232388

.thread.i.i:                                      ; preds = %.body.i, %.body.thread104.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm102.i.i, %.body.thread104.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val73.i.i = load ptr, ptr %i.j, align 8, !dbg !232490, !noalias !232382, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val73.i.i) #50, !dbg !232491, !noalias !232388
  br label %bb.ax, !dbg !232470

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !232489, !range !8288, !noalias !232382, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !232489
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !232489

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !232495, !noalias !232382 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !232496
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !232496

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x i64>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !232500, !noalias !232396
  %.sroa.19.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !232500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !232500
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !232501
  br label %bb.av, !dbg !232507

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !232509
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !232515

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !232516, !noalias !232382
  invoke void @_RNvXs3_NtNtNtNtCsbm5zPlkZccl_4pyo311conversions3std3num26slow_128bit_int_conversionoNtNtBd_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.h, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !232517, !noalias !232388

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !232524, !noalias !232528
  br label %.thread.i.i, !dbg !232531

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !232532), !dbg !232535
  %i.by = load i64, ptr %i.bj, align 16, !dbg !232538, !alias.scope !232532, !noalias !232541, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !232538, !range !2549, !alias.scope !232532, !noalias !232541, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !232538
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !232542

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecoE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !232548, !noalias !232549

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !232550, !alias.scope !232559, !noalias !232541, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.by, !dbg !232562
  store i128 0, ptr %i.cc, align 16, !dbg !232565, !noalias !232388
  %i.cd = add i64 %i.by, 1, !dbg !232569          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !232569, !alias.scope !232559, !noalias !232541
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !232570, !range !1927, !alias.scope !232532, !noalias !232541, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !232570
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !232571

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !232572, !alias.scope !232575, !noalias !232541, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !232578
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !232578
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !232580, !alias.scope !232575, !noalias !232541 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !232572

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !232581
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !232581

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !232584, !noalias !232549

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !232585, !alias.scope !232590, !noalias !232541, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !232593
  store i8 0, ptr %i.cl, align 1, !dbg !232595, !noalias !232388
  %i.cm = add i64 %i.ci, 1, !dbg !232597          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !232597, !alias.scope !232590, !noalias !232541
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !232598, !alias.scope !232575, !noalias !232541
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !232599

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !232598
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !232600 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !232603
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !232603, !noalias !232605
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !232606, !alias.scope !232575, !noalias !232541, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !232611
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !232611 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !232612, !noalias !232605
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !232614, !noalias !232388, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !232615
  %i.cu = and i8 %i.ct, 7, !dbg !232615
  %i.cv = shl nuw i8 1, %i.cu, !dbg !232615
  %i.cw = xor i8 %i.cv, -1, !dbg !232617
  %i.cx = and i8 %i.cs, %i.cw, !dbg !232618
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !232619, !noalias !232388
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !232620, !alias.scope !232575, !noalias !232541, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !232620
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !232620, !alias.scope !232575, !noalias !232541
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !232621

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !232622), !dbg !232625, !noalias !232605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !232626, !noalias !232629
  %i.da = load i64, ptr %i.bi, align 16, !dbg !232630, !range !2549, !alias.scope !232637, !noalias !232541, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !232638), !dbg !232641, !noalias !232605
  %i.db = add nuw i64 %i.da, 7, !dbg !232642
  %i.dc = lshr i64 %i.db, 3, !dbg !232645         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !232646, !noalias !232651
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !232646, !noalias !232549

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !232646, !range !1924, !noalias !232651, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !232652
  %i.df = load i64, ptr %i.bp, align 8, !dbg !232653, !range !1927, !noalias !232651, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !232652, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !232654, !noalias !232651
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !232655, !noalias !232549

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !232655

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !232656, !noalias !232651, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !232657
  call void @llvm.assume(i1 %i.di), !dbg !232659, !noalias !232605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !232661, !noalias !232651
  store i64 %i.df, ptr %i.d, align 8, !dbg !232662, !alias.scope !232638, !noalias !232629
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !232662, !alias.scope !232638, !noalias !232629
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !232662, !alias.scope !232638, !noalias !232629
  %i.dj = icmp ult i64 %i.cd, 576460752303423488, !dbg !232663
  call void @llvm.assume(i1 %i.dj), !dbg !232670, !noalias !232605
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !232671
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !232671

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !232674, !noalias !232629
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !232679
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !232679, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !232680, !noalias !232681

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !232682, !noalias !232681

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !232683, !noalias !232681

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !232684, !noalias !232681
  unreachable, !dbg !232684

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !232685, !noalias !232629, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !232700
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !232701 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !232706, !noalias !232681, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !232708
  %i.ds = and i8 %i.dr, 7, !dbg !232708
  %i.dt = shl nuw i8 1, %i.ds, !dbg !232708
  %i.du = xor i8 %i.dt, -1, !dbg !232711
  %i.dv = and i8 %i.dq, %i.du, !dbg !232712
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !232715, !noalias !232681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !232716, !noalias !232541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !232683, !noalias !232629
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !232625

.body.thread104.i.i:                              ; preds = %bb.at, %bb.aq
  %lpad.thr_comm102.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !232531

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !232717, !noalias !232528
  %i.dw = load i64, ptr %i.h, align 16, !dbg !232721, !range !1924, !noalias !232382, !noundef !11
  %i.dx = trunc nuw i64 %i.dw to i1, !dbg !232724
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !232724

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !232725
  %.sroa.052.0.copyload.i.i = load i64, ptr %i.dy, align 8, !dbg !232725, !noalias !232382
  %i.dz = load <2 x i64>, ptr %i.bh, align 16, !dbg !232725
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !232725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i64 40, i1 false), !dbg !232725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !232726, !noalias !232382
  br label %bb.av, !dbg !232531

bb.ap:                                            ; preds = %bb.an
  %i.ea = load i128, ptr %i.bh, align 16, !dbg !232727, !noalias !232382, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !232726, !noalias !232382
  %i.eb = load i64, ptr %i.bj, align 16, !dbg !232728, !alias.scope !232733, !noalias !232382, !noundef !11 ; 3 uses
  %i.ec = load i64, ptr %i.bi, align 16, !dbg !232728, !range !2549, !alias.scope !232733, !noalias !232382, !noundef !11
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !232728
  br i1 %i.ed, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !232736

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecoE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread104.i.i, !dbg !232742, !noalias !232388

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.bk, align 8, !dbg !232743, !alias.scope !232748, !noalias !232382, !nonnull !11, !noundef !11
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.eb, !dbg !232751
  store i128 %i.ea, ptr %i.ef, align 16, !dbg !232753, !noalias !232388
  %i.eg = add i64 %i.eb, 1, !dbg !232755
  store i64 %i.eg, ptr %i.bj, align 16, !dbg !232755, !alias.scope !232748, !noalias !232382
  %i.eh = load i64, ptr %i.bl, align 8, !dbg !232756, !range !1927, !alias.scope !232733, !noalias !232382, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eh, -9223372036854775808, !dbg !232756
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !232758

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ei = load i64, ptr %i.bm, align 16, !dbg !232759, !alias.scope !232761, !noalias !232382, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !232764
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !232764
  %i.el = load i64, ptr %i.bn, align 8, !dbg !232766, !alias.scope !232761, !noalias !232382 ; 4 uses
  br i1 %i.ek, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !232759

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp eq i64 %i.el, %i.eh, !dbg !232767
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !232767

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread104.i.i, !dbg !232770, !noalias !232388

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %i.bo, align 16, !dbg !232771, !alias.scope !232776, !noalias !232382, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !232779
  store i8 0, ptr %i.eo, align 1, !dbg !232781, !noalias !232388
  %i.ep = add i64 %i.el, 1, !dbg !232783          ; 2 uses
  store i64 %i.ep, ptr %i.bn, align 8, !dbg !232783, !alias.scope !232776, !noalias !232382
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !232784, !alias.scope !232761, !noalias !232382
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !232785

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eq = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ei, %bb.ar ], !dbg !232784
  %i.er = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.el, %bb.ar ], !dbg !232786 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.er, 0, !dbg !232789
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !232789
  %i.es = load ptr, ptr %i.bo, align 16, !dbg !232791, !alias.scope !232761, !noalias !232382, !nonnull !11, !noundef !11
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er, !dbg !232796
  %i.eu = getelementptr i8, ptr %i.et, i64 -1, !dbg !232796 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !dbg !232797
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !232799, !noalias !232388, !noundef !11
  %i.ew = trunc i64 %i.eq to i8, !dbg !232800
  %i.ex = and i8 %i.ew, 7, !dbg !232800
  %i.ey = shl nuw i8 1, %i.ex, !dbg !232800
  %i.ez = or i8 %i.ev, %i.ey, !dbg !232802
  store i8 %i.ez, ptr %i.eu, align 1, !dbg !232803, !noalias !232388
  %i.fa = load i64, ptr %i.bm, align 16, !dbg !232804, !alias.scope !232761, !noalias !232382, !noundef !11
  %i.fb = add i64 %i.fa, 1, !dbg !232804
  store i64 %i.fb, ptr %i.bm, align 16, !dbg !232804, !alias.scope !232761, !noalias !232382
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !232805

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !232806, !noalias !232388
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !232810

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecoE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayoE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !232489

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !232811, !noalias !232388
  br label %.thread.i.i, !dbg !232815

bb.au:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !232394, !noalias !232388
  unreachable, !dbg !232394

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.052.0.copyload.i.i, %bb.ao ], !dbg !232816
  %i.fd = phi <2 x i64> [ %i.bu, %bb.y ], [ %i.dz, %bb.ao ], !dbg !232817
  %.val71.i.i = load ptr, ptr %i.j, align 8, !dbg !232490, !noalias !232382, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val71.i.i) #50, !dbg !232818, !noalias !232388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !232490, !noalias !232382
  br label %bb.aw, !dbg !232490

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !232822
  %i.fe = phi <2 x i64> [ %i.bf, %bb.t ], [ %i.fd, %bb.av ], !dbg !232823
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes11UInt128TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !232470, !noalias !232388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !232470, !noalias !232382
  br label %bb.ay, !dbg !232824

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn6697.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes11UInt128TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !232470, !noalias !232388

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.033.0.copyload.i.i, %bb.k ]
  %i.ff = phi <2 x i64> [ %i.fe, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !232826, !noalias !232377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !232826, !noalias !232377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !232827
  %i.fg = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !232830
  br label %bb.ba, !dbg !232837

bb.az:                                            ; preds = %bb.w
  %.val72.i.i = load ptr, ptr %i.j, align 8, !dbg !232490, !noalias !232382, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val72.i.i) #50, !dbg !232840, !noalias !232388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !232490, !noalias !232382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !232844, !noalias !232382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.f, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !232844, !noalias !232382
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes11UInt128TypeEINtB4_14ChunkedBuilderoB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.f), !dbg !232845, !noalias !232388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !232846, !noalias !232382
  %i.fh = call { ptr, ptr } @_RNvXs2F_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_11UInt128TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !232847, !noalias !232388 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0, !dbg !232847 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1, !dbg !232847 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !232851
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ], !dbg !232851
  %i.fk = ptrtoint ptr %i.fi to i64, !dbg !232864
  %i.fl = ptrtoint ptr %i.fj to i64, !dbg !232864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !232470, !noalias !232382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !232826, !noalias !232377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !232826, !noalias !232377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !232827
  store i64 0, ptr %i.o, align 8, !dbg !232865
  %.sroa.12.8..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !232865
  store i64 %i.fk, ptr %.sroa.12.8..sroa_idx40, align 8, !dbg !232865
  %.sroa.17.8..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !232865
  store i64 %i.fl, ptr %.sroa.17.8..sroa_idx44, align 8, !dbg !232865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !232866, !noalias !232871
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !232875, !noalias !232878
  %i.fm = load i64, ptr %i.b, align 8, !dbg !232866, !range !1924, !noalias !232871, !noundef !11
  %i.fn = trunc nuw i64 %i.fm to i1, !dbg !232879
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !232880
  %.sroa.549.8.copyload51 = load ptr, ptr %i.fo, align 8, !dbg !232880, !noalias !232881 ; 2 uses
  br i1 %i.fn, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !232879

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !232882
  %i.fp = load <2 x i64>, ptr %.sroa.10.8..sroa_idx53, align 8, !dbg !232882, !noalias !232881
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !232882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx, i64 40, i1 false), !dbg !232882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !232883, !noalias !232871
  br label %bb.ba, !dbg !232837

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.549.0 = phi ptr [ %i.fg, %bb.ay ], [ %.sroa.549.8.copyload51, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !232884
  %i.fq = phi <2 x i64> [ %i.ff, %bb.ay ], [ %i.fp, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !232884
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !232885
  store ptr %.sroa.549.0, ptr %i.fr, align 8, !dbg !232885
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !232885
  store <2 x i64> %i.fq, ptr %.sroa.560.0..sroa_idx, align 8, !dbg !232885
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !232885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.762.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.925.i.i.sroa.0, i64 40, i1 false), !dbg !232885
  br label %bb.bc, !dbg !232887

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !232883, !noalias !232871
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !232888
  store ptr %.sroa.549.8.copyload51, ptr %i.fs, align 8, !dbg !232888
  br label %bb.bc, !dbg !232890

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !232891
  store i64 %storemerge, ptr %0, align 8, !dbg !232891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !232827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !232322
  br label %bb.bd, !dbg !232892

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !232305
  ret void, !dbg !232892

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !232893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !232322
  br label %bb.bd, !dbg !232320
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsr_NtNtCseeLknQCOKOd_13polars_python6series7generalNtB7_8PySeries25___pymethod_get_duration__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !232895 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 14 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !232896
  store ptr null, ptr %i.g, align 8, !dbg !232896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !232898
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1188, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.g, i64 noundef 1), !dbg !232898
  %i.h = load i64, ptr %i.f, align 8, !dbg !232900, !range !1924, !noundef !11
  %i.i = trunc nuw i64 %i.h to i1, !dbg !232902
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !232902

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !232903
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !232904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !dbg !232903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !232898
  store i64 1, ptr %0, align 8, !dbg !232904
  br label %bb.af, !dbg !232911

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !232898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !232913
  store ptr null, ptr %i.e, align 8, !dbg !232913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !232916
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !232918
  %i.l = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.g, !dbg !232926 ; 5 uses

.noexc:                                           ; preds = %bb.c
  %i.m = icmp eq ptr %i.l, null, !dbg !232929
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !232931

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !232932 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n)
          to label %bb.i unwind label %bb.g, !dbg !232934

bb.e:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %i.e, align 8, !dbg !232935, !alias.scope !232938, !noalias !232945, !noundef !11
  %i.p = icmp eq ptr %i.o, null, !dbg !232935
  br i1 %i.p, label %bb.j, label %bb.f, !dbg !232935

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.j unwind label %.body.thread, !dbg !232947, !noalias !232945

.body.thread:                                     ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.e, align 8, !dbg !232949, !alias.scope !232950, !noalias !232945
  br label %bb.h, !dbg !232951

bb.g:                                             ; preds = %bb.ab, %bb.y, %_RNvMs8_NtCs3mtJKb2XD8V_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.d, %bb.c, %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !232913

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB1a_9datatypes12DurationTypeNtB28_9Int64TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit8.i, %bb.n, %bb.g
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.r, %bb.g ], [ %.pn.i, %bb.n ], [ %.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultRINtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7logical7LogicalNtNtB1a_9datatypes12DurationTypeNtB28_9Int64TypeENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECseeLknQCOKOd_13polars_python.exit8.i ] ; 2 uses
  %.pr = load ptr, ptr %i.e, align 8, !dbg !232951, !alias.scope !232953
  %i.s = icmp eq ptr %.pr, null, !dbg !232951
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.h, !dbg !232951

bb.h:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.q, %.body.thread ], [ %eh.lpad-body.ph, %.body ]
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.ai, !dbg !232956

bb.i:                                             ; preds = %bb.d
  %.sroa.019.0.copyload = load ptr, ptr %i.n, align 8, !dbg !232958
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !232958
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !232962
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.222.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.520.0..sroa_idx, i64 56, i1 false), !dbg !232958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !232916
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !232962
  store ptr %.sroa.019.0.copyload, ptr %i.t, align 8, !dbg !232962
  br label %bb.ag, !dbg !232968

bb.j:                                             ; preds = %bb.f, %bb.e
  store ptr %i.l, ptr %i.e, align 8, !dbg !232949, !alias.scope !232950, !noalias !232945
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !232970 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !232916
end_hunk_8
begin_hunk_9_@_RNvMst_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries23___pymethod_new_opt_i8__:bb.a
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !233494
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !233494
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !233494
  br label %bb.be, !dbg !233501

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !233500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !233503
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !233486
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !233486, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !233503
  %i.ag = load i64, ptr %i.q, align 8, !dbg !233504, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !233507
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !233508
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !233508 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !233507

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !233509
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !233510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !233509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !233516
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !233510
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !233510
  br label %bb.be, !dbg !233501

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !233516
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !233486
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !233486, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !233517
  %i.am = load i8, ptr %i.p, align 8, !dbg !233518, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !233518
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !233521

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !233522
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !233523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !233529
  br label %bb.be, !dbg !233501

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !233530, !noalias !233535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !233530, !noalias !233535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !233530, !noalias !233535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !233530, !noalias !233540
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !233545, !noalias !233546
  %i.aq = load i64, ptr %i.n, align 8, !dbg !233547, !range !1924, !noalias !233540, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !233550
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !233551
  %.sroa.027.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !233551, !noalias !233540 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !233550

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn5283.i.i, !dbg !233552

bb.k:                                             ; preds = %bb.i
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !233553
  %i.at = load <2 x ptr>, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !dbg !233553, !noalias !233554
  %.sroa.17.16..sroa.528.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !233553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.528.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !233553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !233555, !noalias !233540
  br label %bb.ay, !dbg !233556

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !233555, !noalias !233540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !233558, !noalias !233540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !233560, !noalias !233540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !233561
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !233561
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i, label %bb.m, !dbg !233561

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !233574
  br label %bb.q, !dbg !233575

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !233578
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !233578

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !233579 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !233583, !noalias !233584 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !233594
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !233596

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !233574
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !233597

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !233599, !noalias !233601
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !233602
  %i.az = or disjoint i8 %i.ay, -64, !dbg !233603
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !233603
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !233603, !noalias !233601
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !233604, !noalias !233606
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !233607, !noalias !233608
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !233607
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !233607, !noalias !233608
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !233607
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !233607, !noalias !233608
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !233609

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !233610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !233612, !noalias !233615
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !233616

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !233618
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !233618
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !233619 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !233574
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !233597
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !233597
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !233597, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !233620, !noalias !233546
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i
  %.sroa.061.079.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.462.078.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.077.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.061.079.i.i, ptr %i.l, align 8, !dbg !233622, !noalias !233540
  %.sroa.464.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !233622
  store i64 %.sroa.462.078.i.i, ptr %.sroa.464.0..sroa_idx.i.i, align 8, !dbg !233622, !noalias !233540
  %.sroa.565.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !233622
  store i64 %.sroa.5.077.i.i, ptr %.sroa.565.0..sroa_idx.i.i, align 8, !dbg !233622, !noalias !233540
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes8Int8TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.027.0.copyload.i.i), !dbg !233623, !noalias !233546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !233624, !noalias !233540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !233625, !noalias !233540
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !233627, !noalias !233546

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !233628

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !233629, !range !1924, !noalias !233540, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !233632
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !233633
  %.sroa.033.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !233633, !noalias !233540 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !233632

bb.t:                                             ; preds = %bb.s
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !233634
  %i.bf = load <2 x ptr>, ptr %.sroa.534.0..sroa_idx.i.i, align 8, !dbg !233634, !noalias !233554
  %.sroa.17.16..sroa.534.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !233634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.534.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !233634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !233635, !noalias !233540
  %i.bg = ptrtoint ptr %.sroa.033.0.copyload.i.i to i64, !dbg !233636
  br label %bb.aw, !dbg !233643

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !233635, !noalias !233540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !233625, !noalias !233540
  store ptr %.sroa.033.0.copyload.i.i, ptr %i.j, align 8, !dbg !233625, !noalias !233540
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !233645

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !233647, !noalias !233546

.thread.i.i:                                      ; preds = %.body.i, %.body.thread90.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm88.i.i, %.body.thread90.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val59.i.i = load ptr, ptr %i.j, align 8, !dbg !233648, !noalias !233540, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val59.i.i) #50, !dbg !233649, !noalias !233546
  br label %bb.ax, !dbg !233628

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !233647, !range !8288, !noalias !233540, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !233647
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !233647

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !233653, !noalias !233540 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !233654
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !233654

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !233658, !noalias !233554
  %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !233658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !233658
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !233659
  br label %bb.av, !dbg !233665

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !233667
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !233673

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXs5_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numaNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !233674, !noalias !233546

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !233681, !noalias !233685
  br label %.thread.i.i, !dbg !233688

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !233689), !dbg !233692
  %i.by = load i64, ptr %i.bj, align 16, !dbg !233695, !alias.scope !233689, !noalias !233698, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !233695, !range !2549, !alias.scope !233689, !noalias !233698, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !233695
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !233699

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecaE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !233705, !noalias !233706

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !233707, !alias.scope !233716, !noalias !233698, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.by, !dbg !233719
  store i8 0, ptr %i.cc, align 1, !dbg !233722, !noalias !233546
  %i.cd = add i64 %i.by, 1, !dbg !233726          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !233726, !alias.scope !233716, !noalias !233698
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !233727, !range !1927, !alias.scope !233689, !noalias !233698, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !233727
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !233728

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !233729, !alias.scope !233732, !noalias !233698, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !233735
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !233735
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !233737, !alias.scope !233732, !noalias !233698 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !233729

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !233738
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !233738

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !233741, !noalias !233706

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !233742, !alias.scope !233747, !noalias !233698, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !233750
  store i8 0, ptr %i.cl, align 1, !dbg !233752, !noalias !233546
  %i.cm = add i64 %i.ci, 1, !dbg !233754          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !233754, !alias.scope !233747, !noalias !233698
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !233755, !alias.scope !233732, !noalias !233698
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !233756

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !233755
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !233757 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !233760
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !233760, !noalias !233762
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !233763, !alias.scope !233732, !noalias !233698, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !233768
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !233768 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !233769, !noalias !233762
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !233771, !noalias !233546, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !233772
  %i.cu = and i8 %i.ct, 7, !dbg !233772
  %i.cv = shl nuw i8 1, %i.cu, !dbg !233772
  %i.cw = xor i8 %i.cv, -1, !dbg !233774
  %i.cx = and i8 %i.cs, %i.cw, !dbg !233775
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !233776, !noalias !233546
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !233777, !alias.scope !233732, !noalias !233698, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !233777
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !233777, !alias.scope !233732, !noalias !233698
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !233778

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !233779), !dbg !233782, !noalias !233762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !233783, !noalias !233786
  %i.da = load i64, ptr %i.bi, align 16, !dbg !233787, !range !2549, !alias.scope !233794, !noalias !233698, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !233795), !dbg !233798, !noalias !233762
  %i.db = add nuw i64 %i.da, 7, !dbg !233799
  %i.dc = lshr i64 %i.db, 3, !dbg !233802         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !233803, !noalias !233808
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !233803, !noalias !233706

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !233803, !range !1924, !noalias !233808, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !233809
  %i.df = load i64, ptr %i.bp, align 8, !dbg !233810, !range !1927, !noalias !233808, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !233809, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !233811, !noalias !233808
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !233812, !noalias !233706

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !233812

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !233813, !noalias !233808, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !233814
  call void @llvm.assume(i1 %i.di), !dbg !233816, !noalias !233762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !233818, !noalias !233808
  store i64 %i.df, ptr %i.d, align 8, !dbg !233819, !alias.scope !233795, !noalias !233786
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !233819, !alias.scope !233795, !noalias !233786
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !233819, !alias.scope !233795, !noalias !233786
  %i.dj = icmp sgt i64 %i.cd, -1, !dbg !233820
  call void @llvm.assume(i1 %i.dj), !dbg !233827, !noalias !233762
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !233828
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !233828

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !233831, !noalias !233786
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !233836
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !233836, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !233837, !noalias !233838

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !233839, !noalias !233838

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !233840, !noalias !233838

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !233841, !noalias !233838
  unreachable, !dbg !233841

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !233842, !noalias !233786, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !233857
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !233858 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !233863, !noalias !233838, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !233865
  %i.ds = and i8 %i.dr, 7, !dbg !233865
  %i.dt = shl nuw i8 1, %i.ds, !dbg !233865
  %i.du = xor i8 %i.dt, -1, !dbg !233868
  %i.dv = and i8 %i.dq, %i.du, !dbg !233869
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !233872, !noalias !233838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !233873, !noalias !233698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !233840, !noalias !233786
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !233782

.body.thread90.i.i:                               ; preds = %bb.at, %bb.aq
  %lpad.thr_comm88.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !233688

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !233874, !noalias !233685
  %i.dw = load i8, ptr %i.f, align 8, !dbg !233878, !range !15679, !noalias !233540, !noundef !11
  %i.dx = trunc nuw i8 %i.dw to i1, !dbg !233878
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !233881

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !233882
  %.sroa.5.8.copyload37 = load i64, ptr %i.dy, align 8, !dbg !233883, !noalias !233554
  %.sroa.12.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !233883
  %i.dz = load <2 x ptr>, ptr %.sroa.12.8..sroa_idx39, align 8, !dbg !233883, !noalias !233554
  %.sroa.17.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !233883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.8..sroa_idx51, i64 40, i1 false), !dbg !233883
  br label %bb.av, !dbg !233688

bb.ap:                                            ; preds = %bb.an
  %i.ea = load i8, ptr %i.bh, align 1, !dbg !233884, !noalias !233540, !noundef !11
  %i.eb = load i64, ptr %i.bj, align 16, !dbg !233885, !alias.scope !233890, !noalias !233540, !noundef !11 ; 3 uses
  %i.ec = load i64, ptr %i.bi, align 16, !dbg !233885, !range !2549, !alias.scope !233890, !noalias !233540, !noundef !11
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !233885
  br i1 %i.ed, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !233893

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecaE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread90.i.i, !dbg !233899, !noalias !233546

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.bk, align 8, !dbg !233900, !alias.scope !233905, !noalias !233540, !nonnull !11, !noundef !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eb, !dbg !233908
  store i8 %i.ea, ptr %i.ef, align 1, !dbg !233910, !noalias !233546
  %i.eg = add i64 %i.eb, 1, !dbg !233912
  store i64 %i.eg, ptr %i.bj, align 16, !dbg !233912, !alias.scope !233905, !noalias !233540
  %i.eh = load i64, ptr %i.bl, align 8, !dbg !233913, !range !1927, !alias.scope !233890, !noalias !233540, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eh, -9223372036854775808, !dbg !233913
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !233915

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ei = load i64, ptr %i.bm, align 16, !dbg !233916, !alias.scope !233918, !noalias !233540, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !233921
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !233921
  %i.el = load i64, ptr %i.bn, align 8, !dbg !233923, !alias.scope !233918, !noalias !233540 ; 4 uses
  br i1 %i.ek, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !233916

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp eq i64 %i.el, %i.eh, !dbg !233924
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !233924

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread90.i.i, !dbg !233927, !noalias !233546

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %i.bo, align 16, !dbg !233928, !alias.scope !233933, !noalias !233540, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !233936
  store i8 0, ptr %i.eo, align 1, !dbg !233938, !noalias !233546
  %i.ep = add i64 %i.el, 1, !dbg !233940          ; 2 uses
  store i64 %i.ep, ptr %i.bn, align 8, !dbg !233940, !alias.scope !233933, !noalias !233540
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !233941, !alias.scope !233918, !noalias !233540
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !233942

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eq = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ei, %bb.ar ], !dbg !233941
  %i.er = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.el, %bb.ar ], !dbg !233943 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.er, 0, !dbg !233946
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !233946
  %i.es = load ptr, ptr %i.bo, align 16, !dbg !233948, !alias.scope !233918, !noalias !233540, !nonnull !11, !noundef !11
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er, !dbg !233953
  %i.eu = getelementptr i8, ptr %i.et, i64 -1, !dbg !233953 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !dbg !233954
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !233956, !noalias !233546, !noundef !11
  %i.ew = trunc i64 %i.eq to i8, !dbg !233957
  %i.ex = and i8 %i.ew, 7, !dbg !233957
  %i.ey = shl nuw i8 1, %i.ex, !dbg !233957
  %i.ez = or i8 %i.ev, %i.ey, !dbg !233959
  store i8 %i.ez, ptr %i.eu, align 1, !dbg !233960, !noalias !233546
  %i.fa = load i64, ptr %i.bm, align 16, !dbg !233961, !alias.scope !233918, !noalias !233540, !noundef !11
  %i.fb = add i64 %i.fa, 1, !dbg !233961
  store i64 %i.fb, ptr %i.bm, align 16, !dbg !233961, !alias.scope !233918, !noalias !233540
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !233962

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !233963, !noalias !233546
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !233967

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecaE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayaE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !233647

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !233968, !noalias !233546
  br label %.thread.i.i, !dbg !233972

bb.au:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !233552, !noalias !233546
  unreachable, !dbg !233552

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.5.8.copyload37, %bb.ao ], !dbg !233973
  %i.fd = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dz, %bb.ao ], !dbg !233973
  %.val57.i.i = load ptr, ptr %i.j, align 8, !dbg !233648, !noalias !233540, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val57.i.i) #50, !dbg !233974, !noalias !233546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !233648, !noalias !233540
  br label %bb.aw, !dbg !233648

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !233978
  %i.fe = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fd, %bb.av ], !dbg !233979
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes8Int8TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !233628, !noalias !233546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !233628, !noalias !233540
  br label %bb.ay, !dbg !233980

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn5283.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes8Int8TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !233628, !noalias !233546

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.027.0.copyload.i.i, %bb.k ]
  %i.ff = phi <2 x ptr> [ %i.fe, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !233982, !noalias !233535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !233982, !noalias !233535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !233982, !noalias !233535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !233983
  %i.fg = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !233986
  br label %bb.ba, !dbg !233993

bb.az:                                            ; preds = %bb.w
  %.val58.i.i = load ptr, ptr %i.j, align 8, !dbg !233648, !noalias !233540, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val58.i.i) #50, !dbg !233996, !noalias !233546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !233648, !noalias !233540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !234000, !noalias !233540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.g, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !234000, !noalias !233540
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes8Int8TypeEINtB4_14ChunkedBuilderaB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.g), !dbg !234001, !noalias !233546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !234002, !noalias !233540
  %i.fh = call { ptr, ptr } @_RNvXs2s_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_8Int8TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h), !dbg !234003, !noalias !233546 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0, !dbg !234003 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1, !dbg !234003 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !234007
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ], !dbg !234007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !233628, !noalias !233540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !233982, !noalias !233535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !233982, !noalias !233535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !233982, !noalias !233535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !233983
  store i64 0, ptr %i.o, align 8, !dbg !234020
  %.sroa.12.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !234020
  store ptr %i.fi, ptr %.sroa.12.8..sroa_idx41, align 8, !dbg !234020
  %.sroa.16.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !234020
  store ptr %i.fj, ptr %.sroa.16.8..sroa_idx47, align 8, !dbg !234020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !234021, !noalias !234026
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !234030, !noalias !234033
  %i.fk = load i64, ptr %i.b, align 8, !dbg !234021, !range !1924, !noalias !234026, !noundef !11
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !234034
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !234035
  %.sroa.553.8.copyload55 = load ptr, ptr %i.fm, align 8, !dbg !234035, !noalias !234036 ; 2 uses
  br i1 %i.fl, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !234034

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !234037
  %i.fn = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx57, align 8, !dbg !234037, !noalias !234036
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !234037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx, i64 40, i1 false), !dbg !234037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !234038, !noalias !234026
  br label %bb.ba, !dbg !233993

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.553.0 = phi ptr [ %i.fg, %bb.ay ], [ %.sroa.553.8.copyload55, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !234039
  %i.fo = phi <2 x ptr> [ %i.ff, %bb.ay ], [ %i.fn, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !234039
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234040
  store ptr %.sroa.553.0, ptr %i.fp, align 8, !dbg !234040
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !234040
  store <2 x ptr> %i.fo, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !234040
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !234040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, i64 40, i1 false), !dbg !234040
  br label %bb.bc, !dbg !234042

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !234038, !noalias !234026
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234043
  store ptr %.sroa.553.8.copyload55, ptr %i.fq, align 8, !dbg !234043
  br label %bb.bc, !dbg !234045

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !234046
  store i64 %storemerge, ptr %0, align 8, !dbg !234046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !233983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !233480
  br label %bb.bd, !dbg !234047

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !233463
  ret void, !dbg !234047

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !234048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !233480
  br label %bb.bd, !dbg !233478
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsu_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries19___pymethod_neq_u8__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !234050 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %.sroa.10.sroa.6 = alloca [40 x i8], align 8    ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !234051
  store ptr null, ptr %i.k, align 8, !dbg !234051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !234053
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1196, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.k, i64 noundef 1), !dbg !234053
  %i.l = load i64, ptr %i.j, align 8, !dbg !234055, !range !1924, !noundef !11
  %i.m = trunc nuw i64 %i.l to i1, !dbg !234057
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !234057

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !234058
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !234058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !234053
  store i64 1, ptr %0, align 8, !dbg !234059
  br label %bb.q, !dbg !234066

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !234053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !234068
  store ptr null, ptr %i.i, align 8, !dbg !234068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !234071
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !234073
  %i.p = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %.body, !dbg !234081 ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.q = icmp eq ptr %i.p, null, !dbg !234084
  br i1 %i.q, label %bb.d, label %._crit_edge70, !dbg !234086

bb.d:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !234087 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r)
          to label %bb.f unwind label %.body, !dbg !234089

.body:                                            ; preds = %._crit_edge70, %bb.c, %bb.d, %bb.i, %bb.j, %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.pr = load ptr, ptr %i.i, align 8, !dbg !234090, !alias.scope !234092
  %i.t = icmp eq ptr %.pr, null, !dbg !234090
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.e, !dbg !234090

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.t, !dbg !234095

bb.f:                                             ; preds = %bb.d
  %.sroa.012.0.copyload = load ptr, ptr %i.r, align 8, !dbg !234097
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !234097
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !234101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.215.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.513.0..sroa_idx, i64 56, i1 false), !dbg !234097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !234071
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234101
  store ptr %.sroa.012.0.copyload, ptr %i.u, align 8, !dbg !234101
  br label %bb.r, !dbg !234107

._crit_edge70:                                    ; preds = %.noexc
  %.pre = load ptr, ptr %i.k, align 8, !dbg !234071
  store ptr %i.p, ptr %i.i, align 8, !dbg !234109, !alias.scope !234111, !noalias !234116
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !234118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !234071
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumenthKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %.pre, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 3)
          to label %bb.g unwind label %.body, !dbg !234122

bb.g:                                             ; preds = %._crit_edge70
  %i.w = load i8, ptr %i.g, align 8, !dbg !234123, !range !15679, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1, !dbg !234123
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !234126

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !234127
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !dbg !234134
  br label %bb.r, !dbg !234107

end_hunk_9
begin_hunk_10_@_RNvMsv_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries24___pymethod_new_opt_i16__:bb.a
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !234426
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !234426
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !234426
  br label %bb.be, !dbg !234433

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !234432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !234435
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !234418
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !234418, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !234435
  %i.ag = load i64, ptr %i.q, align 8, !dbg !234436, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !234439
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !234440
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !234440 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !234439

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !234441
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !234442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !234441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !234448
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234442
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !234442
  br label %bb.be, !dbg !234433

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !234448
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !234418
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !234418, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !234449
  %i.am = load i8, ptr %i.p, align 8, !dbg !234450, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !234450
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !234453

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !234454
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !234461
  br label %bb.be, !dbg !234433

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !234462, !noalias !234467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !234462, !noalias !234467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !234462, !noalias !234467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !234462, !noalias !234472
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !234477, !noalias !234478
  %i.aq = load i64, ptr %i.n, align 8, !dbg !234479, !range !1924, !noalias !234472, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !234482
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !234483
  %.sroa.027.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !234483, !noalias !234472 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !234482

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn5283.i.i, !dbg !234484

bb.k:                                             ; preds = %bb.i
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !234485
  %i.at = load <2 x ptr>, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !dbg !234485, !noalias !234486
  %.sroa.17.16..sroa.528.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !234485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.528.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !234485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !234487, !noalias !234472
  br label %bb.ay, !dbg !234488

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !234487, !noalias !234472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !234490, !noalias !234472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !234492, !noalias !234472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !234493
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !234493
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i, label %bb.m, !dbg !234493

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !234506
  br label %bb.q, !dbg !234507

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !234510
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !234510

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !234511 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !234515, !noalias !234516 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !234526
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !234528

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !234506
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !234529

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !234531, !noalias !234533
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !234534
  %i.az = or disjoint i8 %i.ay, -64, !dbg !234535
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !234535
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !234535, !noalias !234533
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !234536, !noalias !234538
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !234539, !noalias !234540
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !234539
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !234539, !noalias !234540
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !234539
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !234539, !noalias !234540
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !234541

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !234542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !234544, !noalias !234547
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !234548

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !234550
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !234550
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !234551 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !234506
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !234529
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !234529
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !234529, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !234552, !noalias !234478
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i
  %.sroa.061.079.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.462.078.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.077.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread71.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.061.079.i.i, ptr %i.l, align 8, !dbg !234554, !noalias !234472
  %.sroa.464.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !234554
  store i64 %.sroa.462.078.i.i, ptr %.sroa.464.0..sroa_idx.i.i, align 8, !dbg !234554, !noalias !234472
  %.sroa.565.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !234554
  store i64 %.sroa.5.077.i.i, ptr %.sroa.565.0..sroa_idx.i.i, align 8, !dbg !234554, !noalias !234472
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes9Int16TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.027.0.copyload.i.i), !dbg !234555, !noalias !234478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !234556, !noalias !234472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !234557, !noalias !234472
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !234559, !noalias !234478

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !234560

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !234561, !range !1924, !noalias !234472, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !234564
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !234565
  %.sroa.033.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !234565, !noalias !234472 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !234564

bb.t:                                             ; preds = %bb.s
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !234566
  %i.bf = load <2 x ptr>, ptr %.sroa.534.0..sroa_idx.i.i, align 8, !dbg !234566, !noalias !234486
  %.sroa.17.16..sroa.534.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !234566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.534.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !234566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !234567, !noalias !234472
  %i.bg = ptrtoint ptr %.sroa.033.0.copyload.i.i to i64, !dbg !234568
  br label %bb.aw, !dbg !234575

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !234567, !noalias !234472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !234557, !noalias !234472
  store ptr %.sroa.033.0.copyload.i.i, ptr %i.j, align 8, !dbg !234557, !noalias !234472
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !234577

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !234579, !noalias !234478

.thread.i.i:                                      ; preds = %.body.i, %.body.thread90.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm88.i.i, %.body.thread90.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val59.i.i = load ptr, ptr %i.j, align 8, !dbg !234580, !noalias !234472, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val59.i.i) #50, !dbg !234581, !noalias !234478
  br label %bb.ax, !dbg !234560

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !234579, !range !8288, !noalias !234472, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !234579
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !234579

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !234585, !noalias !234472 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !234586
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !234586

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !234590, !noalias !234486
  %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !234590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !234590
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !234591
  br label %bb.av, !dbg !234597

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !234599
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !234605

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXs8_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numsNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !234606, !noalias !234478

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !234613, !noalias !234617
  br label %.thread.i.i, !dbg !234620

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !234621), !dbg !234624
  %i.by = load i64, ptr %i.bj, align 16, !dbg !234627, !alias.scope !234621, !noalias !234630, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !234627, !range !2549, !alias.scope !234621, !noalias !234630, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !234627
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !234631

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecsE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !234637, !noalias !234638

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !234639, !alias.scope !234648, !noalias !234630, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.by, !dbg !234651
  store i16 0, ptr %i.cc, align 2, !dbg !234654, !noalias !234478
  %i.cd = add i64 %i.by, 1, !dbg !234658          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !234658, !alias.scope !234648, !noalias !234630
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !234659, !range !1927, !alias.scope !234621, !noalias !234630, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !234659
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !234660

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !234661, !alias.scope !234664, !noalias !234630, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !234667
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !234667
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !234669, !alias.scope !234664, !noalias !234630 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !234661

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !234670
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !234670

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !234673, !noalias !234638

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !234674, !alias.scope !234679, !noalias !234630, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !234682
  store i8 0, ptr %i.cl, align 1, !dbg !234684, !noalias !234478
  %i.cm = add i64 %i.ci, 1, !dbg !234686          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !234686, !alias.scope !234679, !noalias !234630
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !234687, !alias.scope !234664, !noalias !234630
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !234688

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !234687
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !234689 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !234692
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !234692, !noalias !234694
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !234695, !alias.scope !234664, !noalias !234630, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !234700
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !234700 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !234701, !noalias !234694
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !234703, !noalias !234478, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !234704
  %i.cu = and i8 %i.ct, 7, !dbg !234704
  %i.cv = shl nuw i8 1, %i.cu, !dbg !234704
  %i.cw = xor i8 %i.cv, -1, !dbg !234706
  %i.cx = and i8 %i.cs, %i.cw, !dbg !234707
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !234708, !noalias !234478
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !234709, !alias.scope !234664, !noalias !234630, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !234709
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !234709, !alias.scope !234664, !noalias !234630
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !234710

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !234711), !dbg !234714, !noalias !234694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !234715, !noalias !234718
  %i.da = load i64, ptr %i.bi, align 16, !dbg !234719, !range !2549, !alias.scope !234726, !noalias !234630, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !234727), !dbg !234730, !noalias !234694
  %i.db = add nuw i64 %i.da, 7, !dbg !234731
  %i.dc = lshr i64 %i.db, 3, !dbg !234734         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !234735, !noalias !234740
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !234735, !noalias !234638

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !234735, !range !1924, !noalias !234740, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !234741
  %i.df = load i64, ptr %i.bp, align 8, !dbg !234742, !range !1927, !noalias !234740, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !234741, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !234743, !noalias !234740
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !234744, !noalias !234638

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !234744

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !234745, !noalias !234740, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !234746
  call void @llvm.assume(i1 %i.di), !dbg !234748, !noalias !234694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !234750, !noalias !234740
  store i64 %i.df, ptr %i.d, align 8, !dbg !234751, !alias.scope !234727, !noalias !234718
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !234751, !alias.scope !234727, !noalias !234718
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !234751, !alias.scope !234727, !noalias !234718
  %i.dj = icmp ult i64 %i.cd, 4611686018427387904, !dbg !234752
  call void @llvm.assume(i1 %i.dj), !dbg !234759, !noalias !234694
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !234760
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !234760

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !234763, !noalias !234718
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !234768
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !234768, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !234769, !noalias !234770

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !234771, !noalias !234770

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !234772, !noalias !234770

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !234773, !noalias !234770
  unreachable, !dbg !234773

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !234774, !noalias !234718, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !234789
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !234790 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !234795, !noalias !234770, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !234797
  %i.ds = and i8 %i.dr, 7, !dbg !234797
  %i.dt = shl nuw i8 1, %i.ds, !dbg !234797
  %i.du = xor i8 %i.dt, -1, !dbg !234800
  %i.dv = and i8 %i.dq, %i.du, !dbg !234801
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !234804, !noalias !234770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !234805, !noalias !234630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !234772, !noalias !234718
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !234714

.body.thread90.i.i:                               ; preds = %bb.at, %bb.aq
  %lpad.thr_comm88.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !234620

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !234806, !noalias !234617
  %i.dw = load i16, ptr %i.f, align 8, !dbg !234810, !range !110717, !noalias !234472, !noundef !11
  %i.dx = trunc nuw i16 %i.dw to i1, !dbg !234813
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !234813

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !234814
  %.sroa.5.8.copyload37 = load i64, ptr %i.dy, align 8, !dbg !234815, !noalias !234486
  %.sroa.12.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !234815
  %i.dz = load <2 x ptr>, ptr %.sroa.12.8..sroa_idx39, align 8, !dbg !234815, !noalias !234486
  %.sroa.17.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !234815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.8..sroa_idx51, i64 40, i1 false), !dbg !234815
  br label %bb.av, !dbg !234620

bb.ap:                                            ; preds = %bb.an
  %i.ea = load i16, ptr %i.bh, align 2, !dbg !234816, !noalias !234472, !noundef !11
  %i.eb = load i64, ptr %i.bj, align 16, !dbg !234817, !alias.scope !234822, !noalias !234472, !noundef !11 ; 3 uses
  %i.ec = load i64, ptr %i.bi, align 16, !dbg !234817, !range !2549, !alias.scope !234822, !noalias !234472, !noundef !11
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !234817
  br i1 %i.ed, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !234825

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecsE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread90.i.i, !dbg !234831, !noalias !234478

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.bk, align 8, !dbg !234832, !alias.scope !234837, !noalias !234472, !nonnull !11, !noundef !11
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.eb, !dbg !234840
  store i16 %i.ea, ptr %i.ef, align 2, !dbg !234842, !noalias !234478
  %i.eg = add i64 %i.eb, 1, !dbg !234844
  store i64 %i.eg, ptr %i.bj, align 16, !dbg !234844, !alias.scope !234837, !noalias !234472
  %i.eh = load i64, ptr %i.bl, align 8, !dbg !234845, !range !1927, !alias.scope !234822, !noalias !234472, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eh, -9223372036854775808, !dbg !234845
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !234847

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ei = load i64, ptr %i.bm, align 16, !dbg !234848, !alias.scope !234850, !noalias !234472, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !234853
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !234853
  %i.el = load i64, ptr %i.bn, align 8, !dbg !234855, !alias.scope !234850, !noalias !234472 ; 4 uses
  br i1 %i.ek, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !234848

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp eq i64 %i.el, %i.eh, !dbg !234856
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !234856

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread90.i.i, !dbg !234859, !noalias !234478

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %i.bo, align 16, !dbg !234860, !alias.scope !234865, !noalias !234472, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !234868
  store i8 0, ptr %i.eo, align 1, !dbg !234870, !noalias !234478
  %i.ep = add i64 %i.el, 1, !dbg !234872          ; 2 uses
  store i64 %i.ep, ptr %i.bn, align 8, !dbg !234872, !alias.scope !234865, !noalias !234472
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !234873, !alias.scope !234850, !noalias !234472
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !234874

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eq = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ei, %bb.ar ], !dbg !234873
  %i.er = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.el, %bb.ar ], !dbg !234875 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.er, 0, !dbg !234878
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !234878
  %i.es = load ptr, ptr %i.bo, align 16, !dbg !234880, !alias.scope !234850, !noalias !234472, !nonnull !11, !noundef !11
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er, !dbg !234885
  %i.eu = getelementptr i8, ptr %i.et, i64 -1, !dbg !234885 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !dbg !234886
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !234888, !noalias !234478, !noundef !11
  %i.ew = trunc i64 %i.eq to i8, !dbg !234889
  %i.ex = and i8 %i.ew, 7, !dbg !234889
  %i.ey = shl nuw i8 1, %i.ex, !dbg !234889
  %i.ez = or i8 %i.ev, %i.ey, !dbg !234891
  store i8 %i.ez, ptr %i.eu, align 1, !dbg !234892, !noalias !234478
  %i.fa = load i64, ptr %i.bm, align 16, !dbg !234893, !alias.scope !234850, !noalias !234472, !noundef !11
  %i.fb = add i64 %i.fa, 1, !dbg !234893
  store i64 %i.fb, ptr %i.bm, align 16, !dbg !234893, !alias.scope !234850, !noalias !234472
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !234894

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !234895, !noalias !234478
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !234899

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecsE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraysE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !234579

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !234900, !noalias !234478
  br label %.thread.i.i, !dbg !234904

bb.au:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !234484, !noalias !234478
  unreachable, !dbg !234484

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.5.8.copyload37, %bb.ao ], !dbg !234905
  %i.fd = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dz, %bb.ao ], !dbg !234905
  %.val57.i.i = load ptr, ptr %i.j, align 8, !dbg !234580, !noalias !234472, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val57.i.i) #50, !dbg !234906, !noalias !234478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !234580, !noalias !234472
  br label %bb.aw, !dbg !234580

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !234910
  %i.fe = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fd, %bb.av ], !dbg !234911
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes9Int16TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !234560, !noalias !234478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !234560, !noalias !234472
  br label %bb.ay, !dbg !234912

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn5283.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes9Int16TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !234560, !noalias !234478

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.027.0.copyload.i.i, %bb.k ]
  %i.ff = phi <2 x ptr> [ %i.fe, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !234914, !noalias !234467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !234914, !noalias !234467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !234914, !noalias !234467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !234915
  %i.fg = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !234918
  br label %bb.ba, !dbg !234925

bb.az:                                            ; preds = %bb.w
  %.val58.i.i = load ptr, ptr %i.j, align 8, !dbg !234580, !noalias !234472, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val58.i.i) #50, !dbg !234928, !noalias !234478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !234580, !noalias !234472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !234932, !noalias !234472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.g, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !234932, !noalias !234472
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes9Int16TypeEINtB4_14ChunkedBuildersB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.g), !dbg !234933, !noalias !234478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !234934, !noalias !234472
  %i.fh = call { ptr, ptr } @_RNvXs2t_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_9Int16TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h), !dbg !234935, !noalias !234478 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0, !dbg !234935 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1, !dbg !234935 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !234939
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ], !dbg !234939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !234560, !noalias !234472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !234914, !noalias !234467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !234914, !noalias !234467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !234914, !noalias !234467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !234915
  store i64 0, ptr %i.o, align 8, !dbg !234952
  %.sroa.12.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !234952
  store ptr %i.fi, ptr %.sroa.12.8..sroa_idx41, align 8, !dbg !234952
  %.sroa.16.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !234952
  store ptr %i.fj, ptr %.sroa.16.8..sroa_idx47, align 8, !dbg !234952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !234953, !noalias !234958
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !234962, !noalias !234965
  %i.fk = load i64, ptr %i.b, align 8, !dbg !234953, !range !1924, !noalias !234958, !noundef !11
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !234966
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !234967
  %.sroa.553.8.copyload55 = load ptr, ptr %i.fm, align 8, !dbg !234967, !noalias !234968 ; 2 uses
  br i1 %i.fl, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !234966

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !234969
  %i.fn = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx57, align 8, !dbg !234969, !noalias !234968
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !234969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx, i64 40, i1 false), !dbg !234969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !234970, !noalias !234958
  br label %bb.ba, !dbg !234925

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.553.0 = phi ptr [ %i.fg, %bb.ay ], [ %.sroa.553.8.copyload55, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !234971
  %i.fo = phi <2 x ptr> [ %i.ff, %bb.ay ], [ %i.fn, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !234971
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234972
  store ptr %.sroa.553.0, ptr %i.fp, align 8, !dbg !234972
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !234972
  store <2 x ptr> %i.fo, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !234972
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !234972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, i64 40, i1 false), !dbg !234972
  br label %bb.bc, !dbg !234974

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !234970, !noalias !234958
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234975
  store ptr %.sroa.553.8.copyload55, ptr %i.fq, align 8, !dbg !234975
  br label %bb.bc, !dbg !234977

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !234978
  store i64 %storemerge, ptr %0, align 8, !dbg !234978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !234915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !234412
  br label %bb.bd, !dbg !234979

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !234395
  ret void, !dbg !234979

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !234980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !234412
  br label %bb.bd, !dbg !234410
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsw_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries20___pymethod_neq_u16__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !234982 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
  %.sroa.10.sroa.6 = alloca [40 x i8], align 8    ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !234983
  store ptr null, ptr %i.k, align 8, !dbg !234983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !234985
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1202, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.k, i64 noundef 1), !dbg !234985
  %i.l = load i64, ptr %i.j, align 8, !dbg !234987, !range !1924, !noundef !11
  %i.m = trunc nuw i64 %i.l to i1, !dbg !234989
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !234989

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !234990
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !234991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !234990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !234985
  store i64 1, ptr %0, align 8, !dbg !234991
  br label %bb.q, !dbg !234998

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !234985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !235000
  store ptr null, ptr %i.i, align 8, !dbg !235000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !235003
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !235005
  %i.p = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %.body, !dbg !235013 ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.q = icmp eq ptr %i.p, null, !dbg !235016
  br i1 %i.q, label %bb.d, label %._crit_edge70, !dbg !235018

bb.d:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !235019 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r)
          to label %bb.f unwind label %.body, !dbg !235021

.body:                                            ; preds = %._crit_edge70, %bb.c, %bb.d, %bb.i, %bb.j, %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.pr = load ptr, ptr %i.i, align 8, !dbg !235022, !alias.scope !235024
  %i.t = icmp eq ptr %.pr, null, !dbg !235022
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.e, !dbg !235022

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.t, !dbg !235027

bb.f:                                             ; preds = %bb.d
  %.sroa.012.0.copyload = load ptr, ptr %i.r, align 8, !dbg !235029
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !235029
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !235033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.215.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.513.0..sroa_idx, i64 56, i1 false), !dbg !235029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !235003
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235033
  store ptr %.sroa.012.0.copyload, ptr %i.u, align 8, !dbg !235033
  br label %bb.r, !dbg !235039

._crit_edge70:                                    ; preds = %.noexc
  %.pre = load ptr, ptr %i.k, align 8, !dbg !235003
  store ptr %i.p, ptr %i.i, align 8, !dbg !235041, !alias.scope !235043, !noalias !235048
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !235050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !235003
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumenttKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %.pre, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 3)
          to label %bb.g unwind label %.body, !dbg !235054

bb.g:                                             ; preds = %._crit_edge70
  %i.w = load i16, ptr %i.g, align 8, !dbg !235055, !range !110717, !noundef !11
  %i.x = trunc nuw i16 %i.w to i1, !dbg !235058
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !235058

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !235059
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !dbg !235066
  br label %bb.r, !dbg !235039

end_hunk_10
begin_hunk_11_@_RNvMsx_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries24___pymethod_new_opt_i32__:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235358
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !235358
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !235358
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !235358
  br label %bb.be, !dbg !235365

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !235364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !235367
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !235350
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !235350, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !235367
  %i.ag = load i64, ptr %i.q, align 8, !dbg !235368, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !235371
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !235372
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !235372 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !235371

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !235373
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !235374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !235373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !235380
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235374
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !235374
  br label %bb.be, !dbg !235365

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !235380
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !235350
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !235350, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !235381
  %i.am = load i8, ptr %i.p, align 8, !dbg !235382, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !235382
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !235385

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !235386
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !235393
  br label %bb.be, !dbg !235365

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !235394, !noalias !235399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !235394, !noalias !235399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !235394, !noalias !235404
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !235409, !noalias !235410
  %i.aq = load i64, ptr %i.n, align 8, !dbg !235411, !range !1924, !noalias !235404, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !235414
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !235415
  %.sroa.026.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !235415, !noalias !235404 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !235414

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn5182.i.i, !dbg !235416

bb.k:                                             ; preds = %bb.i
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !235417
  %i.at = load <2 x ptr>, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !dbg !235417, !noalias !235418
  %.sroa.17.16..sroa.527.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !235417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.527.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !235417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !235419, !noalias !235404
  br label %bb.ay, !dbg !235420

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !235419, !noalias !235404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !235422, !noalias !235404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !235424, !noalias !235404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !235425
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !235425
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i, label %bb.m, !dbg !235425

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !235438
  br label %bb.q, !dbg !235439

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !235442
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !235442

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !235443 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !235447, !noalias !235448 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !235458
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !235460

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !235438
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !235461

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !235463, !noalias !235465
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !235466
  %i.az = or disjoint i8 %i.ay, -64, !dbg !235467
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !235467
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !235467, !noalias !235465
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !235468, !noalias !235470
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !235471, !noalias !235472
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !235471
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !235471, !noalias !235472
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !235471
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !235471, !noalias !235472
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !235473

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !235474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !235476, !noalias !235479
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !235480

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !235482
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !235482
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !235483 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !235438
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !235461
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !235461
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !235461, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !235484, !noalias !235410
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i
  %.sroa.060.078.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.461.077.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.076.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread70.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.060.078.i.i, ptr %i.l, align 8, !dbg !235486, !noalias !235404
  %.sroa.463.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !235486
  store i64 %.sroa.461.077.i.i, ptr %.sroa.463.0..sroa_idx.i.i, align 8, !dbg !235486, !noalias !235404
  %.sroa.564.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !235486
  store i64 %.sroa.5.076.i.i, ptr %.sroa.564.0..sroa_idx.i.i, align 8, !dbg !235486, !noalias !235404
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes9Int32TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.026.0.copyload.i.i), !dbg !235487, !noalias !235410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !235488, !noalias !235404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !235489, !noalias !235404
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !235491, !noalias !235410

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !235492

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !235493, !range !1924, !noalias !235404, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !235496
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !235497
  %.sroa.032.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !235497, !noalias !235404 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !235496

bb.t:                                             ; preds = %bb.s
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !235498
  %i.bf = load <2 x ptr>, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !dbg !235498, !noalias !235418
  %.sroa.17.16..sroa.533.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !235498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.533.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !235498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !235499, !noalias !235404
  %i.bg = ptrtoint ptr %.sroa.032.0.copyload.i.i to i64, !dbg !235500
  br label %bb.aw, !dbg !235507

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !235499, !noalias !235404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !235489, !noalias !235404
  store ptr %.sroa.032.0.copyload.i.i, ptr %i.j, align 8, !dbg !235489, !noalias !235404
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !235509

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !235511, !noalias !235410

.thread.i.i:                                      ; preds = %.body.i, %.body.thread89.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm87.i.i, %.body.thread89.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val58.i.i = load ptr, ptr %i.j, align 8, !dbg !235512, !noalias !235404, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val58.i.i) #50, !dbg !235513, !noalias !235410
  br label %bb.ax, !dbg !235492

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !235511, !range !8288, !noalias !235404, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !235511
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !235511

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !235517, !noalias !235404 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !235518
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !235518

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !235522, !noalias !235418
  %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !235522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !235522
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !235523
  br label %bb.av, !dbg !235529

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !235531
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !235537

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !235538, !noalias !235404
  invoke void @_RNvXse_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numlNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !235539, !noalias !235410

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !235546, !noalias !235550
  br label %.thread.i.i, !dbg !235553

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !235554), !dbg !235557
  %i.by = load i64, ptr %i.bj, align 16, !dbg !235560, !alias.scope !235554, !noalias !235563, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !235560, !range !2549, !alias.scope !235554, !noalias !235563, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !235560
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !235564

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !235568, !noalias !235569

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !235570, !alias.scope !235575, !noalias !235563, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.by, !dbg !235578
  store i32 0, ptr %i.cc, align 4, !dbg !235580, !noalias !235410
  %i.cd = add i64 %i.by, 1, !dbg !235582          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !235582, !alias.scope !235575, !noalias !235563
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !235583, !range !1927, !alias.scope !235554, !noalias !235563, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !235583
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !235584

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !235585, !alias.scope !235588, !noalias !235563, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !235591
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !235591
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !235593, !alias.scope !235588, !noalias !235563 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !235585

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !235594
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !235594

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !235597, !noalias !235569

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !235598, !alias.scope !235603, !noalias !235563, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !235606
  store i8 0, ptr %i.cl, align 1, !dbg !235608, !noalias !235410
  %i.cm = add i64 %i.ci, 1, !dbg !235610          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !235610, !alias.scope !235603, !noalias !235563
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !235611, !alias.scope !235588, !noalias !235563
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !235612

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !235611
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !235613 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !235616
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !235616, !noalias !235618
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !235619, !alias.scope !235588, !noalias !235563, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !235624
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !235624 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !235625, !noalias !235618
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !235627, !noalias !235410, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !235628
  %i.cu = and i8 %i.ct, 7, !dbg !235628
  %i.cv = shl nuw i8 1, %i.cu, !dbg !235628
  %i.cw = xor i8 %i.cv, -1, !dbg !235630
  %i.cx = and i8 %i.cs, %i.cw, !dbg !235631
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !235632, !noalias !235410
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !235633, !alias.scope !235588, !noalias !235563, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !235633
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !235633, !alias.scope !235588, !noalias !235563
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !235634

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !235635), !dbg !235638, !noalias !235618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !235639, !noalias !235642
  %i.da = load i64, ptr %i.bi, align 16, !dbg !235643, !range !2549, !alias.scope !235650, !noalias !235563, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !235651), !dbg !235654, !noalias !235618
  %i.db = add nuw i64 %i.da, 7, !dbg !235655
  %i.dc = lshr i64 %i.db, 3, !dbg !235658         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !235659, !noalias !235664
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !235659, !noalias !235569

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !235659, !range !1924, !noalias !235664, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !235665
  %i.df = load i64, ptr %i.bp, align 8, !dbg !235666, !range !1927, !noalias !235664, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !235665, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !235667, !noalias !235664
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !235668, !noalias !235569

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !235668

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !235669, !noalias !235664, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !235670
  call void @llvm.assume(i1 %i.di), !dbg !235672, !noalias !235618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !235674, !noalias !235664
  store i64 %i.df, ptr %i.d, align 8, !dbg !235675, !alias.scope !235651, !noalias !235642
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !235675, !alias.scope !235651, !noalias !235642
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !235675, !alias.scope !235651, !noalias !235642
  %i.dj = icmp ult i64 %i.cd, 2305843009213693952, !dbg !235676
  call void @llvm.assume(i1 %i.dj), !dbg !235683, !noalias !235618
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !235684
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !235684

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !235687, !noalias !235642
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !235692
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !235692, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !235693, !noalias !235694

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !235695, !noalias !235694

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !235696, !noalias !235694

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !235697, !noalias !235694
  unreachable, !dbg !235697

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !235698, !noalias !235642, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !235713
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !235714 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !235719, !noalias !235694, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !235721
  %i.ds = and i8 %i.dr, 7, !dbg !235721
  %i.dt = shl nuw i8 1, %i.ds, !dbg !235721
  %i.du = xor i8 %i.dt, -1, !dbg !235724
  %i.dv = and i8 %i.dq, %i.du, !dbg !235725
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !235728, !noalias !235694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !235729, !noalias !235563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !235696, !noalias !235642
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !235638

.body.thread89.i.i:                               ; preds = %bb.at, %bb.aq
  %lpad.thr_comm87.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !235553

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !235730, !noalias !235550
  %i.dw = load i32, ptr %i.h, align 8, !dbg !235734, !range !114141, !noalias !235404, !noundef !11
  %i.dx = trunc nuw i32 %i.dw to i1, !dbg !235737
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !235737

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !235738
  %.sroa.5.8.copyload37 = load i64, ptr %i.dy, align 8, !dbg !235738, !noalias !235418
  %.sroa.12.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !235738
  %i.dz = load <2 x ptr>, ptr %.sroa.12.8..sroa_idx39, align 8, !dbg !235738, !noalias !235418
  %.sroa.17.8..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !235738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17.8..sroa_idx51, i64 40, i1 false), !dbg !235738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !235739, !noalias !235404
  br label %bb.av, !dbg !235553

bb.ap:                                            ; preds = %bb.an
  %i.ea = load i32, ptr %i.bh, align 4, !dbg !235740, !noalias !235404, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !235739, !noalias !235404
  %i.eb = load i64, ptr %i.bj, align 16, !dbg !235741, !alias.scope !235746, !noalias !235404, !noundef !11 ; 3 uses
  %i.ec = load i64, ptr %i.bi, align 16, !dbg !235741, !range !2549, !alias.scope !235746, !noalias !235404, !noundef !11
  %i.ed = icmp eq i64 %i.eb, %i.ec, !dbg !235741
  br i1 %i.ed, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !235749

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread89.i.i, !dbg !235755, !noalias !235410

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ee = load ptr, ptr %i.bk, align 8, !dbg !235756, !alias.scope !235761, !noalias !235404, !nonnull !11, !noundef !11
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.eb, !dbg !235764
  store i32 %i.ea, ptr %i.ef, align 4, !dbg !235766, !noalias !235410
  %i.eg = add i64 %i.eb, 1, !dbg !235768
  store i64 %i.eg, ptr %i.bj, align 16, !dbg !235768, !alias.scope !235761, !noalias !235404
  %i.eh = load i64, ptr %i.bl, align 8, !dbg !235769, !range !1927, !alias.scope !235746, !noalias !235404, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.eh, -9223372036854775808, !dbg !235769
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !235771

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.ei = load i64, ptr %i.bm, align 16, !dbg !235772, !alias.scope !235774, !noalias !235404, !noundef !11 ; 2 uses
  %i.ej = and i64 %i.ei, 7, !dbg !235777
  %i.ek = icmp eq i64 %i.ej, 0, !dbg !235777
  %i.el = load i64, ptr %i.bn, align 8, !dbg !235779, !alias.scope !235774, !noalias !235404 ; 4 uses
  br i1 %i.ek, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !235772

bb.as:                                            ; preds = %bb.ar
  %i.em = icmp eq i64 %i.el, %i.eh, !dbg !235780
  br i1 %i.em, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !235780

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread89.i.i, !dbg !235783, !noalias !235410

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.en = load ptr, ptr %i.bo, align 16, !dbg !235784, !alias.scope !235789, !noalias !235404, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el, !dbg !235792
  store i8 0, ptr %i.eo, align 1, !dbg !235794, !noalias !235410
  %i.ep = add i64 %i.el, 1, !dbg !235796          ; 2 uses
  store i64 %i.ep, ptr %i.bn, align 8, !dbg !235796, !alias.scope !235789, !noalias !235404
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !235797, !alias.scope !235774, !noalias !235404
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !235798

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eq = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ei, %bb.ar ], !dbg !235797
  %i.er = phi i64 [ %i.ep, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.el, %bb.ar ], !dbg !235799 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.er, 0, !dbg !235802
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !235802
  %i.es = load ptr, ptr %i.bo, align 16, !dbg !235804, !alias.scope !235774, !noalias !235404, !nonnull !11, !noundef !11
  %i.et = getelementptr i8, ptr %i.es, i64 %i.er, !dbg !235809
  %i.eu = getelementptr i8, ptr %i.et, i64 -1, !dbg !235809 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ], !dbg !235810
  %i.ev = load i8, ptr %i.eu, align 1, !dbg !235812, !noalias !235410, !noundef !11
  %i.ew = trunc i64 %i.eq to i8, !dbg !235813
  %i.ex = and i8 %i.ew, 7, !dbg !235813
  %i.ey = shl nuw i8 1, %i.ex, !dbg !235813
  %i.ez = or i8 %i.ev, %i.ey, !dbg !235815
  store i8 %i.ez, ptr %i.eu, align 1, !dbg !235816, !noalias !235410
  %i.fa = load i64, ptr %i.bm, align 16, !dbg !235817, !alias.scope !235774, !noalias !235404, !noundef !11
  %i.fb = add i64 %i.fa, 1, !dbg !235817
  store i64 %i.fb, ptr %i.bm, align 16, !dbg !235817, !alias.scope !235774, !noalias !235404
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !235818

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !235819, !noalias !235410
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !235823

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArraylE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !235511

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !235824, !noalias !235410
  br label %.thread.i.i, !dbg !235828

bb.au:                                            ; preds = %bb.ax
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !235416, !noalias !235410
  unreachable, !dbg !235416

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.5.8.copyload37, %bb.ao ], !dbg !235829
  %i.fd = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dz, %bb.ao ], !dbg !235829
  %.val56.i.i = load ptr, ptr %i.j, align 8, !dbg !235512, !noalias !235404, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val56.i.i) #50, !dbg !235830, !noalias !235410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !235512, !noalias !235404
  br label %bb.aw, !dbg !235512

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !235834
  %i.fe = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fd, %bb.av ], !dbg !235835
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes9Int32TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !235492, !noalias !235410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !235492, !noalias !235404
  br label %bb.ay, !dbg !235836

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn5182.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes9Int32TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !235492, !noalias !235410

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.026.0.copyload.i.i, %bb.k ]
  %i.ff = phi <2 x ptr> [ %i.fe, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !235838, !noalias !235399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !235838, !noalias !235399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !235839
  %i.fg = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !235842
  br label %bb.ba, !dbg !235849

bb.az:                                            ; preds = %bb.w
  %.val57.i.i = load ptr, ptr %i.j, align 8, !dbg !235512, !noalias !235404, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val57.i.i) #50, !dbg !235852, !noalias !235410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !235512, !noalias !235404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !235856, !noalias !235404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.f, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !235856, !noalias !235404
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes9Int32TypeEINtB4_14ChunkedBuilderlB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.f), !dbg !235857, !noalias !235410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !235858, !noalias !235404
  %i.fh = call { ptr, ptr } @_RNvXs2u_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_9Int32TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !235859, !noalias !235410 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0, !dbg !235859 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1, !dbg !235859 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ], !dbg !235863
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ], !dbg !235863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !235492, !noalias !235404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !235838, !noalias !235399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !235838, !noalias !235399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !235839
  store i64 0, ptr %i.o, align 8, !dbg !235876
  %.sroa.12.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !235876
  store ptr %i.fi, ptr %.sroa.12.8..sroa_idx41, align 8, !dbg !235876
  %.sroa.16.8..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !235876
  store ptr %i.fj, ptr %.sroa.16.8..sroa_idx47, align 8, !dbg !235876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !235877, !noalias !235882
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !235886, !noalias !235889
  %i.fk = load i64, ptr %i.b, align 8, !dbg !235877, !range !1924, !noalias !235882, !noundef !11
  %i.fl = trunc nuw i64 %i.fk to i1, !dbg !235890
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !235891
  %.sroa.553.8.copyload55 = load ptr, ptr %i.fm, align 8, !dbg !235891, !noalias !235892 ; 2 uses
  br i1 %i.fl, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !235890

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !235893
  %i.fn = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx57, align 8, !dbg !235893, !noalias !235892
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !235893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx57.sroa_idx, i64 40, i1 false), !dbg !235893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !235894, !noalias !235882
  br label %bb.ba, !dbg !235849

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.553.0 = phi ptr [ %i.fg, %bb.ay ], [ %.sroa.553.8.copyload55, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !235895
  %i.fo = phi <2 x ptr> [ %i.ff, %bb.ay ], [ %i.fn, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !235895
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235896
  store ptr %.sroa.553.0, ptr %i.fp, align 8, !dbg !235896
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !235896
  store <2 x ptr> %i.fo, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !235896
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !235896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.17, i64 40, i1 false), !dbg !235896
  br label %bb.bc, !dbg !235898

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !235894, !noalias !235882
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235899
  store ptr %.sroa.553.8.copyload55, ptr %i.fq, align 8, !dbg !235899
  br label %bb.bc, !dbg !235901

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !235902
  store i64 %storemerge, ptr %0, align 8, !dbg !235902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !235839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !235344
  br label %bb.bd, !dbg !235903

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !235327
  ret void, !dbg !235903

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !235904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !235344
  br label %bb.bd, !dbg !235342
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsy_NtNtCseeLknQCOKOd_13polars_python6series10comparisonNtB7_8PySeries20___pymethod_neq_u32__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !235906 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.10.sroa.6 = alloca [40 x i8], align 8    ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !235907
  store ptr null, ptr %i.k, align 8, !dbg !235907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !235909
  call void @_RINvMs5_NtNtCsbm5zPlkZccl_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1208, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.k, i64 noundef 1), !dbg !235909
  %i.l = load i64, ptr %i.j, align 8, !dbg !235911, !range !1924, !noundef !11
  %i.m = trunc nuw i64 %i.l to i1, !dbg !235913
  br i1 %i.m, label %bb.b, label %bb.c, !dbg !235913

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !235914
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !dbg !235914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !235909
  store i64 1, ptr %0, align 8, !dbg !235915
  br label %bb.q, !dbg !235922

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !235909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !235924
  store ptr null, ptr %i.i, align 8, !dbg !235924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !235927
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !235929
  %i.p = invoke noundef ptr @_RNvMNtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB2_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE21try_from_class_objectB11_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %.body, !dbg !235937 ; 3 uses

.noexc:                                           ; preds = %bb.c
  %i.q = icmp eq ptr %i.p, null, !dbg !235940
  br i1 %i.q, label %bb.d, label %._crit_edge69, !dbg !235942

bb.d:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !235943 ; 2 uses
  invoke void @_RNvXsn_NtCsbm5zPlkZccl_4pyo36pycellNtNtB7_3err5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.r)
          to label %bb.f unwind label %.body, !dbg !235945

.body:                                            ; preds = %._crit_edge69, %bb.c, %bb.d, %bb.i, %bb.j, %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  %.pr = load ptr, ptr %i.i, align 8, !dbg !235946, !alias.scope !235948
  %i.t = icmp eq ptr %.pr, null, !dbg !235946
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit, label %bb.e, !dbg !235946

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs5_NtNtCsbm5zPlkZccl_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsbm5zPlkZccl_4pyo37pyclass5guard12PyClassGuardNtNtCseeLknQCOKOd_13polars_python6series8PySeriesEEEB1Y_.exit unwind label %bb.t, !dbg !235951

bb.f:                                             ; preds = %bb.d
  %.sroa.011.0.copyload = load ptr, ptr %i.r, align 8, !dbg !235953
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !235953
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !235957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.214.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.512.0..sroa_idx, i64 56, i1 false), !dbg !235953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !235927
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235957
  store ptr %.sroa.011.0.copyload, ptr %i.u, align 8, !dbg !235957
  br label %bb.r, !dbg !235963

._crit_edge69:                                    ; preds = %.noexc
  %.pre = load ptr, ptr %i.k, align 8, !dbg !235927
  store ptr %i.p, ptr %i.i, align 8, !dbg !235965, !alias.scope !235967, !noalias !235972
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !235974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !235927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !235978
  invoke void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentmKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noundef nonnull %.pre, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 3)
          to label %bb.g unwind label %.body, !dbg !235978

bb.g:                                             ; preds = %._crit_edge69
  %i.w = load i32, ptr %i.g, align 8, !dbg !235979, !range !114141, !noundef !11
  %i.x = trunc nuw i32 %i.w to i1, !dbg !235982
  br i1 %i.x, label %bb.h, label %bb.i, !dbg !235982

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !235983
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !235984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false), !dbg !235983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !235990
  br label %bb.r, !dbg !235963

end_hunk_11
begin_hunk_12_@_RNvMsz_NtNtCseeLknQCOKOd_13polars_python6series12constructionNtB7_8PySeries24___pymethod_new_opt_i64__:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !236282
  store ptr %.sroa.026.0.copyload, ptr %i.ad, align 8, !dbg !236282
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !236282
  store i64 %.sroa.527.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8, !dbg !236282
  br label %bb.be, !dbg !236289

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !236288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !236291
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !236274
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !236274, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentRINtNtB6_8instance5BoundNtNtNtB6_5types3any5PyAnyEKb0_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 3), !dbg !236291
  %i.ag = load i64, ptr %i.q, align 8, !dbg !236292, !range !1924, !noundef !11
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !236295
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !236296
  %.sroa.033.0.copyload = load ptr, ptr %i.ai, align 8, !dbg !236296 ; 3 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !dbg !236295

bb.f:                                             ; preds = %bb.e
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !236297
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !236298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534.0..sroa_idx, i64 56, i1 false), !dbg !236297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !236304
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !236298
  store ptr %.sroa.033.0.copyload, ptr %i.aj, align 8, !dbg !236298
  br label %bb.be, !dbg !236289

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !236304
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !236274
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !236274, !nonnull !11, !noundef !11
  call void @_RINvNtNtCsbm5zPlkZccl_4pyo35impl_16extract_argument16extract_argumentbKb1_ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %i.al, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 6), !dbg !236305
  %i.am = load i8, ptr %i.p, align 8, !dbg !236306, !range !15679, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !236306
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !236309

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !236310
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !236311
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !dbg !236317
  br label %bb.be, !dbg !236289

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !236318, !noalias !236323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !236318, !noalias !236323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !236318, !noalias !236328
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload), !dbg !236333, !noalias !236334
  %i.aq = load i64, ptr %i.n, align 8, !dbg !236335, !range !1924, !noalias !236328, !noundef !11
  %i.ar = trunc nuw i64 %i.aq to i1, !dbg !236338
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !236339
  %.sroa.031.0.copyload.i.i = load i64, ptr %i.as, align 8, !dbg !236339, !noalias !236328 ; 2 uses
  br i1 %i.ar, label %bb.k, label %bb.l, !dbg !236338

bb.j:                                             ; preds = %bb.ax
  resume { ptr, i32 } %.pn6293.i.i, !dbg !236340

bb.k:                                             ; preds = %bb.i
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !236341
  %i.at = load <2 x ptr>, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !dbg !236341, !noalias !236342
  %.sroa.18.16..sroa.532.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !236341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.532.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !236341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !236343, !noalias !236328
  br label %bb.ay, !dbg !236344

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !236343, !noalias !236328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !236346, !noalias !236328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !236348, !noalias !236328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !236349
  %i.au = icmp eq i64 %.sroa.527.0.copyload, 0, !dbg !236349
  br i1 %i.au, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i, label %bb.m, !dbg !236349

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !236362
  br label %bb.q, !dbg !236363

bb.m:                                             ; preds = %bb.l
  %i.av = icmp ult i64 %.sroa.527.0.copyload, 25, !dbg !236366
  br i1 %i.av, label %bb.o, label %bb.n, !dbg !236366

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.sroa.527.0.copyload, i64 32), !dbg !236367 ; 2 uses
  %i.aw = call noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i), !dbg !236371, !noalias !236372 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !236382
  br i1 %i.ax, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i, label %bb.p, !dbg !236384

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !236362
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, !dbg !236385

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.e, i8 0, i64 23, i1 false), !dbg !236387, !noalias !236389
  %i.ay = trunc nuw nsw i64 %.sroa.527.0.copyload to i8, !dbg !236390
  %i.az = or disjoint i8 %i.ay, -64, !dbg !236391
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !236391
  store i8 %i.az, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !236391, !noalias !236389
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull readonly align 1 %.sroa.026.0.copyload, i64 %.sroa.527.0.copyload, i1 false), !dbg !236392, !noalias !236394
  %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i = load ptr, ptr %i.e, align 8, !dbg !236395, !noalias !236396
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !236395
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !236395, !noalias !236396
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !236395
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !236395, !noalias !236396
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !236397

bb.p:                                             ; preds = %bb.n
  %i.ba = or i64 %.sroa.0.0.i.i.i.i.i.i.i, -2882303761517117440, !dbg !236398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.026.0.copyload, i64 range(i64 25, 0) %.sroa.527.0.copyload, i1 false), !dbg !236400, !noalias !236403
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !dbg !236404

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.sroa.02.0.i.i.i = phi ptr [ %i.aw, %bb.p ], [ %.0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i, %bb.o ], !dbg !236406
  %.sroa.6.0.i.i.i = phi i64 [ %.sroa.527.0.copyload, %bb.p ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i, %bb.o ], !dbg !236406
  %.sroa.7.0.i.i.i = phi i64 [ %i.ba, %bb.p ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i, %bb.o ], !dbg !236407 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !236362
  %i.bb = and i64 %.sroa.7.0.i.i.i, -72057594037927936, !dbg !236385
  %or.cond.i.i = icmp eq i64 %i.bb, -2738188573441261568, !dbg !236385
  br i1 %or.cond.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i, label %bb.q, !dbg !236385, !prof !146530

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i
  call void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #54, !dbg !236408, !noalias !236334
  unreachable

bb.q:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i
  %.sroa.071.089.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i ], [ %.sroa.02.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.472.088.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i ], [ %.sroa.6.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  %.sroa.5.087.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECseeLknQCOKOd_13polars_python.exit.thread81.i.i ], [ %.sroa.7.0.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  store ptr %.sroa.071.089.i.i, ptr %i.l, align 8, !dbg !236410, !noalias !236328
  %.sroa.474.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !236410
  store i64 %.sroa.472.088.i.i, ptr %.sroa.474.0..sroa_idx.i.i, align 8, !dbg !236410, !noalias !236328
  %.sroa.575.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !236410
  store i64 %.sroa.5.087.i.i, ptr %.sroa.575.0..sroa_idx.i.i, align 8, !dbg !236410, !noalias !236328
  call void @_RNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB4_23PrimitiveChunkedBuilderNtNtBa_9datatypes9Int64TypeE3newCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([176 x i8]) align 16 captures(none) dereferenceable(176) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.031.0.copyload.i.i), !dbg !236411, !noalias !236334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !236412, !noalias !236328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !236413, !noalias !236328
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.033.0.copyload)
          to label %bb.s unwind label %bb.r, !dbg !236415, !noalias !236334

bb.r:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax, !dbg !236416

bb.s:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %i.k, align 8, !dbg !236417, !range !1924, !noalias !236328, !noundef !11
  %i.bd = trunc nuw i64 %i.bc to i1, !dbg !236420
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !236421
  %.sroa.037.0.copyload.i.i = load ptr, ptr %i.be, align 8, !dbg !236421, !noalias !236328 ; 2 uses
  br i1 %i.bd, label %bb.t, label %bb.u, !dbg !236420

bb.t:                                             ; preds = %bb.s
  %.sroa.538.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !236422
  %i.bf = load <2 x ptr>, ptr %.sroa.538.0..sroa_idx.i.i, align 8, !dbg !236422, !noalias !236342
  %.sroa.18.16..sroa.538.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !236422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.538.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !236422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !236423, !noalias !236328
  %i.bg = ptrtoint ptr %.sroa.037.0.copyload.i.i to i64, !dbg !236424
  br label %bb.aw, !dbg !236431

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !236423, !noalias !236328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !236413, !noalias !236328
  store ptr %.sroa.037.0.copyload.i.i, ptr %i.j, align 8, !dbg !236413, !noalias !236328
  %.sroa.212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 120 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !236433

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, %bb.u
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.w unwind label %bb.v, !dbg !236435, !noalias !236334

.thread.i.i:                                      ; preds = %.body.i, %.body.thread100.i.i, %.body.thread.i.i, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm98.i.i, %.body.thread100.i.i ], [ %i.bx, %.body.thread.i.i ]
  %.val69.i.i = load ptr, ptr %i.j, align 8, !dbg !236436, !noalias !236328, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val69.i.i) #50, !dbg !236437, !noalias !236334
  br label %bb.ax, !dbg !236416

bb.v:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.w:                                             ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i
  %i.bs = load i64, ptr %i.i, align 8, !dbg !236435, !range !8288, !noalias !236328, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.bs, 2, !dbg !236435
  br i1 %.not.i.i, label %bb.az, label %bb.x, !dbg !236435

bb.x:                                             ; preds = %bb.w
  %.sroa.212.0.copyload.i.i = load ptr, ptr %.sroa.212.0..sroa_idx.i.i, align 8, !dbg !236441, !noalias !236328 ; 6 uses
  %i.bt = trunc nuw i64 %i.bs to i1, !dbg !236442
  br i1 %i.bt, label %bb.y, label %bb.z, !dbg !236442

bb.y:                                             ; preds = %bb.x
  %i.bu = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !236446, !noalias !236342
  %.sroa.18.16..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !236446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.4.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !236446
  %i.bv = ptrtoint ptr %.sroa.212.0.copyload.i.i to i64, !dbg !236447
  br label %bb.av, !dbg !236453

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload.i.i) ]
  %i.bw = icmp eq ptr %.sroa.212.0.copyload.i.i, @_Py_NoneStruct, !dbg !236455
  br i1 %i.bw, label %bb.ab, label %bb.aa, !dbg !236461

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !236462, !noalias !236328
  invoke void @_RNvXsk_NtNtNtCsbm5zPlkZccl_4pyo311conversions3std3numxNtNtBb_10conversion12FromPyObject7extract(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noundef nonnull %.sroa.212.0.copyload.i.i)
          to label %bb.an unwind label %.body.thread.i.i, !dbg !236463, !noalias !236334

.body.thread.i.i:                                 ; preds = %bb.aa
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !236470, !noalias !236474
  br label %.thread.i.i, !dbg !236477

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !236478), !dbg !236481
  %i.by = load i64, ptr %i.bj, align 16, !dbg !236484, !alias.scope !236478, !noalias !236487, !noundef !11 ; 6 uses
  %i.bz = load i64, ptr %i.bi, align 16, !dbg !236484, !range !2549, !alias.scope !236478, !noalias !236487, !noundef !11
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !236484
  br i1 %i.ca, label %bb.ac, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i, !dbg !236488

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i unwind label %.loopexit.i, !dbg !236492, !noalias !236493

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i: ; preds = %bb.ac, %bb.ab
  %i.cb = load ptr, ptr %i.bk, align 8, !dbg !236494, !alias.scope !236499, !noalias !236487, !nonnull !11, !noundef !11
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.by, !dbg !236502
  store i64 0, ptr %i.cc, align 8, !dbg !236504, !noalias !236334
  %i.cd = add i64 %i.by, 1, !dbg !236506          ; 4 uses
  store i64 %i.cd, ptr %i.bj, align 16, !dbg !236506, !alias.scope !236499, !noalias !236487
  %i.ce = load i64, ptr %i.bl, align 8, !dbg !236507, !range !1927, !alias.scope !236478, !noalias !236487, !noundef !11 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ce, -9223372036854775808, !dbg !236507
  br i1 %.not.i1.i, label %bb.ag, label %bb.ad, !dbg !236508

bb.ad:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  %i.cf = load i64, ptr %i.bm, align 16, !dbg !236509, !alias.scope !236512, !noalias !236487, !noundef !11 ; 2 uses
  %i.cg = and i64 %i.cf, 7, !dbg !236515
  %i.ch = icmp eq i64 %i.cg, 0, !dbg !236515
  %i.ci = load i64, ptr %i.bn, align 8, !dbg !236517, !alias.scope !236512, !noalias !236487 ; 4 uses
  br i1 %i.ch, label %bb.ae, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !236509

bb.ae:                                            ; preds = %bb.ad
  %i.cj = icmp eq i64 %i.ci, %i.ce, !dbg !236518
  br i1 %i.cj, label %bb.af, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !236518

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.loopexit.i, !dbg !236521, !noalias !236493

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = load ptr, ptr %i.bo, align 16, !dbg !236522, !alias.scope !236527, !noalias !236487, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci, !dbg !236530
  store i8 0, ptr %i.cl, align 1, !dbg !236532, !noalias !236334
  %i.cm = add i64 %i.ci, 1, !dbg !236534          ; 2 uses
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !236534, !alias.scope !236527, !noalias !236487
  %.pre.i.i = load i64, ptr %i.bm, align 16, !dbg !236535, !alias.scope !236512, !noalias !236487
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i, !dbg !236536

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.ad
  %i.cn = phi i64 [ %.pre.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.cf, %bb.ad ], !dbg !236535
  %i.co = phi i64 [ %i.cm, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i ], [ %i.ci, %bb.ad ], !dbg !236537 ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0, !dbg !236540
  call void @llvm.assume(i1 %.not.i.i.i), !dbg !236540, !noalias !236542
  %i.cp = load ptr, ptr %i.bo, align 16, !dbg !236543, !alias.scope !236512, !noalias !236487, !nonnull !11, !noundef !11
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co, !dbg !236548
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1, !dbg !236548 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ], !dbg !236549, !noalias !236542
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !236551, !noalias !236334, !noundef !11
  %i.ct = trunc i64 %i.cn to i8, !dbg !236552
  %i.cu = and i8 %i.ct, 7, !dbg !236552
  %i.cv = shl nuw i8 1, %i.cu, !dbg !236552
  %i.cw = xor i8 %i.cv, -1, !dbg !236554
  %i.cx = and i8 %i.cs, %i.cw, !dbg !236555
  store i8 %i.cx, ptr %i.cr, align 1, !dbg !236556, !noalias !236334
  %i.cy = load i64, ptr %i.bm, align 16, !dbg !236557, !alias.scope !236512, !noalias !236487, !noundef !11
  %i.cz = add i64 %i.cy, 1, !dbg !236557
  store i64 %i.cz, ptr %i.bm, align 16, !dbg !236557, !alias.scope !236512, !noalias !236487
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !236558

bb.ag:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit3.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !236559), !dbg !236562, !noalias !236542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !236563, !noalias !236566
  %i.da = load i64, ptr %i.bi, align 16, !dbg !236567, !range !2549, !alias.scope !236574, !noalias !236487, !noundef !11
  call void @llvm.experimental.noalias.scope.decl(metadata !236575), !dbg !236578, !noalias !236542
  %i.db = add nuw i64 %i.da, 7, !dbg !236579
  %i.dc = lshr i64 %i.db, 3, !dbg !236582         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !236583, !noalias !236588
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.i, !dbg !236583, !noalias !236493

.noexc3.i:                                        ; preds = %bb.ag
  %i.dd = load i64, ptr %i.c, align 8, !dbg !236583, !range !1924, !noalias !236588, !noundef !11
  %i.de = trunc nuw i64 %i.dd to i1, !dbg !236589
  %i.df = load i64, ptr %i.bp, align 8, !dbg !236590, !range !1927, !noalias !236588, !noundef !11 ; 3 uses
  br i1 %i.de, label %bb.ah, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i, !dbg !236589, !prof !1928

bb.ah:                                            ; preds = %.noexc3.i
  %i.dg = load i64, ptr %i.bq, align 8, !dbg !236591, !noalias !236588
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.df, i64 %i.dg) #54
          to label %.noexc4.i unwind label %.loopexit.split-lp.i, !dbg !236592, !noalias !236493

.noexc4.i:                                        ; preds = %bb.ah
  unreachable, !dbg !236592

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i: ; preds = %.noexc3.i
  %i.dh = load ptr, ptr %i.bq, align 8, !dbg !236593, !noalias !236588, !nonnull !11, !noundef !11
  %i.di = icmp samesign ule i64 %i.dc, %i.df, !dbg !236594
  call void @llvm.assume(i1 %i.di), !dbg !236596, !noalias !236542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !236598, !noalias !236588
  store i64 %i.df, ptr %i.d, align 8, !dbg !236599, !alias.scope !236575, !noalias !236566
  store ptr %i.dh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !236599, !alias.scope !236575, !noalias !236566
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !dbg !236599, !alias.scope !236575, !noalias !236566
  %i.dj = icmp ult i64 %i.cd, 1152921504606846976, !dbg !236600
  call void @llvm.assume(i1 %i.dj), !dbg !236607, !noalias !236542
  %i.dk = icmp eq i64 %i.cd, 0, !dbg !236608
  br i1 %i.dk, label %.thread.i.i.i, label %bb.aj, !dbg !236608

bb.ai:                                            ; preds = %bb.aj
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !236611, !noalias !236566
  %i.dl = icmp ult i64 %i.by, %.pre.i.i.i, !dbg !236616
  br i1 %i.dl, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, label %.thread.i.i.i, !dbg !236616, !prof !132892

bb.aj:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.cd)
          to label %bb.ai unwind label %.loopexit5.i, !dbg !236617, !noalias !236618

.thread.i.i.i:                                    ; preds = %bb.ai, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @676) #54
          to label %bb.ak unwind label %.loopexit.split-lp6.i, !dbg !236619, !noalias !236618

bb.ak:                                            ; preds = %.thread.i.i.i
  unreachable

.loopexit5.i:                                     ; preds = %bb.aj
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp6.i:                            ; preds = %.thread.i.i.i
  %lpad.loopexit.split-lp8.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp6.i, %.loopexit5.i
  %lpad.phi9.i = phi { ptr, i32 } [ %lpad.loopexit7.i, %.loopexit5.i ], [ %lpad.loopexit.split-lp8.i, %.loopexit.split-lp6.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.d) #56
          to label %.body.i unwind label %bb.am, !dbg !236620, !noalias !236618

bb.am:                                            ; preds = %bb.al
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !236621, !noalias !236618
  unreachable, !dbg !236621

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.ai
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !236622, !noalias !236566, !nonnull !11, !noundef !11
  %i.do = lshr i64 %i.by, 3, !dbg !236637
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.do, !dbg !236638 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !236643, !noalias !236618, !noundef !11
  %i.dr = trunc i64 %i.by to i8, !dbg !236645
  %i.ds = and i8 %i.dr, 7, !dbg !236645
  %i.dt = shl nuw i8 1, %i.ds, !dbg !236645
  %i.du = xor i8 %i.dt, -1, !dbg !236648
  %i.dv = and i8 %i.dq, %i.du, !dbg !236649
  store i8 %i.dv, ptr %i.dp, align 1, !dbg !236652, !noalias !236618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !236653, !noalias !236487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !236620, !noalias !236566
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i, !dbg !236562

.body.thread100.i.i:                              ; preds = %bb.at, %bb.aq
  %lpad.thr_comm98.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i, !dbg !236477

bb.an:                                            ; preds = %bb.aa
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload.i.i) #50, !dbg !236654, !noalias !236474
  %i.dw = load i64, ptr %i.h, align 8, !dbg !236658, !range !1924, !noalias !236328, !noundef !11
  %i.dx = trunc nuw i64 %i.dw to i1, !dbg !236661
  %.sroa.049.0.copyload.i.i = load i64, ptr %i.bh, align 8, !dbg !236662, !noalias !236328 ; 2 uses
  br i1 %i.dx, label %bb.ao, label %bb.ap, !dbg !236661

bb.ao:                                            ; preds = %bb.an
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !236663
  %i.dy = load <2 x ptr>, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !dbg !236663, !noalias !236342
  %.sroa.18.16..sroa.550.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !236663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.16..sroa.550.0..sroa_idx.i.i.sroa_idx, i64 40, i1 false), !dbg !236663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !236664, !noalias !236328
  br label %bb.av, !dbg !236477

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !236664, !noalias !236328
  %i.dz = load i64, ptr %i.bj, align 16, !dbg !236665, !alias.scope !236670, !noalias !236328, !noundef !11 ; 3 uses
  %i.ea = load i64, ptr %i.bi, align 16, !dbg !236665, !range !2549, !alias.scope !236670, !noalias !236328, !noundef !11
  %i.eb = icmp eq i64 %i.dz, %i.ea, !dbg !236665
  br i1 %i.eb, label %bb.aq, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !236673

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bi)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %.body.thread100.i.i, !dbg !236679, !noalias !236334

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.ec = load ptr, ptr %i.bk, align 8, !dbg !236680, !alias.scope !236685, !noalias !236328, !nonnull !11, !noundef !11
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dz, !dbg !236688
  store i64 %.sroa.049.0.copyload.i.i, ptr %i.ed, align 8, !dbg !236690, !noalias !236334
  %i.ee = add i64 %i.dz, 1, !dbg !236692
  store i64 %i.ee, ptr %i.bj, align 16, !dbg !236692, !alias.scope !236685, !noalias !236328
  %i.ef = load i64, ptr %i.bl, align 8, !dbg !236693, !range !1927, !alias.scope !236670, !noalias !236328, !noundef !11 ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.ef, -9223372036854775808, !dbg !236693
  br i1 %.not2.i.i.i, label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, label %bb.ar, !dbg !236695

bb.ar:                                            ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  %i.eg = load i64, ptr %i.bm, align 16, !dbg !236696, !alias.scope !236698, !noalias !236328, !noundef !11 ; 2 uses
  %i.eh = and i64 %i.eg, 7, !dbg !236701
  %i.ei = icmp eq i64 %i.eh, 0, !dbg !236701
  %i.ej = load i64, ptr %i.bn, align 8, !dbg !236703, !alias.scope !236698, !noalias !236328 ; 4 uses
  br i1 %i.ei, label %bb.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !236696

bb.as:                                            ; preds = %bb.ar
  %i.ek = icmp eq i64 %i.ej, %i.ef, !dbg !236704
  br i1 %i.ek, label %bb.at, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, !dbg !236704

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i unwind label %.body.thread100.i.i, !dbg !236707, !noalias !236334

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i: ; preds = %bb.at, %bb.as
  %i.el = load ptr, ptr %i.bo, align 16, !dbg !236708, !alias.scope !236713, !noalias !236328, !nonnull !11, !noundef !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ej, !dbg !236716
  store i8 0, ptr %i.em, align 1, !dbg !236718, !noalias !236334
  %i.en = add i64 %i.ej, 1, !dbg !236720          ; 2 uses
  store i64 %i.en, ptr %i.bn, align 8, !dbg !236720, !alias.scope !236713, !noalias !236328
  %.pre7.i.i.i = load i64, ptr %i.bm, align 16, !dbg !236721, !alias.scope !236698, !noalias !236328
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, !dbg !236722

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i, %bb.ar
  %i.eo = phi i64 [ %.pre7.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.eg, %bb.ar ], !dbg !236721
  %i.ep = phi i64 [ %i.en, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCseeLknQCOKOd_13polars_python.exit.i5.i.i.i ], [ %i.ej, %bb.ar ], !dbg !236723 ; 2 uses
  %.not.i4.i.i.i = icmp ne i64 %i.ep, 0, !dbg !236726
  call void @llvm.assume(i1 %.not.i4.i.i.i), !dbg !236726
  %i.eq = load ptr, ptr %i.bo, align 16, !dbg !236728, !alias.scope !236698, !noalias !236328, !nonnull !11, !noundef !11
  %i.er = getelementptr i8, ptr %i.eq, i64 %i.ep, !dbg !236733
  %i.es = getelementptr i8, ptr %i.er, i64 -1, !dbg !236733 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ], !dbg !236734
  %i.et = load i8, ptr %i.es, align 1, !dbg !236736, !noalias !236334, !noundef !11
  %i.eu = trunc i64 %i.eo to i8, !dbg !236737
  %i.ev = and i8 %i.eu, 7, !dbg !236737
  %i.ew = shl nuw i8 1, %i.ev, !dbg !236737
  %i.ex = or i8 %i.et, %i.ew, !dbg !236739
  store i8 %i.ex, ptr %i.es, align 1, !dbg !236740, !noalias !236334
  %i.ey = load i64, ptr %i.bm, align 16, !dbg !236741, !alias.scope !236698, !noalias !236328, !noundef !11
  %i.ez = add i64 %i.ey, 1, !dbg !236741
  store i64 %i.ez, ptr %i.bm, align 16, !dbg !236741, !alias.scope !236698, !noalias !236328
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !236742

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE13init_validityCseeLknQCOKOd_13polars_python.exit.i.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i.i
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !236743, !noalias !236334
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge, !dbg !236747

_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i.backedge: ; preds = %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit6.i.i.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxE8push_mutCseeLknQCOKOd_13polars_python.exit.i.i.i
  br label %_RNvMs3_NtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive7mutableINtB5_21MutablePrimitiveArrayxE4pushCseeLknQCOKOd_13polars_python.exit.i.i, !dbg !236435

.loopexit.i:                                      ; preds = %bb.ag, %bb.af, %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.al
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi9.i, %bb.al ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NoneStruct) #50, !dbg !236748, !noalias !236334
  br label %.thread.i.i, !dbg !236752

bb.au:                                            ; preds = %bb.ax
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !236340, !noalias !236334
  unreachable, !dbg !236340

bb.av:                                            ; preds = %bb.ao, %bb.y
  %.sroa.5.0 = phi i64 [ %i.bv, %bb.y ], [ %.sroa.049.0.copyload.i.i, %bb.ao ], !dbg !236753
  %i.fb = phi <2 x ptr> [ %i.bu, %bb.y ], [ %i.dy, %bb.ao ], !dbg !236754
  %.val67.i.i = load ptr, ptr %i.j, align 8, !dbg !236436, !noalias !236328, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val67.i.i) #50, !dbg !236755, !noalias !236334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !236436, !noalias !236328
  br label %bb.aw, !dbg !236436

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.sroa.5.1 = phi i64 [ %i.bg, %bb.t ], [ %.sroa.5.0, %bb.av ], !dbg !236759
  %i.fc = phi <2 x ptr> [ %i.bf, %bb.t ], [ %i.fb, %bb.av ], !dbg !236760
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes9Int64TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m), !dbg !236416, !noalias !236334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !236416, !noalias !236328
  br label %bb.ay, !dbg !236761

bb.ax:                                            ; preds = %.thread.i.i, %bb.r
  %.pn6293.i.i = phi { ptr, i32 } [ %.pn.i.i, %.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.r ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBP_9datatypes9Int64TypeEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(176) %i.m) #56
          to label %bb.j unwind label %bb.au, !dbg !236416, !noalias !236334

bb.ay:                                            ; preds = %bb.k, %bb.aw
  %.sroa.5.2.ph = phi i64 [ %.sroa.5.1, %bb.aw ], [ %.sroa.031.0.copyload.i.i, %bb.k ]
  %i.fd = phi <2 x ptr> [ %i.fc, %bb.aw ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !236763, !noalias !236323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !236763, !noalias !236323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !236764
  %i.fe = inttoptr i64 %.sroa.5.2.ph to ptr, !dbg !236767
  br label %bb.ba, !dbg !236774

bb.az:                                            ; preds = %bb.w
  %.val68.i.i = load ptr, ptr %i.j, align 8, !dbg !236436, !noalias !236328, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val68.i.i) #50, !dbg !236777, !noalias !236334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !236436, !noalias !236328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !236781, !noalias !236328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.f, ptr noundef nonnull align 16 dereferenceable(176) %i.m, i64 176, i1 false), !dbg !236781, !noalias !236328
  call void @_RNvXNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitiveINtB2_23PrimitiveChunkedBuilderNtNtB8_9datatypes9Int64TypeEINtB4_14ChunkedBuilderxB1B_E6finishCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(176) %i.f), !dbg !236782, !noalias !236334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !236783, !noalias !236328
  %i.ff = call { ptr, ptr } @_RNvXs2v_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_9Int64TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g), !dbg !236784, !noalias !236334 ; 2 uses
  %i.fg = extractvalue { ptr, ptr } %i.ff, 0, !dbg !236784 ; 2 uses
  %i.fh = extractvalue { ptr, ptr } %i.ff, 1, !dbg !236784 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ], !dbg !236788
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fh) ], !dbg !236788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !236416, !noalias !236328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !236763, !noalias !236323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !236763, !noalias !236323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !236764
  store i64 0, ptr %i.o, align 8, !dbg !236801
  %.sroa.12.8..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !236801
  store ptr %i.fg, ptr %.sroa.12.8..sroa_idx38, align 8, !dbg !236801
  %.sroa.17.8..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !236801
  store ptr %i.fh, ptr %.sroa.17.8..sroa_idx43, align 8, !dbg !236801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !236802, !noalias !236807
  call void @_RNvMNtCsbm5zPlkZccl_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCseeLknQCOKOd_13polars_python6series8PySeriesE19create_class_objectB15_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !dbg !236811, !noalias !236814
  %i.fi = load i64, ptr %i.b, align 8, !dbg !236802, !range !1924, !noalias !236807, !noundef !11
  %i.fj = trunc nuw i64 %i.fi to i1, !dbg !236815
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !236816
  %.sroa.549.8.copyload51 = load ptr, ptr %i.fk, align 8, !dbg !236816, !noalias !236817 ; 2 uses
  br i1 %i.fj, label %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, label %bb.bb, !dbg !236815

_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread: ; preds = %bb.az
  %.sroa.10.8..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !236818
  %i.fl = load <2 x ptr>, ptr %.sroa.10.8..sroa_idx53, align 8, !dbg !236818, !noalias !236817
  %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !236818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6.0..sroa.10.8..sroa_idx53.sroa_idx, i64 40, i1 false), !dbg !236818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !236819, !noalias !236807
  br label %bb.ba, !dbg !236774

bb.ba:                                            ; preds = %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread, %bb.ay
  %.sroa.549.0 = phi ptr [ %i.fe, %bb.ay ], [ %.sroa.549.8.copyload51, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !236820
  %i.fm = phi <2 x ptr> [ %i.fd, %bb.ay ], [ %i.fl, %_RNvYNtNtCseeLknQCOKOd_13polars_python6series8PySeriesNtNtCsbm5zPlkZccl_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_.exit.thread ], !dbg !236820
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !236821
  store ptr %.sroa.549.0, ptr %i.fn, align 8, !dbg !236821
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !236821
  store <2 x ptr> %i.fm, ptr %.sroa.560.0..sroa_idx, align 8, !dbg !236821
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !236821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.762.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18, i64 40, i1 false), !dbg !236821
  br label %bb.bc, !dbg !236823

bb.bb:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !236819, !noalias !236807
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !236824
  store ptr %.sroa.549.8.copyload51, ptr %i.fo, align 8, !dbg !236824
  br label %bb.bc, !dbg !236826

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi i64 [ 0, %bb.bb ], [ 1, %bb.ba ], !dbg !236827
  store i64 %storemerge, ptr %0, align 8, !dbg !236827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !236764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !236268
  br label %bb.bd, !dbg !236828

bb.bd:                                            ; preds = %bb.b, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !236251
  ret void, !dbg !236828

bb.be:                                            ; preds = %bb.h, %bb.f, %bb.d
  store i64 1, ptr %0, align 8, !dbg !236829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !236268
  br label %bb.bd, !dbg !236266
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNCNvNtCseeLknQCOKOd_13polars_python10on_startup21register_startup_deps019object_array_getter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3) unnamed_addr #1 !dbg !236831 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !236836
  %i.c = load ptr, ptr %i.b, align 8, !dbg !236836, !invariant.load !11, !nonnull !11
  %i.d = tail call { ptr, ptr } %i.c(ptr noundef nonnull %1) #55, !dbg !236837 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0, !dbg !236837 ; 3 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1, !dbg !236837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !236838
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !236841
  %i.h = load ptr, ptr %i.g, align 8, !dbg !236841, !invariant.load !11, !nonnull !11
  call void %i.h(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.e) #55, !dbg !236844
  %i.i = load i128, ptr %i.a, align 16, !dbg !236845, !noundef !11
  %i.j = icmp eq i128 %i.i, -87226302786201066869452725942085160739, !dbg !236854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !236838
  br i1 %i.j, label %bb.c, label %bb.b, !dbg !236855, !prof !17433

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1213) #59, !dbg !236856
  unreachable, !dbg !236856

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.k = call noundef align 8 ptr @_RNvMs0_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6objectINtB5_11ObjectArrayNtNtCseeLknQCOKOd_13polars_python10conversion11ObjectValueE3getB1j_(ptr noundef nonnull align 8 %i.e, i64 noundef %3), !dbg !236859 ; 2 uses
  %.not = icmp eq ptr %i.k, null, !dbg !236861
  br i1 %.not, label %bb.e, label %bb.d, !dbg !236864

bb.d:                                             ; preds = %bb.c
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !236865
  store ptr %i.k, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !236865
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !236865
  store ptr @1216, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !236865
  br label %bb.e, !dbg !236867

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i8 [ 27, %bb.d ], [ 35, %bb.c ], !dbg !236868
  store i8 %.sink, ptr %0, align 16, !dbg !236868
  ret void, !dbg !236869
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNCNvNtCseeLknQCOKOd_13polars_python10on_startup21register_startup_deps08with_gil(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !236870 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !236871
  %.val = load ptr, ptr %i.b, align 8, !dbg !236871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !236872
  %i.c = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !236875
  store i32 %i.c, ptr %i.a, align 4, !dbg !236875
  invoke void %.val(ptr noundef nonnull %0) #55
          to label %_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNCNvNtCseeLknQCOKOd_13polars_python10on_startup21register_startup_deps08with_gil0uEB10_.exit unwind label %bb.b, !dbg !236876, !inline_history !236881

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo38internal5state11AttachGuardECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.c, !dbg !236882

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !236884
  unreachable, !dbg !236884

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo38internal5state11AttachGuardECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.d, !dbg !236884

_RINvMs_NtCsbm5zPlkZccl_4pyo36markerNtB5_6Python6attachNCNvNCNvNtCseeLknQCOKOd_13polars_python10on_startup21register_startup_deps08with_gil0uEB10_.exit: ; preds = %bb.a
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.a), !dbg !236885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !236887
  ret void, !dbg !236888
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCseeLknQCOKOd_13polars_python10on_startup16warning_function(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i8 noundef range(i8 0, 4) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !236889 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %1, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236890), !dbg !236893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !236894, !noalias !236890
  %i.i = tail call noundef i32 @_RNvMNtNtCsbm5zPlkZccl_4pyo38internal5stateNtB2_11AttachGuard6attach(), !dbg !236897, !noalias !236890
  store i32 %i.i, ptr %i.f, align 4, !dbg !236897, !noalias !236890
end_hunk_12
begin_hunk_13_@_RNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction16get_schema_names:bb.a
_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python.exit.i31: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECseeLknQCOKOd_13polars_python.exit.i.i.i.i30
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtB7_6string6StringuEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.o), !dbg !244271, !noalias !243992
  br label %_RNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction36infer_schema_names_from_mapping_data.exit, !dbg !244063

bb.cj:                                            ; preds = %.thread.i23, %bb.at
  %.pn5378.i = phi { ptr, i32 } [ %.pn51.i, %.thread.i23 ], [ %lpad.thr_comm.split-lp.i17, %bb.at ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(64) %i.o) #56
          to label %common.resume unwind label %bb.bz, !dbg !244005, !noalias !243992

_RNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction36infer_schema_names_from_mapping_data.exit: ; preds = %._crit_edge.i36, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3set8IndexSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python.exit.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !244005, !noalias !243999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !244063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !244063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !244063
  br label %bb.d, !dbg !243991
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction16mappings_to_rows(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !244273 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 16               ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 8 uses
  %i.q = alloca [72 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [48 x i8], align 16               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [72 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !244274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !244276
  call void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3len(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1), !dbg !244277
  %i.y = load i64, ptr %i.w, align 8, !dbg !244278, !range !1924, !noundef !11
  %i.z = trunc nuw i64 %i.y to i1, !dbg !244280
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !244281
  %.sroa.039.0.copyload = load i64, ptr %i.aa, align 8, !dbg !244281 ; 3 uses
  br i1 %i.z, label %bb.b, label %bb.c, !dbg !244280

bb.b:                                             ; preds = %bb.a
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !244282
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !244283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.242.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.540.0..sroa_idx, i64 56, i1 false), !dbg !244282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !244290
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !244283
  store i64 %.sroa.039.0.copyload, ptr %i.ab, align 8, !dbg !244283
  store i64 1, ptr %0, align 8, !dbg !244283
  br label %bb.v, !dbg !244291

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !244290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !244293
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.039.0.copyload, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !244293
  %i.ac = load i64, ptr %i.f, align 8, !dbg !244293, !range !1924, !noundef !11
  %i.ad = trunc nuw i64 %i.ac to i1, !dbg !244302
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !244303
  %i.af = load i64, ptr %i.ae, align 8, !dbg !244303, !range !1927, !noundef !11 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !244303 ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.e, !dbg !244302, !prof !1928

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !244304
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #54, !dbg !244305
  unreachable, !dbg !244305

bb.e:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ag, align 8, !dbg !244307, !nonnull !11, !noundef !11
  %i.aj = icmp ule i64 %.sroa.039.0.copyload, %i.af, !dbg !244308
  tail call void @llvm.assume(i1 %i.aj), !dbg !244312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !244315
  store i64 %i.af, ptr %i.x, align 8, !dbg !244316
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !244316 ; 3 uses
  store ptr %i.ai, ptr %i.ak, align 8, !dbg !244316
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !244316 ; 5 uses
  store i64 0, ptr %i.al, align 8, !dbg !244316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !244317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !244319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !244320
  store i8 0, ptr %i.t, align 16, !dbg !244320
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.t, i64 noundef %3)
          to label %bb.g unwind label %.body91.thread102, !dbg !244321

bb.f:                                             ; preds = %.body89
  br i1 %.sroa.036.2, label %.body91.thread, label %common.resume, !dbg !244323

.body91.thread102:                                ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit.i, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body91.thread, !dbg !244323

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !244319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !dbg !244324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !244327
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !244328
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %3, !dbg !244330
  store ptr %2, ptr %i.r, align 8, !dbg !244339
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !244339
  store ptr %i.am, ptr %i.an, align 8, !dbg !244339
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !244339
  store ptr %i.a, ptr %i.ao, align 8, !dbg !244339
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB18_5types6string8PyStringEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2O_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCseeLknQCOKOd_13polars_python9dataframe12construction16mappings_to_rows0EE9from_iterB4o_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.i unwind label %bb.h, !dbg !244344

.body89:                                          ; preds = %bb.bp, %bb.h, %bb.j
  %.sroa.036.2 = phi i1 [ true, %bb.j ], [ %.sroa.036.3, %bb.h ], [ true, %bb.bp ], !dbg !244351
  %.pn70 = phi { ptr, i32 } [ %.pn68, %bb.j ], [ %i.ap, %bb.h ], [ %i.di, %bb.bp ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.v) #56
          to label %bb.f unwind label %bb.bb, !dbg !244352

bb.h:                                             ; preds = %bb.bq, %bb.t, %bb.g
  %.sroa.036.3 = phi i1 [ true, %bb.bq ], [ false, %bb.t ], [ true, %bb.g ], !dbg !244353
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !244354
  invoke void @_RNvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.l unwind label %bb.k, !dbg !244356

bb.j:                                             ; preds = %bb.p, %bb.k
  %.pn68 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %.pn66, %bb.p ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1i_5types6string8PyStringEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.s) #56
          to label %.body89 unwind label %bb.bb, !dbg !244357

bb.k:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %i.q, align 8, !dbg !244358, !range !1924, !noundef !11
  %i.as = trunc nuw i64 %i.ar to i1, !dbg !244360
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !244361
  %.sroa.045.0.copyload = load ptr, ptr %i.at, align 8, !dbg !244361 ; 2 uses
  br i1 %i.as, label %bb.m, label %bb.n, !dbg !244360

bb.m:                                             ; preds = %bb.l
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !244362
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !244363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.248.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.546.0..sroa_idx, i64 56, i1 false), !dbg !244362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !244369
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !244363
  store ptr %.sroa.045.0.copyload, ptr %i.au, align 8, !dbg !244363
  store i64 1, ptr %0, align 8, !dbg !244363
  br label %bb.bo, !dbg !244370

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !244369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !244354
  store ptr %.sroa.045.0.copyload, ptr %i.p, align 8, !dbg !244354
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.o, !dbg !244372

bb.o:                                             ; preds = %bb.bm, %bb.n
  invoke void @_RNvXs0_NtNtCsbm5zPlkZccl_4pyo35types8iteratorINtNtB9_8instance5BoundNtB5_10PyIteratorENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.r unwind label %bb.q, !dbg !244374

bb.p:                                             ; preds = %.body84, %bb.q
  %.pn66 = phi { ptr, i32 } [ %i.be, %bb.q ], [ %.pn64, %.body84 ]
  %.val81 = load ptr, ptr %i.p, align 8, !dbg !244375, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val81) #50, !dbg !244376
  br label %bb.j, !dbg !244380

bb.q:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %i.bf = load i64, ptr %i.o, align 8, !dbg !244374, !range !8288, !noundef !11 ; 2 uses
  %.not = icmp eq i64 %i.bf, 2, !dbg !244374
  br i1 %.not, label %bb.t, label %bb.s, !dbg !244374

bb.s:                                             ; preds = %bb.r
  %.sroa.212.0.copyload = load ptr, ptr %.sroa.212.0..sroa_idx, align 8, !dbg !244381 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !244382
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !244384
  br i1 %i.bg, label %bb.w, label %bb.x, !dbg !244384

bb.t:                                             ; preds = %bb.r
  %.val80 = load ptr, ptr %i.p, align 8, !dbg !244375, !nonnull !11, !noundef !11
  call void @_Py_DecRef(ptr noundef nonnull %.val80) #50, !dbg !244387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !244375
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !244391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !244392
  store i64 0, ptr %0, align 8, !dbg !244391
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1i_5types6string8PyStringEEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.s)
          to label %bb.u unwind label %bb.h, !dbg !244357

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !244357
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.v), !dbg !244352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !244352
  br label %bb.v, !dbg !244393

bb.v:                                             ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECseeLknQCOKOd_13polars_python.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !244323
  ret void, !dbg !244393

bb.w:                                             ; preds = %bb.s
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !244394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.254.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, i64 56, i1 false), !dbg !244400
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !244394
  store ptr %.sroa.212.0.copyload, ptr %i.bi, align 8, !dbg !244394
  store i64 1, ptr %0, align 8, !dbg !244394
  br label %bb.bn, !dbg !244401

bb.x:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.212.0.copyload) ]
  store ptr %.sroa.212.0.copyload, ptr %i.n, align 8, !dbg !244403
  %i.bj = icmp eq ptr %.sroa.212.0.copyload, @_Py_NoneStruct, !dbg !244406
  br i1 %i.bj, label %bb.z, label %bb.y, !dbg !244412

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !244413
  invoke fastcc void @_RINvMs_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyE4castNtNtBP_7mapping9PyMappingECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %bb.aa unwind label %.loopexit, !dbg !244414

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !244415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !244416
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.bh unwind label %.loopexit, !dbg !244416

.body84:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.bj, %bb.ax, %bb.ah, %bb.be
  %.sroa.212.0.copyload94 = phi ptr [ %.sroa.212.0.copyload, %bb.ah ], [ %.sroa.212.0.copyload, %bb.be ], [ @_Py_NoneStruct, %bb.bj ], [ %.sroa.212.0.copyload, %bb.ax ], [ %.sroa.212.0.copyload, %.loopexit ], [ %.sroa.212.0.copyload, %.loopexit.split-lp ]
  %.pn64 = phi { ptr, i32 } [ %i.bz, %bb.ah ], [ %.pn107, %bb.be ], [ %i.dd, %bb.bj ], [ %i.cq, %bb.ax ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.212.0.copyload94) #50, !dbg !244419
  br label %bb.p, !dbg !244423

.loopexit:                                        ; preds = %bb.y, %bb.z, %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body84

.loopexit.split-lp:                               ; preds = %bb.ab, %bb.ae, %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body84

bb.aa:                                            ; preds = %bb.y
  %i.bk = load ptr, ptr %i.l, align 8, !dbg !244424, !noundef !11 ; 2 uses
  %.not62 = icmp eq ptr %i.bk, null, !dbg !244424
  %i.bl = load ptr, ptr %i.av, align 8, !dbg !244426, !nonnull !11, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !244427
  br i1 %.not62, label %bb.ac, label %bb.ab, !dbg !244428

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !244429
  invoke void @_RNvXs1_NtNtCsbm5zPlkZccl_4pyo33err10cast_errorNtB7_5PyErrINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl)
          to label %bb.bg unwind label %.loopexit.split-lp, !dbg !244429

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !244436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !244438
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %3, i1 noundef zeroext false, i64 noundef 16, i64 noundef 48)
          to label %bb.ad unwind label %.loopexit, !dbg !244438

bb.ad:                                            ; preds = %bb.ac
  %i.bm = load i64, ptr %i.c, align 8, !dbg !244438, !range !1924, !noundef !11
  %i.bn = trunc nuw i64 %i.bm to i1, !dbg !244449
  %i.bo = load i64, ptr %i.aw, align 8, !dbg !244450, !range !1927, !noundef !11 ; 3 uses
  br i1 %i.bn, label %bb.ae, label %bb.af, !dbg !244449, !prof !1928

bb.ae:                                            ; preds = %bb.ad
  %i.bp = load i64, ptr %i.ax, align 8, !dbg !244451
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bo, i64 %i.bp) #54
          to label %bb.bf unwind label %.loopexit.split-lp, !dbg !244452

bb.af:                                            ; preds = %bb.ad
  %i.bq = load ptr, ptr %i.ax, align 8, !dbg !244454, !nonnull !11, !noundef !11
  %i.br = icmp samesign ule i64 %3, %i.bo, !dbg !244455
  call void @llvm.assume(i1 %i.br), !dbg !244459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !244461
  store i64 %i.bo, ptr %i.k, align 8, !dbg !244462
  store ptr %i.bq, ptr %i.ay, align 8, !dbg !244462
  store i64 0, ptr %i.az, align 8, !dbg !244462
  %i.bs = load ptr, ptr %i.ba, align 8, !dbg !244463, !nonnull !11, !noundef !11 ; 2 uses
  %i.bt = load i64, ptr %i.bb, align 8, !dbg !244479, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bt, 3, !dbg !244480
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx, !dbg !244480
  %.not110137 = icmp eq i64 %i.bt, 0, !dbg !244491
  br i1 %.not110137, label %._crit_edge, label %.lr.ph, !dbg !244493

.lr.ph:                                           ; preds = %bb.af, %bb.ba
  %.sroa.022.0138 = phi ptr [ %i.bv, %bb.ba ], [ %i.bs, %bb.af ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.022.0138, i64 8, !dbg !244500 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !244503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !244505
  invoke void @_RINvXs_NtNtCsbm5zPlkZccl_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods8get_itemRINtBF_2PyNtNtB7_6string8PyStringEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.022.0138)
          to label %bb.aj unwind label %.thread108, !dbg !244506

._crit_edge:                                      ; preds = %bb.ba, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !244509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !244510
  %i.bw = load i64, ptr %i.al, align 8, !dbg !244511, !alias.scope !244515, !noalias !244518, !noundef !11 ; 3 uses
  %i.bx = load i64, ptr %i.x, align 8, !dbg !244520, !range !2549, !alias.scope !244515, !noalias !244518, !noundef !11
  %i.by = icmp eq i64 %i.bw, %i.bx, !dbg !244523
  br i1 %i.by, label %bb.ag, label %bb.bd, !dbg !244523

bb.ag:                                            ; preds = %._crit_edge
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowE8grow_oneCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.bd unwind label %bb.ah, !dbg !244524, !noalias !244518

bb.ah:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #56
          to label %.body84 unwind label %bb.ai, !dbg !244525

bb.ai:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !244526
  unreachable, !dbg !244526

.thread108:                                       ; preds = %.lr.ph
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.be, !dbg !244527

bb.aj:                                            ; preds = %.lr.ph
  %i.cc = load i64, ptr %i.i, align 8, !dbg !244528, !range !1924, !noundef !11
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !244529
  %.sroa.057.0.copyload = load ptr, ptr %i.bc, align 8, !dbg !244530 ; 6 uses
  br i1 %i.cd, label %bb.ak, label %bb.al, !dbg !244529

bb.ak:                                            ; preds = %bb.aj
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !244531
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !244532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.260.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.558.0..sroa_idx, i64 56, i1 false), !dbg !244531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !244538
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !244532
  store ptr %.sroa.057.0.copyload, ptr %i.ce, align 8, !dbg !244532
  store i64 1, ptr %0, align 8, !dbg !244532
  br label %bb.aw, !dbg !244539

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !244538
  store ptr %.sroa.057.0.copyload, ptr %i.j, align 8, !dbg !244541
  %i.cf = icmp eq ptr %.sroa.057.0.copyload, @_Py_NoneStruct, !dbg !244544
  br i1 %i.cf, label %bb.an, label %bb.am, !dbg !244549

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtNtCseeLknQCOKOd_13polars_python10conversion9any_value22py_object_to_any_value(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, i1 noundef zeroext %4, i1 noundef zeroext true)
          to label %bb.ap unwind label %bb.ao, !dbg !244550

bb.an:                                            ; preds = %bb.al
  store i8 0, ptr %i.h, align 16, !dbg !244551
  br label %bb.as, !dbg !244552

bb.ao:                                            ; preds = %bb.am
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !244553

.thread:                                          ; preds = %bb.au, %bb.ao
  %eh.lpad-body83 = phi { ptr, i32 } [ %i.cg, %bb.ao ], [ %i.co, %bb.au ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.057.0.copyload) #50, !dbg !244554
  br label %bb.be, !dbg !244527

bb.ap:                                            ; preds = %bb.am
  %i.ch = load i64, ptr %i.b, align 16, !dbg !244558, !range !1924, !noundef !11
  %i.ci = trunc nuw i64 %i.ch to i1, !dbg !244560
  br i1 %i.ci, label %bb.aq, label %bb.ar, !dbg !244560

bb.aq:                                            ; preds = %bb.ap
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !244561
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !244562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, ptr noundef nonnull align 8 dereferenceable(64) %i.cj, i64 64, i1 false), !dbg !244568
  store i64 1, ptr %0, align 8, !dbg !244562
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.057.0.copyload) #50, !dbg !244569
  br label %bb.aw, !dbg !244573

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, ptr noundef nonnull align 16 dereferenceable(48) %i.bd, i64 48, i1 false), !dbg !244550
  br label %bb.as, !dbg !244552

bb.as:                                            ; preds = %bb.ar, %bb.an
  %i.cl = load i64, ptr %i.az, align 8, !dbg !244574, !alias.scope !244579, !noalias !244582, !noundef !11 ; 3 uses
  %i.cm = load i64, ptr %i.k, align 8, !dbg !244584, !range !2549, !alias.scope !244579, !noalias !244582, !noundef !11
  %i.cn = icmp eq i64 %i.cl, %i.cm, !dbg !244587
  br i1 %i.cn, label %bb.at, label %bb.ba, !dbg !244587

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ba unwind label %bb.au, !dbg !244588, !noalias !244582

bb.au:                                            ; preds = %bb.at
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.h) #56
          to label %.thread unwind label %bb.av, !dbg !244589

bb.av:                                            ; preds = %bb.au
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !244590
  unreachable, !dbg !244590

bb.aw:                                            ; preds = %bb.aq, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !244553
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ay unwind label %bb.ax, !dbg !244591

bb.ax:                                            ; preds = %bb.aw
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body84 unwind label %bb.az, !dbg !244593

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECseeLknQCOKOd_13polars_python.exit unwind label %.loopexit.split-lp, !dbg !244595

bb.az:                                            ; preds = %bb.ax
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !244591
  unreachable, !dbg !244591

bb.ba:                                            ; preds = %bb.as, %bb.at
  %i.cs = load ptr, ptr %i.ay, align 8, !dbg !244597, !alias.scope !244579, !noalias !244582, !nonnull !11, !noundef !11
  %i.ct = getelementptr inbounds nuw [48 x i8], ptr %i.cs, i64 %i.cl, !dbg !244602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ct, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !244604
  %i.cu = add i64 %i.cl, 1, !dbg !244606
  store i64 %i.cu, ptr %i.az, align 8, !dbg !244606, !alias.scope !244579, !noalias !244582
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.057.0.copyload) #50, !dbg !244607
end_hunk_13
