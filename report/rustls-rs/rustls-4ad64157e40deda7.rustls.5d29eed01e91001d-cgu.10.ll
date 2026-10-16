Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.10?download=true
inline.NumInlined: 32
inline.NumDeleted: 21
begin_hunk_0_@_RNvXs1H_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_13ECPointFormatNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
  switch i8 %i.c, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 12)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 23)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 23)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = load i8, ptr %i.g, align 1
  store i8 %i.h, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !10, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @12, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.l, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1P_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_13HeartbeatModeNtNtB8_5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !5
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @13, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1, !noundef !5  ; 3 uses
  %switch.selectcmp = icmp eq i8 %i.d, 2
  %switch.select = select i1 %switch.selectcmp, i8 1, i8 2
  %switch.selectcmp3 = icmp eq i8 %i.d, 1
  %switch.select4 = select i1 %switch.selectcmp3, i8 0, i8 %switch.select
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %switch.select4, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.d, ptr %i.f, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ -1, %bb.c ], [ 12, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1P_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_13HeartbeatModeNtNtB8_5codec5Codec6encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !range !11, !noundef !5
  switch i8 %i.b, label %default.unreachable2 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.d, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ]
  store i8 %.sink, ptr %i.a, align 1
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec6encode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1S_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_13HeartbeatModeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !11, !noundef !5
  switch i8 %i.c, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 17)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 20)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = load i8, ptr %i.f, align 1
  store i8 %i.g, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !10, !noundef !5
  %i.k = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @16, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.k, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1a_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_14ServerNameTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !8, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i8, ptr %i.e, align 1
  store i8 %i.f, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !10, !noundef !5
  %i.j = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @18, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 8)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10EchVersionNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.d = load i16, ptr %i.c, align 2, !range !13, !alias.scope !40, !noundef !5
  %i.e = trunc nuw i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42
  %i.g = load i16, ptr %i.f, align 2, !alias.scope !40
  store i16 %i.g, ptr %i.b, align 2, !noalias !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  store ptr %i.b, ptr %i.a, align 8, !noalias !42
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsV_NtNtCsj6eKBz9Db1c_4core3fmt3numtNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !42
  %i.h = load ptr, ptr %1, align 8, !alias.scope !41, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !41, !nonnull !5, !align !10, !noundef !5
  %i.k = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @101, ptr noundef nonnull %i.a), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42
  br label %_RNvXs3k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10EchVersionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 3), !noalias !40
  br label %_RNvXs3k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10EchVersionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXs3k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10EchVersionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs1w_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10NamedGroupNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.d = load i8, ptr %i.c, align 1, !range !9, !alias.scope !46, !noundef !5
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 4), !noalias !46
  br label %_RNvXss_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 7), !noalias !46
  br label %_RNvXss_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 3), !noalias !46
  br label %_RNvXss_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !46
  store i8 %i.i, ptr %i.b, align 1, !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48
  store ptr %i.b, ptr %i.a, align 8, !noalias !48
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !48
  %i.j = load ptr, ptr %1, align 8, !alias.scope !47, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !47, !nonnull !5, !align !10, !noundef !5
  %i.m = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @179, ptr noundef nonnull %i.a), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48
  br label %_RNvXss_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXss_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.m, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsZ_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13ExtensionTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums16KeyUpdateRequestNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.d = load i8, ptr %i.c, align 1, !range !11, !alias.scope !52, !noundef !5
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 18), !noalias !52
  br label %_RNvXs2p_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_16KeyUpdateRequestNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 15), !noalias !52
  br label %_RNvXs2p_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_16KeyUpdateRequestNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !54
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !52
  store i8 %i.h, ptr %i.b, align 1, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54
  store ptr %i.b, ptr %i.a, align 8, !noalias !54
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !54
  %i.i = load ptr, ptr %1, align 8, !alias.scope !53, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !53, !nonnull !5, !align !10, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @90, ptr noundef nonnull %i.a), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54
  br label %_RNvXs2p_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_16KeyUpdateRequestNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXs2p_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_16KeyUpdateRequestNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.l, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.d = load i8, ptr %i.c, align 1, !range !8, !alias.scope !58, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !60
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !58
  store i8 %i.g, ptr %i.b, align 1, !noalias !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !60
  store ptr %i.b, ptr %i.a, align 8, !noalias !60
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !60
  %i.h = load ptr, ptr %1, align 8, !alias.scope !59, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !59, !nonnull !5, !align !10, !noundef !5
  %i.k = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @70, ptr noundef nonnull %i.a), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !60
  br label %_RNvXs2A_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_21CertificateStatusTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 4), !noalias !58
  br label %_RNvXs2A_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_21CertificateStatusTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXs2A_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_21CertificateStatusTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsh_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_21ClientCertificateTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums8HpkeAeadNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs38_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_8HpkeAeadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRRSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !67
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.val1
  %i.e = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 2 %.val, ptr noundef nonnull readonly %i.d)
  %i.f = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBB_4base7PayloadENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !71
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !71
  store ptr %i.d, ptr %i.b, align 8, !noalias !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !71
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.e, ptr %i.a, align 8, !noalias !71
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7) ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8) ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !71
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1i_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10NamedCurveNtNtB8_5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5codectNtB5_5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !5
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @19, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = load i16, ptr %i.c, align 2, !noundef !5 ; 2 uses
  %switch.tableidx = add i16 %i.d, 255            ; 2 uses
  %i.e = icmp ult i16 %switch.tableidx, 286
  br i1 %i.e, label %switch.lookup, label %_RNvXs1j_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10NamedCurveINtNtCsj6eKBz9Db1c_4core7convert4FromtE4from.exit

