Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RINvXsk_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb8nullableNtB6_8SomeNullNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file:bb.a
  br i1 %.not.i.i, label %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit
  %i.k = tail call fastcc noundef i64 @_RNvYNvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB8_13ArrayEncoding11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceCsaSXGKSfiU2E_10lance_file(ptr noundef nonnull readonly align 8 %i.a), !noalias !22151, !inline_history !33
  br label %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit

_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit, %bb.c
  %.sroa.02.0.i.i.i = phi i64 [ %i.k, %bb.c ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit ]
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(i64 noundef %.sroa.02.0.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22142, !inline_history !34
  tail call fastcc void @_RINvXs3q_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB7_13ArrayEncodingNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22152, !inline_history !35
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !align !77, !noundef !76 ; 4 uses
  %.not1 = icmp eq ptr %i.m, null
  br i1 %.not1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22153)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre18.i6 = load i64, ptr %i.n, align 8, !alias.scope !22153, !noalias !22154 ; 3 uses
  %.pre28.i7 = load i64, ptr %1, align 8, !range !79, !alias.scope !22153, !noalias !22154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22155), !noalias !22154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22156), !noalias !22154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22157), !noalias !22154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22158), !noalias !22154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22159), !noalias !22154
  %i.p = icmp eq i64 %.pre28.i7, %.pre18.i6
  br i1 %i.p, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i9, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit10, !prof !75

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i9: ; preds = %bb.e
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i6, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !22160
  %i.q = load i64, ptr %i.n, align 8, !alias.scope !22161, !noalias !22154, !noundef !76
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit10

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit10: ; preds = %bb.e, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i9
  %.sink1.i6.i8 = phi i64 [ %i.q, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i9 ], [ %.pre18.i6, %bb.e ] ; 3 uses
  %i.r = icmp sgt i64 %.sink1.i6.i8, -1
  tail call void @llvm.assume(i1 %i.r), !noalias !22154
  %i.s = load ptr, ptr %i.o, align 8, !alias.scope !22161, !noalias !22154, !nonnull !76, !noundef !76
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink1.i6.i8
  store i8 18, ptr %i.t, align 1, !noalias !22162
  %i.u = add nuw i64 %.sink1.i6.i8, 1
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !22161, !noalias !22154
  %i.v = load i64, ptr %i.m, align 8, !range !88, !noalias !22163, !noundef !76
  %.not.i.i3 = icmp eq i64 %i.v, -2
  br i1 %.not.i.i3, label %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit5, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit10
  %i.w = tail call fastcc noundef i64 @_RNvYNvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB8_13ArrayEncoding11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceCsaSXGKSfiU2E_10lance_file(ptr noundef nonnull readonly align 8 %i.m), !noalias !22163, !inline_history !33
  br label %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit5

_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit5: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit10, %bb.f
  %.sroa.02.0.i.i.i4 = phi i64 [ %i.w, %bb.f ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit10 ]
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(i64 noundef %.sroa.02.0.i.i.i4, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22154, !inline_history !34
  tail call fastcc void @_RINvXs3q_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB7_13ArrayEncodingNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(ptr noundef nonnull align 8 %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !22164, !inline_history !35
  br label %bb.g

bb.g:                                             ; preds = %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit5, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types9Int32TypeECsaSXGKSfiU2E_10lance_file(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 !guid !22166 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !106, !invariant.load !76
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !22165 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !76, !nonnull !76
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !22165
  %i.n = load i128, ptr %i.a, align 16, !noundef !76
  %i.o = icmp ne i128 %i.n, -163779089370675401371046476244961094779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvYINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtBG_4cast7AsArray12as_primitiveNtNtBG_5types9Int64TypeECsaSXGKSfiU2E_10lance_file(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 !guid !22168 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !106, !invariant.load !76
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr i8, ptr %.8.val, i64 32
  %.val.i = load ptr, ptr %i.h, align 8
  %i.i = tail call { ptr, ptr } %.val.i(ptr noundef nonnull %i.g), !inline_history !22167 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 3 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !76, !nonnull !76
  call void %i.m(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.j), !inline_history !22167
  %i.n = load i128, ptr %i.a, align 16, !noundef !76
  %i.o = icmp ne i128 %i.n, 113670456804898985252008330795779535745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not1 = icmp eq ptr %i.j, null
  %.not = or i1 %.not1, %i.o
  br i1 %.not, label %bb.c, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  ret ptr %i.j

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @201, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterTyyEEENtNtNtBa_6traits8iterator8Iterator5unzipyyINtNtCs40k4W9msRzi_5alloc3vec3VecyEB29_ECsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !22203 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !22204
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !22204
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx5.i, i8 0, i64 16, i1 false), !alias.scope !22204
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !22204
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22205)
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 8 uses
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBP_EINtB5_6ExtendTyyEE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 0, i64 noundef range(i64 1, 0) %i.e, i64 noundef 8, i64 noundef 8)
          to label %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.d

_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.g = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22206, !noundef !76 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !range !79, !alias.scope !22206, !noundef !76
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %bb.c, label %.noexc3, !prof !75

bb.c:                                             ; preds = %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.g, i64 noundef range(i64 1, 0) %i.e, i64 noundef 8, i64 noundef 8)
          to label %..noexc3_crit_edge unwind label %bb.d

