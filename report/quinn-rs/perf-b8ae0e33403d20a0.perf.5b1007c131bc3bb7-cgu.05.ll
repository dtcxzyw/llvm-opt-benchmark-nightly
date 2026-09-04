Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.05?download=true
inline.NumInlined: 234
inline.NumDeleted: 155
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCseEeXhZwqjpo_16rustls_pki_types6alg_id19AlgorithmIdentifierNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2291
@1 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2292
@2 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums11ContentTypeNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2293
@3 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5enums13HandshakeTypeNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2294
@4 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls5error18ExtendedKeyPurposeNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2295
@5 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsjx2R6KBUtVL_6rustls6suites20SupportedCipherSuiteNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2296
@6 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake16EchConfigPayloadNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2297
@7 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake18EchConfigExtensionNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2298
@8 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2299
@9 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2300
@10 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRRDNtNtCsjx2R6KBUtVL_6rustls6crypto16SupportedKxGroupEL_NtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2301
@11 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2302
@12 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2303
@13 = private unnamed_addr constant [34 x i8] c"stream did not contain valid UTF-8", align 1
@14 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @13, [9 x i8] c"\22\00\00\00\00\00\00\00\15", [7 x i8] undef }>, align 8
@15 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/io/read.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"L\00\00\00\00\00\00\00\0F\04\00\00\1F\00\00\00" }>, align 8
@17 = private unnamed_addr constant [27 x i8] c"failed to fill whole buffer", align 1
@18 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @17, [9 x i8] c"\1B\00\00\00\00\00\00\00%", [7 x i8] undef }>, align 8
@19 = private unnamed_addr constant [8 x i8] c"\C3 \00\00i\02\00\00", align 1
@20 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEEECs7OITKvp9Irj_4perf, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtNtB8_3fmt5Write9write_strCs7OITKvp9Irj_4perf, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtNtBb_3fmt5Write10write_charCs7OITKvp9Irj_4perf, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtNtBb_3fmt5Write9write_fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2304
@21 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@22 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@24 = private unnamed_addr constant [25 x i8] c"expected completed future", align 1
@25 = private unnamed_addr constant [14 x i8] c"expected Ok(_)", align 1
@26 = private unnamed_addr constant [19 x i8] c"perf/src/server.rs\00", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"\12\00\00\00\00\00\00\00i\00\00\00\05\00\00\00" }>, align 8
@_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@28 = private unnamed_addr constant [61 x i8] c"fatal runtime error: thread local panicked on drop, aborting\0A", align 1
@29 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@30 = private constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtCsbHiBx3jRrxb_6anyhow7contextINtB5_6QuotedQNtNtCskKLDkoKarTP_4core3fmt9FormatterENtBQ_5Write9write_str, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow7context6QuotedQNtNtCskKLDkoKarTP_4core3fmt9FormatterENtBK_5Write10write_charCs7OITKvp9Irj_4perf, ptr @_RNvYINtNtCsbHiBx3jRrxb_6anyhow7context6QuotedQNtNtCskKLDkoKarTP_4core3fmt9FormatterENtBK_5Write9write_fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2308
@31 = private unnamed_addr constant [4 x i8] c"None", align 1
@32 = private constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake16EchConfigPayloadENtB6_5Debug3fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2309
@33 = private unnamed_addr constant [4 x i8] c"Some", align 1
@34 = private constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs7OITKvp9Irj_4perf }>, align 8, !dbg !2310
@35 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@36 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @35, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8425 {
bb.a:
    #dbg_value(ptr poison, !8719, !DIExpression(), !8743)
    #dbg_value(ptr poison, !8759, !DIExpression(), !8771)
    #dbg_value(ptr poison, !8769, !DIExpression(), !8772)
    #dbg_value(ptr poison, !8773, !DIExpression(), !8782)
    #dbg_value(ptr poison, !8784, !DIExpression(), !8791)
    #dbg_value(ptr poison, !8789, !DIExpression(), !8792)
    #dbg_value(ptr %0, !8689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8793)
    #dbg_value(ptr %0, !8794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8802)
    #dbg_value(ptr %0, !8804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8814)
    #dbg_value(i64 %1, !8689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8793)
    #dbg_value(i64 %1, !8794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8802)
    #dbg_value(i64 %1, !8804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8814)
    #dbg_declare(ptr poison, !8690, !DIExpression(), !8815)
    #dbg_value(i64 0, !8691, !DIExpression(), !8816)
    #dbg_value(i64 0, !8694, !DIExpression(), !8817)
    #dbg_value(i64 0, !8797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8802)
    #dbg_value(i64 0, !8809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8814)
    #dbg_value(i64 0, !8818, !DIExpression(), !8822)
    #dbg_value(i64 0, !8692, !DIExpression(), !8823)
    #dbg_value(i64 0, !8695, !DIExpression(), !8817)
    #dbg_value(i64 0, !8696, !DIExpression(), !8824)
    #dbg_value(i64 0, !8797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8802)
    #dbg_value(i64 0, !8809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8814)
    #dbg_declare(ptr poison, !8825, !DIExpression(), !8831)
    #dbg_value(ptr %0, !8829, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8832)
    #dbg_value(i64 %1, !8829, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8832)
    #dbg_declare(ptr poison, !8833, !DIExpression(), !8841)
    #dbg_value(ptr %0, !8839, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8842)
    #dbg_value(ptr %0, !8843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8847)
    #dbg_value(i64 %1, !8839, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8842)
    #dbg_value(i64 %1, !8843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8847)
    #dbg_value(ptr %0, !8848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8852)
    #dbg_value(i64 %1, !8848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8852)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1, !dbg !9264 ; 6 uses
    #dbg_value(ptr %0, !8693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8853)
    #dbg_value(i64 %1, !8693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8853)
    #dbg_value(ptr %0, !8693, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8853)
    #dbg_value(ptr %i.a, !8693, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8853)
    #dbg_value(i64 0, !8693, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !8853)
    #dbg_value(ptr undef, !8789, !DIExpression(), !8792)
    #dbg_value(ptr undef, !8784, !DIExpression(), !8791)
  %i.b = icmp samesign eq i64 %1, 0, !dbg !9265
  br i1 %i.b, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit, label %.lr.ph.i.i, !dbg !9266

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64, !dbg !9267
    #dbg_value(ptr %i.d, !8932, !DIExpression(), !8942)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !9268 ; 3 uses
    #dbg_value(ptr %i.f, !8693, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8853)
  %i.g = load i8, ptr %i.d, align 1, !dbg !9269, !noalias !8943, !noundef !2347 ; 5 uses
    #dbg_value(i8 %i.g, !8862, !DIExpression(), !8944)
    #dbg_value(i8 %i.g, !8945, !DIExpression(), !8950)
  %i.h = icmp sgt i8 %i.g, -1, !dbg !9270
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit26.i.i.i.i.i, !dbg !9270

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit26.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31, !dbg !9271
  %i.j = zext nneg i8 %i.i to i32, !dbg !9271     ; 3 uses
    #dbg_value(i32 %i.j, !8865, !DIExpression(), !8951)
    #dbg_value(i32 %i.j, !8952, !DIExpression(), !8957)
    #dbg_value(ptr undef, !3454, !DIExpression(), !8958)
    #dbg_value(i64 1, !3475, !DIExpression(), !8959)
    #dbg_value(ptr %i.f, !3455, !DIExpression(), !8960)
    #dbg_value(ptr %i.f, !3474, !DIExpression(), !8959)
    #dbg_value(ptr %i.a, !3456, !DIExpression(), !8961)
    #dbg_value(ptr poison, !3439, !DIExpression(), !8962)
    #dbg_value(ptr poison, !3440, !DIExpression(), !8963)
  %i.k = icmp ne ptr %i.f, %i.a, !dbg !9272
  tail call void @llvm.assume(i1 %i.k), !dbg !9273
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !9274 ; 3 uses
    #dbg_value(ptr %i.l, !8693, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8853)
  %i.m = load i8, ptr %i.f, align 1, !dbg !9275, !noalias !8943, !noundef !2347
    #dbg_value(i8 %i.m, !8866, !DIExpression(), !8964)
    #dbg_value(i8 %i.m, !8955, !DIExpression(), !8957)
  %i.n = shl nuw nsw i32 %i.j, 6, !dbg !9276
  %i.o = and i8 %i.m, 63, !dbg !9277
  %i.p = zext nneg i8 %i.o to i32, !dbg !9277     ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p, !dbg !9276
    #dbg_value(i32 %i.q, !8867, !DIExpression(), !8965)
  %i.r = icmp samesign ugt i8 %i.g, -33, !dbg !9278
  br i1 %i.r, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit28.i.i.i.i.i, label %bb.c, !dbg !9278

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32, !dbg !9279
  br label %bb.c, !dbg !9280

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit28.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit26.i.i.i.i.i
    #dbg_value(ptr undef, !3454, !DIExpression(), !8967)
    #dbg_value(i64 1, !3475, !DIExpression(), !8968)
    #dbg_value(ptr %i.l, !3455, !DIExpression(), !8969)
    #dbg_value(ptr %i.l, !3474, !DIExpression(), !8968)
    #dbg_value(ptr %i.a, !3456, !DIExpression(), !8970)
    #dbg_value(ptr poison, !3439, !DIExpression(), !8971)
    #dbg_value(ptr poison, !3440, !DIExpression(), !8972)
  %i.t = icmp ne ptr %i.l, %i.a, !dbg !9281
  tail call void @llvm.assume(i1 %i.t), !dbg !9282
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3, !dbg !9283 ; 3 uses
    #dbg_value(ptr %i.u, !8693, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8853)
  %i.v = load i8, ptr %i.l, align 1, !dbg !9284, !noalias !8943, !noundef !2347
    #dbg_value(i8 %i.v, !8868, !DIExpression(), !8973)
    #dbg_value(i8 %i.v, !8955, !DIExpression(), !8974)
    #dbg_value(i32 %i.p, !8952, !DIExpression(), !8974)
  %i.w = shl nuw nsw i32 %i.p, 6, !dbg !9285
  %i.x = and i8 %i.v, 63, !dbg !9286
  %i.y = zext nneg i8 %i.x to i32, !dbg !9286
  %i.z = or disjoint i32 %i.w, %i.y, !dbg !9285   ; 2 uses
    #dbg_value(i32 %i.z, !8869, !DIExpression(), !8975)
    #dbg_value(i32 %i.z, !8952, !DIExpression(), !8976)
  %i.aa = shl nuw nsw i32 %i.j, 12, !dbg !9287
  %i.ab = or disjoint i32 %i.z, %i.aa, !dbg !9288
    #dbg_value(i32 %i.ab, !8867, !DIExpression(), !8965)
  %i.ac = icmp samesign ugt i8 %i.g, -17, !dbg !9289
  br i1 %i.ac, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i, label %bb.c, !dbg !9289

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit28.i.i.i.i.i
    #dbg_value(ptr undef, !3454, !DIExpression(), !8977)
    #dbg_value(i64 1, !3475, !DIExpression(), !8978)
    #dbg_value(ptr %i.u, !3455, !DIExpression(), !8979)
    #dbg_value(ptr %i.u, !3474, !DIExpression(), !8978)
    #dbg_value(ptr %i.a, !3456, !DIExpression(), !8980)
    #dbg_value(ptr poison, !3439, !DIExpression(), !8981)
    #dbg_value(ptr poison, !3440, !DIExpression(), !8982)
  %i.ad = icmp ne ptr %i.u, %i.a, !dbg !9290
  tail call void @llvm.assume(i1 %i.ad), !dbg !9291
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !9292
    #dbg_value(ptr %i.ae, !8693, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8853)
  %i.af = load i8, ptr %i.u, align 1, !dbg !9293, !noalias !8943, !noundef !2347
    #dbg_value(i8 %i.af, !8870, !DIExpression(), !8983)
    #dbg_value(i8 %i.af, !8955, !DIExpression(), !8976)
  %i.ag = shl nuw nsw i32 %i.j, 18, !dbg !9294
  %i.ah = and i32 %i.ag, 1835008, !dbg !9294
  %i.ai = shl nuw nsw i32 %i.z, 6, !dbg !9295
  %i.aj = and i8 %i.af, 63, !dbg !9296
  %i.ak = zext nneg i8 %i.aj to i32, !dbg !9296
  %i.al = or disjoint i32 %i.ai, %i.ak, !dbg !9295
  %i.am = or disjoint i32 %i.al, %i.ah, !dbg !9297
    #dbg_value(i32 %i.am, !8867, !DIExpression(), !8965)
  br label %bb.c, !dbg !9298

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit28.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit26.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit28.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit26.i.i.i.i.i ], !dbg !9299 ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit28.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7OITKvp9Irj_4perf.exit26.i.i.i.i.i ] ; 8 uses
    #dbg_value(ptr %.sroa.4.0, !8693, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8853)
    #dbg_value(i32 1, !8985, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8996)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !8985, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8996)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !8994, !DIExpression(), !8997)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !8998, !DIExpression(), !9002)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !9003, !DIExpression(), !9007)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !9009, !DIExpression(), !9014)
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112, !dbg !9300
  tail call void @llvm.assume(i1 %i.an), !dbg !9300
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !8913, !DIExpression(), !9015)
    #dbg_value(i64 %i.c, !8914, !DIExpression(), !9016)
    #dbg_value(ptr undef, !8938, !DIExpression(), !9017)
    #dbg_value(i64 1, !8921, !DIExpression(), !9018)
    #dbg_value(ptr %i.a, !8940, !DIExpression(), !9019)
    #dbg_value(ptr %i.a, !8931, !DIExpression(), !9020)
    #dbg_value(ptr %.sroa.4.0, !8932, !DIExpression(), !9020)
    #dbg_value(ptr %i.a, !8925, !DIExpression(), !9021)
    #dbg_value(ptr %.sroa.4.0, !8926, !DIExpression(), !9021)
    #dbg_value(ptr %.sroa.4.0, !8920, !DIExpression(), !9022)
    #dbg_value(ptr %i.a, !8919, !DIExpression(), !9022)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64, !dbg !9301
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.ao), !8915, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9023)
  %i.ap = sub i64 %i.ao, %i.e, !dbg !9302
  %i.aq = add i64 %i.ap, %i.c, !dbg !9303         ; 4 uses
    #dbg_value(i64 %i.c, !8777, !DIExpression(), !9024)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !8778, !DIExpression(), !9024)
    #dbg_value(ptr undef, !8938, !DIExpression(), !9025)
    #dbg_value(i64 1, !8921, !DIExpression(), !9026)
    #dbg_value(ptr %i.a, !8940, !DIExpression(), !9027)
    #dbg_value(ptr %i.a, !8931, !DIExpression(), !9028)
    #dbg_value(ptr %.sroa.4.0, !8932, !DIExpression(), !9028)
    #dbg_value(ptr %i.a, !8925, !DIExpression(), !9029)
    #dbg_value(ptr %.sroa.4.0, !8926, !DIExpression(), !9029)
    #dbg_value(ptr %.sroa.4.0, !8920, !DIExpression(), !9030)
    #dbg_value(ptr %i.a, !8919, !DIExpression(), !9030)
    #dbg_value(!DIArgList(ptr %i.a, i64 %i.ao), !8779, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9031)
    #dbg_value(i64 %i.ap, !8780, !DIExpression(), !9032)
    #dbg_value(ptr poison, !9034, !DIExpression(), !9040)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !9038, !DIExpression(), !9040)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !9042, !DIExpression(), !9052)
    #dbg_value(ptr poison, !9047, !DIExpression(), !9052)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !9053, !DIExpression(), !9055)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i
    i32 13, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i
    i32 12, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i
    i32 11, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i
    i32 10, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i
    i32 9, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i
  ], !dbg !9304

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133, !dbg !9305
  br i1 %i.ar, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit, label %bb.e, !dbg !9305

