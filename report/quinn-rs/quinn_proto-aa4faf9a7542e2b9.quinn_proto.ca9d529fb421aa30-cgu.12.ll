Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.12?download=true
inline.NumInlined: 810
inline.NumDeleted: 387
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB5_10TlsSessionNtB7_7Session20transport_parameters:bb.a
  store i32 %.sroa.21.sroa.11.0.ph.lcssa1321.i, ptr %.sroa.1730.0..sroa_idx, align 2, !dbg !30888
  %.sroa.1831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 110, !dbg !30888
  store i16 %.sroa.21.sroa.12.0.ph.lcssa1282.i, ptr %.sroa.1831.0..sroa_idx, align 2, !dbg !30888
  %.sroa.2235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !30888
  store i64 %.sroa.22.0.ph.lcssa619.i, ptr %.sroa.2235.0..sroa_idx, align 8, !dbg !30888
  %.sroa.2336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !30888
  store i64 %.sroa.24.0.ph.lcssa658.i, ptr %.sroa.2336.0..sroa_idx, align 8, !dbg !30888
  %.sroa.2437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !30888
  store i64 %.sroa.27.0.ph.lcssa697.i, ptr %.sroa.2437.0..sroa_idx, align 8, !dbg !30888
  %.sroa.2538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !30888
  store i64 %.sroa.29.0.ph.lcssa736.i, ptr %.sroa.2538.0..sroa_idx, align 8, !dbg !30888
  %.sroa.2639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !30888
  store i64 %.sroa.31.0.ph.lcssa775.i, ptr %.sroa.2639.0..sroa_idx, align 8, !dbg !30888
  %.sroa.2740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !30888
  store i64 %.sroa.33.0.ph.lcssa814.i, ptr %.sroa.2740.0..sroa_idx, align 8, !dbg !30888
  %.sroa.2841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !30888
  store i64 %.sroa.35.0.ph.lcssa853.i, ptr %.sroa.2841.0..sroa_idx, align 8, !dbg !30888
  %.sroa.2942.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !30888
  store i64 %.sroa.38.0.ph.lcssa892.i, ptr %.sroa.2942.0..sroa_idx, align 8, !dbg !30888
  %.sroa.3043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !30888
  store i64 %.sroa.41.0.ph.lcssa931.i, ptr %.sroa.3043.0..sroa_idx, align 8, !dbg !30888
  %.sroa.3144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !30888
  store i64 %.sroa.44.0.ph.lcssa970.i, ptr %.sroa.3144.0..sroa_idx, align 8, !dbg !30888
  %.sroa.3245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !30888
  store i64 %.sroa.47.0.ph.lcssa1009.i, ptr %.sroa.3245.0..sroa_idx, align 8, !dbg !30888
  %.sroa.3346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !30888
  store i8 %.sroa.50.0.ph.lcssa1048.i, ptr %.sroa.3346.0..sroa_idx, align 8, !dbg !30888
  %.sroa.3548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 262, !dbg !30888
  store i8 %.sroa.54.0.ph.lcssa1087.i, ptr %.sroa.3548.0..sroa_idx, align 2, !dbg !30888
  %.sroa.3750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 284, !dbg !30888
  store i8 %.sroa.59.0.ph.lcssa1126.i, ptr %.sroa.3750.0..sroa_idx, align 4, !dbg !30888
  %.sroa.3952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 306, !dbg !30888
  store i8 0, ptr %.sroa.3952.0..sroa_idx, align 2, !dbg !30888
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !30888
  store i8 %.sroa.65278.0.ph.lcssa1165.i, ptr %.sroa.4154.0..sroa_idx, align 8, !dbg !30888
  %.sroa.4255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 329, !dbg !30888
  store i8 %.sroa.68.0.ph.lcssa1204.i, ptr %.sroa.4255.0..sroa_idx, align 1, !dbg !30888
  %.sroa.4356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 330, !dbg !30888
  store i8 %.sroa.70.0.ph.lcssa1243.i, ptr %.sroa.4356.0..sroa_idx, align 2, !dbg !30888
  br label %bb.bg, !dbg !30890

bb.be:                                            ; preds = %bb.a
  store i64 2, ptr %0, align 8, !dbg !30891
  br label %bb.bf, !dbg !30892

