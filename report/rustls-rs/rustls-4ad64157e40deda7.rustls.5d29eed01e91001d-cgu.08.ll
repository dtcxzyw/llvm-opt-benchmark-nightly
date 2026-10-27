Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.08?download=true
inline.NumInlined: 649
inline.NumDeleted: 283
begin_hunk_0_@_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtB6_5Debug3fmtBC_:bb.a
  store ptr @_RNvXs1o_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_8LowerHex3fmtCs7ZUl82OSlxp_6rustls, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !874
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i, ptr noundef nonnull @0, ptr noundef nonnull %i.a), !noalias !874
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !874
  br label %_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_.exit

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !874
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i

_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU24NtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !888, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.i.i = load i64, ptr %.sroa.5.0.in.i.i, align 8, !alias.scope !888, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.sroa.5.0.i.i
  %.not.i.i.i = icmp samesign eq i64 %.sroa.5.0.i.i, 0
  br i1 %.not.i.i.i, label %_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU24NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %1, align 8, !alias.scope !890, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !890, !nonnull !5, !align !11, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.024.i.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !891
  store ptr %.sroa.0.024.i.i.i, ptr %i.b, align 8, !noalias !891, !captures !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !891
  store ptr %i.b, ptr %i.a, align 8, !noalias !891
  store ptr @_RNvXs1o_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_8LowerHex3fmtCs7ZUl82OSlxp_6rustls, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !891
  %i.h = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @0, ptr noundef nonnull %i.a), !noalias !892
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !891
  br label %_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU24NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !891
  %.not25.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not25.i.i.i, label %_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU24NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, label %bb.b

_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU24NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.d, %bb.a, %bb.c
  %i.j = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs7ZUl82OSlxp_6rustls4msgs4base7PayloadNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !899, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0.in.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.i = load i64, ptr %.sroa.5.0.in.i, align 8, !alias.scope !899, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.5.0.i
  %.not.i.i = icmp samesign eq i64 %.sroa.5.0.i, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_7PayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %1, align 8, !alias.scope !902, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !902, !nonnull !5, !align !11, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.024.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !903
  store ptr %.sroa.0.024.i.i, ptr %i.b, align 8, !noalias !903, !captures !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !903
  store ptr %i.b, ptr %i.a, align 8, !noalias !903
  store ptr @_RNvXs1o_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_8LowerHex3fmtCs7ZUl82OSlxp_6rustls, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !903
  %i.h = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @0, ptr noundef nonnull %i.a), !noalias !904
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !903
  br label %_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_7PayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !903
  %.not25.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not25.i.i, label %_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_7PayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, label %bb.b

_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_7PayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.d, %bb.a, %bb.c
  %i.j = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotatorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 13)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_7PayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.sroa.5.0
  %.not.i = icmp samesign eq i64 %.sroa.5.0, 0
  br i1 %.not.i, label %_RINvNtNtCs7ZUl82OSlxp_6rustls4msgs4base3hexRShEB6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %1, align 8, !alias.scope !908, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !908, !nonnull !5, !align !11, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.024.i = phi ptr [ %.sroa.0.0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !909
  store ptr %.sroa.0.024.i, ptr %i.b, align 8, !noalias !909, !captures !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !909
  store ptr %i.b, ptr %i.a, align 8, !noalias !909
  store ptr @_RNvXs1o_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_8LowerHex3fmtCs7ZUl82OSlxp_6rustls, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !909
  %i.g = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @0, ptr noundef nonnull %i.a), !noalias !908
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !909
  br label %_RINvNtNtCs7ZUl82OSlxp_6rustls4msgs4base3hexRShEB6_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !909
  %.not25.i = icmp eq ptr %i.h, %i.c
  br i1 %.not25.i, label %_RINvNtNtCs7ZUl82OSlxp_6rustls4msgs4base3hexRShEB6_.exit, label %bb.b

