Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.00?download=true
inline.NumInlined: 468
inline.NumDeleted: 254
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [41 x i8] c"initializing rolling file appender failed", align 1
@1 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tracing-appender-0.2.4/src/rolling.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\9A\00\00\00\0E\00\00\00" }>, align 8
@3 = private unnamed_addr constant [44 x i8] c"filename prefix must be a valid UTF-8 string", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"j\00\00\00\00\00\00\00\95\00\00\00\0E\00\00\00" }>, align 8
@5 = private unnamed_addr constant [92 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/node.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\F0\00\00\00M\00\00\00" }>, align 8
@7 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\03\04\00\00\09\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\13\05\00\00$\00\00\00" }>, align 8
@10 = private unnamed_addr constant [34 x i8] c"cannot make an empty path absolute", align 1
@11 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @10, [9 x i8] c"\22\00\00\00\00\00\00\00\14", [7 x i8] undef }>, align 8
@12 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.149/src/ser.rs\00", align 1
@_RNvNtCsiWcPrHiWZDL_10serde_json3ser6ESCAPE = external local_unnamed_addr global [256 x i8]
@13 = private unnamed_addr constant [44 x i8] c"xet_runtime/src/file_utils/file_metadata.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"+\00\00\00\00\00\00\00\16\00\00\00>\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"+\00\00\00\00\00\00\00\17\00\00\00>\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtCsG258MDvU3F_3std2fs4FileEECsarFSTFZzLuM_11xet_runtime, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtCsG258MDvU3F_3std2fs4FileENtNtB8_3fmt5Write9write_strCsarFSTFZzLuM_11xet_runtime, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtCsG258MDvU3F_3std2fs4FileENtNtBb_3fmt5Write10write_charCsarFSTFZzLuM_11xet_runtime, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtCsG258MDvU3F_3std2fs4FileENtNtBb_3fmt5Write9write_fmtCsarFSTFZzLuM_11xet_runtime }>, align 8
@17 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@18 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"L\00\00\00\00\00\00\00\9B\01\00\00\11\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECsarFSTFZzLuM_11xet_runtime, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCsarFSTFZzLuM_11xet_runtime, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCsarFSTFZzLuM_11xet_runtime, ptr @_RNvYINtNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCsarFSTFZzLuM_11xet_runtime }>, align 8
@21 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00T\07\00\00\05\00\00\00" }>, align 8
@23 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtBK_10SerializerppENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer11collect_str7AdapterNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtBK_16CompactFormatterEECsarFSTFZzLuM_11xet_runtime, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtB8_10SerializerppENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer11collect_strINtB2_7AdapterNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtB8_16CompactFormatterENtNtCskKLDkoKarTP_4core3fmt5Write9write_strCsarFSTFZzLuM_11xet_runtime, ptr @_RNvYINtNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtBb_10SerializerppENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer11collect_str7AdapterNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtBb_16CompactFormatterENtNtCskKLDkoKarTP_4core3fmt5Write10write_charCsarFSTFZzLuM_11xet_runtime, ptr @_RNvYINtNvXs1_NtCsiWcPrHiWZDL_10serde_json3serQINtBb_10SerializerppENtNtCs6SYjS1KFWza_10serde_core3ser10Serializer11collect_str7AdapterNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt6writer12WriteAdaptorNtBb_16CompactFormatterENtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCsarFSTFZzLuM_11xet_runtime }>, align 8
@25 = private unnamed_addr constant [24 x i8] c"there should be an error", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"b\00\00\00\00\00\00\00\C3\01\00\004\00\00\00" }>, align 8
@27 = private unnamed_addr constant [1 x i8] c"}", align 1
@28 = private unnamed_addr constant [1 x i8] c"\22", align 1
@29 = private unnamed_addr constant [5 x i8] c"false", align 1
@30 = private unnamed_addr constant [4 x i8] c"true", align 1
@31 = private unnamed_addr constant [4 x i8] c"null", align 1
@32 = private unnamed_addr constant [1 x i8] c"[", align 1
@33 = private unnamed_addr constant [1 x i8] c"{", align 1
@34 = private unnamed_addr constant [1 x i8] c",", align 1
@_RNvNvNtNtCsiWcPrHiWZDL_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS = external local_unnamed_addr global [16 x i8]
@35 = private unnamed_addr constant [1 x i8] c":", align 1
@36 = private unnamed_addr constant [1 x i8] c"]", align 1
@37 = private unnamed_addr constant [97 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @37, [16 x i8] c"`\00\00\00\00\00\00\00\D1\01\00\00.\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsz_NtCsG258MDvU3F_3std4timeNtB5_15SystemTimeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@40 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@41 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5ZfSctYBbRf_16tracing_appender7rolling7builder9InitErrorECsarFSTFZzLuM_11xet_runtime, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtNtCs5ZfSctYBbRf_16tracing_appender7rolling7builderNtB5_9InitErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@42 = private unnamed_addr constant <{ [15 x i8], [1 x i8] }> <{ [15 x i8] c"\00\00\00\00\00\00\00\00\01\C8\1E\00\00\00\00", [1 x i8] undef }>, align 4
@43 = private unnamed_addr constant [122 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/time-0.3.47/src/interop/offsetdatetime_systemtime.rs\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"y\00\00\00\00\00\00\00?\00\00\00\1D\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"y\00\00\00\00\00\00\00@\00\00\00\19\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\D0\04\00\00#\00\00\00" }>, align 8
@47 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\9E\02\00\00\09\00\00\00" }>, align 8
@49 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\B6\02\00\00\09\00\00\00" }>, align 8
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"[\00\00\00\00\00\00\00\BA\02\00\00\09\00\00\00" }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime }>, align 8
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime }>, align 8
@54 = private unnamed_addr constant [9 x i8] c"InitError", align 1
@55 = private unnamed_addr constant [7 x i8] c"context", align 1
@56 = private unnamed_addr constant [6 x i8] c"source", align 1
@57 = private unnamed_addr constant [2 x i8] c"..", align 1
@58 = private unnamed_addr constant [32 x i8] c"overflow adding duration to date", align 1
@59 = private unnamed_addr constant [31 x i8] c"resulting value is out of range", align 1
@60 = private unnamed_addr constant [39 x i8] c"overflow subtracting duration from date", align 1
@61 = private unnamed_addr constant [92 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itoa-1.0.18/src/lib.rs\00", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @61, [16 x i8] c"[\00\00\00\00\00\00\00\BC\00\00\00\01\00\00\00" }>, align 8
@63 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime }>, align 8
@64 = private unnamed_addr constant [15 x i8] c"SystemTimeError", align 1
@65 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@66 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @65, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @18, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs5ZfSctYBbRf_16tracing_appender7rollingNtB3_19RollingFileAppender3newRNtNtCsG258MDvU3F_3std4path4PathRNtNtNtB1i_3ffi6os_str5OsStrECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, i8 noundef range(i8 0, 5) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [128 x i8], align 8               ; 19 uses
  %i.e = alloca [16 x i8], align 4                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [1 x i8], align 1                 ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %.sroa.11.i = alloca [12 x i8], align 4         ; 7 uses
  %.sroa.12.i = alloca [96 x i8], align 8         ; 5 uses
  %.sroa.6.sroa.8.i = alloca [12 x i8], align 4   ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.8 = alloca [12 x i8], align 4            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.u = load i64, ptr %i.r, align 8, !range !5, !noundef !6
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i8 %1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 -1, ptr %i.ac, align 8
  store i64 0, ptr %i.s, align 8
  call void @_RINvMs_NtNtCs5ZfSctYBbRf_16tracing_appender7rolling7builderNtB5_7Builder15filename_prefixReECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !38
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !38
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !40
  %i.ad = invoke { i64, i32 } @_RNvMs5_NtCsG258MDvU3F_3std4timeNtB5_10SystemTime3now()
          to label %.noexc.i unwind label %bb.bd, !noalias !41 ; 2 uses

.noexc.i:                                         ; preds = %.noexc
  %i.ae = extractvalue { i64, i32 } %i.ad, 0
  %i.af = extractvalue { i64, i32 } %i.ad, 1
  store i64 %i.ae, ptr %i.j, align 8, !noalias !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.af, ptr %i.ag, align 8, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !40
  invoke void @_RNvMs5_NtCsG258MDvU3F_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i64 noundef 0, i32 noundef 0)
          to label %.noexc19.i unwind label %bb.bd, !noalias !42