switch.lookup:                                    ; preds = %bb.c
  %i.f = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1i_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10NamedCurveNtNtB8_5codec5Codec4read, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %_RNvXs1j_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10NamedCurveINtNtCsj6eKBz9Db1c_4core7convert4FromtE4from.exit

_RNvXs1j_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10NamedCurveINtNtCsj6eKBz9Db1c_4core7convert4FromtE4from.exit: ; preds = %switch.lookup, %bb.c
  %.sroa.0.0.i = phi i16 [ 32, %bb.c ], [ %switch.ext, %switch.lookup ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.0.0.i, ptr %i.g, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.d, ptr %i.h, align 4
  store i8 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs1j_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10NamedCurveINtNtCsj6eKBz9Db1c_4core7convert4FromtE4from.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1i_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10NamedCurveNtNtB8_5codec5Codec6encode(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !range !14, !noundef !5
  switch i16 %i.b, label %default.unreachable [
    i16 0, label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit
    i16 1, label %bb.b
    i16 2, label %bb.c
    i16 3, label %bb.d
    i16 4, label %bb.e
    i16 5, label %bb.f
    i16 6, label %bb.g
    i16 7, label %bb.h
    i16 8, label %bb.i
    i16 9, label %bb.j
    i16 10, label %bb.k
    i16 11, label %bb.l
    i16 12, label %bb.m
    i16 13, label %bb.n
    i16 14, label %bb.o
    i16 15, label %bb.p
    i16 16, label %bb.q
    i16 17, label %bb.r
    i16 18, label %bb.s
    i16 19, label %bb.t
    i16 20, label %bb.u
    i16 21, label %bb.v
    i16 22, label %bb.w
    i16 23, label %bb.x
    i16 24, label %bb.y
    i16 25, label %bb.z
    i16 26, label %bb.aa
    i16 27, label %bb.ab
    i16 28, label %bb.ac
    i16 29, label %bb.ad
    i16 30, label %bb.ae
    i16 31, label %bb.af
    i16 32, label %bb.ag
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.c:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.f:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.g:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.h:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.i:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.j:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.k:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.l:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.m:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

bb.n:                                             ; preds = %bb.a
  br label %_RNvXs1k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB6_10NamedCurveE4from.exit

end_hunk_0
begin_hunk_1_@_RNvXsZ_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_13ExtensionTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
  br label %bb.as

bb.ai:                                            ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 23)
  br label %bb.as

bb.aj:                                            ; preds = %bb.a
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 8)
  br label %bb.as

bb.ak:                                            ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 19)
  br label %bb.as