_RINvNtNtCs7ZUl82OSlxp_6rustls4msgs4base3hexRShEB6_.exit: ; preds = %bb.d, %bb.a, %bb.c
  %i.i = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2j_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23SupportedEcPointFormatsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU24NtNtB7_5codec5Codec4read(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.510 = alloca [24 x i8], align 8          ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB5_3u24NtB5_5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.d = load i8, ptr %i.c, align 8, !range !27, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.416.0..sroa_idx, i64 3, i1 false)
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.517.0.copyload = load i32, ptr %.sroa.517.0..sroa_idx, align 4
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.622.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.618.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.517.0.copyload, ptr %.sroa.521.0..sroa_idx, align 4
  store i64 1, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = zext i32 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader3sub(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h)
  %i.i = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  %i.m = call { ptr, i64 } @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader4rest(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !912 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.p, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %.sroa.526.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU24NtNtB7_5codec5Codec6encode(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !5, !noundef !5
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = trunc i64 %.sroa.5.0 to i32
  store i32 %i.b, ptr %i.a, align 4
  call void @_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB5_3u24NtB5_5Codec6encode(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.5.0)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !915, !noundef !5 ; 3 uses
  %i.e = icmp sgt i64 %i.d, -1
  call void @llvm.assume(i1 %i.e)
  %.not.i = icmp eq i64 %.sroa.5.0, 0
  br i1 %.not.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !915, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %.sroa.0.0, i64 %.sroa.5.0, i1 false)
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !915
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i, %bb.b ], [ %i.d, %bb.a ]
  %i.j = add i64 %i.i, %.sroa.5.0
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !915
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4i_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_23HandshakeMessagePayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_10PayloadU24NtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !922, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.i = load i64, ptr %.sroa.5.0.in.i, align 8, !alias.scope !922, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.5.0.i
  %.not.i.i = icmp samesign eq i64 %.sroa.5.0.i, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_7PayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %1, align 8, !alias.scope !925, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !925, !nonnull !5, !align !11, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.024.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.i ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !926
  store ptr %.sroa.0.024.i.i, ptr %i.b, align 8, !noalias !926, !captures !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !926
  store ptr %i.b, ptr %i.a, align 8, !noalias !926
  store ptr @_RNvXs1o_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_8LowerHex3fmtCs7ZUl82OSlxp_6rustls, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !926
  %i.g = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @0, ptr noundef nonnull %i.a), !noalias !927
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !926
  br label %_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_7PayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !926
  %.not25.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not25.i.i, label %_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_7PayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, label %bb.b

_RNvXs2_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseNtB5_7PayloadNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.d, %bb.a, %bb.c
  %i.i = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtB7_5codec5Codec4readB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.513 = alloca [24 x i8], align 8          ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5codectNtB5_5Codec4read(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = load i8, ptr %i.d, align 8, !range !27, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.424.0.copyload = load i8, ptr %.sroa.424.0..sroa_idx, align 1
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %.sroa.525.0.copyload = load i16, ptr %.sroa.525.0..sroa_idx, align 2
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.630.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.626.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.424.0.copyload, ptr %.sroa.428.0..sroa_idx, align 1
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %.sroa.525.0.copyload, ptr %.sroa.529.0..sroa_idx, align 2
  store i64 1, ptr %0, align 8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = load i16, ptr %i.g, align 2, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i16 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader3sub(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j)
  %i.k = load i64, ptr %i.b, align 8, !range !10, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 23, ptr %i.n, align 8
  store i64 1, ptr %0, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.513, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.513)
  %i.p = call { ptr, i64 } @_RNvMNtNtCs7ZUl82OSlxp_6rustls4msgs5codecNtB2_6Reader4rest(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.r, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.s = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !21, !noundef !5 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.w, align 8
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = icmp ule i64 %i.r, %i.v
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not32 = icmp eq i64 %i.r, 0
  br i1 %.not32, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.aa, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