..noexc3_crit_edge:                               ; preds = %bb.c
  %.promoted12.i.i.i.i.pre = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22207
  br label %.noexc3

_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBP_EINtB5_6ExtendTyyEE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22210)
  br label %_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecyEB16_EINtB4_10SpecExtendINtNtNtBa_8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterTyyEEEE6extendCsaSXGKSfiU2E_10lance_file.exit

.noexc3:                                          ; preds = %..noexc3_crit_edge, %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i
  %.promoted12.i.i.i.i = phi i64 [ %.promoted12.i.i.i.i.pre, %..noexc3_crit_edge ], [ %i.g, %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 5 uses
  %i.k = load ptr, ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !22211, !nonnull !76, !noundef !76 ; 6 uses
  %i.l = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !22207, !nonnull !76, !noundef !76 ; 6 uses
  %.promoted.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx5.i, align 8, !alias.scope !22211 ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 352
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc3
  %i.m = shl i64 %.promoted.i.i.i.i, 3            ; 2 uses
  %i.n = getelementptr nuw i8, ptr %i.k, i64 %i.m ; 2 uses
  %i.o = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o     ; 2 uses
  %i.r = shl i64 %.promoted12.i.i.i.i, 3          ; 2 uses
  %i.s = getelementptr nuw i8, ptr %i.l, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.o     ; 2 uses
  %bound0 = icmp ult ptr %i.n, %i.u
  %bound1 = icmp ult ptr %i.s, %i.q
  %found.conflict = and i1 %bound0, %bound1
  %3 = and i64 %i.d, -16
  %4 = getelementptr i8, ptr %1, i64 %3           ; 2 uses
  %bound021 = icmp ult ptr %i.n, %4
  %bound122 = icmp ult ptr %1, %i.q
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  %bound024 = icmp ult ptr %i.s, %4
  %bound125 = icmp ult ptr %1, %i.u
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 5 uses
  %i.v = add i64 %.promoted12.i.i.i.i, %n.vec     ; 2 uses
  %i.w = add i64 %.promoted.i.i.i.i, %n.vec       ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.promoted.i.i.i.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.promoted12.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %wide.vec = load <4 x i64>, ptr %i.z, align 8, !alias.scope !22212, !noalias !22213 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec32 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22215)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x i64> %strided.vec, ptr %i.aa, align 8, !alias.scope !22216, !noalias !22217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22218)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  store <2 x i64> %strided.vec32, ptr %i.ab, align 8, !alias.scope !22219, !noalias !22220
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !22195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc3, %middle.block
  %.ph = phi i64 [ %.promoted12.i.i.i.i, %vector.memcheck ], [ %.promoted12.i.i.i.i, %.noexc3 ], [ %i.v, %middle.block ] ; 4 uses
  %.ph36 = phi i64 [ %.promoted.i.i.i.i, %vector.memcheck ], [ %.promoted.i.i.i.i, %.noexc3 ], [ %i.w, %middle.block ] ; 4 uses
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.noexc3 ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.i.i.i.ph, 1
  %i.ad = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.0.i.i.i.i.ph ; 2 uses
  %.val10.i.i.i.i.prol = load i64, ptr %i.ae, align 8, !noalias !22213, !noundef !76
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val11.i.i.i.i.prol = load i64, ptr %i.af, align 8, !noalias !22213, !noundef !76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22215)
  %i.ag = icmp ult i64 %.ph36, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.ph36
  store i64 %.val10.i.i.i.i.prol, ptr %i.ah, align 8, !noalias !22211
  %i.ai = add nuw nsw i64 %.ph36, 1               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22218)
  %i.aj = icmp ult i64 %.ph, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.ph
  store i64 %.val11.i.i.i.i.prol, ptr %i.ak, align 8, !noalias !22207
  %i.al = add nuw nsw i64 %.ph, 1                 ; 2 uses
  %i.am = or disjoint i64 %.sroa.01.0.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa38.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.lcssa37.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.unr39 = phi i64 [ %.ph36, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.sroa.01.0.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.e, %.neg
  br i1 %i.an, label %.loopexit.i.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ao = phi i64 [ %i.bg, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ap = phi i64 [ %i.bc, %scalar.ph ], [ %.unr39, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.bh, %scalar.ph ], [ %.sroa.01.0.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %.val10.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !22213, !noundef !76
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val11.i.i.i.i = load i64, ptr %i.ar, align 8, !noalias !22213, !noundef !76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22215)
  %i.as = icmp ult i64 %i.ap, 1152921504606846976
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ap
  store i64 %.val10.i.i.i.i, ptr %i.at, align 8, !noalias !22211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22218)
  %i.au = icmp ult i64 %i.ao, 1152921504606846976
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ao
  store i64 %.val11.i.i.i.i, ptr %i.av, align 8, !noalias !22207
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val10.i.i.i.i.1 = load i64, ptr %i.ax, align 8, !noalias !22213, !noundef !76
  %i.ay = getelementptr i8, ptr %i.aw, i64 24
  %.val11.i.i.i.i.1 = load i64, ptr %i.ay, align 8, !noalias !22213, !noundef !76
  %i.az = icmp ne i64 %i.ap, 1152921504606846975
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ap
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.val10.i.i.i.i.1, ptr %i.bb, align 8, !noalias !22221
  %i.bc = add nuw nsw i64 %i.ap, 2                ; 2 uses
  %i.bd = icmp ne i64 %i.ao, 1152921504606846975
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ao
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.val11.i.i.i.i.1, ptr %i.bf, align 8, !noalias !22222
  %i.bg = add nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.bh = add nuw i64 %.sroa.01.0.i.i.i.i, 2      ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.e
  br i1 %i.bi, label %.loopexit.i.i.i.i, label %scalar.ph, !llvm.loop !22202

.loopexit.i.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa9 = phi i64 [ %i.w, %middle.block ], [ %.lcssa38.unr, %scalar.ph.prol.loopexit ], [ %i.bc, %scalar.ph ]
  %.lcssa = phi i64 [ %i.v, %middle.block ], [ %.lcssa37.unr, %scalar.ph.prol.loopexit ], [ %i.bg, %scalar.ph ]
  store i64 %.lcssa9, ptr %.sroa.6.0..sroa_idx5.i, align 8, !alias.scope !22211
  store i64 %.lcssa, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22207
  br label %_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecyEB16_EINtB4_10SpecExtendINtNtNtBa_8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterTyyEEEE6extendCsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBC_EECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(48) %i.a) #50
  resume { ptr, i32 } %i.bj