bb.al:                                            ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 13)
  br label %bb.as

bb.am:                                            ; preds = %bb.a
  %i.ao = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 23)
  br label %bb.as

bb.an:                                            ; preds = %bb.a
  %i.ap = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 9)
  br label %bb.as

bb.ao:                                            ; preds = %bb.a
  %i.aq = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 17)
  br label %bb.as

bb.ap:                                            ; preds = %bb.a
  %i.ar = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 24)
  br label %bb.as

bb.aq:                                            ; preds = %bb.a
  %i.as = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 20)
  br label %bb.as

bb.ar:                                            ; preds = %bb.a
  %i.at = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 35)
  br label %bb.as

_RNvXsY_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_13ExtensionTypeE4from.exit: ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.av = load i16, ptr %i.au, align 2
  store i16 %i.av, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsV_NtNtCsj6eKBz9Db1c_4core3fmt3numtNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.aw = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !align !10, !noundef !5
  %i.az = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @162, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.as

bb.as:                                            ; preds = %_RNvXsY_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_13ExtensionTypeE4from.exit, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %i.j, %bb.h ], [ %i.k, %bb.i ], [ %i.l, %bb.j ], [ %i.m, %bb.k ], [ %i.n, %bb.l ], [ %i.o, %bb.m ], [ %i.p, %bb.n ], [ %i.q, %bb.o ], [ %i.r, %bb.p ], [ %i.s, %bb.q ], [ %i.t, %bb.r ], [ %i.u, %bb.s ], [ %i.v, %bb.t ], [ %i.w, %bb.u ], [ %i.x, %bb.v ], [ %i.y, %bb.w ], [ %i.z, %bb.x ], [ %i.aa, %bb.y ], [ %i.ab, %bb.z ], [ %i.ac, %bb.aa ], [ %i.ad, %bb.ab ], [ %i.ae, %bb.ac ], [ %i.af, %bb.ad ], [ %i.ag, %bb.ae ], [ %i.ah, %bb.af ], [ %i.ai, %bb.ag ], [ %i.aj, %bb.ah ], [ %i.ak, %bb.ai ], [ %i.al, %bb.aj ], [ %i.am, %bb.ak ], [ %i.an, %bb.al ], [ %i.ao, %bb.am ], [ %i.ap, %bb.an ], [ %i.aq, %bb.ao ], [ %i.ar, %bb.ap ], [ %i.as, %bb.aq ], [ %i.at, %bb.ar ], [ %i.az, %_RNvXsY_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumstINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_13ExtensionTypeE4from.exit ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB4_6OutputINtNtCsj6eKBz9Db1c_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp ult i64 %i.b, 65
  br i1 %i.c, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.b, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.b, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXse_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_21ClientCertificateTypeNtNtB7_5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !5
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @137, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1, !noundef !5  ; 2 uses
  %switch.tableidx = add i8 %i.d, -1              ; 2 uses
  %i.e = icmp ult i8 %switch.tableidx, 66
  br i1 %i.e, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.f = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXse_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_21ClientCertificateTypeNtNtB7_5codec5Codec4read, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c
  %.sroa.0.0 = phi i8 [ 10, %bb.c ], [ %switch.load, %switch.lookup ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.d, ptr %i.h, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXse_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_21ClientCertificateTypeNtNtB7_5codec5Codec6encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !range !20, !noundef !5
  switch i8 %i.b, label %default.unreachable2 [
    i8 0, label %bb.l
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i8 [ %i.d, %bb.k ], [ 66, %bb.j ], [ 65, %bb.i ], [ 64, %bb.h ], [ 20, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ]
  store i8 %.sink, ptr %i.a, align 1
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec6encode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, 4611686018427387904) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2x_13SliceContains14slice_contains0EBW_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val2.i.i = load i8, ptr %0, align 1, !range !9, !alias.scope !76, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val3.i.i = load i8, ptr %i.b, align 1, !alias.scope !76
  %.not = icmp eq i8 %.val2.i.i, 3
  br i1 %.not, label %.lr.ph.i.split, label %.lr.ph.i.split.us

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i.split.us
  %i.c = phi ptr [ %i.e, %.lr.ph.i.split.us ], [ %1, %.lr.ph.i ] ; 2 uses
  %.val2.i.us = load i8, ptr %i.c, align 1, !range !9, !noalias !77, !noundef !5
  %i.d = icmp eq i8 %.val2.i.us, %.val2.i.i       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.not7.i.us = icmp eq ptr %i.e, %i.a
  %or.cond = select i1 %i.d, i1 true, i1 %.not7.i.us
  br i1 %or.cond, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2x_13SliceContains14slice_contains0EBW_.exit, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i
  %i.f = phi ptr [ %i.g, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i ], [ %1, %.lr.ph.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %.val2.i = load i8, ptr %i.f, align 1, !range !9, !noalias !77, !noundef !5
  %i.h = icmp eq i8 %.val2.i, 3
  br i1 %i.h, label %.split.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i.split
  %i.i = getelementptr i8, ptr %i.f, i64 1
  %.val3.i = load i8, ptr %i.i, align 1, !noalias !77
  %i.j = icmp eq i8 %.val3.i, %.val3.i.i
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2x_13SliceContains14slice_contains0EBW_.exit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i.split
  %.not7.i = icmp eq ptr %i.g, %i.a
  br i1 %.not7.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2x_13SliceContains14slice_contains0EBW_.exit, label %.lr.ph.i.split

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2x_13SliceContains14slice_contains0EBW_.exit: ; preds = %.lr.ph.i.split.us, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i, %.split.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i ], [ true, %.split.i ], [ %i.d, %.lr.ph.i.split.us ]
  ret i1 %.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB5_13SliceContains14slice_containsBI_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address) %1, i64 noundef range(i64 0, 2305843009213693952) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 2
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2z_13SliceContains14slice_contains0EBW_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val2.i.i = load i16, ptr %0, align 2, !range !19, !alias.scope !81, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val3.i.i = load i16, ptr %i.b, align 2, !alias.scope !81
  %.not = icmp eq i16 %.val2.i.i, 43
  br i1 %.not, label %.lr.ph.i.split, label %.lr.ph.i.split.us

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.lr.ph.i.split.us
  %i.c = phi ptr [ %i.e, %.lr.ph.i.split.us ], [ %1, %.lr.ph.i ] ; 2 uses
  %.val2.i.us = load i16, ptr %i.c, align 2, !range !19, !noalias !82, !noundef !5
  %i.d = icmp eq i16 %.val2.i.us, %.val2.i.i      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not7.i.us = icmp eq ptr %i.e, %i.a
  %or.cond = select i1 %i.d, i1 true, i1 %.not7.i.us
  br i1 %or.cond, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2z_13SliceContains14slice_contains0EBW_.exit, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i
  %i.f = phi ptr [ %i.g, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i ], [ %1, %.lr.ph.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.val2.i = load i16, ptr %i.f, align 2, !range !19, !noalias !82, !noundef !5
  %i.h = icmp eq i16 %.val2.i, 43
  br i1 %i.h, label %.split.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i.split
  %i.i = getelementptr i8, ptr %i.f, i64 2
  %.val3.i = load i16, ptr %i.i, align 2, !noalias !82
  %i.j = icmp eq i16 %.val3.i, %.val3.i.i
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2z_13SliceContains14slice_contains0EBW_.exit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i.split
  %.not7.i = icmp eq ptr %i.g, %i.a
  br i1 %.not7.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2z_13SliceContains14slice_contains0EBW_.exit, label %.lr.ph.i.split

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2z_13SliceContains14slice_contains0EBW_.exit: ; preds = %.lr.ph.i.split.us, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i, %.split.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i ], [ true, %.split.i ], [ %i.d, %.lr.ph.i.split.us ]
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsh_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_21ClientCertificateTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load i8, ptr %0, align 1, !range !20, !noundef !5
  switch i8 %i.c, label %default.unreachable16 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 7)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 7)
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 10)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 10)
  br label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 14)
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 14)
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 11)
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 9)
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 12)
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 14)
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.o = load i8, ptr %i.n, align 1
  store i8 %i.o, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.p = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !10, !noundef !5
  %i.s = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @174, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %i.j, %bb.h ], [ %i.k, %bb.i ], [ %i.l, %bb.j ], [ %i.m, %bb.k ], [ %i.s, %bb.l ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtB7_5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !5
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @175, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 11, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = load i8, ptr %i.c, align 1, !noundef !5  ; 3 uses
  switch i8 %i.d, label %bb.f [
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ 2, %bb.e ], [ %i.d, %bb.d ], [ 3, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.d, ptr %i.f, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsp_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtB7_5codec5Codec6encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !range !9, !noundef !5 ; 3 uses
  switch i8 %i.b, label %default.unreachable2 [
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 2, label %bb.b
    i8 3, label %bb.c
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.d, %bb.c ], [ 64, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %bb.a ]
  store i8 %.sink, ptr %i.a, align 1
  call void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec6encode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupNtB5_5Debug3fmtBB_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionNtB5_5Debug3fmtBB_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
end_hunk_1
begin_hunk_2_@_RNvXss_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:bb.a
  store i8 %i.h, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsU_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !10, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @179, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.l, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMutNtNtNtB9_2io8io_slice7IoSliceENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  ret i64 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix6getenv(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec4read(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs7ZUl82OSlxp_6rustls4msgs5codechNtB4_5Codec6encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5codectNtB5_5Codec4read(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5codectNtB5_5Codec6encode(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXCshEiLVZluVSb_7zeroizehNtB2_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCsj6eKBz9Db1c_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCsj6eKBz9Db1c_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21ClientCertificateTypeINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{i8 0, i8 8}
!5 = !{}
!6 = !{!"branch_weights", i32 4000000, i32 4001}
!7 = !{i8 -1, i8 28}
!8 = !{i8 0, i8 2}
!9 = !{i8 0, i8 4}
!10 = !{i64 8}
!11 = !{i8 0, i8 3}
!12 = !{i64 2}
!13 = !{i16 0, i16 2}
!14 = !{i16 0, i16 33}
!15 = !{i16 0, i16 16}
!16 = !{i16 0, i16 6}
!17 = !{i16 0, i16 4}
!18 = !{i16 0, i16 5}
!19 = !{i16 0, i16 44}
!20 = !{i8 0, i8 11}
!21 = distinct !{!21, i1 true, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB2_6Output3new"}
!22 = distinct !{!22, !21, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB2_6Output3new: argument 1"}
!23 = distinct !{!23, !21, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB2_6Output3new: argument 0"}
!24 = distinct !{!24, i1 true, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB2_6Output3new"}
!25 = distinct !{!25, !24, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB2_6Output3new: argument 1"}
!26 = distinct !{!26, !24, !"_RNvMNtNtCs7ZUl82OSlxp_6rustls6crypto4hashNtB2_6Output3new: argument 0"}
!27 = !{!23, !22}
!28 = !{!23}
!29 = !{!26, !25}
!30 = !{!26}
!31 = distinct !{!31, i1 true, !"_RNvNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB6_10FfdheGroup34from_params_trimming_leading_zeros18trim_leading_zeros"}
!32 = distinct !{!32, !31, !"_RNvNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB6_10FfdheGroup34from_params_trimming_leading_zeros18trim_leading_zeros: argument 0"}
!33 = distinct !{!33, i1 true, !"_RNvNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB6_10FfdheGroup34from_params_trimming_leading_zeros18trim_leading_zeros"}
!34 = distinct !{!34, !33, !"_RNvNvMs_NtNtCs7ZUl82OSlxp_6rustls4msgs12ffdhe_groupsNtB6_10FfdheGroup34from_params_trimming_leading_zeros18trim_leading_zeros: argument 0"}
!35 = !{!32}
!36 = !{!34}
!37 = distinct !{!37, i1 true, !"_RNvXs3k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10EchVersionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt"}
!38 = distinct !{!38, !37, !"_RNvXs3k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10EchVersionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 0"}
!39 = distinct !{!39, !37, !"_RNvXs3k_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_10EchVersionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 1"}
!40 = !{!38}
!41 = !{!39}
!42 = !{!38, !39}
!43 = distinct !{!43, i1 true, !"_RNvXss_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt"}
!44 = distinct !{!44, !43, !"_RNvXss_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 0"}
!45 = distinct !{!45, !43, !"_RNvXss_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_11CompressionNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 1"}
!46 = !{!44}
!47 = !{!45}
!48 = !{!44, !45}
!49 = distinct !{!49, i1 true, !"_RNvXs2p_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_16KeyUpdateRequestNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt"}
!50 = distinct !{!50, !49, !"_RNvXs2p_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_16KeyUpdateRequestNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 0"}
!51 = distinct !{!51, !49, !"_RNvXs2p_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_16KeyUpdateRequestNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 1"}
!52 = !{!50}
!53 = !{!51}
!54 = !{!50, !51}
!55 = distinct !{!55, i1 true, !"_RNvXs2A_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_21CertificateStatusTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt"}
!56 = distinct !{!56, !55, !"_RNvXs2A_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_21CertificateStatusTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 0"}
!57 = distinct !{!57, !55, !"_RNvXs2A_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB6_21CertificateStatusTypeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt: argument 1"}
!58 = !{!56}
!59 = !{!57}
!60 = !{!56, !57}
!61 = distinct !{!61, i1 true, !"_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupNtB6_5Debug3fmtBD_"}
!62 = distinct !{!62, !61, !"_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupNtB6_5Debug3fmtBD_: argument 0"}
!63 = distinct !{!63, i1 true, !"_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupNtB5_5Debug3fmtBB_"}
!64 = distinct !{!64, !63, !"_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupNtB5_5Debug3fmtBB_: argument 1"}
!65 = distinct !{!65, !63, !"_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums10NamedGroupNtB5_5Debug3fmtBB_: argument 0"}
!66 = !{!65, !64, !62}
!67 = !{!65}
!68 = distinct !{!68, i1 true, !"_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBA_4base7PayloadENtB6_5Debug3fmtBC_"}
!69 = distinct !{!69, !68, !"_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBA_4base7PayloadENtB6_5Debug3fmtBC_: argument 1"}
!70 = distinct !{!70, !68, !"_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums21CertificateStatusTypeNtNtBA_4base7PayloadENtB6_5Debug3fmtBC_: argument 0"}
!71 = !{!70, !69}
!72 = !{!70}
!73 = distinct !{!73, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2x_13SliceContains14slice_contains0EBW_"}
!74 = distinct !{!74, !73, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2x_13SliceContains14slice_contains0EBW_: argument 1"}
!75 = distinct !{!75, !73, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums11CompressionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2x_13SliceContains14slice_contains0EBW_: argument 0"}
!76 = !{!74}
!77 = !{!75, !74}
!78 = distinct !{!78, i1 true, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2z_13SliceContains14slice_contains0EBW_"}
!79 = distinct !{!79, !78, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2z_13SliceContains14slice_contains0EBW_: argument 1"}
!80 = distinct !{!80, !78, !"_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCs7ZUl82OSlxp_6rustls4msgs5enums13ExtensionTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2z_13SliceContains14slice_contains0EBW_: argument 0"}
!81 = !{!79}
!82 = !{!80, !79}
end_hunk_2