.noexc19.i:                                       ; preds = %.noexc.i
  %i.ah = load i64, ptr %i.i, align 8, !range !5, !noalias !40, !noundef !6
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !40, !noundef !6 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.am = load i32, ptr %i.al, align 8, !range !8, !noalias !40, !noundef !6 ; 3 uses
  %i.an = urem i64 %i.ak, 60                      ; 3 uses
  %i.ao = udiv i64 %i.ak, 60
  br i1 %i.ai, label %bb.d, label %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i

bb.d:                                             ; preds = %.noexc19.i
  %6 = trunc nuw nsw i64 %i.an to i8              ; 2 uses
  %7 = udiv i64 %i.ak, 60
  %8 = urem i64 %7, 60                            ; 2 uses
  %9 = trunc nuw nsw i64 %8 to i8                 ; 2 uses
  %10 = sub nsw i8 0, %9
  %i.ap = udiv i64 %i.ak, 3600
  %i.aq = urem i64 %i.ap, 24                      ; 2 uses
  %11 = trunc nuw nsw i64 %i.aq to i8
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %.thread.i.i.i.i, label %.thread.i.i.thread.i.i, !prof !9

.thread.i.i.thread.i.i:                           ; preds = %bb.d
  %i.ar = sub nuw nsw i32 1000000000, %i.am
  %12 = xor i8 %6, -1
  br label %.thread43.i.i.thread.i.i