bb.e:                                             ; preds = %bb.d
    #dbg_value(i32 %.sroa.4.0.i.ph.i.i.i.i, !9057, !DIExpression(), !9062)
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8, !dbg !9306
  switch i32 %i.as, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ], !dbg !9307

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760, !dbg !9308
  %i.au = zext i1 %i.at to i8, !dbg !9308
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i, !dbg !9309

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288, !dbg !9310
  %i.aw = zext i1 %i.av to i8, !dbg !9310
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i, !dbg !9311

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255, !dbg !9312
  %i.ay = zext nneg i32 %i.ax to i64, !dbg !9312
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay, !dbg !9313
  %i.ba = load i8, ptr %i.az, align 1, !dbg !9313, !noalias !9063, !noundef !2347
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i, !dbg !9314

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255, !dbg !9315
  %i.bc = zext nneg i32 %i.bb to i64, !dbg !9315
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc, !dbg !9316
  %i.be = load i8, ptr %i.bd, align 1, !dbg !9316, !noalias !9063, !noundef !2347
  %i.bf = lshr i8 %i.be, 1, !dbg !9316
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i, !dbg !9317

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ], !dbg !9062
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1, !dbg !9318
  br i1 %i.bg, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit, !dbg !9319

_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
    #dbg_value(ptr undef, !8773, !DIExpression(), !8782)
    #dbg_value(ptr undef, !8775, !DIExpression(), !9064)
    #dbg_value(ptr undef, !8938, !DIExpression(), !9065)
    #dbg_value(i64 1, !8921, !DIExpression(), !9066)
    #dbg_value(ptr %i.a, !8940, !DIExpression(), !9067)
    #dbg_value(ptr %i.a, !8931, !DIExpression(), !8942)
    #dbg_value(ptr %.sroa.4.0, !8932, !DIExpression(), !8942)
    #dbg_value(ptr %i.a, !8925, !DIExpression(), !9068)
    #dbg_value(ptr %.sroa.4.0, !8926, !DIExpression(), !9068)
    #dbg_value(ptr %.sroa.4.0, !8920, !DIExpression(), !9069)
    #dbg_value(ptr %i.a, !8919, !DIExpression(), !9069)
    #dbg_value(!DIArgList(ptr %i.a, ptr %.sroa.4.0), !8776, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9070)
    #dbg_value(ptr undef, !8911, !DIExpression(), !9071)
    #dbg_declare(ptr poison, !8993, !DIExpression(), !9072)
    #dbg_value(ptr undef, !8938, !DIExpression(), !9073)
    #dbg_value(i64 1, !8921, !DIExpression(), !9074)
    #dbg_value(ptr %i.a, !8940, !DIExpression(), !9075)
    #dbg_value(ptr %i.a, !8931, !DIExpression(), !9076)
    #dbg_value(ptr %.sroa.4.0, !8932, !DIExpression(), !9076)
    #dbg_value(ptr %i.a, !8925, !DIExpression(), !9077)
    #dbg_value(ptr %.sroa.4.0, !8926, !DIExpression(), !9077)
    #dbg_value(ptr %.sroa.4.0, !8920, !DIExpression(), !9078)
    #dbg_value(ptr %i.a, !8919, !DIExpression(), !9078)
    #dbg_value(!DIArgList(ptr %i.a, ptr %.sroa.4.0), !8912, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9079)
    #dbg_value(ptr undef, !8894, !DIExpression(), !9080)
    #dbg_value(ptr undef, !8861, !DIExpression(), !8984)
    #dbg_value(i32 2, !8948, !DIExpression(), !8950)
    #dbg_value(ptr undef, !3454, !DIExpression(), !9081)
    #dbg_value(i64 1, !3475, !DIExpression(), !9082)
    #dbg_value(ptr %.sroa.4.0, !3455, !DIExpression(), !9083)
    #dbg_value(ptr %.sroa.4.0, !3474, !DIExpression(), !9082)
    #dbg_value(ptr %i.a, !3456, !DIExpression(), !9084)
    #dbg_value(ptr poison, !3439, !DIExpression(), !9085)
    #dbg_value(ptr poison, !3440, !DIExpression(), !9086)
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a, !dbg !9265
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i, !dbg !9266

