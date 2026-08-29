Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.04?download=true
inline.NumInlined: 680
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message14MessagePayloadNtB6_5Debug3fmtBC_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1427
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.l, ptr %i.e, align 8, !noalias !1427
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @149)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1427
  br label %_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_14MessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1427
  store ptr %i.f, ptr %i.d, align 8, !noalias !1427
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 6, ptr noundef nonnull readonly %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 7, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1427
  br label %_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_14MessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1427
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.p, ptr %i.c, align 8, !noalias !1427
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 15, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1427
  br label %_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_14MessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1427
  store ptr %i.f, ptr %i.b, align 8, !noalias !1427
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @157)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1427
  br label %_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_14MessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1427
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.s, ptr %i.a, align 8, !noalias !1427
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1427
  br label %_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_14MessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_14MessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.t, %bb.g ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB5_3u24NtB5_5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1428, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1428, !noundef !5 ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.d, 3                          ; 3 uses
  store i64 %i.g, ptr %i.c, align 8, !alias.scope !1428
  %i.h = icmp ugt i64 %i.d, -4
  %.not.i = icmp ugt i64 %i.g, %i.b
  %or.cond.i = or i1 %i.h, %.not.i
  br i1 %or.cond.i, label %bb.c, label %bb.e, !prof !526

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.g, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30, !noalias !1428
  unreachable

bb.d:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @144, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.58.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !alias.scope !1428, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i16, ptr %i.l, align 1
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw i32 %i.n, 16
  %.sroa.4.0.insert.ext = zext i8 %i.k to i32
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.0.insert.ext, 8
  %.sroa.4.0.insert.insert = or disjoint i32 %i.o, %.sroa.4.0.insert.shift
  %i.p = tail call i32 @llvm.bswap.i32(i32 %.sroa.4.0.insert.insert)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.p, ptr %i.q, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB5_3u24NtB5_5Codec6encode(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !5
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 3)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1431, !noundef !5 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1431, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  %.sroa.0.1.extract.shift = lshr i32 %i.b, 8
  %.sroa.0.1.extract.trunc = trunc nuw i32 %.sroa.0.1.extract.shift to i24
  store i24 %.sroa.0.1.extract.trunc, ptr %i.h, align 1
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !1431
  %i.i = add i64 %.pre.i, 3
  store i64 %i.i, ptr %i.c, align 8, !alias.scope !1431
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_7MessageINtNtCsj6eKBz9Db1c_4core7convert7TryFromNtB5_12PlainMessageE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [160 x i8], align 8               ; 6 uses
  %.sroa.23 = alloca [128 x i8], align 8          ; 5 uses
  %i.f = alloca [160 x i8], align 8               ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i16, ptr %i.g, align 8, !range !1262, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.j = load i16, ptr %i.i, align 2              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i8, ptr %i.k, align 4, !range !769, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.n, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1434
  store ptr %.val, ptr %i.d, align 8, !alias.scope !1438, !noalias !1441
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.val11, ptr %i.o, align 8, !alias.scope !1438, !noalias !1441
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.p, align 8, !alias.scope !1438, !noalias !1441
  switch i8 %i.l, label %.thread [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %.thread102
  ]

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1434
  br label %bb.o

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.s
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message12PlainMessageEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #25
          to label %common.resume unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1434
  invoke void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs3ccsNtB2_23ChangeCipherSpecPayloadNtNtB4_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.r = load i8, ptr %i.a, align 8, !range !532, !noalias !1434, !noundef !5
  %.not13.i = icmp eq i8 %i.r, -1
  br i1 %.not13.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1434
  invoke void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs5alertNtB2_19AlertMessagePayloadNtNtB4_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc12 unwind label %bb.b

.noexc12:                                         ; preds = %bb.d
  %i.s = load i8, ptr %i.c, align 8, !range !532, !noalias !1434, !noundef !5
  %.not.i = icmp eq i8 %i.s, -1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1434
  invoke void @_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload12read_version(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i16 noundef range(i16 0, 10) %i.h, i16 %i.j)
          to label %.noexc13 unwind label %bb.b

.noexc13:                                         ; preds = %bb.e
  %i.t = load i64, ptr %i.b, align 8, !range !533, !noalias !1434, !noundef !5 ; 2 uses
  %i.u = icmp eq i64 %i.t, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.k, label %bb.l

.thread102:                                       ; preds = %bb.a
  %i.w = ptrtoint ptr %.val to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1434
  br label %bb.s