.thread.i.i.i.i:                                  ; preds = %bb.d
  %13 = sub nsw i8 0, %6
  %.not60.i.i = icmp eq i64 %i.an, 0
  br i1 %.not60.i.i, label %.thread43.i.i.i.i, label %.thread43.i.i.thread.i.i, !prof !10

.thread43.i.i.thread.i.i:                         ; preds = %.thread.i.i.i.i, %.thread.i.i.thread.i.i
  %.sroa.04.040.i.i25.i.i = phi i32 [ %i.ar, %.thread.i.i.thread.i.i ], [ 0, %.thread.i.i.i.i ]
  %.sroa.09.041.i.i23.i.i = phi i8 [ %12, %.thread.i.i.thread.i.i ], [ %13, %.thread.i.i.i.i ]
  %14 = add nsw i8 %.sroa.09.041.i.i23.i.i, 60
  %15 = xor i8 %9, -1
  br label %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i

.thread43.i.i.i.i:                                ; preds = %.thread.i.i.i.i
  %.not61.i.i = icmp eq i64 %8, 0
  br i1 %.not61.i.i, label %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i, label %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i, !prof !10

_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i: ; preds = %.thread43.i.i.i.i, %.thread43.i.i.thread.i.i
  %.sroa.09.150.i.i33.i.i = phi i8 [ %14, %.thread43.i.i.thread.i.i ], [ 0, %.thread43.i.i.i.i ]
  %.sroa.016.051.i.i31.i.i = phi i8 [ %15, %.thread43.i.i.thread.i.i ], [ %10, %.thread43.i.i.i.i ]
  %.sroa.04.040.i.i2430.i.i = phi i32 [ %.sroa.04.040.i.i25.i.i, %.thread43.i.i.thread.i.i ], [ 0, %.thread43.i.i.i.i ]
  %16 = add nsw i8 %.sroa.016.051.i.i31.i.i, 60
  %i.as = icmp ugt i64 %i.ak, 185542587187199
  br i1 %i.as, label %.invoke.i, label %bb.g

_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i: ; preds = %.thread43.i.i.i.i
  %.not62.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not62.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i
  %or.cond.i.i = icmp ugt i64 %i.ak, 377705203199
  br i1 %or.cond.i.i, label %.invoke.i, label %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i, !prof !43