_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit: ; preds = %bb.e, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.127 = phi ptr [ %0, %bb.a ], [ %.sroa.4.0, %bb.d ], [ %.sroa.4.0, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i ], [ %.sroa.4.0, %bb.e ] ; 6 uses
  %.sroa.18.025 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ], [ %i.aq, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i ], [ %i.aq, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i ], [ %i.c, %bb.e ], !dbg !8793 ; 3 uses
    #dbg_value(i64 %.sroa.0.0, !8818, !DIExpression(), !8822)
    #dbg_value(i64 %.sroa.0.0, !8809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8814)
    #dbg_value(i64 %.sroa.0.0, !8797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8802)
    #dbg_value(i64 %.sroa.0.0, !8694, !DIExpression(), !8817)
    #dbg_value(i64 %.sroa.0.0, !8691, !DIExpression(), !8816)
    #dbg_value(i64 %.sroa.18.025, !8809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8814)
    #dbg_value(i64 %.sroa.18.025, !8797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8802)
    #dbg_value(i64 %.sroa.18.025, !8696, !DIExpression(), !8824)
    #dbg_value(i64 %.sroa.18.025, !8695, !DIExpression(), !8817)
    #dbg_value(i64 %.sroa.18.025, !8692, !DIExpression(), !8823)
    #dbg_value(ptr undef, !8769, !DIExpression(), !8772)
    #dbg_value(ptr undef, !8759, !DIExpression(), !8771)
  %i.bi = icmp eq ptr %.sroa.4.127, %i.a, !dbg !9320
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i10, !dbg !9321