bb.bf:                                            ; preds = %bb.bg, %bb.be
  ret void, !dbg !30893

bb.bg:                                            ; preds = %_RINvMs2_NtCshovLROGBtMy_11quinn_proto20transport_parametersNtB6_19TransportParameters4readINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB8_.exit, %_RINvMs2_NtCshovLROGBtMy_11quinn_proto20transport_parametersNtB6_19TransportParameters4readINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEEB8_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !30894
  br label %bb.bf, !dbg !30894
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB5_10TlsSessionNtB7_7Session22export_keying_material(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1368) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !30906 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !30946, !DIExpression(), !30962)
    #dbg_value(ptr %1, !30947, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30962)
    #dbg_value(i64 %2, !30947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30962)
    #dbg_value(ptr %3, !30948, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30962)
    #dbg_value(i64 %4, !30948, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30962)
    #dbg_value(ptr %5, !30949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30962)
    #dbg_value(i64 %6, !30949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30962)
    #dbg_declare(ptr %i.b, !30963, !DIExpression(), !30996)
    #dbg_declare(ptr poison, !30993, !DIExpression(), !30997)
    #dbg_declare(ptr poison, !30991, !DIExpression(), !30998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31014
    #dbg_value(ptr %0, !30999, !DIExpression(), !30923)
    #dbg_value(ptr %1, !31003, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30923)
    #dbg_value(i64 %2, !31003, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30923)
    #dbg_value(ptr %3, !31004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30923)
    #dbg_value(i64 %4, !31004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30923)
    #dbg_value(ptr %5, !31005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30923)
    #dbg_value(i64 %6, !31005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30923)
  %i.c = load i64, ptr %0, align 8, !dbg !31015, !range !7259, !alias.scope !31009, !noalias !31010, !noundef !3009
  %.not.i = icmp eq i64 %i.c, 2, !dbg !31015
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !31016

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !31007, !DIExpression(), !30930)
  call void @_RINvMs8_NtCsjx2R6KBUtVL_6rustls4connINtB6_14ConnectionCoreNtNtNtB8_6server11server_conn20ServerConnectionDataE22export_keying_materialQShECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1160) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 range(i64 0, -9223372036854775808) %6), !dbg !31017
  br label %_RINvMNtNtCsjx2R6KBUtVL_6rustls4quic10connectionNtB3_10Connection22export_keying_materialQShECshovLROGBtMy_11quinn_proto.exit, !dbg !31018

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !31006, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !30931)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !31019
  call void @_RINvMs8_NtCsjx2R6KBUtVL_6rustls4connINtB6_14ConnectionCoreNtNtNtB8_6client11client_conn20ClientConnectionDataE22export_keying_materialQShECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(960) %i.d, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 range(i64 0, -9223372036854775808) %6), !dbg !31020
  br label %_RINvMNtNtCsjx2R6KBUtVL_6rustls4quic10connectionNtB3_10Connection22export_keying_materialQShECshovLROGBtMy_11quinn_proto.exit, !dbg !31021

_RINvMNtNtCsjx2R6KBUtVL_6rustls4quic10connectionNtB3_10Connection22export_keying_materialQShECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.b, %bb.c
  %i.e = load i8, ptr %i.b, align 8, !dbg !31022, !range !8788, !noundef !3009
  %.not = icmp ne i8 %i.e, -1, !dbg !31022        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e, !dbg !31023

bb.d:                                             ; preds = %_RINvMNtNtCsjx2R6KBUtVL_6rustls4quic10connectionNtB3_10Connection22export_keying_materialQShECshovLROGBtMy_11quinn_proto.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !dbg !31024
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjx2R6KBUtVL_6rustls5error5ErrorECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a), !dbg !31025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31013
  br label %bb.e, !dbg !31026