_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i: ; preds = %bb.e
  %i.at = udiv i64 %i.ak, 86400
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = sub nuw nsw i32 869850581, %i.au        ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 3853261555       ; 2 uses
  %i.ay = lshr i64 %i.ax, 15
  %i.az = lshr i64 %i.ax, 47
  %i.ba = trunc nuw nsw i64 %i.az to i32          ; 3 uses
  %i.bb = trunc i64 %i.ay to i32
  %i.bc = icmp ugt i32 %i.bb, 42920275
  %i.bd = and i32 %i.ba, 3
  %i.be = icmp eq i32 %i.bd, 0
  %.sroa.0.0.i.i.i.i.i.i = or i1 %i.bc, %i.be     ; 2 uses
  %i.bf = lshr i32 %i.ba, 2
  %i.bg = add nuw nsw i32 %i.av, %i.ba
  %i.bh = sub nuw nsw i32 %i.bg, %i.bf
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bi, 3010298776       ; 2 uses
  %i.bk = lshr i64 %i.bj, 8
  %i.bl = lshr i64 %i.bj, 40
  %i.bm = trunc nuw nsw i64 %i.bl to i32          ; 2 uses
  %i.bn = and i64 %i.bk, 4294967295
  %i.bo = mul nuw nsw i64 %i.bn, 1461
  %i.bp = lshr i64 %i.bo, 34
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = zext i1 %.sroa.0.0.i.i.i.i.i.i to i32
  %i.bs = add nuw nsw i32 %i.bq, %i.br
  %i.bt = and i32 %i.bm, 3
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = and i1 %.sroa.0.0.i.i.i.i.i.i, %i.bu
  %i.bw = shl nuw i32 %i.bm, 10
  %i.bx = add nsw i32 %i.bw, 1858256896
  %i.by = select i1 %i.bv, i32 512, i32 0
  %i.bz = or disjoint i32 %i.by, %i.bx
  %i.ca = or i32 %i.bz, %i.bs                     ; 2 uses
  %i.cb = icmp ne i32 %i.ca, 0
  call void @llvm.assume(i1 %i.cb)
  br label %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i