.lr.ph.i.i10:                                     ; preds = %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit ] ; 5 uses
    #dbg_value(ptr undef, !9114, !DIExpression(), !9122)
    #dbg_value(ptr %i.bj, !9128, !DIExpression(), !9132)
    #dbg_value(ptr %i.bj, !9133, !DIExpression(), !9139)
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1, !dbg !9322 ; 3 uses
    #dbg_value(ptr %i.bk, !9128, !DIExpression(), !9132)
    #dbg_value(ptr %i.bk, !9133, !DIExpression(), !9139)
    #dbg_value(ptr %i.bk, !8693, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8853)
    #dbg_value(ptr %i.bk, !9100, !DIExpression(), !9140)
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !9323, !noalias !9141, !noundef !2347 ; 3 uses
    #dbg_value(i8 %i.bl, !9096, !DIExpression(), !9142)
    #dbg_value(i8 %i.bl, !9099, !DIExpression(), !9140)
    #dbg_value(i8 %i.bl, !9143, !DIExpression(), !9146)
  %i.bm = icmp sgt i8 %i.bl, -1, !dbg !9323
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i, !dbg !9323

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i: ; preds = %.lr.ph.i.i10
    #dbg_value(ptr undef, !9091, !DIExpression(), !9147)
    #dbg_value(ptr undef, !9126, !DIExpression(), !9148)
    #dbg_value(ptr undef, !9118, !DIExpression(), !9149)
    #dbg_value(i64 1, !9119, !DIExpression(), !9149)
    #dbg_value(i64 1, !9130, !DIExpression(), !9150)
    #dbg_value(i64 -1, !9137, !DIExpression(), !9151)
    #dbg_value(ptr %i.bk, !9093, !DIExpression(), !9152)
    #dbg_value(ptr undef, !9087, !DIExpression(), !9153)
    #dbg_value(ptr poison, !9088, !DIExpression(), !9154)
  %i.bn = icmp ne ptr %.sroa.4.127, %i.bk, !dbg !9324
  tail call void @llvm.assume(i1 %i.bn), !dbg !9325
    #dbg_value(ptr undef, !9114, !DIExpression(), !9155)
    #dbg_value(ptr %i.bk, !9128, !DIExpression(), !9150)
    #dbg_value(ptr %i.bk, !9133, !DIExpression(), !9151)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2, !dbg !9326 ; 3 uses
    #dbg_value(ptr %i.bo, !9128, !DIExpression(), !9150)
    #dbg_value(ptr %i.bo, !9133, !DIExpression(), !9151)
    #dbg_value(ptr %i.bo, !8693, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8853)
  %i.bp = load i8, ptr %i.bo, align 1, !dbg !9327, !noalias !9141, !noundef !2347 ; 3 uses
    #dbg_value(i8 %i.bp, !9103, !DIExpression(), !9156)
    #dbg_value(i8 %i.bp, !9157, !DIExpression(), !9160)
    #dbg_value(i8 %i.bp, !9161, !DIExpression(), !9165)
    #dbg_value(i8 %i.bp, !9143, !DIExpression(), !9166)
  %i.bq = and i8 %i.bp, 31, !dbg !9328
  %i.br = zext nneg i8 %i.bq to i32, !dbg !9328
    #dbg_value(i32 %i.br, !9102, !DIExpression(), !9167)
    #dbg_value(i32 %i.br, !9144, !DIExpression(), !9168)
    #dbg_value(i32 %i.br, !9144, !DIExpression(), !9166)
    #dbg_value(i32 %i.br, !9144, !DIExpression(), !9146)
  %i.bs = icmp slt i8 %i.bp, -64, !dbg !9329
  br i1 %i.bs, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit32.i.i.i.i.i, label %bb.k, !dbg !9330