bb.e:                                             ; preds = %_RINvMNtNtCsjx2R6KBUtVL_6rustls4quic10connectionNtB3_10Connection22export_keying_materialQShECshovLROGBtMy_11quinn_proto.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31027
  ret i1 %.not, !dbg !31026
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto9ring_likeNtNtNtCs8shshkhJObF_4ring4aead13less_safe_key11LessSafeKeyNtB7_7AeadKey4open(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(544) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31036 {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 5 uses
  %i.b = alloca [12 x i8], align 1                ; 4 uses
    #dbg_value(ptr %0, !31118, !DIExpression(), !31126)
    #dbg_value(ptr %0, !31127, !DIExpression(), !31136)
    #dbg_value(ptr %1, !31119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31126)
    #dbg_value(ptr %1, !31133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31136)
    #dbg_value(i64 %2, !31119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31126)
    #dbg_value(i64 %2, !31133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31136)
    #dbg_value(ptr %3, !31120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31126)
    #dbg_value(i64 %4, !31120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31126)
    #dbg_declare(ptr %i.b, !31122, !DIExpression(), !31137)
    #dbg_declare(ptr %i.b, !31131, !DIExpression(), !31138)
    #dbg_declare(ptr poison, !31139, !DIExpression(), !31142)
    #dbg_value(ptr %3, !31121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31143)
    #dbg_value(ptr %3, !31132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31136)
    #dbg_value(i64 %4, !31121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31143)
    #dbg_value(i64 %4, !31132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 0, i64 12, i1 false), !dbg !31204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31144), !dbg !31205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31206
    #dbg_value(ptr %0, !31151, !DIExpression(), !31053)
    #dbg_declare(ptr %i.b, !31152, !DIExpression(), !31054)
    #dbg_value(ptr %3, !31153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31053)
    #dbg_value(i64 %4, !31153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31053)
    #dbg_value(ptr %1, !31154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31053)
    #dbg_value(i64 %2, !31154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31053)
    #dbg_value(i64 0, !31155, !DIExpression(), !31053)
    #dbg_value(i64 0, !31164, !DIExpression(), !31055)
    #dbg_declare(ptr %i.a, !31161, !DIExpression(), !31056)
    #dbg_value(i64 16, !31146, !DIExpression(), !31057)
    #dbg_value(i64 %2, !31145, !DIExpression(), !31057)
  %i.c = icmp samesign ult i64 %2, 16, !dbg !31206
  br i1 %i.c, label %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit.thread, label %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit, !dbg !31206

_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31207
    #dbg_value(ptr null, !31166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31184)
    #dbg_value(i64 poison, !31166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31184)
  br label %bb.b, !dbg !31208

_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.a
    #dbg_value(i64 %2, !31156, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_stack_value), !31065)
    #dbg_value(ptr %1, !10590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31067)
    #dbg_value(ptr %1, !10595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31069)
    #dbg_value(i64 %2, !10590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31067)
    #dbg_value(i64 %2, !10595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31069)
    #dbg_value(i64 %2, !10592, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_stack_value), !31067)
    #dbg_value(i64 %2, !10596, !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_stack_value), !31069)
  %i.d = add nsw i64 %2, -16, !dbg !31209         ; 2 uses
    #dbg_value(i64 %i.d, !31156, !DIExpression(), !31065)
    #dbg_value(i64 %i.d, !10592, !DIExpression(), !31067)
    #dbg_value(i64 %i.d, !10596, !DIExpression(), !31069)
    #dbg_value(ptr %1, !6875, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31071)
    #dbg_value(i64 %2, !6875, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31071)
    #dbg_value(i64 %i.d, !6881, !DIExpression(), !31071)
    #dbg_value(i64 %i.d, !6887, !DIExpression(), !31073)
    #dbg_value(i64 %2, !6882, !DIExpression(), !31074)
    #dbg_value(ptr %1, !6884, !DIExpression(), !31075)
    #dbg_value(ptr %1, !6892, !DIExpression(), !31073)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d, !dbg !31210
    #dbg_value(ptr %1, !31159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31076)
    #dbg_value(i64 %i.d, !31159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31076)
    #dbg_value(ptr %i.e, !31160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31076)
    #dbg_value(ptr %i.e, !31185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31079)
    #dbg_value(i64 16, !31160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31076)
    #dbg_value(i64 16, !31185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31079)
    #dbg_value(ptr %i.e, !10603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31081)
    #dbg_value(ptr %i.e, !10609, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31083)
    #dbg_value(ptr %i.e, !10626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31085)
    #dbg_value(i64 16, !10603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31081)
    #dbg_value(i64 16, !10609, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31083)
    #dbg_value(i64 16, !10626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31085)
    #dbg_value(ptr %i.e, !10628, !DIExpression(), !31087)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !31211, !noalias !31187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31188), !dbg !31212
    #dbg_value(ptr %3, !31189, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31095)
    #dbg_value(i64 %4, !31189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31095)
    #dbg_value(ptr %0, !31193, !DIExpression(), !31095)
    #dbg_declare(ptr %i.b, !31194, !DIExpression(), !31096)
    #dbg_declare(ptr %i.a, !31195, !DIExpression(), !31097)
    #dbg_value(ptr %1, !31196, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31095)
    #dbg_value(i64 %i.d, !31196, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31095)
    #dbg_value(i64 0, !31197, !DIExpression(), !31095)
    #dbg_value(ptr %3, !31198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31098)
    #dbg_value(i64 %4, !31198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31098)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !31213
  %i.g = load ptr, ptr %i.f, align 16, !dbg !31213, !alias.scope !31200, !noalias !31201, !nonnull !3009, !align !6984, !noundef !3009
  tail call void @_RNvNtNtNtCs8shshkhJObF_4ring3cpu5intel12featureflags11get_or_init(), !dbg !31214, !noalias !31202
  %i.h = call { ptr, i64 } @_RNvMs_NtNtCs8shshkhJObF_4ring4aead9algorithmNtB4_9Algorithm11open_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(544) %0, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef 0), !dbg !31215 ; 3 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0, !dbg !31212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31207
    #dbg_value(ptr %i.i, !31166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31184)
    #dbg_value(i64 poison, !31166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31184)
  %i.j = icmp eq ptr %i.i, null, !dbg !31216
  %i.k = extractvalue { ptr, i64 } %i.h, 1
  %spec.select = select i1 %i.j, i64 undef, i64 %i.k, !dbg !31208
  br label %bb.b, !dbg !31208

bb.b:                                             ; preds = %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit, %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit.thread
  %5 = phi { ptr, i64 } [ %i.h, %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit ], [ { ptr null, i64 undef }, %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit.thread ]
  %.sroa.3.0 = phi i64 [ %spec.select, %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit ], [ undef, %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey11open_withinRShECshovLROGBtMy_11quinn_proto.exit.thread ], !dbg !31217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31218
  %i.l = insertvalue { ptr, i64 } %5, i64 %.sroa.3.0, 1, !dbg !31219
  ret { ptr, i64 } %i.l, !dbg !31219
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto9ring_likeNtNtNtCs8shshkhJObF_4ring4aead13less_safe_key11LessSafeKeyNtB7_7AeadKey4seal(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(544) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !31228 {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [17 x i8], align 1                ; 5 uses
  %i.c = alloca [12 x i8], align 1                ; 4 uses
    #dbg_value(ptr %0, !31285, !DIExpression(), !31293)
    #dbg_value(ptr %1, !31286, !DIExpression(), !31293)
    #dbg_value(ptr %2, !31287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31293)
    #dbg_value(i64 %3, !31287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31293)
    #dbg_declare(ptr %i.c, !31289, !DIExpression(), !31294)
    #dbg_declare(ptr poison, !31295, !DIExpression(), !31298)
    #dbg_value(ptr %2, !31288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31299)
    #dbg_value(i64 %3, !31288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31299)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !31364
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.c, i8 0, i64 12, i1 false), !dbg !31365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31300), !dbg !31366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31301), !dbg !31366
    #dbg_value(ptr %0, !31302, !DIExpression(), !31239)
    #dbg_declare(ptr %i.c, !31318, !DIExpression(), !31240)
    #dbg_value(ptr %2, !31319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31239)
    #dbg_value(i64 %3, !31319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31239)
    #dbg_value(ptr %1, !31320, !DIExpression(), !31239)
    #dbg_value(ptr %1, !31322, !DIExpression(), !31246)
    #dbg_value(ptr poison, !31337, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31249)
    #dbg_declare(ptr %i.b, !31333, !DIExpression(), !31250)
    #dbg_declare(ptr poison, !31334, !DIExpression(), !31251)
    #dbg_declare(ptr %i.a, !31340, !DIExpression(), !31252)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31367, !noalias !31342
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31368
  %.val.i = load ptr, ptr %i.d, align 8, !dbg !31368, !alias.scope !31301, !noalias !31343, !nonnull !3009, !noundef !3009
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31368
  %.val6.i = load i64, ptr %i.e, align 8, !dbg !31368, !alias.scope !31301, !noalias !31343, !noundef !3009
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31344), !dbg !31369
    #dbg_value(ptr %2, !31345, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31259)
    #dbg_value(i64 %3, !31345, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31259)
    #dbg_value(ptr %0, !31349, !DIExpression(), !31259)
    #dbg_declare(ptr %i.c, !31350, !DIExpression(), !31260)
    #dbg_declare(ptr %i.c, !31353, !DIExpression(), !31263)
    #dbg_value(ptr %.val.i, !31351, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31259)
    #dbg_value(ptr %.val.i, !31357, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31264)
    #dbg_value(i64 %.val6.i, !31351, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31259)
    #dbg_value(i64 %.val6.i, !31357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31264)
    #dbg_declare(ptr poison, !31358, !DIExpression(), !31265)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528, !dbg !31370
  %i.g = load ptr, ptr %i.f, align 16, !dbg !31370, !alias.scope !31360, !noalias !31361, !nonnull !3009, !align !6984, !noundef !3009
    #dbg_value(ptr %i.g, !31354, !DIExpression(), !31264)
    #dbg_value(ptr %0, !31355, !DIExpression(), !31264)
    #dbg_value(ptr %2, !31356, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31264)
    #dbg_value(i64 %3, !31356, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31264)
  tail call void @_RNvNtNtNtCs8shshkhJObF_4ring3cpu5intel12featureflags11get_or_init(), !dbg !31371, !noalias !31362
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !31372
  %i.i = load ptr, ptr %i.h, align 8, !dbg !31372, !noalias !31362, !nonnull !3009, !noundef !3009
  call void %i.i(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(address) dereferenceable(17) %i.b, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(544) %0, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull %.val.i, i64 noundef range(i64 0, -9223372036854775808) %.val6.i), !dbg !31372, !noalias !31301, !inline_history !31272
  %i.j = load i8, ptr %i.b, align 1, !dbg !31373, !range !6633, !noalias !31342, !noundef !3009
  %i.k = trunc nuw i8 %i.j to i1, !dbg !31373     ; 2 uses
  br i1 %i.k, label %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey24seal_in_place_append_tagRShINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit, label %bb.b, !dbg !31374

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !31375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31376, !noalias !31342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.l, i64 16, i1 false), !dbg !31375, !noalias !31342
  call void @_RINvXsl_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendRhE6extendRShECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16), !dbg !31377, !noalias !31363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31376, !noalias !31342
  br label %_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey24seal_in_place_append_tagRShINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit, !dbg !31378