bb.f:                                             ; preds = %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i
  %i.cc = icmp ugt i64 %i.ak, 185542587187199
  br i1 %i.cc, label %.invoke.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i
  %.sroa.09.150.i.i324050.i.i = phi i8 [ %.sroa.09.150.i.i33.i.i, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.04.040.i.i24294249.i.i = phi i32 [ %.sroa.04.040.i.i2430.i.i, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.016.1.i.i4448.i.i = phi i8 [ %16, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 0, %bb.f ] ; 2 uses
  %.pn.i.i = phi i8 [ 23, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 24, %bb.f ] ; 2 uses
  %i.cd = udiv i64 %i.ak, 86400
  %i.ce = trunc nuw nsw i64 %i.cd to i32          ; 2 uses
  %i.cf = add nsw i32 %i.ce, -4371588
  %or.cond.i.i16.i.i.i = icmp ult i32 %i.cf, -7304484
  br i1 %or.cond.i.i16.i.i.i, label %.invoke.i, label %bb.h, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.cg = sub nuw nsw i32 869850581, %i.ce        ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = mul nuw nsw i64 %i.ch, 3853261555       ; 2 uses
  %i.cj = lshr i64 %i.ci, 15
  %i.ck = lshr i64 %i.ci, 47
  %i.cl = trunc nuw nsw i64 %i.ck to i32          ; 3 uses
  %i.cm = trunc i64 %i.cj to i32
  %i.cn = icmp ugt i32 %i.cm, 42920275
  %i.co = and i32 %i.cl, 3
  %i.cp = icmp eq i32 %i.co, 0
  %.sroa.0.0.i.i.i17.i.i.i = or i1 %i.cn, %i.cp   ; 2 uses
  %i.cq = lshr i32 %i.cl, 2
  %i.cr = add nuw nsw i32 %i.cg, %i.cl
  %i.cs = sub nuw nsw i32 %i.cr, %i.cq
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = mul nuw nsw i64 %i.ct, 3010298776       ; 2 uses
  %i.cv = lshr i64 %i.cu, 8
  %i.cw = lshr i64 %i.cu, 40
  %i.cx = trunc nuw nsw i64 %i.cw to i32          ; 2 uses
  %i.cy = and i64 %i.cv, 4294967295
  %i.cz = mul nuw nsw i64 %i.cy, 1461
  %i.da = lshr i64 %i.cz, 34
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = zext i1 %.sroa.0.0.i.i.i17.i.i.i to i32
  %i.dd = add nuw nsw i32 %i.db, %i.dc            ; 2 uses
  %i.de = and i32 %i.cx, 3
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = and i1 %.sroa.0.0.i.i.i17.i.i.i, %i.df
  %i.dh = shl nuw i32 %i.cx, 10
  %i.di = add nsw i32 %i.dh, 1858256896           ; 2 uses
  %i.dj = select i1 %i.dg, i32 512, i32 0
  %i.dk = or disjoint i32 %i.dj, %i.di
  %i.dl = or i32 %i.dk, %i.dd                     ; 3 uses
  %i.dm = icmp ne i32 %i.dl, 0
  call void @llvm.assume(i1 %i.dm)
  %.not.i.i.i.i = icmp eq i32 %i.dd, 1
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.dn = icmp eq i32 %i.dl, -10238975
  br i1 %i.dn, label %.invoke.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.do = add i32 %i.dl, -1                       ; 2 uses
  %i.dp = icmp ne i32 %i.do, 0
  call void @llvm.assume(i1 %i.dp)
  br label %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.dq = ashr exact i32 %i.di, 10                ; 3 uses
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  %i.ds = icmp slt i32 %i.dq, 1
  %i.dt = sub nsw i32 1, %i.dq
  %.sroa.04.0.i.i.i.i = select i1 %i.ds, i32 %i.dt, i32 %i.dr
  %i.du = mul i32 %.sroa.04.0.i.i.i.i, 33555415
  %i.dv = and i32 %i.du, 100695055
  %i.dw = icmp samesign ult i32 %i.dv, 31745      ; 2 uses
  %i.dx = select i1 %i.dw, i32 512, i32 0
  %.sroa.01.0.i.i.i.i = select i1 %i.dw, i32 366, i32 365
  %i.dy = shl nsw i32 %i.dr, 10
  %i.dz = or disjoint i32 %i.dx, %i.dy
  %i.ea = or disjoint i32 %i.dz, %.sroa.01.0.i.i.i.i
  br label %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i

_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i: ; preds = %bb.k, %bb.j, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i
  %.pn63.i.i = phi i8 [ 0, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %.pn.i.i, %bb.k ], [ %.pn.i.i, %bb.j ]
  %.sroa.016.1.i.i43.i.i = phi i8 [ 0, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %.sroa.016.1.i.i4448.i.i, %bb.k ], [ %.sroa.016.1.i.i4448.i.i, %bb.j ]
  %.sroa.04.040.i.i242941.i.i = phi i32 [ 0, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %.sroa.04.040.i.i24294249.i.i, %bb.k ], [ %.sroa.04.040.i.i24294249.i.i, %bb.j ]
  %.sroa.09.150.i.i3239.i.i = phi i8 [ 0, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %.sroa.09.150.i.i324050.i.i, %bb.k ], [ %.sroa.09.150.i.i324050.i.i, %bb.j ]
  %.sroa.02.0.i.i.i = phi i32 [ %i.ca, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %i.ea, %bb.k ], [ %i.do, %bb.j ]
  %spec.select.i.i45.i.i = sub nsw i8 %.pn63.i.i, %11
  %.sroa.4.0.insert.ext.i.i.i.i.i = zext nneg i8 %spec.select.i.i45.i.i to i64
  %.sroa.4.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i.i, 48
  %.sroa.3.0.insert.ext.i.i.i.i.i = zext nneg i8 %.sroa.016.1.i.i43.i.i to i64
  %.sroa.3.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i.i.i
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext nneg i8 %.sroa.09.150.i.i3239.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.3.0.insert.insert.i.i.i.i.i
  br label %bb.n

_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i: ; preds = %.noexc19.i
  %17 = urem i64 %i.ao, 60
  %i.eb = udiv i64 %i.ak, 3600
  %i.ec = urem i64 %i.eb, 24
  %i.ed = icmp ugt i64 %i.ak, 185542587187199
  br i1 %i.ed, label %.invoke.i, label %bb.l

bb.l:                                             ; preds = %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i
  %i.ee = udiv i64 %i.ak, 86400
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ef, i32 2440588) ; 2 uses
  %i.eh = extractvalue { i32, i1 } %i.eg, 1
  br i1 %i.eh, label %.invoke.i, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.ei = extractvalue { i32, i1 } %i.eg, 0       ; 2 uses
  %i.ej = add nsw i32 %i.ei, -5373485
  %or.cond.i.i.i5.i.i = icmp ult i32 %i.ej, -7304484
  br i1 %or.cond.i.i.i5.i.i, label %.invoke.i, label %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i, !prof !44

_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i: ; preds = %bb.m
  %i.ek = add nuw nsw i32 %i.ei, 867409993        ; 2 uses
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %i.el, 3853261555       ; 2 uses
  %i.en = lshr i64 %i.em, 15
  %i.eo = lshr i64 %i.em, 47
  %i.ep = trunc nuw nsw i64 %i.eo to i32          ; 3 uses
  %i.eq = trunc i64 %i.en to i32
  %i.er = icmp ugt i32 %i.eq, 42920275
  %i.es = and i32 %i.ep, 3
  %i.et = icmp eq i32 %i.es, 0
  %.sroa.0.0.i.i.i.i6.i.i = or i1 %i.er, %i.et    ; 2 uses
  %i.eu = lshr i32 %i.ep, 2
  %i.ev = add nuw nsw i32 %i.ek, %i.ep
  %i.ew = sub nuw nsw i32 %i.ev, %i.eu
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = mul nuw nsw i64 %i.ex, 3010298776       ; 2 uses
  %i.ez = lshr i64 %i.ey, 8
  %i.fa = lshr i64 %i.ey, 40
  %i.fb = trunc nuw nsw i64 %i.fa to i32          ; 2 uses
  %i.fc = and i64 %i.ez, 4294967295
  %i.fd = mul nuw nsw i64 %i.fc, 1461
  %i.fe = lshr i64 %i.fd, 34
  %i.ff = trunc nuw nsw i64 %i.fe to i32
  %i.fg = zext i1 %.sroa.0.0.i.i.i.i6.i.i to i32
  %i.fh = add nuw nsw i32 %i.ff, %i.fg
  %i.fi = and i32 %i.fb, 3
  %i.fj = icmp eq i32 %i.fi, 0
  %i.fk = and i1 %.sroa.0.0.i.i.i.i6.i.i, %i.fj
  %i.fl = shl nuw i32 %i.fb, 10
  %i.fm = add nsw i32 %i.fl, 1858256896
  %i.fn = select i1 %i.fk, i32 512, i32 0
  %i.fo = or disjoint i32 %i.fn, %i.fm
  %i.fp = or i32 %i.fo, %i.fh
  %.sroa.4.0.insert.shift.i.i.i9.i.i = shl nuw nsw i64 %i.ec, 48
  %.sroa.3.0.insert.shift.i.i.i11.i.i = shl nuw nsw i64 %17, 40
  %.sroa.3.0.insert.insert.i.i.i12.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i9.i.i, %.sroa.3.0.insert.shift.i.i.i11.i.i
  %.sroa.2.0.insert.shift.i.i.i14.i.i = shl nuw nsw i64 %i.an, 32
  %.sroa.2.0.insert.insert.i.i.i15.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i12.i.i, %.sroa.2.0.insert.shift.i.i.i14.i.i
  br label %bb.n

.invoke.i:                                        ; preds = %bb.m, %bb.l, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i, %bb.i, %bb.g, %bb.f, %bb.e, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i
  %i.fq = phi ptr [ @59, %bb.i ], [ @60, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ @60, %bb.e ], [ @60, %bb.g ], [ @60, %bb.f ], [ @58, %bb.m ], [ @58, %bb.l ], [ @58, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i ]
  %i.fr = phi i64 [ 31, %bb.i ], [ 39, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 39, %bb.e ], [ 39, %bb.g ], [ 39, %bb.f ], [ 32, %bb.m ], [ 32, %bb.l ], [ 32, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i ]
  %i.fs = phi ptr [ @45, %bb.i ], [ @45, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ @45, %bb.e ], [ @45, %bb.g ], [ @45, %bb.f ], [ @44, %bb.m ], [ @44, %bb.l ], [ @44, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fq, i64 noundef %i.fr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fs) #24
          to label %.cont.i unwind label %bb.bd, !noalias !42

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.n:                                             ; preds = %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i, %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i
  %.sink69.i.i = phi i32 [ %i.am, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i ], [ %.sroa.04.040.i.i242941.i.i, %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i ]
  %.sroa.2.0.insert.insert.i.i.i15.sink.i.i = phi i64 [ %.sroa.2.0.insert.insert.i.i.i15.i.i, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i ], [ %.sroa.2.0.insert.insert.i.i.i.i.i, %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i ]
  %.sink.i.i = phi i32 [ %i.fp, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i ], [ %.sroa.02.0.i.i.i, %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i ]
  %.sroa.0.0.insert.ext.i.i.i16.i.i = zext nneg i32 %.sink69.i.i to i64
  %.sroa.0.0.insert.insert.i.i.i17.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i15.sink.i.i, %.sroa.0.0.insert.ext.i.i.i16.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.ft, ptr noundef nonnull readonly align 4 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @42, i64 12), i64 3, i1 false), !noalias !38
  store i64 %.sroa.0.0.insert.insert.i.i.i17.i.i, ptr %i.p, align 8, !alias.scope !39, !noalias !38
  %.sroa.4.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %.sink.i.i, ptr %.sroa.4.0..sroa_idx.i18.i.i, align 8, !alias.scope !39, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.fv = load i8, ptr %i.fu, align 8, !range !45, !alias.scope !37, !noalias !46, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !38
  %i.fw = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !range !11, !alias.scope !37, !noalias !46, !noundef !6
  %.not.i = icmp eq i64 %i.fx, -1
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !38
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fw)
          to label %bb.s unwind label %bb.r, !noalias !42