bb.j:                                             ; preds = %.lr.ph.i.i10
  %i.bt = zext nneg i8 %i.bl to i32, !dbg !9331
  br label %bb.m, !dbg !9332

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit32.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i
    #dbg_value(ptr undef, !9091, !DIExpression(), !9170)
    #dbg_value(ptr undef, !9126, !DIExpression(), !9171)
    #dbg_value(ptr undef, !9118, !DIExpression(), !9172)
    #dbg_value(i64 1, !9119, !DIExpression(), !9172)
    #dbg_value(i64 1, !9130, !DIExpression(), !9173)
    #dbg_value(i64 -1, !9137, !DIExpression(), !9174)
    #dbg_value(ptr %i.bo, !9093, !DIExpression(), !9175)
    #dbg_value(ptr undef, !9087, !DIExpression(), !9176)
    #dbg_value(ptr poison, !9088, !DIExpression(), !9177)
  %i.bu = icmp ne ptr %.sroa.4.127, %i.bo, !dbg !9333
  tail call void @llvm.assume(i1 %i.bu), !dbg !9334
    #dbg_value(ptr undef, !9114, !DIExpression(), !9178)
    #dbg_value(ptr %i.bo, !9128, !DIExpression(), !9173)
    #dbg_value(ptr %i.bo, !9133, !DIExpression(), !9174)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3, !dbg !9335 ; 3 uses
    #dbg_value(ptr %i.bv, !9128, !DIExpression(), !9173)
    #dbg_value(ptr %i.bv, !9133, !DIExpression(), !9174)
    #dbg_value(ptr %i.bv, !8693, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8853)
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !9336, !noalias !9141, !noundef !2347 ; 3 uses
    #dbg_value(i8 %i.bw, !9104, !DIExpression(), !9179)
    #dbg_value(i8 %i.bw, !9157, !DIExpression(), !9180)
    #dbg_value(i8 %i.bw, !9161, !DIExpression(), !9181)
    #dbg_value(i8 %i.bw, !9143, !DIExpression(), !9168)
  %i.bx = and i8 %i.bw, 15, !dbg !9337
  %i.by = zext nneg i8 %i.bx to i32, !dbg !9337
    #dbg_value(i32 %i.by, !9102, !DIExpression(), !9167)
    #dbg_value(i32 %i.by, !9144, !DIExpression(), !9168)
    #dbg_value(i32 %i.by, !9144, !DIExpression(), !9166)
    #dbg_value(i32 %i.by, !9144, !DIExpression(), !9146)
  %i.bz = icmp slt i8 %i.bw, -64, !dbg !9338
  br i1 %i.bz, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit34.i.i.i.i.i, label %bb.l, !dbg !9339

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit30.i.i.i.i.i ], !dbg !9156
    #dbg_value(i32 %.sroa.010.0.i.i.i.i.i, !9144, !DIExpression(), !9168)
    #dbg_value(i32 %.sroa.010.0.i.i.i.i.i, !9102, !DIExpression(), !9167)
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6, !dbg !9340
  %i.cc = and i8 %i.bl, 63, !dbg !9341
  %i.cd = zext nneg i8 %i.cc to i32, !dbg !9341
  %i.ce = or disjoint i32 %i.cb, %i.cd, !dbg !9340
    #dbg_value(i32 %i.ce, !9102, !DIExpression(), !9167)
    #dbg_value(i32 %i.ce, !9144, !DIExpression(), !9168)
    #dbg_value(i32 %i.ce, !9144, !DIExpression(), !9166)
    #dbg_value(i32 %i.ce, !9144, !DIExpression(), !9146)
  br label %bb.m, !dbg !9342

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit34.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit32.i.i.i.i.i
    #dbg_value(ptr undef, !9091, !DIExpression(), !9182)
    #dbg_value(ptr undef, !9126, !DIExpression(), !9183)
    #dbg_value(ptr undef, !9118, !DIExpression(), !9184)
    #dbg_value(i64 1, !9119, !DIExpression(), !9184)
    #dbg_value(i64 1, !9130, !DIExpression(), !9185)
    #dbg_value(i64 -1, !9137, !DIExpression(), !9186)
    #dbg_value(ptr %i.bv, !9093, !DIExpression(), !9187)
    #dbg_value(ptr undef, !9087, !DIExpression(), !9188)
    #dbg_value(ptr poison, !9088, !DIExpression(), !9189)
  %i.cf = icmp ne ptr %.sroa.4.127, %i.bv, !dbg !9343
  tail call void @llvm.assume(i1 %i.cf), !dbg !9344
    #dbg_value(ptr undef, !9114, !DIExpression(), !9190)
    #dbg_value(ptr %i.bv, !9128, !DIExpression(), !9185)
    #dbg_value(ptr %i.bv, !9133, !DIExpression(), !9186)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4, !dbg !9345 ; 2 uses
    #dbg_value(ptr %i.cg, !9128, !DIExpression(), !9185)
    #dbg_value(ptr %i.cg, !9133, !DIExpression(), !9186)
    #dbg_value(ptr %i.cg, !8693, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8853)
  %i.ch = load i8, ptr %i.cg, align 1, !dbg !9346, !noalias !9141, !noundef !2347
    #dbg_value(i8 %i.ch, !9105, !DIExpression(), !9191)
    #dbg_value(i8 %i.ch, !9157, !DIExpression(), !9192)
  %i.ci = and i8 %i.ch, 7, !dbg !9347
  %i.cj = zext nneg i8 %i.ci to i32, !dbg !9347
    #dbg_value(i32 %i.cj, !9102, !DIExpression(), !9167)
    #dbg_value(i32 %i.cj, !9144, !DIExpression(), !9168)
    #dbg_value(i32 %i.cj, !9144, !DIExpression(), !9166)
    #dbg_value(i32 %i.cj, !9144, !DIExpression(), !9146)
  %i.ck = shl nuw nsw i32 %i.cj, 6, !dbg !9348
  %i.cl = and i8 %i.bw, 63, !dbg !9349
  %i.cm = zext nneg i8 %i.cl to i32, !dbg !9349
  %i.cn = or disjoint i32 %i.ck, %i.cm, !dbg !9348
    #dbg_value(i32 %i.cn, !9102, !DIExpression(), !9167)
    #dbg_value(i32 %i.cn, !9144, !DIExpression(), !9168)
    #dbg_value(i32 %i.cn, !9144, !DIExpression(), !9166)
    #dbg_value(i32 %i.cn, !9144, !DIExpression(), !9146)
  br label %bb.l, !dbg !9350