_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecyEB16_EINtB4_10SpecExtendINtNtNtBa_8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterTyyEEEE6extendCsaSXGKSfiU2E_10lance_file.exit: ; preds = %.loopexit.i.i.i.i, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBP_EINtB5_6ExtendTyyEE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterTyyEEENtNtNtBa_6traits8iterator8Iterator5unzipyyINtNtCs40k4W9msRzi_5alloc3vec3VecyEB29_ECsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !22257 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !22258
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !22258
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx5.i, i8 0, i64 16, i1 false), !alias.scope !22258
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !22258
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22259)
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 8 uses
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBP_EINtB5_6ExtendTyyEE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 0, i64 noundef range(i64 1, 0) %i.e, i64 noundef 8, i64 noundef 8)
          to label %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.d

_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.g = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22260, !noundef !76 ; 3 uses
  %i.h = load i64, ptr %i.f, align 8, !range !79, !alias.scope !22260, !noundef !76
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %bb.c, label %.noexc3, !prof !75

bb.c:                                             ; preds = %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.g, i64 noundef range(i64 1, 0) %i.e, i64 noundef 8, i64 noundef 8)
          to label %..noexc3_crit_edge unwind label %bb.d

..noexc3_crit_edge:                               ; preds = %bb.c
  %.promoted12.i.i.i.i.pre = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22261
  br label %.noexc3