bb.p:                                             ; preds = %bb.n
  store i64 -1, ptr %i.n, align 8, !noalias !38
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !38
  %i.fy = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !range !11, !alias.scope !37, !noalias !46, !noundef !6
  %.not15.i = icmp eq i64 %i.fz, -1
  br i1 %.not15.i, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38
  br label %bb.q

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !38
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fy)
          to label %bb.az unwind label %bb.ba, !noalias !42

bb.u:                                             ; preds = %bb.q
  store i64 -1, ptr %i.m, align 8, !noalias !38
  br label %bb.v

bb.v:                                             ; preds = %bb.az, %bb.u
  %i.gb = load i64, ptr %i.t, align 8, !range !5, !alias.scope !37, !noalias !46, !noundef !6 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !37, !noalias !46 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !38
  store i8 %i.fv, ptr %i.h, align 1, !noalias !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !48
  %i.ge = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val.i.i = load ptr, ptr %i.ge, align 8, !alias.scope !47, !noalias !49, !nonnull !6, !noundef !6
  %i.gf = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val47.i.i = load i64, ptr %i.gf, align 8, !alias.scope !47, !noalias !49, !noundef !6
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val47.i.i)
          to label %bb.x unwind label %bb.w, !noalias !50

bb.w:                                             ; preds = %bb.v
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !48
  invoke void @_RNvMs2_NtCs5ZfSctYBbRf_16tracing_appender7rollingNtB5_8Rotation11date_format(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h)
          to label %bb.z unwind label %bb.y, !noalias !51

