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
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !40, !noundef !6 ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.am = load i32, ptr %i.al, align 8, !range !8, !noalias !40, !noundef !6 ; 3 uses
  %i.an = urem i64 %i.ak, 60                      ; 4 uses
  %i.ao = udiv i64 %i.ak, 60
  %i.ap = urem i64 %i.ao, 60                      ; 4 uses
  br i1 %i.ai, label %bb.d, label %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i

bb.d:                                             ; preds = %.noexc19.i
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = udiv i64 %i.ak, 3600
  %i.as = urem i64 %i.ar, 24                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %.thread.i.i.i.i, label %.thread.i.i.thread.i.i, !prof !9

.thread.i.i.thread.i.i:                           ; preds = %bb.d
  %i.at = sub nuw nsw i32 1000000000, %i.am
  %i.au = xor i64 %i.an, -1
  br label %.thread43.i.i.thread.i.i

.thread.i.i.i.i:                                  ; preds = %bb.d
  %i.av = sub nsw i64 0, %i.an
  %.not60.i.i = icmp eq i64 %i.an, 0
  br i1 %.not60.i.i, label %.thread43.i.i.i.i, label %.thread43.i.i.thread.i.i, !prof !10

.thread43.i.i.thread.i.i:                         ; preds = %.thread.i.i.i.i, %.thread.i.i.thread.i.i
  %.sroa.04.040.i.i25.i.i = phi i32 [ %i.at, %.thread.i.i.thread.i.i ], [ 0, %.thread.i.i.i.i ]
  %.sroa.09.041.i.i23.i.i = phi i64 [ %i.au, %.thread.i.i.thread.i.i ], [ %i.av, %.thread.i.i.i.i ]
  %i.aw = add nsw i64 %.sroa.09.041.i.i23.i.i, 60
  %i.ax = xor i64 %i.ap, -1
  br label %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i

.thread43.i.i.i.i:                                ; preds = %.thread.i.i.i.i
  %.not61.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not61.i.i, label %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i, label %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i, !prof !10

_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i: ; preds = %.thread43.i.i.i.i, %.thread43.i.i.thread.i.i
  %.sroa.09.150.i.i33.i.i = phi i64 [ %i.aw, %.thread43.i.i.thread.i.i ], [ 0, %.thread43.i.i.i.i ]
  %.sroa.016.051.i.i31.i.i = phi i64 [ %i.ax, %.thread43.i.i.thread.i.i ], [ %i.aq, %.thread43.i.i.i.i ]
  %.sroa.04.040.i.i2430.i.i = phi i32 [ %.sroa.04.040.i.i25.i.i, %.thread43.i.i.thread.i.i ], [ 0, %.thread43.i.i.i.i ]
  %i.ay = add nsw i64 %.sroa.016.051.i.i31.i.i, 60
  %i.az = icmp ugt i64 %i.ak, 185542587187199
  br i1 %i.az, label %.invoke.i, label %bb.g

_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i: ; preds = %.thread43.i.i.i.i
  %.not62.i.i = icmp eq i64 %i.as, 0
  br i1 %.not62.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i
  %or.cond.i.i = icmp ugt i64 %i.ak, 377705203199
  br i1 %or.cond.i.i, label %.invoke.i, label %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i, !prof !43

_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i: ; preds = %bb.e
  %i.ba = udiv i64 %i.ak, 86400
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = sub nuw nsw i32 869850581, %i.bb        ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = mul nuw nsw i64 %i.bd, 3853261555       ; 2 uses
  %i.bf = lshr i64 %i.be, 15
  %i.bg = lshr i64 %i.be, 47
  %i.bh = trunc nuw nsw i64 %i.bg to i32          ; 3 uses
  %i.bi = trunc i64 %i.bf to i32
  %i.bj = icmp ugt i32 %i.bi, 42920275
  %i.bk = and i32 %i.bh, 3
  %i.bl = icmp eq i32 %i.bk, 0
  %.sroa.0.0.i.i.i.i.i.i = or i1 %i.bj, %i.bl     ; 2 uses
  %i.bm = lshr i32 %i.bh, 2
  %i.bn = add nuw nsw i32 %i.bc, %i.bh
  %i.bo = sub nuw nsw i32 %i.bn, %i.bm
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = mul nuw nsw i64 %i.bp, 3010298776       ; 2 uses
  %i.br = lshr i64 %i.bq, 8
  %i.bs = lshr i64 %i.bq, 40
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 2 uses
  %i.bu = and i64 %i.br, 4294967295
  %i.bv = mul nuw nsw i64 %i.bu, 1461
  %i.bw = lshr i64 %i.bv, 34
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = zext i1 %.sroa.0.0.i.i.i.i.i.i to i32
  %i.bz = add nuw nsw i32 %i.bx, %i.by
  %i.ca = and i32 %i.bt, 3
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = and i1 %.sroa.0.0.i.i.i.i.i.i, %i.cb
  %i.cd = shl nuw i32 %i.bt, 10
  %i.ce = add nsw i32 %i.cd, 1858256896
  %i.cf = select i1 %i.cc, i32 512, i32 0
  %i.cg = or disjoint i32 %i.cf, %i.ce
  %i.ch = or i32 %i.cg, %i.bz                     ; 2 uses
  %i.ci = icmp ne i32 %i.ch, 0
  call void @llvm.assume(i1 %i.ci)
  br label %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i