bb.f:                                             ; preds = %.noexc
  %.sroa.10.8.copyload22 = load i64, ptr %i.a, align 8, !noalias !1443 ; 3 uses
  %.sroa.10.sroa.0.0.extract.trunc42 = trunc i64 %.sroa.10.8.copyload22 to i32
  %.sroa.10.sroa.0.sroa.0.0.extract.trunc59 = trunc i64 %.sroa.10.8.copyload22 to i8
  %.sroa.10.sroa.0.sroa.12.0.extract.shift70 = lshr i32 %.sroa.10.sroa.0.0.extract.trunc42, 8
  %.sroa.10.sroa.0.sroa.12.0.extract.trunc71 = trunc nuw i32 %.sroa.10.sroa.0.sroa.12.0.extract.shift70 to i24
  %.sroa.10.sroa.12.0.extract.shift51 = lshr i64 %.sroa.10.8.copyload22, 32
  %.sroa.10.sroa.12.0.extract.trunc52 = trunc nuw i64 %.sroa.10.sroa.12.0.extract.shift51 to i32
  %.sroa.19.8..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.19.8.copyload29 = load i64, ptr %.sroa.19.8..sroa_idx28, align 8, !noalias !1443
  %.sroa.21.8..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.21.8.copyload36 = load i64, ptr %.sroa.21.8..sroa_idx35, align 8, !noalias !1443
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.sroa.10.sroa.0.sroa.12.sroa.0.2 = phi i24 [ undef, %.noexc ], [ %.sroa.10.sroa.0.sroa.12.0.extract.trunc71, %bb.f ]
  %.sroa.10.sroa.0.sroa.0.2 = phi i8 [ undef, %.noexc ], [ %.sroa.10.sroa.0.sroa.0.0.extract.trunc59, %bb.f ]
  %.sroa.10.sroa.12.2 = phi i32 [ undef, %.noexc ], [ %.sroa.10.sroa.12.0.extract.trunc52, %bb.f ]
  %.sroa.21.2.a = phi i64 [ undef, %.noexc ], [ %.sroa.21.8.copyload36, %bb.f ]
  %.sroa.19.2 = phi i64 [ undef, %.noexc ], [ %.sroa.19.8.copyload29, %bb.f ]
  %.sink.i = phi i64 [ -9223372036854775805, %.noexc ], [ -2, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1434
  br label %bb.n

bb.h:                                             ; preds = %.noexc12
  %.sroa.10.8.copyload21 = load i64, ptr %i.c, align 8, !noalias !1443 ; 3 uses
  %.sroa.10.sroa.0.0.extract.trunc41 = trunc i64 %.sroa.10.8.copyload21 to i32
  %.sroa.10.sroa.0.sroa.0.0.extract.trunc58 = trunc i64 %.sroa.10.8.copyload21 to i8
  %.sroa.10.sroa.12.0.extract.shift49 = lshr i64 %.sroa.10.8.copyload21, 32
  %.sroa.10.sroa.12.0.extract.trunc50 = trunc nuw i64 %.sroa.10.sroa.12.0.extract.shift49 to i32
  %.sroa.19.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.19.8.copyload27 = load i64, ptr %.sroa.19.8..sroa_idx26, align 8, !noalias !1443
  %.sroa.21.8..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.21.8.copyload34 = load i64, ptr %.sroa.21.8..sroa_idx33, align 8, !noalias !1443
  br label %bb.j

bb.i:                                             ; preds = %.noexc12
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.06.0.copyload.i = load i32, ptr %i.x, align 1, !noalias !1434 ; 2 uses
  %.sroa.10.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.06.0.copyload.i to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.10.sroa.0.sroa.12.sroa.0.1.in.in = phi i32 [ %.sroa.06.0.copyload.i, %bb.i ], [ %.sroa.10.sroa.0.0.extract.trunc41, %bb.h ]
  %.sroa.10.sroa.0.sroa.0.1 = phi i8 [ %.sroa.10.sroa.0.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.10.sroa.0.sroa.0.0.extract.trunc58, %bb.h ]
  %.sroa.10.sroa.12.1 = phi i32 [ undef, %bb.i ], [ %.sroa.10.sroa.12.0.extract.trunc50, %bb.h ]
  %.sroa.21.1 = phi i64 [ undef, %bb.i ], [ %.sroa.21.8.copyload34, %bb.h ]
  %.sroa.19.1 = phi i64 [ undef, %bb.i ], [ %.sroa.19.8.copyload27, %bb.h ]
  %.sink15.i.a = phi i64 [ -9223372036854775808, %bb.i ], [ -2, %bb.h ]
  %.sroa.10.sroa.0.sroa.12.sroa.0.1.in = lshr i32 %.sroa.10.sroa.0.sroa.12.sroa.0.1.in.in, 8
  %.sroa.10.sroa.0.sroa.12.sroa.0.1 = trunc nuw i32 %.sroa.10.sroa.0.sroa.12.sroa.0.1.in to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1434
  br label %bb.n

bb.k:                                             ; preds = %.noexc13
  %.sroa.10.8.copyload20 = load i64, ptr %i.v, align 8, !noalias !1443
  %.sroa.19.8..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.19.8.copyload25 = load i64, ptr %.sroa.19.8..sroa_idx24, align 8, !noalias !1443
  %.sroa.21.8..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.21.8.copyload32 = load i64, ptr %.sroa.21.8..sroa_idx31, align 8, !noalias !1443
  br label %bb.m

bb.l:                                             ; preds = %.noexc13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(128) %i.v, i64 128, i1 false), !noalias !1443
  %i.y = ptrtoint ptr %.val to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in.in = phi i64 [ %.sroa.10.8.copyload20, %bb.k ], [ %i.y, %bb.l ] ; 3 uses
  %.sroa.21.0 = phi i64 [ %.sroa.21.8.copyload32, %bb.k ], [ %i.t, %bb.l ]
  %.sroa.19.0 = phi i64 [ %.sroa.19.8.copyload25, %bb.k ], [ %.val11, %bb.l ]
  %.sink16.i.a = phi i64 [ -2, %bb.k ], [ -1, %bb.l ]
  %.sroa.10.sroa.12.0.in = lshr i64 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in.in, 32
  %.sroa.10.sroa.12.0 = trunc nuw i64 %.sroa.10.sroa.12.0.in to i32
  %.sroa.10.sroa.0.sroa.0.0 = trunc i64 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in.in to i8
  %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in = trunc i64 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in.in to i32
  %.sroa.10.sroa.0.sroa.12.sroa.0.0.in = lshr i32 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in, 8
  %.sroa.10.sroa.0.sroa.12.sroa.0.0 = trunc nuw i32 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1434
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j, %bb.g
  %.sroa.10.sroa.0.sroa.12.sroa.0.3 = phi i24 [ %.sroa.10.sroa.0.sroa.12.sroa.0.0, %bb.m ], [ %.sroa.10.sroa.0.sroa.12.sroa.0.2, %bb.g ], [ %.sroa.10.sroa.0.sroa.12.sroa.0.1, %bb.j ] ; 2 uses
  %.sroa.10.sroa.0.sroa.0.3 = phi i8 [ %.sroa.10.sroa.0.sroa.0.0, %bb.m ], [ %.sroa.10.sroa.0.sroa.0.2, %bb.g ], [ %.sroa.10.sroa.0.sroa.0.1, %bb.j ] ; 2 uses
  %.sroa.10.sroa.12.3 = phi i32 [ %.sroa.10.sroa.12.0, %bb.m ], [ %.sroa.10.sroa.12.2, %bb.g ], [ %.sroa.10.sroa.12.1, %bb.j ] ; 2 uses
  %.sroa.21.3.a = phi i64 [ %.sroa.21.0, %bb.m ], [ %.sroa.21.2.a, %bb.g ], [ %.sroa.21.1, %bb.j ] ; 2 uses
  %.sroa.19.3 = phi i64 [ %.sroa.19.0, %bb.m ], [ %.sroa.19.2, %bb.g ], [ %.sroa.19.1, %bb.j ] ; 2 uses
  %.sroa.017.0 = phi i64 [ %.sink16.i.a, %bb.m ], [ %.sink.i, %bb.g ], [ %.sink15.i.a, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1434
  %i.z = icmp eq i64 %.sroa.017.0, -2
  br i1 %i.z, label %bb.o, label %bb.s

bb.o:                                             ; preds = %.thread, %bb.n
  %.sroa.19.3101 = phi i64 [ undef, %.thread ], [ %.sroa.19.3, %bb.n ]
  %.sroa.21.3100 = phi i64 [ undef, %.thread ], [ %.sroa.21.3.a, %bb.n ]
  %.sroa.10.sroa.12.399 = phi i32 [ undef, %.thread ], [ %.sroa.10.sroa.12.3, %bb.n ]
  %.sroa.10.sroa.0.sroa.0.398 = phi i8 [ 3, %.thread ], [ %.sroa.10.sroa.0.sroa.0.3, %bb.n ]
  %.sroa.10.sroa.0.sroa.12.sroa.0.397 = phi i24 [ undef, %.thread ], [ %.sroa.10.sroa.0.sroa.12.sroa.0.3, %bb.n ]
  %.sroa.10.sroa.0.sroa.12.0.insert.ext = zext i24 %.sroa.10.sroa.0.sroa.12.sroa.0.397 to i64
  %.sroa.10.sroa.0.sroa.12.0.insert.shift = shl nuw nsw i64 %.sroa.10.sroa.0.sroa.12.0.insert.ext, 8
  %.sroa.10.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.10.sroa.0.sroa.0.398 to i64
  %.sroa.10.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.10.sroa.0.sroa.12.0.insert.shift, %.sroa.10.sroa.0.sroa.0.0.insert.ext
  %.sroa.10.sroa.12.0.insert.ext = zext i32 %.sroa.10.sroa.12.399 to i64
  %.sroa.10.sroa.12.0.insert.shift = shl nuw i64 %.sroa.10.sroa.12.0.insert.ext, 32
  %.sroa.10.sroa.0.0.insert.insert = or disjoint i64 %.sroa.10.sroa.0.sroa.0.0.insert.insert, %.sroa.10.sroa.12.0.insert.shift
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.sroa.0.0.insert.insert, ptr %i.aa, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.3101, ptr %.sroa.489.0..sroa_idx, align 8
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.21.3100, ptr %.sroa.590.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ab = load i64, ptr %1, align 8, !range !4, !alias.scope !1444, !noundef !5
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message12PlainMessageEBH_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message12PlainMessageEBH_.exit.sink.split unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.v, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.v ], [ %i.ad, %bb.q ], [ %i.q, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %.thread102, %bb.n
  %.sroa.017.0114 = phi i64 [ -9223372036854775804, %.thread102 ], [ %.sroa.017.0, %bb.n ]
  %.sroa.19.3113 = phi i64 [ %i.w, %.thread102 ], [ %.sroa.19.3, %bb.n ]
  %.sroa.21.3112 = phi i64 [ %.val11, %.thread102 ], [ %.sroa.21.3.a, %bb.n ]
  %.sroa.10.sroa.12.3111 = phi i32 [ -1, %.thread102 ], [ %.sroa.10.sroa.12.3, %bb.n ]
  %.sroa.10.sroa.0.sroa.0.3110 = phi i8 [ -1, %.thread102 ], [ %.sroa.10.sroa.0.sroa.0.3, %bb.n ]
  %.sroa.10.sroa.0.sroa.12.sroa.0.3109 = phi i24 [ -1, %.thread102 ], [ %.sroa.10.sroa.0.sroa.12.sroa.0.3, %bb.n ]
  %.sroa.10.sroa.0.sroa.12.0.insert.ext62 = zext i24 %.sroa.10.sroa.0.sroa.12.sroa.0.3109 to i64
  %.sroa.10.sroa.0.sroa.12.0.insert.shift63 = shl nuw nsw i64 %.sroa.10.sroa.0.sroa.12.0.insert.ext62, 8
  %.sroa.10.sroa.0.sroa.0.0.insert.ext54 = zext i8 %.sroa.10.sroa.0.sroa.0.3110 to i64
  %.sroa.10.sroa.0.sroa.0.0.insert.insert56 = or disjoint i64 %.sroa.10.sroa.0.sroa.12.0.insert.shift63, %.sroa.10.sroa.0.sroa.0.0.insert.ext54
  %.sroa.10.sroa.12.0.insert.ext43 = zext i32 %.sroa.10.sroa.12.3111 to i64
  %.sroa.10.sroa.12.0.insert.shift44 = shl nuw i64 %.sroa.10.sroa.12.0.insert.ext43, 32
  %.sroa.10.sroa.0.0.insert.insert39 = or disjoint i64 %.sroa.10.sroa.0.sroa.0.0.insert.insert56, %.sroa.10.sroa.12.0.insert.shift44
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.23, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  store i64 %.sroa.017.0114, ptr %i.e, align 8
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.10.sroa.0.0.insert.insert39, ptr %.sroa.63.0..sroa_idx4, align 8
  %.sroa.63.sroa.7.0..sroa.63.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.19.3113, ptr %.sroa.63.sroa.7.0..sroa.63.0..sroa_idx4.sroa_idx, align 8
  %.sroa.63.sroa.8.0..sroa.63.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.21.3112, ptr %.sroa.63.sroa.8.0..sroa.63.0..sroa_idx4.sroa_idx, align 8
  invoke fastcc void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload10into_owned(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %i.f, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %i.e)
          to label %bb.t unwind label %bb.b

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i16 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i16 %i.j, ptr %.sroa.6.0..sroa_idx, align 2
  %i.af = load i64, ptr %1, align 8, !range !4, !alias.scope !1449, !noundef !5
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message12PlainMessageEBH_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message12PlainMessageEBH_.exit.sink.split unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message12PlainMessageEBH_.exit.sink.split: ; preds = %bb.u, %bb.p
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message12PlainMessageEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message12PlainMessageEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs7message12PlainMessageEBH_.exit.sink.split, %bb.t, %bb.o
  ret void

bb.x:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecmNtB5_5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1454, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1454, !noundef !5 ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 4
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.d, 4                          ; 3 uses
  store i64 %i.g, ptr %i.c, align 8, !alias.scope !1454
  %i.h = icmp ugt i64 %i.d, -5
  %.not.i = icmp ugt i64 %i.g, %i.b
  %or.cond.i = or i1 %i.h, %.not.i
  br i1 %or.cond.i, label %bb.c, label %bb.e, !prof !526

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.g, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30, !noalias !1454
  unreachable

bb.d:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @145, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.58.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !alias.scope !1454, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  %i.k = load i32, ptr %i.j, align 1
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.l, ptr %i.m, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecmNtB5_5Codec6encode(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i32, ptr %0, align 4, !noundef !5
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 4, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.c, ptr %.sroa.58.0..sroa_idx, align 8
  call void @_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterhKj4_EECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB5_7MessageINtNtCsj6eKBz9Db1c_4core7convert7TryFromNtNtB5_7inbound19InboundPlainMessageE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([168 x i8]) align 8 captures(none) dereferenceable(168) initializes((0, 32)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.23 = alloca [128 x i8], align 8          ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.f = load i16, ptr %i.e, align 2, !range !1262, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i16, ptr %i.g, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !769, !noundef !5
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1457
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !1461, !noalias !1464
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.m, ptr %i.n, align 8, !alias.scope !1461, !noalias !1464
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.o, align 8, !alias.scope !1461, !noalias !1464
  switch i8 %i.j, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread92
  ]

_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1457
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1457
  call void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs3ccsNtB2_23ChangeCipherSpecPayloadNtNtB4_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1466
  %i.p = load i8, ptr %i.a, align 8, !range !532, !noalias !1457, !noundef !5
  %.not13.i = icmp eq i8 %i.p, -1
  br i1 %.not13.i, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1457
  call void @_RNvXNtNtCs7ZUl82OSlxp_6rustls4msgs5alertNtB2_19AlertMessagePayloadNtNtB4_5codec5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1466
  %i.q = load i8, ptr %i.c, align 8, !range !532, !noalias !1457, !noundef !5
  %.not.i = icmp eq i8 %i.q, -1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1457
  call void @_RNvMs1O_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayload12read_version(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i16 noundef range(i16 0, 10) %i.f, i16 %i.h), !noalias !1466
  %i.r = load i64, ptr %i.b, align 8, !range !533, !noalias !1457, !noundef !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread92: ; preds = %bb.a
  %i.u = ptrtoint ptr %i.k to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1457
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %.sroa.10.8.copyload12 = load i64, ptr %i.a, align 8, !noalias !1467 ; 3 uses
  %.sroa.10.sroa.0.0.extract.trunc32 = trunc i64 %.sroa.10.8.copyload12 to i32
  %.sroa.10.sroa.0.sroa.0.0.extract.trunc49 = trunc i64 %.sroa.10.8.copyload12 to i8
  %.sroa.10.sroa.0.sroa.12.0.extract.shift60 = lshr i32 %.sroa.10.sroa.0.0.extract.trunc32, 8
  %.sroa.10.sroa.0.sroa.12.0.extract.trunc61 = trunc nuw i32 %.sroa.10.sroa.0.sroa.12.0.extract.shift60 to i24
  %.sroa.10.sroa.12.0.extract.shift41 = lshr i64 %.sroa.10.8.copyload12, 32
  %.sroa.10.sroa.12.0.extract.trunc42 = trunc nuw i64 %.sroa.10.sroa.12.0.extract.shift41 to i32
  %.sroa.19.8..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.19.8.copyload19 = load i64, ptr %.sroa.19.8..sroa_idx18, align 8, !noalias !1467
  %.sroa.21.8..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.21.8.copyload26 = load i64, ptr %.sroa.21.8..sroa_idx25, align 8, !noalias !1467
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.10.sroa.0.sroa.12.sroa.0.2 = phi i24 [ undef, %bb.b ], [ %.sroa.10.sroa.0.sroa.12.0.extract.trunc61, %bb.e ]
  %.sroa.10.sroa.0.sroa.0.2 = phi i8 [ undef, %bb.b ], [ %.sroa.10.sroa.0.sroa.0.0.extract.trunc49, %bb.e ]
  %.sroa.10.sroa.12.2 = phi i32 [ undef, %bb.b ], [ %.sroa.10.sroa.12.0.extract.trunc42, %bb.e ]
  %.sroa.21.2.a = phi i64 [ undef, %bb.b ], [ %.sroa.21.8.copyload26, %bb.e ]
  %.sroa.19.2 = phi i64 [ undef, %bb.b ], [ %.sroa.19.8.copyload19, %bb.e ]
  %.sink.i = phi i64 [ -9223372036854775805, %bb.b ], [ -2, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1457
  br label %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit

bb.g:                                             ; preds = %bb.c
  %.sroa.10.8.copyload11 = load i64, ptr %i.c, align 8, !noalias !1467 ; 3 uses
  %.sroa.10.sroa.0.0.extract.trunc31 = trunc i64 %.sroa.10.8.copyload11 to i32
  %.sroa.10.sroa.0.sroa.0.0.extract.trunc48 = trunc i64 %.sroa.10.8.copyload11 to i8
  %.sroa.10.sroa.12.0.extract.shift39 = lshr i64 %.sroa.10.8.copyload11, 32
  %.sroa.10.sroa.12.0.extract.trunc40 = trunc nuw i64 %.sroa.10.sroa.12.0.extract.shift39 to i32
  %.sroa.19.8..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.19.8.copyload17 = load i64, ptr %.sroa.19.8..sroa_idx16, align 8, !noalias !1467
  %.sroa.21.8..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.21.8.copyload24 = load i64, ptr %.sroa.21.8..sroa_idx23, align 8, !noalias !1467
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.06.0.copyload.i = load i32, ptr %i.v, align 1, !noalias !1457 ; 2 uses
  %.sroa.10.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.sroa.06.0.copyload.i to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.10.sroa.0.sroa.12.sroa.0.1.in.in = phi i32 [ %.sroa.06.0.copyload.i, %bb.h ], [ %.sroa.10.sroa.0.0.extract.trunc31, %bb.g ]
  %.sroa.10.sroa.0.sroa.0.1 = phi i8 [ %.sroa.10.sroa.0.sroa.0.0.extract.trunc, %bb.h ], [ %.sroa.10.sroa.0.sroa.0.0.extract.trunc48, %bb.g ]
  %.sroa.10.sroa.12.1 = phi i32 [ undef, %bb.h ], [ %.sroa.10.sroa.12.0.extract.trunc40, %bb.g ]
  %.sroa.21.1 = phi i64 [ undef, %bb.h ], [ %.sroa.21.8.copyload24, %bb.g ]
  %.sroa.19.1 = phi i64 [ undef, %bb.h ], [ %.sroa.19.8.copyload17, %bb.g ]
  %.sink15.i.a = phi i64 [ -9223372036854775808, %bb.h ], [ -2, %bb.g ]
  %.sroa.10.sroa.0.sroa.12.sroa.0.1.in = lshr i32 %.sroa.10.sroa.0.sroa.12.sroa.0.1.in.in, 8
  %.sroa.10.sroa.0.sroa.12.sroa.0.1 = trunc nuw i32 %.sroa.10.sroa.0.sroa.12.sroa.0.1.in to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1457
  br label %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit

bb.j:                                             ; preds = %bb.d
  %.sroa.10.8.copyload10 = load i64, ptr %i.t, align 8, !noalias !1467
  %.sroa.19.8..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.19.8.copyload15 = load i64, ptr %.sroa.19.8..sroa_idx14, align 8, !noalias !1467
  %.sroa.21.8..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.21.8.copyload22 = load i64, ptr %.sroa.21.8..sroa_idx21, align 8, !noalias !1467
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(128) %i.t, i64 128, i1 false), !noalias !1467
  %i.w = ptrtoint ptr %i.k to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in.in = phi i64 [ %.sroa.10.8.copyload10, %bb.j ], [ %i.w, %bb.k ] ; 3 uses
  %.sroa.21.0 = phi i64 [ %.sroa.21.8.copyload22, %bb.j ], [ %i.r, %bb.k ]
  %.sroa.19.0 = phi i64 [ %.sroa.19.8.copyload15, %bb.j ], [ %i.m, %bb.k ]
  %.sink16.i.a = phi i64 [ -2, %bb.j ], [ -1, %bb.k ]
  %.sroa.10.sroa.12.0.in = lshr i64 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in.in, 32
  %.sroa.10.sroa.12.0 = trunc nuw i64 %.sroa.10.sroa.12.0.in to i32
  %.sroa.10.sroa.0.sroa.0.0 = trunc i64 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in.in to i8
  %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in = trunc i64 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in.in to i32
  %.sroa.10.sroa.0.sroa.12.sroa.0.0.in = lshr i32 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in.in, 8
  %.sroa.10.sroa.0.sroa.12.sroa.0.0 = trunc nuw i32 %.sroa.10.sroa.0.sroa.12.sroa.0.0.in to i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1457
  br label %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit

_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit: ; preds = %bb.f, %bb.i, %bb.l
  %.sroa.10.sroa.0.sroa.12.sroa.0.3 = phi i24 [ %.sroa.10.sroa.0.sroa.12.sroa.0.0, %bb.l ], [ %.sroa.10.sroa.0.sroa.12.sroa.0.2, %bb.f ], [ %.sroa.10.sroa.0.sroa.12.sroa.0.1, %bb.i ] ; 2 uses
  %.sroa.10.sroa.0.sroa.0.3 = phi i8 [ %.sroa.10.sroa.0.sroa.0.0, %bb.l ], [ %.sroa.10.sroa.0.sroa.0.2, %bb.f ], [ %.sroa.10.sroa.0.sroa.0.1, %bb.i ] ; 2 uses
  %.sroa.10.sroa.12.3 = phi i32 [ %.sroa.10.sroa.12.0, %bb.l ], [ %.sroa.10.sroa.12.2, %bb.f ], [ %.sroa.10.sroa.12.1, %bb.i ] ; 2 uses
  %.sroa.21.3.a = phi i64 [ %.sroa.21.0, %bb.l ], [ %.sroa.21.2.a, %bb.f ], [ %.sroa.21.1, %bb.i ] ; 2 uses
  %.sroa.19.3 = phi i64 [ %.sroa.19.0, %bb.l ], [ %.sroa.19.2, %bb.f ], [ %.sroa.19.1, %bb.i ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sink16.i.a, %bb.l ], [ %.sink.i, %bb.f ], [ %.sink15.i.a, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1457
  %i.x = icmp eq i64 %.sroa.0.0, -2
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit
  %.sroa.19.391 = phi i64 [ undef, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread ], [ %.sroa.19.3, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.21.390 = phi i64 [ undef, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread ], [ %.sroa.21.3.a, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.10.sroa.12.389 = phi i32 [ undef, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread ], [ %.sroa.10.sroa.12.3, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.10.sroa.0.sroa.0.388 = phi i8 [ 3, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread ], [ %.sroa.10.sroa.0.sroa.0.3, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.10.sroa.0.sroa.12.sroa.0.387 = phi i24 [ undef, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread ], [ %.sroa.10.sroa.0.sroa.12.sroa.0.3, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.10.sroa.0.sroa.12.0.insert.ext = zext i24 %.sroa.10.sroa.0.sroa.12.sroa.0.387 to i64
  %.sroa.10.sroa.0.sroa.12.0.insert.shift = shl nuw nsw i64 %.sroa.10.sroa.0.sroa.12.0.insert.ext, 8
  %.sroa.10.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.10.sroa.0.sroa.0.388 to i64
  %.sroa.10.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.10.sroa.0.sroa.12.0.insert.shift, %.sroa.10.sroa.0.sroa.0.0.insert.ext
  %.sroa.10.sroa.12.0.insert.ext = zext i32 %.sroa.10.sroa.12.389 to i64
  %.sroa.10.sroa.12.0.insert.shift = shl nuw i64 %.sroa.10.sroa.12.0.insert.ext, 32
  %.sroa.10.sroa.0.0.insert.insert = or disjoint i64 %.sroa.10.sroa.0.sroa.0.0.insert.insert, %.sroa.10.sroa.12.0.insert.shift
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.sroa.0.0.insert.insert, ptr %i.y, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.391, ptr %.sroa.479.0..sroa_idx, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.21.390, ptr %.sroa.580.0..sroa_idx, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread92, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit
  %.sroa.0.0104 = phi i64 [ -9223372036854775804, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread92 ], [ %.sroa.0.0, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.19.3103 = phi i64 [ %i.u, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread92 ], [ %.sroa.19.3, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.21.3102 = phi i64 [ %i.m, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread92 ], [ %.sroa.21.3.a, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.10.sroa.12.3101 = phi i32 [ -1, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread92 ], [ %.sroa.10.sroa.12.3, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.10.sroa.0.sroa.0.3100 = phi i8 [ -1, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread92 ], [ %.sroa.10.sroa.0.sroa.0.3, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.10.sroa.0.sroa.12.sroa.0.399 = phi i24 [ -1, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit.thread92 ], [ %.sroa.10.sroa.0.sroa.12.sroa.0.3, %_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs7messageNtB2_14MessagePayload3new.exit ]
  %.sroa.10.sroa.0.sroa.12.0.insert.ext52 = zext i24 %.sroa.10.sroa.0.sroa.12.sroa.0.399 to i64
  %.sroa.10.sroa.0.sroa.12.0.insert.shift53 = shl nuw nsw i64 %.sroa.10.sroa.0.sroa.12.0.insert.ext52, 8
  %.sroa.10.sroa.0.sroa.0.0.insert.ext44 = zext i8 %.sroa.10.sroa.0.sroa.0.3100 to i64
  %.sroa.10.sroa.0.sroa.0.0.insert.insert46 = or disjoint i64 %.sroa.10.sroa.0.sroa.12.0.insert.shift53, %.sroa.10.sroa.0.sroa.0.0.insert.ext44
  %.sroa.10.sroa.12.0.insert.ext33 = zext i32 %.sroa.10.sroa.12.3101 to i64
  %.sroa.10.sroa.12.0.insert.shift34 = shl nuw i64 %.sroa.10.sroa.12.0.insert.ext33, 32
  %.sroa.10.sroa.0.0.insert.insert29 = or disjoint i64 %.sroa.10.sroa.0.sroa.0.0.insert.insert46, %.sroa.10.sroa.12.0.insert.shift34
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.23, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  store i64 %.sroa.0.0104, ptr %0, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.sroa.0.0.insert.insert29, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.3103, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.21.3102, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i16 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i16 %i.h, ptr %.sroa.6.0..sroa_idx, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6crypto5tls13NtB5_8OkmBlockNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8
  call void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs3_NtNtCs7ZUl82OSlxp_6rustls6server5tls13NtB5_15ExpectEarlyDataINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned(ptr noalias noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @35, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainENtNtB7_5clone5Clone10clone_fromBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %0, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = load i64, ptr %1, align 8, !range !4
  %.not7 = icmp eq i64 %i.e, -1                   ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %.not7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.i, label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1468
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !1472
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECs7ZUl82OSlxp_6rustls.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECs7ZUl82OSlxp_6rustls.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainNtNtCsj6eKBz9Db1c_4core5clone5Clone10clone_fromB8_.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECs7ZUl82OSlxp_6rustls.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.f, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1473
  br label %common.resume

_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainNtNtCsj6eKBz9Db1c_4core5clone5Clone10clone_fromB8_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerEECs7ZUl82OSlxp_6rustls.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1468
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_.exit, %_RNvYNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainNtNtCsj6eKBz9Db1c_4core5clone5Clone10clone_fromB8_.exit
  ret void

bb.h:                                             ; preds = %bb.b
  call void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  %.pre = load i64, ptr %0, align 8, !range !4, !alias.scope !1474
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.i = phi i64 [ %.pre, %bb.h ], [ %i.d, %bb.b ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.h ], [ -1, %bb.b ] ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtCseO5Jl7W60Eg_16rustls_pki_types14CertificateDerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_.exit unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.m ], [ %i.k, %bb.k ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %common.resume

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEEB13_.exit: ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16CertificateChainEBH_.exit.i
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecyNtB5_5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1477, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1477, !noundef !5 ; 5 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %i.e, 8
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.d, 8                          ; 3 uses
  store i64 %i.g, ptr %i.c, align 8, !alias.scope !1477
  %i.h = icmp ugt i64 %i.d, -9
  %.not.i = icmp ugt i64 %i.g, %i.b
  %or.cond.i = or i1 %i.h, %.not.i
  br i1 %or.cond.i, label %bb.c, label %bb.e, !prof !526

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.g, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #30, !noalias !1477
  unreachable

bb.d:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @148, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.58.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !alias.scope !1477, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  %i.k = load i64, ptr %i.j, align 1
  %i.l = tail call i64 @llvm.bswap.i64(i64 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecyNtB5_5Codec6encode(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5
  %i.b = tail call i64 @llvm.bswap.i64(i64 %i.a)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 8)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1480, !noundef !5 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