bb.l:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit34.i.i.i.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit32.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit34.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit32.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit34.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7OITKvp9Irj_4perf.exit32.i.i.i.i.i ], !dbg !9179
    #dbg_value(i32 %.sroa.010.1.i.i.i.i.i, !9144, !DIExpression(), !9168)
    #dbg_value(i32 %.sroa.010.1.i.i.i.i.i, !9102, !DIExpression(), !9167)
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6, !dbg !9351
  %i.cq = and i8 %i.bp, 63, !dbg !9352
  %i.cr = zext nneg i8 %i.cq to i32, !dbg !9352
  %i.cs = or disjoint i32 %i.cp, %i.cr, !dbg !9351
    #dbg_value(i32 %i.cs, !9102, !DIExpression(), !9167)
    #dbg_value(i32 %i.cs, !9144, !DIExpression(), !9168)
    #dbg_value(i32 %i.cs, !9144, !DIExpression(), !9166)
    #dbg_value(i32 %i.cs, !9144, !DIExpression(), !9146)
  br label %bb.k, !dbg !9353

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ], !dbg !9354 ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
    #dbg_value(i32 1, !9193, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !9203)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !9193, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !9203)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !9201, !DIExpression(), !9204)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !9205, !DIExpression(), !9209)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !9210, !DIExpression(), !9212)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !9213, !DIExpression(), !9215)
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112, !dbg !9355
  tail call void @llvm.assume(i1 %i.cu), !dbg !9355
    #dbg_value(ptr undef, !8938, !DIExpression(), !9216)
    #dbg_value(!DIArgList(i64 %.sroa.18.025, ptr %i.ct, ptr %.sroa.4.127), !8738, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !9240)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !8739, !DIExpression(), !9240)
    #dbg_value(ptr undef, !8938, !DIExpression(), !9241)
    #dbg_value(!DIArgList(ptr %i.ct, ptr %.sroa.4.127), !8740, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9242)
    #dbg_value(!DIArgList(ptr %i.bj, ptr %i.ct), !8741, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9243)
    #dbg_value(ptr poison, !9034, !DIExpression(), !9244)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !9038, !DIExpression(), !9244)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !9042, !DIExpression(), !9245)
    #dbg_value(ptr poison, !9047, !DIExpression(), !9245)
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !9053, !DIExpression(), !9246)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ], !dbg !9356

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133, !dbg !9357
  br i1 %i.cv, label %bb.u, label %bb.o, !dbg !9357

bb.o:                                             ; preds = %bb.n
    #dbg_value(i32 %.sroa.4.1.i.ph.i.i.i.i, !9057, !DIExpression(), !9247)
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8, !dbg !9358
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ], !dbg !9359

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760, !dbg !9360
  %i.cy = zext i1 %i.cx to i8, !dbg !9360
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i12, !dbg !9361

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288, !dbg !9362
  %i.da = zext i1 %i.cz to i8, !dbg !9362
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i12, !dbg !9363

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255, !dbg !9364
  %i.dc = zext nneg i32 %i.db to i64, !dbg !9364
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc, !dbg !9365
  %i.de = load i8, ptr %i.dd, align 1, !dbg !9365, !noalias !9248, !noundef !2347
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i12, !dbg !9366

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255, !dbg !9367
  %i.dg = zext nneg i32 %i.df to i64, !dbg !9367
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg, !dbg !9368
  %i.di = load i8, ptr %i.dh, align 1, !dbg !9368, !noalias !9248, !noundef !2347
  %i.dj = lshr i8 %i.di, 1, !dbg !9368
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i12, !dbg !9369

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i12: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i13 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ], !dbg !9247
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i13 to i1, !dbg !9370
  br i1 %i.dk, label %bb.t, label %bb.u, !dbg !9371

bb.t:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i12, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
    #dbg_value(ptr undef, !8719, !DIExpression(), !8743)
    #dbg_value(ptr undef, !8736, !DIExpression(), !9249)
    #dbg_value(ptr undef, !8938, !DIExpression(), !9250)
    #dbg_value(!DIArgList(ptr %i.ct, ptr %.sroa.4.127), !8737, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9251)
    #dbg_value(ptr undef, !9111, !DIExpression(), !9252)
    #dbg_declare(ptr poison, !9200, !DIExpression(), !9253)
    #dbg_value(ptr undef, !9108, !DIExpression(), !9254)
    #dbg_value(ptr undef, !9095, !DIExpression(), !9255)
    #dbg_value(i32 2, !9158, !DIExpression(), !9160)
    #dbg_value(i32 3, !9158, !DIExpression(), !9180)
    #dbg_value(i32 4, !9158, !DIExpression(), !9192)
    #dbg_value(ptr undef, !9091, !DIExpression(), !9256)
    #dbg_value(ptr undef, !9126, !DIExpression(), !9257)
    #dbg_value(ptr undef, !9118, !DIExpression(), !9258)
    #dbg_value(i64 1, !9119, !DIExpression(), !9258)
    #dbg_value(i64 1, !9130, !DIExpression(), !9132)
    #dbg_value(i64 -1, !9137, !DIExpression(), !9139)
    #dbg_value(ptr %i.ct, !9093, !DIExpression(), !9259)
    #dbg_value(ptr undef, !9087, !DIExpression(), !9260)
    #dbg_value(ptr poison, !9088, !DIExpression(), !9261)
  %i.dl = icmp eq ptr %.sroa.4.127, %i.ct, !dbg !9320
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i10, !dbg !9321