bb.f:                                             ; preds = %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.i.i
  %i.cj = icmp ugt i64 %i.ak, 185542587187199
  br i1 %i.cj, label %.invoke.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i
  %.sroa.09.150.i.i324050.i.i = phi i64 [ %.sroa.09.150.i.i33.i.i, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.04.040.i.i24294249.i.i = phi i32 [ %.sroa.04.040.i.i2430.i.i, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.016.1.i.i4448.i.i = phi i64 [ %i.ay, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 0, %bb.f ] ; 2 uses
  %.pn.i.i = phi i64 [ 23, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 24, %bb.f ] ; 2 uses
  %6 = udiv i64 %i.ak, 86400
  %7 = trunc nuw nsw i64 %6 to i32                ; 2 uses
  %8 = add nsw i32 %7, -4371588
  %or.cond.i.i16.i.i.i = icmp ult i32 %8, -7304484
  br i1 %or.cond.i.i16.i.i.i, label %.invoke.i, label %bb.h, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.ck = sub nuw nsw i32 869850581, %7           ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = mul nuw nsw i64 %i.cl, 3853261555       ; 2 uses
  %i.cn = lshr i64 %i.cm, 15
  %i.co = lshr i64 %i.cm, 47
  %i.cp = trunc nuw nsw i64 %i.co to i32          ; 3 uses
  %i.cq = trunc i64 %i.cn to i32
  %i.cr = icmp ugt i32 %i.cq, 42920275
  %i.cs = and i32 %i.cp, 3
  %i.ct = icmp eq i32 %i.cs, 0
  %.sroa.0.0.i.i.i17.i.i.i = or i1 %i.cr, %i.ct   ; 2 uses
  %i.cu = lshr i32 %i.cp, 2
  %i.cv = add nuw nsw i32 %i.ck, %i.cp
  %i.cw = sub nuw nsw i32 %i.cv, %i.cu
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = mul nuw nsw i64 %i.cx, 3010298776       ; 2 uses
  %i.cz = lshr i64 %i.cy, 8
  %i.da = lshr i64 %i.cy, 40
  %i.db = trunc nuw nsw i64 %i.da to i32          ; 2 uses
  %i.dc = and i64 %i.cz, 4294967295
  %i.dd = mul nuw nsw i64 %i.dc, 1461
  %i.de = lshr i64 %i.dd, 34
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = zext i1 %.sroa.0.0.i.i.i17.i.i.i to i32
  %i.dh = add nuw nsw i32 %i.df, %i.dg            ; 2 uses
  %i.di = and i32 %i.db, 3
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = and i1 %.sroa.0.0.i.i.i17.i.i.i, %i.dj
  %i.dl = shl nuw i32 %i.db, 10
  %i.dm = add nsw i32 %i.dl, 1858256896           ; 2 uses
  %i.dn = select i1 %i.dk, i32 512, i32 0
  %i.do = or disjoint i32 %i.dn, %i.dm
  %i.dp = or i32 %i.do, %i.dh                     ; 3 uses
  %i.dq = icmp ne i32 %i.dp, 0
  call void @llvm.assume(i1 %i.dq)
  %.not.i.i.i.i = icmp eq i32 %i.dh, 1
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.dr = icmp eq i32 %i.dp, -10238975
  br i1 %i.dr, label %.invoke.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ds = add i32 %i.dp, -1                       ; 2 uses
  %i.dt = icmp ne i32 %i.ds, 0
  call void @llvm.assume(i1 %i.dt)
  br label %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.du = ashr exact i32 %i.dm, 10                ; 3 uses
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  %i.dw = icmp slt i32 %i.du, 1
  %i.dx = sub nsw i32 1, %i.du
  %.sroa.04.0.i.i.i.i = select i1 %i.dw, i32 %i.dx, i32 %i.dv
  %i.dy = mul i32 %.sroa.04.0.i.i.i.i, 33555415
  %i.dz = and i32 %i.dy, 100695055
  %i.ea = icmp samesign ult i32 %i.dz, 31745      ; 2 uses
  %i.eb = select i1 %i.ea, i32 512, i32 0
  %.sroa.01.0.i.i.i.i = select i1 %i.ea, i32 366, i32 365
  %i.ec = shl nsw i32 %i.dv, 10
  %i.ed = or disjoint i32 %i.eb, %i.ec
  %i.ee = or disjoint i32 %i.ed, %.sroa.01.0.i.i.i.i
  br label %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i

_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i: ; preds = %bb.k, %bb.j, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i
  %.pn63.i.i = phi i64 [ 0, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %.pn.i.i, %bb.k ], [ %.pn.i.i, %bb.j ]
  %.sroa.016.1.i.i43.i.i = phi i64 [ 0, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %.sroa.016.1.i.i4448.i.i, %bb.k ], [ %.sroa.016.1.i.i4448.i.i, %bb.j ]
  %.sroa.04.040.i.i242941.i.i = phi i32 [ 0, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %.sroa.04.040.i.i24294249.i.i, %bb.k ], [ %.sroa.04.040.i.i24294249.i.i, %bb.j ]
  %.sroa.09.150.i.i3239.i.i = phi i64 [ 0, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %.sroa.09.150.i.i324050.i.i, %bb.k ], [ %.sroa.09.150.i.i324050.i.i, %bb.j ]
  %.sroa.02.0.i.i.i = phi i32 [ %i.ch, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_sub_std.exit.i.i.i ], [ %i.ee, %bb.k ], [ %i.ds, %bb.j ]
  %spec.select.i.i45.i.i = sub nsw i64 %.pn63.i.i, %i.as
  %.sroa.4.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %spec.select.i.i45.i.i, 48
  %.sroa.3.0.insert.shift.i.i.i.i.i = shl nuw nsw i64 %.sroa.016.1.i.i43.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i.i.i
  %.sroa.2.0.insert.ext.i.i.i.i.i = shl nuw nsw i64 %.sroa.09.150.i.i3239.i.i, 32
  %.sroa.2.0.insert.shift.i.i.i.i.i = and i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 1095216660480
  %.sroa.2.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.3.0.insert.insert.i.i.i.i.i
  br label %bb.n

_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i: ; preds = %.noexc19.i
  %i.ef = udiv i64 %i.ak, 3600
  %i.eg = urem i64 %i.ef, 24
  %i.eh = icmp ugt i64 %i.ak, 185542587187199
  br i1 %i.eh, label %.invoke.i, label %bb.l

bb.l:                                             ; preds = %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i
  %i.ei = udiv i64 %i.ak, 86400
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ej, i32 2440588) ; 2 uses
  %i.el = extractvalue { i32, i1 } %i.ek, 1
  br i1 %i.el, label %.invoke.i, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.em = extractvalue { i32, i1 } %i.ek, 0       ; 2 uses
  %i.en = add nsw i32 %i.em, -5373485
  %or.cond.i.i.i5.i.i = icmp ult i32 %i.en, -7304484
  br i1 %or.cond.i.i.i5.i.i, label %.invoke.i, label %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i, !prof !44

_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i: ; preds = %bb.m
  %i.eo = add nuw nsw i32 %i.em, 867409993        ; 2 uses
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = mul nuw nsw i64 %i.ep, 3853261555       ; 2 uses
  %i.er = lshr i64 %i.eq, 15
  %i.es = lshr i64 %i.eq, 47
  %i.et = trunc nuw nsw i64 %i.es to i32          ; 3 uses
  %i.eu = trunc i64 %i.er to i32
  %i.ev = icmp ugt i32 %i.eu, 42920275
  %i.ew = and i32 %i.et, 3
  %i.ex = icmp eq i32 %i.ew, 0
  %.sroa.0.0.i.i.i.i6.i.i = or i1 %i.ev, %i.ex    ; 2 uses
  %i.ey = lshr i32 %i.et, 2
  %i.ez = add nuw nsw i32 %i.eo, %i.et
  %i.fa = sub nuw nsw i32 %i.ez, %i.ey
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = mul nuw nsw i64 %i.fb, 3010298776       ; 2 uses
  %i.fd = lshr i64 %i.fc, 8
  %i.fe = lshr i64 %i.fc, 40
  %i.ff = trunc nuw nsw i64 %i.fe to i32          ; 2 uses
  %i.fg = and i64 %i.fd, 4294967295
  %i.fh = mul nuw nsw i64 %i.fg, 1461
  %i.fi = lshr i64 %i.fh, 34
  %i.fj = trunc nuw nsw i64 %i.fi to i32
  %i.fk = zext i1 %.sroa.0.0.i.i.i.i6.i.i to i32
  %i.fl = add nuw nsw i32 %i.fj, %i.fk
  %i.fm = and i32 %i.ff, 3
  %i.fn = icmp eq i32 %i.fm, 0
  %i.fo = and i1 %.sroa.0.0.i.i.i.i6.i.i, %i.fn
  %i.fp = shl nuw i32 %i.ff, 10
  %i.fq = add nsw i32 %i.fp, 1858256896
  %i.fr = select i1 %i.fo, i32 512, i32 0
  %i.fs = or disjoint i32 %i.fr, %i.fq
  %i.ft = or i32 %i.fs, %i.fl
  %.sroa.4.0.insert.shift.i.i.i9.i.i = shl nuw nsw i64 %i.eg, 48
  %.sroa.3.0.insert.shift.i.i.i11.i.i = shl nuw nsw i64 %i.ap, 40
  %.sroa.3.0.insert.insert.i.i.i12.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i9.i.i, %.sroa.3.0.insert.shift.i.i.i11.i.i
  %.sroa.2.0.insert.shift.i.i.i14.i.i = shl nuw nsw i64 %i.an, 32
  %.sroa.2.0.insert.insert.i.i.i15.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i12.i.i, %.sroa.2.0.insert.shift.i.i.i14.i.i
  br label %bb.n

.invoke.i:                                        ; preds = %bb.m, %bb.l, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i, %bb.i, %bb.g, %bb.f, %bb.e, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i
  %i.fu = phi ptr [ @59, %bb.i ], [ @60, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ @60, %bb.e ], [ @60, %bb.g ], [ @60, %bb.f ], [ @58, %bb.m ], [ @58, %bb.l ], [ @58, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i ]
  %i.fv = phi i64 [ 31, %bb.i ], [ 39, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ 39, %bb.e ], [ 39, %bb.g ], [ 39, %bb.f ], [ 32, %bb.m ], [ 32, %bb.l ], [ 32, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i ]
  %i.fw = phi ptr [ @45, %bb.i ], [ @45, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread.i.i ], [ @45, %bb.e ], [ @45, %bb.g ], [ @45, %bb.f ], [ @44, %bb.m ], [ @44, %bb.l ], [ @44, %_RNvMs2_NtCst0rBzRTPJg_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fu, i64 noundef %i.fv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fw) #24
          to label %.cont.i unwind label %bb.bd, !noalias !42

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.n:                                             ; preds = %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i, %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i
  %.sink69.i.i = phi i32 [ %i.am, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i ], [ %.sroa.04.040.i.i242941.i.i, %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i ]
  %.sroa.2.0.insert.insert.i.i.i15.sink.i.i = phi i64 [ %.sroa.2.0.insert.insert.i.i.i15.i.i, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i ], [ %.sroa.2.0.insert.insert.i.i.i.i.i, %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i ]
  %.sink.i.i = phi i32 [ %i.ft, %_RNvMNtCst0rBzRTPJg_4time4dateNtB2_4Date15checked_add_std.exit.i.i.i ], [ %.sroa.02.0.i.i.i, %_RNvXse_NtCst0rBzRTPJg_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3SubNtNtB19_4time8DurationE3sub.exit.i.i ]
  %.sroa.0.0.insert.ext.i.i.i16.i.i = zext nneg i32 %.sink69.i.i to i64
  %.sroa.0.0.insert.insert.i.i.i17.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i15.sink.i.i, %.sroa.0.0.insert.ext.i.i.i16.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.fx, ptr noundef nonnull readonly align 4 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @42, i64 12), i64 3, i1 false), !noalias !38
  store i64 %.sroa.0.0.insert.insert.i.i.i17.i.i, ptr %i.p, align 8, !alias.scope !39, !noalias !38
  %.sroa.4.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %.sink.i.i, ptr %.sroa.4.0..sroa_idx.i18.i.i, align 8, !alias.scope !39, !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.fz = load i8, ptr %i.fy, align 8, !range !45, !alias.scope !37, !noalias !46, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !38
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !range !11, !alias.scope !37, !noalias !46, !noundef !6
  %.not.i = icmp eq i64 %i.gb, -1
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !38
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ga)
          to label %bb.s unwind label %bb.r, !noalias !42

bb.p:                                             ; preds = %bb.n
  store i64 -1, ptr %i.n, align 8, !noalias !38
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !38
  %i.gc = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !range !11, !alias.scope !37, !noalias !46, !noundef !6
  %.not15.i = icmp eq i64 %i.gd, -1
  br i1 %.not15.i, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.s:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !38
  br label %bb.q
end_hunk_0