bb.y:                                             ; preds = %bb.x
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !48
  invoke void @_RNvMs2_NtCs5ZfSctYBbRf_16tracing_appender7rollingNtB5_8Rotation9next_date(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.ab unwind label %bb.aw, !noalias !51

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.thread72.i.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !48
  %i.gj = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.gk = load i8, ptr %i.gj, align 1, !range !52, !noalias !48, !noundef !6
  %.not.i24.i = icmp eq i8 %i.gk, -1
  br i1 %.not.i24.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.05.0.i.i = phi i64 [ %i.hw, %bb.ad ], [ 0, %bb.ab ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !53
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !54
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !48
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i8 %i.fv, ptr %i.gp, align 8, !noalias !48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 %.sroa.05.0.i.i, ptr %i.gq, align 8, !noalias !48
  store i64 %i.gb, ptr %i.d, align 8, !noalias !48
  %i.gr = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.gd, ptr %i.gr, align 8, !noalias !48
  %i.gs = trunc nuw i64 %i.gb to i1
  br i1 %i.gs, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.3.0.copyload.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !noalias !48 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !48 ; 2 uses
  %.sroa.556.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %.sroa.556.0.copyload.i.i = load i8, ptr %.sroa.556.0..sroa_idx.i.i, align 2, !noalias !48 ; 2 uses
  %.sroa.657.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.657.0.copyload.i.i = load i32, ptr %.sroa.657.0..sroa_idx.i.i, align 4, !noalias !48 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.7.0.copyload.i.i = load i24, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !noalias !48 ; 3 uses
  %i.gt = icmp ult i8 %.sroa.556.0.copyload.i.i, 24
  call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp ult i8 %.sroa.4.0.copyload.i.i, 60
  call void @llvm.assume(i1 %i.gu)
  %i.gv = icmp ult i8 %.sroa.3.0.copyload.i.i, 60
  %i.gw = zext nneg i8 %.sroa.4.0.copyload.i.i to i64
  %i.gx = zext nneg i8 %.sroa.556.0.copyload.i.i to i64
  %i.gy = ashr i32 %.sroa.657.0.copyload.i.i, 10
  %i.gz = add nsw i32 %i.gy, 999999               ; 3 uses
  %.neg.i.i.i = sdiv i32 %i.gz, -100
  %i.ha = sext i32 %i.gz to i64
  %i.hb = mul nsw i64 %i.ha, 1461
  %i.hc = sdiv i64 %i.hb, 4
  %i.hd = trunc nsw i64 %i.hc to i32
  %i.he = sdiv i32 %i.gz, 400
  %i.hf = and i32 %.sroa.657.0.copyload.i.i, 511
  %i.hg = add nsw i32 %.neg.i.i.i, %i.hf
  %i.hh = add nsw i32 %i.hg, %i.he
  %i.hi = add nsw i32 %i.hh, %i.hd
  %i.hj = sext i32 %i.hi to i64
  %i.hk = mul nsw i64 %i.hj, 86400
  call void @llvm.assume(i1 %i.gv)
  %i.hl = zext nneg i8 %.sroa.3.0.copyload.i.i to i64
  %.sroa.01.0.extract.trunc.i.i.i.i = trunc i24 %.sroa.7.0.copyload.i.i to i8 ; 3 uses
  %.sroa.01.1.extract.shift.i.i.i.i = lshr i24 %.sroa.7.0.copyload.i.i, 8
  %.sroa.01.1.extract.trunc.i.i.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i.i.i to i8 ; 3 uses
  %.sroa.01.2.extract.shift.i.i.i.i = lshr i24 %.sroa.7.0.copyload.i.i, 16
  %.sroa.01.2.extract.trunc.i.i.i.i = trunc nuw i24 %.sroa.01.2.extract.shift.i.i.i.i to i8 ; 3 uses
  %i.hm = icmp sgt i8 %.sroa.01.2.extract.trunc.i.i.i.i, -26
  call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp slt i8 %.sroa.01.2.extract.trunc.i.i.i.i, 26
  call void @llvm.assume(i1 %i.hn)
  %i.ho = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i.i.i, -60
  call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp slt i8 %.sroa.01.1.extract.trunc.i.i.i.i, 60
  call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp sgt i8 %.sroa.01.0.extract.trunc.i.i.i.i, -60
  call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp slt i8 %.sroa.01.0.extract.trunc.i.i.i.i, 60
  call void @llvm.assume(i1 %i.hr)
  %narrow.i.i.i = sub nsw i8 0, %.sroa.01.2.extract.trunc.i.i.i.i
  %neg11.i.i.i = sext i8 %narrow.i.i.i to i64
  %narrow14.i.i.i = sub nsw i8 0, %.sroa.01.0.extract.trunc.i.i.i.i
  %.neg7.i.i.i = sext i8 %narrow14.i.i.i to i64
  %narrow15.i.i.i = sub nsw i8 0, %.sroa.01.1.extract.trunc.i.i.i.i
  %neg.i.i.i = sext i8 %narrow15.i.i.i to i64
end_hunk_0