_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBP_EINtB5_6ExtendTyyEE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22264)
  br label %_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecyEB16_EINtB4_10SpecExtendINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterTyyEEEE6extendCsaSXGKSfiU2E_10lance_file.exit

.noexc3:                                          ; preds = %..noexc3_crit_edge, %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i
  %.promoted12.i.i.i.i = phi i64 [ %.promoted12.i.i.i.i.pre, %..noexc3_crit_edge ], [ %i.g, %_RNvXsi_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendyE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i.i ] ; 5 uses
  %i.k = load ptr, ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !22265, !nonnull !76, !noundef !76 ; 6 uses
  %i.l = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !22261, !nonnull !76, !noundef !76 ; 6 uses
  %.promoted.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx5.i, align 8, !alias.scope !22265 ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 352
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc3
  %i.m = shl i64 %.promoted.i.i.i.i, 3            ; 2 uses
  %i.n = getelementptr nuw i8, ptr %i.k, i64 %i.m ; 2 uses
  %i.o = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 %i.o     ; 2 uses
  %i.r = shl i64 %.promoted12.i.i.i.i, 3          ; 2 uses
  %i.s = getelementptr nuw i8, ptr %i.l, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 %i.o     ; 2 uses
  %bound0 = icmp ult ptr %i.n, %i.u
  %bound1 = icmp ult ptr %i.s, %i.q
  %found.conflict = and i1 %bound0, %bound1
  %3 = and i64 %i.d, -16
  %4 = getelementptr i8, ptr %1, i64 %3           ; 2 uses
  %bound021 = icmp ult ptr %i.n, %4
  %bound122 = icmp ult ptr %1, %i.q
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  %bound024 = icmp ult ptr %i.s, %4
  %bound125 = icmp ult ptr %1, %i.u
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 5 uses
  %i.v = add i64 %.promoted12.i.i.i.i, %n.vec     ; 2 uses
  %i.w = add i64 %.promoted.i.i.i.i, %n.vec       ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.promoted.i.i.i.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.promoted12.i.i.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %wide.vec = load <4 x i64>, ptr %i.z, align 8, !alias.scope !22266, !noalias !22267 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec32 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22269)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x i64> %strided.vec, ptr %i.aa, align 8, !alias.scope !22270, !noalias !22271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22272)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  store <2 x i64> %strided.vec32, ptr %i.ab, align 8, !alias.scope !22273, !noalias !22274
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !22249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc3, %middle.block
  %.ph = phi i64 [ %.promoted12.i.i.i.i, %vector.memcheck ], [ %.promoted12.i.i.i.i, %.noexc3 ], [ %i.v, %middle.block ] ; 4 uses
  %.ph36 = phi i64 [ %.promoted.i.i.i.i, %vector.memcheck ], [ %.promoted.i.i.i.i, %.noexc3 ], [ %i.w, %middle.block ] ; 4 uses
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.noexc3 ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.i.i.i.ph, 1
  %i.ad = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.0.i.i.i.i.ph ; 2 uses
  %.val10.i.i.i.i.prol = load i64, ptr %i.ae, align 8, !noalias !22267, !noundef !76
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val11.i.i.i.i.prol = load i64, ptr %i.af, align 8, !noalias !22267, !noundef !76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22269)
  %i.ag = icmp ult i64 %.ph36, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.ph36
  store i64 %.val10.i.i.i.i.prol, ptr %i.ah, align 8, !noalias !22265
  %i.ai = add nuw nsw i64 %.ph36, 1               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22272)
  %i.aj = icmp ult i64 %.ph, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.ph
  store i64 %.val11.i.i.i.i.prol, ptr %i.ak, align 8, !noalias !22261
  %i.al = add nuw nsw i64 %.ph, 1                 ; 2 uses
  %i.am = or disjoint i64 %.sroa.01.0.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa38.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.lcssa37.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.unr39 = phi i64 [ %.ph36, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.sroa.01.0.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.e, %.neg
  br i1 %i.an, label %.loopexit.i.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ao = phi i64 [ %i.bg, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ap = phi i64 [ %i.bc, %scalar.ph ], [ %.unr39, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.bh, %scalar.ph ], [ %.sroa.01.0.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %.val10.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !22267, !noundef !76
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val11.i.i.i.i = load i64, ptr %i.ar, align 8, !noalias !22267, !noundef !76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22269)
  %i.as = icmp ult i64 %i.ap, 1152921504606846976
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ap
  store i64 %.val10.i.i.i.i, ptr %i.at, align 8, !noalias !22265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22272)
  %i.au = icmp ult i64 %i.ao, 1152921504606846976
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ao
  store i64 %.val11.i.i.i.i, ptr %i.av, align 8, !noalias !22261
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val10.i.i.i.i.1 = load i64, ptr %i.ax, align 8, !noalias !22267, !noundef !76
  %i.ay = getelementptr i8, ptr %i.aw, i64 24
  %.val11.i.i.i.i.1 = load i64, ptr %i.ay, align 8, !noalias !22267, !noundef !76
  %i.az = icmp ne i64 %i.ap, 1152921504606846975
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ap
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.val10.i.i.i.i.1, ptr %i.bb, align 8, !noalias !22275
  %i.bc = add nuw nsw i64 %i.ap, 2                ; 2 uses
  %i.bd = icmp ne i64 %i.ao, 1152921504606846975
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ao
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.val11.i.i.i.i.1, ptr %i.bf, align 8, !noalias !22276
  %i.bg = add nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.bh = add nuw i64 %.sroa.01.0.i.i.i.i, 2      ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.e
  br i1 %i.bi, label %.loopexit.i.i.i.i, label %scalar.ph, !llvm.loop !22256

.loopexit.i.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa9 = phi i64 [ %i.w, %middle.block ], [ %.lcssa38.unr, %scalar.ph.prol.loopexit ], [ %i.bc, %scalar.ph ]
  %.lcssa = phi i64 [ %i.v, %middle.block ], [ %.lcssa37.unr, %scalar.ph.prol.loopexit ], [ %i.bg, %scalar.ph ]
  store i64 %.lcssa9, ptr %.sroa.6.0..sroa_idx5.i, align 8, !alias.scope !22265
  store i64 %.lcssa, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22261
  br label %_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecyEB16_EINtB4_10SpecExtendINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterTyyEEEE6extendCsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBC_EECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(48) %i.a) #50
  resume { ptr, i32 } %i.bj