bb.u:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs7OITKvp9Irj_4perf.exit.i.i.i12, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.127 to i64
  %i.do = sub i64 %.sroa.18.025, %i.dn
  %i.dp = add i64 %i.do, %i.dm, !dbg !9243
    #dbg_value(i64 %i.dp, !8692, !DIExpression(), !8823)
    #dbg_value(i64 %i.dp, !8695, !DIExpression(), !8817)
    #dbg_value(i64 %i.dp, !8696, !DIExpression(), !8824)
    #dbg_value(i64 %i.dp, !8797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8802)
    #dbg_value(i64 %i.dp, !8809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8814)
  br label %.loopexit, !dbg !9372

.loopexit:                                        ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i, %bb.t, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit, %bb.u
  %.sroa.0.048 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %.sroa.18.025, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs7OITKvp9Irj_4perf.exit ], [ %.sroa.18.025, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs7OITKvp9Irj_4perf.exit.i.i ], !dbg !8853
    #dbg_value(i64 %.sroa.02.1, !8809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8814)
    #dbg_value(i64 %.sroa.02.1, !8797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8802)
    #dbg_value(i64 %.sroa.02.1, !8696, !DIExpression(), !8824)
    #dbg_value(i64 %.sroa.02.1, !8695, !DIExpression(), !8817)
    #dbg_value(i64 %.sroa.02.1, !8692, !DIExpression(), !8823)
    #dbg_value(ptr %0, !8810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9262)
    #dbg_value(i64 %1, !8810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9262)
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.048, !dbg !9373
    #dbg_value(i64 %i.dq, !8811, !DIExpression(), !9263)
    #dbg_value(ptr %0, !8819, !DIExpression(), !8822)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.048, !dbg !9374
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0, !dbg !9375
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1, !dbg !9375
  ret { ptr, i64 } %i.dt, !dbg !9375
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openRNtNtB8_4path7PathBufECs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9376 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
    #dbg_value(ptr %1, !9382, !DIExpression(), !9384)
    #dbg_value(ptr %1, !9382, !DIExpression(), !9384)
    #dbg_value(i8 1, !9385, !DIExpression(), !9390)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9391
  store i128 18446745954905227264, ptr %i.a, align 16, !dbg !9395
    #dbg_value(ptr %i.a, !9387, !DIExpression(), !9392)
    #dbg_value(ptr undef, !9382, !DIExpression(DW_OP_deref), !9384)
    #dbg_value(ptr poison, !3536, !DIExpression(), !9393)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9396
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !9396, !nonnull !2347, !noundef !2347
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9396
  %.val1.i = load i64, ptr %i.c, align 8, !dbg !9396, !noundef !2347
    #dbg_value(ptr %.val.i, !3555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9394)
    #dbg_value(i64 %.val1.i, !3555, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9394)
    #dbg_value(ptr %i.a, !3562, !DIExpression(), !9394)
  call void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !9397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9398
  ret void, !dbg !9399
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File6createRNtNtB8_4path4PathECs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9400 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
    #dbg_value(ptr %1, !9409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9411)
    #dbg_value(i64 %2, !9409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9411)
    #dbg_value(i8 1, !9412, !DIExpression(), !9416)
    #dbg_value(i8 1, !9417, !DIExpression(), !9421)
    #dbg_value(i8 1, !9422, !DIExpression(), !9426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9427
  store i128 79537652246452167413109620736, ptr %i.a, align 16, !dbg !9432
    #dbg_value(ptr %i.a, !9413, !DIExpression(), !9428)
    #dbg_value(ptr %i.a, !9418, !DIExpression(), !9429)
    #dbg_value(ptr %i.a, !9423, !DIExpression(), !9430)
    #dbg_value(ptr %1, !3555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9431)
    #dbg_value(i64 %2, !3555, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9431)
    #dbg_value(ptr %i.a, !3562, !DIExpression(), !9431)
  call void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !9433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9434
  ret void, !dbg !9435
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File6createRNtNtB8_4path7PathBufECs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9436 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
    #dbg_value(ptr %1, !9444, !DIExpression(), !9446)
    #dbg_value(ptr %1, !9444, !DIExpression(), !9446)
    #dbg_value(i8 1, !9447, !DIExpression(), !9451)
    #dbg_value(i8 1, !9452, !DIExpression(), !9456)
    #dbg_value(i8 1, !9457, !DIExpression(), !9461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9462
  store i128 79537652246452167413109620736, ptr %i.a, align 16, !dbg !9468
    #dbg_value(ptr %i.a, !9448, !DIExpression(), !9463)
    #dbg_value(ptr %i.a, !9453, !DIExpression(), !9464)
    #dbg_value(ptr %i.a, !9458, !DIExpression(), !9465)
    #dbg_value(ptr undef, !9444, !DIExpression(DW_OP_deref), !9446)
    #dbg_value(ptr poison, !3536, !DIExpression(), !9466)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9469
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !9469, !nonnull !2347, !noundef !2347
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9469
  %.val1.i = load i64, ptr %i.c, align 8, !dbg !9469, !noundef !2347
    #dbg_value(ptr %.val.i, !3555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9467)
    #dbg_value(i64 %.val1.i, !3555, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9467)
    #dbg_value(ptr %i.a, !3562, !DIExpression(), !9467)
  call void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !9470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9471
  ret void, !dbg !9472
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCseEeXhZwqjpo_16rustls_pki_types6alg_id19AlgorithmIdentifierINtNtNtBa_5slice4iter4IterB14_EECs7OITKvp9Irj_4perf(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9478 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !9515, !DIExpression(), !9529)
    #dbg_value(ptr %0, !9509, !DIExpression(), !9530)
    #dbg_value(ptr %1, !9510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9530)
    #dbg_value(ptr %2, !9510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9530)
    #dbg_value(ptr %1, !9511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9531)
    #dbg_value(ptr %2, !9511, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9531)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !9511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9531)
    #dbg_value(ptr undef, !9515, !DIExpression(), !9529)
    #dbg_value(i64 1, !9532, !DIExpression(), !9538)
    #dbg_value(ptr %1, !9525, !DIExpression(), !9539)
    #dbg_value(ptr %1, !9536, !DIExpression(), !9538)
    #dbg_value(ptr %2, !9526, !DIExpression(), !9540)
    #dbg_value(ptr poison, !9542, !DIExpression(), !9547)
    #dbg_value(ptr poison, !9545, !DIExpression(), !9548)
  %i.b = icmp eq ptr %1, %2, !dbg !9550
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !9551

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.07, !9511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9531)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16, !dbg !9552 ; 2 uses
    #dbg_value(ptr %i.c, !9511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9553
    #dbg_value(ptr %.sroa.0.07, !9512, !DIExpression(), !9549)
  store ptr %.sroa.0.07, ptr %i.a, align 8, !dbg !9553, !captures !3587
    #dbg_value(ptr %i.a, !9512, !DIExpression(DW_OP_deref), !9549)
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0), !dbg !9554 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9555
    #dbg_value(ptr undef, !9515, !DIExpression(), !9529)
    #dbg_value(i64 1, !9532, !DIExpression(), !9538)
    #dbg_value(ptr %i.c, !9525, !DIExpression(), !9539)
    #dbg_value(ptr %i.c, !9536, !DIExpression(), !9538)
    #dbg_value(ptr %2, !9526, !DIExpression(), !9540)
    #dbg_value(ptr poison, !9542, !DIExpression(), !9547)
    #dbg_value(ptr poison, !9545, !DIExpression(), !9548)
  %i.e = icmp eq ptr %i.c, %2, !dbg !9550
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !9551

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
    #dbg_value(ptr poison, !9511, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9531)
  ret ptr %0, !dbg !9556
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsjx2R6KBUtVL_6rustls5error18ExtendedKeyPurposeINtNtNtBa_5slice4iter4IterB14_EECs7OITKvp9Irj_4perf(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9562 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !9599, !DIExpression(), !9613)
    #dbg_value(ptr %0, !9593, !DIExpression(), !9614)
    #dbg_value(ptr %1, !9594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9614)
    #dbg_value(ptr %2, !9594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9614)
    #dbg_value(ptr %1, !9595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9615)
    #dbg_value(ptr %2, !9595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9615)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !9595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9615)
    #dbg_value(ptr undef, !9599, !DIExpression(), !9613)
    #dbg_value(i64 1, !9616, !DIExpression(), !9622)
    #dbg_value(ptr %1, !9609, !DIExpression(), !9623)
    #dbg_value(ptr %1, !9620, !DIExpression(), !9622)
    #dbg_value(ptr %2, !9610, !DIExpression(), !9624)
    #dbg_value(ptr poison, !9626, !DIExpression(), !9631)
    #dbg_value(ptr poison, !9629, !DIExpression(), !9632)
  %i.b = icmp eq ptr %1, %2, !dbg !9634
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !9635

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.07, !9595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9615)
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24, !dbg !9636 ; 2 uses
    #dbg_value(ptr %i.c, !9595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9637
    #dbg_value(ptr %.sroa.0.07, !9596, !DIExpression(), !9633)
  store ptr %.sroa.0.07, ptr %i.a, align 8, !dbg !9637, !captures !3587
    #dbg_value(ptr %i.a, !9596, !DIExpression(DW_OP_deref), !9633)
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4), !dbg !9638 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9639
    #dbg_value(ptr undef, !9599, !DIExpression(), !9613)
    #dbg_value(i64 1, !9616, !DIExpression(), !9622)
    #dbg_value(ptr %i.c, !9609, !DIExpression(), !9623)
    #dbg_value(ptr %i.c, !9620, !DIExpression(), !9622)
    #dbg_value(ptr %2, !9610, !DIExpression(), !9624)
    #dbg_value(ptr poison, !9626, !DIExpression(), !9631)
    #dbg_value(ptr poison, !9629, !DIExpression(), !9632)
  %i.e = icmp eq ptr %i.c, %2, !dbg !9634
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !9635

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
    #dbg_value(ptr poison, !9595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9615)
  ret ptr %0, !dbg !9640
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsjx2R6KBUtVL_6rustls6suites20SupportedCipherSuiteINtNtNtBa_5slice4iter4IterB14_EECs7OITKvp9Irj_4perf(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly captures(address, read_provenance) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9646 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr poison, !9683, !DIExpression(), !9697)
    #dbg_value(ptr %0, !9677, !DIExpression(), !9698)
    #dbg_value(ptr %1, !9678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9698)
    #dbg_value(ptr %2, !9678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9698)
    #dbg_value(ptr %1, !9679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9699)
    #dbg_value(ptr %2, !9679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9699)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !9679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9699)
    #dbg_value(ptr undef, !9683, !DIExpression(), !9697)
    #dbg_value(i64 1, !9700, !DIExpression(), !9706)
    #dbg_value(ptr %1, !9693, !DIExpression(), !9707)
    #dbg_value(ptr %1, !9704, !DIExpression(), !9706)
    #dbg_value(ptr %2, !9694, !DIExpression(), !9708)
    #dbg_value(ptr poison, !9710, !DIExpression(), !9715)
    #dbg_value(ptr poison, !9713, !DIExpression(), !9716)
  %i.b = icmp eq ptr %1, %2, !dbg !9718
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !9719

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
    #dbg_value(ptr %.sroa.0.07, !9679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9699)
end_hunk_0