_RINvMNtNtCs8shshkhJObF_4ring4aead13less_safe_keyNtB3_11LessSafeKey24seal_in_place_append_tagRShINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31379, !noalias !31342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !31380
  ret i1 %i.k, !dbg !31381
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1X_CseEeXhZwqjpo_16rustls_pki_typesNtB6_8UnixTimeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !31382 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !31387, !DIExpression(), !31390)
    #dbg_value(ptr %1, !31388, !DIExpression(), !31390)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31391
  store ptr %0, ptr %i.a, align 8, !dbg !31391
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73), !dbg !31392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31393
  ret i1 %i.b, !dbg !31394
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1q_4SyncEL_ENtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !31395 {
bb.a:
    #dbg_value(ptr %0, !31409, !DIExpression(), !31412)
    #dbg_value(ptr %1, !31410, !DIExpression(), !31412)
  %i.a = load ptr, ptr %0, align 8, !dbg !31427, !nonnull !3009, !align !6984, !noundef !3009 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !dbg !31428, !nonnull !3009, !noundef !3009
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !31428
  %.val2 = load ptr, ptr %i.b, align 8, !dbg !31428, !nonnull !3009, !align !6984, !noundef !3009 ; 2 uses
    #dbg_value(ptr poison, !31413, !DIExpression(), !31398)
    #dbg_value(ptr poison, !31418, !DIExpression(), !31402)
    #dbg_value(ptr %1, !31416, !DIExpression(), !31398)
  %i.c = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !31429
  %i.d = load i64, ptr %i.c, align 8, !dbg !31429, !range !7659, !invariant.load !3009, !noalias !31426
  %i.e = add nsw i64 %i.d, -1, !dbg !31429
  %i.f = and i64 %i.e, -16, !dbg !31429
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f, !dbg !31429
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !31429
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !31430
  %i.j = load ptr, ptr %i.i, align 8, !dbg !31430, !invariant.load !3009, !noalias !31426, !nonnull !3009
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26, !dbg !31430, !inline_history !31405
  ret i1 %i.k, !dbg !31431
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCshovLROGBtMy_11quinn_proto6config12ServerConfigENtB6_5Debug3fmtB18_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !31432 {
bb.a:
    #dbg_value(ptr %0, !31443, !DIExpression(), !31448)
    #dbg_value(ptr %1, !31444, !DIExpression(), !31448)
  %i.a = load ptr, ptr %0, align 8, !dbg !31458, !nonnull !3009, !align !6984, !noundef !3009
  %.val = load ptr, ptr %i.a, align 8, !dbg !31459, !nonnull !3009, !noundef !3009
    #dbg_value(ptr poison, !31449, !DIExpression(), !31435)
    #dbg_value(ptr poison, !31454, !DIExpression(), !31438)
    #dbg_value(ptr %1, !31452, !DIExpression(), !31435)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !31460
  %i.c = tail call noundef zeroext i1 @_RNvXs4_NtCshovLROGBtMy_11quinn_proto6configNtB5_12ServerConfigNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !31461
  ret i1 %i.c, !dbg !31462
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseEeXhZwqjpo_16rustls_pki_types11server_name12DnsNameInnerNtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !31463 {
bb.a:
    #dbg_value(ptr %0, !31468, !DIExpression(), !31471)
    #dbg_value(ptr %1, !31469, !DIExpression(), !31471)
  %i.a = load ptr, ptr %0, align 8, !dbg !31472, !nonnull !3009, !align !6984, !noundef !3009
  %i.b = tail call noundef zeroext i1 @_RNvXsh_NtCseEeXhZwqjpo_16rustls_pki_types11server_nameNtB5_12DnsNameInnerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !31473
  ret i1 %i.b, !dbg !31474
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums11ContentTypeNtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !31475 {
bb.a:
    #dbg_value(ptr %0, !31479, !DIExpression(), !31482)
    #dbg_value(ptr %1, !31480, !DIExpression(), !31482)
  %i.a = load ptr, ptr %0, align 8, !dbg !31483, !nonnull !3009, !noundef !3009
  %i.b = tail call noundef zeroext i1 @_RNvXsp_NtCsjx2R6KBUtVL_6rustls5enumsNtB5_11ContentTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !31484
  ret i1 %i.b, !dbg !31485
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums13HandshakeTypeNtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !31486 {
bb.a:
    #dbg_value(ptr %0, !31490, !DIExpression(), !31493)
    #dbg_value(ptr %1, !31491, !DIExpression(), !31493)
  %i.a = load ptr, ptr %0, align 8, !dbg !31494, !nonnull !3009, !noundef !3009
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtCsjx2R6KBUtVL_6rustls5enumsNtB5_13HandshakeTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !31495
  ret i1 %i.b, !dbg !31496
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums16AlertDescriptionNtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !31497 {
bb.a:
    #dbg_value(ptr %0, !31501, !DIExpression(), !31504)
    #dbg_value(ptr %1, !31502, !DIExpression(), !31504)
  %i.a = load ptr, ptr %0, align 8, !dbg !31505, !nonnull !3009, !noundef !3009
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtCsjx2R6KBUtVL_6rustls5enumsNtB5_16AlertDescriptionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !31506
  ret i1 %i.b, !dbg !31507
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error14InvalidMessageNtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !31508 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !31530, !DIExpression(), !31535)
    #dbg_value(ptr %1, !31531, !DIExpression(), !31535)
  %i.g = load ptr, ptr %0, align 8, !dbg !31552, !nonnull !3009, !align !6984, !noundef !3009 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31536), !dbg !31553
    #dbg_value(ptr %i.g, !31537, !DIExpression(), !31519)
    #dbg_value(ptr %1, !31541, !DIExpression(), !31519)
  %i.h = load i8, ptr %i.g, align 8, !dbg !31554, !range !31549, !alias.scope !31536, !noalias !31550, !noundef !3009
  switch i8 %i.h, label %default.unreachable [
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
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
end_hunk_0