_RNvXs_NvNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect14default_extendTINtNtCs40k4W9msRzi_5alloc3vec3VecyEB16_EINtB4_10SpecExtendINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterTyyEEEE6extendCsaSXGKSfiU2E_10lance_file.exit: ; preds = %.loopexit.i.i.i.i, %_RNvXs2_NtNtNtCscI6d9CVNmLh_4core4iter6traits7collectTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBP_EINtB5_6ExtendTyyEE14extend_reserveCsaSXGKSfiU2E_10lance_file.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyNtNtCskAO0uQb8M5a_5prost7message7Message6decodeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !22309 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8, !alias.scope !22310
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !22310
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !22310
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !22310
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !22310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22311)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8, !noalias !22312
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvXs2n_NtCs1nbc6HIrAcO_11prost_types8protobufNtB7_3AnyNtNtCskAO0uQb8M5a_5prost7message7Message11merge_fieldQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i, %bb.a
  %.val.i.i = load i64, ptr %i.k, align 8, !alias.scope !22311, !noundef !76
  %.not13.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not13.i, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = invoke fastcc { i64, ptr } @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13decode_varintQNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = trunc nuw i64 %i.n to i1
  br i1 %i.q, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.r = icmp ugt ptr %i.o, inttoptr (i64 4294967295 to ptr)
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = and i64 %i.p, 7                          ; 4 uses
  %switch.i = icmp samesign ult i64 %i.s, 6
  br i1 %switch.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22313
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.p, ptr %i.t, align 8, !noalias !22313
  store i64 -9223372036854775804, ptr %i.h, align 8, !noalias !22313
  %i.u = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB5_15DecodeErrorKindE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.h)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
