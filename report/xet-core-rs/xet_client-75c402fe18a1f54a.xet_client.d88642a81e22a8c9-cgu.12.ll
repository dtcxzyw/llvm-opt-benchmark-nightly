Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.12?download=true
inline.NumInlined: 591
inline.NumDeleted: 305
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockNtNtNtCsUrhh0HcRih_5tokio4time7instant7InstantE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsiAynQAjgDuT_10xet_client, ptr @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtNtNtCsUrhh0HcRih_5tokio4time7instant7InstantE5force0E0CsiAynQAjgDuT_10xet_client }>, align 8
@1 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E3\00\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockjE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsiAynQAjgDuT_10xet_client, ptr @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockjE5force0E0CsiAynQAjgDuT_10xet_client }>, align 8
@4 = private unnamed_addr constant [7 x i8] c"XETBLOB", align 4
@5 = private unnamed_addr constant [7 x i8] c"XBLBHSH", align 4
@6 = private unnamed_addr constant [7 x i8] c"XBLBBND", align 4
@7 = private unnamed_addr constant [57 x i8] c"Xorb Invalid: incorrect boundary_section_offset_from_end.", align 1
@8 = private unnamed_addr constant [55 x i8] c"Xorb Invalid: incorrect hashes_section_offset_from_end.", align 1
@9 = private unnamed_addr constant [74 x i8] c"Xorb Invalid: inconsistent num_chunks between metadata and hashes section.", align 1
@10 = private unnamed_addr constant [76 x i8] c"Xorb Invalid: inconsistent num_chunks between hashes and boundaries section.", align 1
@11 = private unnamed_addr constant [59 x i8] c"Xorb Invalid Format Version for Boundaries Metadata Section", align 1
@12 = private unnamed_addr constant [48 x i8] c"Xorb Invalid Ident for Boundary Metadata Section", align 1
@13 = private unnamed_addr constant [53 x i8] c"Xorb Invalid Format Version for Hash Metadata Section", align 1
@14 = private unnamed_addr constant [44 x i8] c"Xorb Invalid Ident for Hash Metadata Section", align 1
@15 = private unnamed_addr constant [27 x i8] c"Xorb Invalid Format Version", align 1
@16 = private unnamed_addr constant [18 x i8] c"Xorb Invalid Ident", align 1
@17 = private unnamed_addr constant [85 x i8] c"CUnpacked chunk offset vector not correct length on serialization. (\C0\0B, expected \C0\01)\00", align 1
@18 = private unnamed_addr constant [85 x i8] c"CChunk boundary offset vector not correct length on serialization. (\C0\0B, expected \C0\01)\00", align 1
@19 = private unnamed_addr constant [74 x i8] c"8Chunk hash vector not correct length on serialization. (\C0\0B, expected \C0\01)\00", align 1
@20 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/thread/local.rs\00", align 1
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @20, [16 x i8] c"O\00\00\00\00\00\00\00\AD\01\00\00\19\00\00\00" }>, align 8
@22 = private unnamed_addr constant [34 x i8] c"Cannot decompress with Auto scheme", align 1
@23 = private unnamed_addr constant [22 x i8] c"Xorb Info Format Error", align 1
@24 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@26 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameNtB6_5Debug3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueNtB6_5Debug3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@29 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/str/pattern.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"O\00\00\00\00\00\00\00A\06\00\00\14\00\00\00" }>, align 8
@31 = private unnamed_addr constant [74 x i8] c"chunk is corrupted, uncompressed bytes len doesn't agree with chunk header", align 1
@_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18compression_scheme26BG4_LZ4_DECOMPRESS_RUNTIME = external local_unnamed_addr global double
@_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18compression_scheme19BG4_REGROUP_RUNTIME = external local_unnamed_addr global double
@32 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4
@33 = private unnamed_addr constant [27 x i8] c"Vec is sized conservatively", align 1
@34 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @33, [8 x i8] c"\1B\00\00\00\00\00\00\00" }>, align 8
@35 = private unnamed_addr constant [45 x i8] c"*internal error: entered unreachable code: \C0\00", align 1
@36 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/base64-0.22.1/src/engine/mod.rs\00", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"d\00\00\00\00\00\00\00\01\01\00\00\19\00\00\00" }>, align 8
@38 = private unnamed_addr constant [12 x i8] c"Invalid UTF8", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"d\00\00\00\00\00\00\00\7F\00\00\00$\00\00\00" }>, align 8
@40 = private unnamed_addr constant [7 x i8] c"HexNode", align 1
@41 = private unnamed_addr constant [4 x i8] c"hash", align 1
@42 = private unnamed_addr constant [4 x i8] c"size", align 1
@43 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @41, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @42, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@45 = private unnamed_addr constant [5 x i8] c"nodes", align 1
@46 = private unnamed_addr constant [6 x i8] c"levels", align 1
@47 = private unnamed_addr constant [8 x i8] c"at_start", align 1
@48 = private unnamed_addr constant [6 x i8] c"at_end", align 1
@49 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @45, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @46, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @47, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @48, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@50 = private unnamed_addr constant [6 x i8] c"HexRaw", align 1
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXs14_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXs17_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXs1a_NtB4_5implsjNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@54 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs6SYjS1KFWza_10serde_core2deNtNvXsY_NtB4_5implshNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\E3\00\00\001\00\00\00" }>, align 8
@56 = private unnamed_addr constant [30 x i8] c"\1BFailed to read chunk data: \C0\00", align 1
@57 = private unnamed_addr constant [31 x i8] c"\1CFailed to decompress chunk: \C0\00", align 1
@58 = private unnamed_addr constant [34 x i8] c"\1FInvalid UTF-8 in part headers: \C0\00", align 1
@59 = private unnamed_addr constant [26 x i8] c"\17Invalid Content-Range: \C0\00", align 1
@60 = private unnamed_addr constant [32 x i8] c"\1DInvalid Content-Range start: \C0\00", align 1
@61 = private unnamed_addr constant [30 x i8] c"\1BInvalid Content-Range end: \C0\00", align 1
@62 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECsiAynQAjgDuT_10xet_client, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1m_NtCsexYYUdYSQU6_5alloc6stringNtB6_13FromUtf8ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@63 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@64 = private unnamed_addr constant [56 x i8] c"xet_core_structures/src/merklehash/aggregated_hashes.rs\00", align 1
@65 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00=\00\00\00\05\00\00\00" }>, align 8
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00>\00\00\00\05\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00?\00\00\00\05\00\00\00" }>, align 8
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00@\00\00\00\05\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00A\00\00\00\05\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00B\00\00\00\05\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00C\00\00\00\05\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00D\00\00\00\05\00\00\00" }>, align 8
@73 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00E\00\00\00\05\00\00\00" }>, align 8
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00F\00\00\00\05\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00G\00\00\00\05\00\00\00" }>, align 8
@76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00H\00\00\00\05\00\00\00" }>, align 8
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00I\00\00\00\05\00\00\00" }>, align 8
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00J\00\00\00\05\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00K\00\00\00\05\00\00\00" }>, align 8
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00L\00\00\00\05\00\00\00" }>, align 8
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00q\00\00\00\05\00\00\00" }>, align 8
@82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00r\00\00\00\05\00\00\00" }>, align 8
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00s\00\00\00\05\00\00\00" }>, align 8
@84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00v\00\00\00\05\00\00\00" }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00T\00\00\00\09\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00b\00\00\00\1B\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00b\00\00\00\08\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00^\00\00\00\09\00\00\00" }>, align 8
@89 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00\A8\00\00\00\07\00\00\00" }>, align 8
@90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00\9F\00\00\00\0F\00\00\00" }>, align 8
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00\9F\00\00\008\00\00\00" }>, align 8
@92 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @64, [16 x i8] c"7\00\00\00\00\00\00\00\9C\00\00\009\00\00\00" }>, align 8
@_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants15XORB_BLOCK_SIZE = external global { { { [1 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants17TARGET_CHUNK_SIZE = external global { { { [1 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@93 = private unnamed_addr constant [58 x i8] c"xet_core_structures/src/xorb_object/xorb_object_format.rs\00", align 1
@94 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @93, [16 x i8] c"9\00\00\00\00\00\00\005\00\00\00.\00\00\00" }>, align 8
@95 = private unnamed_addr constant [38 x i8] c"#No boundary found in Content-Type: \C0\00", align 1
@96 = private unnamed_addr constant [9 x i8] c"boundary=", align 1
@97 = private unnamed_addr constant [28 x i8] c"window size must be non-zero", align 1
@98 = private unnamed_addr constant [39 x i8] c"xet_client/src/cas_client/multipart.rs\00", align 1
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"&\00\00\00\00\00\00\00x\00\00\00\0E\00\00\00" }>, align 8
@100 = private unnamed_addr constant [2 x i8] c"\0D\0A", align 1
@101 = private unnamed_addr constant [47 x i8] c"No Content-Range header found in multipart part", align 1
@102 = private unnamed_addr constant [14 x i8] c"content-range:", align 1
@103 = private unnamed_addr constant [6 x i8] c"bytes ", align 1
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"&\00\00\00\00\00\00\00k\00\00\00*\00\00\00" }>, align 8
@105 = private unnamed_addr constant [7 x i8] c"\04\0D\0A--\C0\00", align 1
@106 = private unnamed_addr constant [5 x i8] c"\02--\C0\00", align 1
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"&\00\00\00\00\00\00\00@\00\00\00'\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"&\00\00\00\00\00\00\002\00\00\00\1E\00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"&\00\00\00\00\00\00\000\00\00\00!\00\00\00" }>, align 8
@110 = private unnamed_addr constant [55 x i8] c"Malformed multipart part: missing header/data separator", align 1
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"&\00\00\00\00\00\00\00(\00\00\00$\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"&\00\00\00\00\00\00\00!\00\00\00#\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @98, [16 x i8] c"&\00\00\00\00\00\00\00\1D\00\00\00$\00\00\00" }>, align 8
@114 = private unnamed_addr constant [35 x i8] c"No boundary found in multipart body", align 1
@115 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/index.rs\00", align 1
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"O\00\00\00\00\00\00\00\ED\03\00\004\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"O\00\00\00\00\00\00\00\F1\03\00\003\00\00\00" }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @115, [16 x i8] c"O\00\00\00\00\00\00\00\FC\03\00\007\00\00\00" }>, align 8
@_RNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils17REFERENCE_INSTANT = hidden global <{ ptr, [8 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils17REFERENCE_INSTANT0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceBc_, [8 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@119 = private unnamed_addr constant [323 x i8] c"\00\00\02ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF?\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@120 = private unnamed_addr constant [1 x i8] c",", align 1
@121 = private unnamed_addr constant [8 x i8] c"\C0\01:\C0\01:\C0\00", align 1
@122 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@123 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @122, [24 x i8] zeroinitializer }>, align 8
@124 = private unnamed_addr constant [51 x i8] c"xet_client/src/cas_client/simulation/xorb_utils.rs\00", align 1
@125 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @124, [16 x i8] c"2\00\00\00\00\00\00\00X\00\00\00\0D\00\00\00" }>, align 8
@126 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @124, [16 x i8] c"2\00\00\00\00\00\00\00\87\00\00\00\15\00\00\00" }>, align 8
@_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@127 = private unnamed_addr constant [5 x i8] c"\C0\01/\C0\00", align 1
@128 = private unnamed_addr constant [26 x i8] c"tuple struct HexMerkleHash", align 1
@129 = private unnamed_addr constant [16 x i8] c"field identifier", align 1
@130 = private unnamed_addr constant [17 x i8] c"a tuple of size 2", align 1
@131 = private unnamed_addr constant [5 x i8] c"a map", align 1
@132 = private unnamed_addr constant [10 x i8] c"a sequence", align 1
@133 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@134 = private unnamed_addr constant [13 x i8] c"struct HexKey", align 1
@135 = private unnamed_addr constant [10 x i8] c"struct Key", align 1
@136 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@137 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsiAynQAjgDuT_10xet_client }>, align 8
@138 = private unnamed_addr constant [13 x i8] c"FromUtf8Error", align 1
@139 = private unnamed_addr constant [5 x i8] c"bytes", align 1
@140 = private unnamed_addr constant [5 x i8] c"error", align 1
@141 = private unnamed_addr constant [20 x i8] c"an array of length 2", align 1
@142 = private unnamed_addr constant [20 x i8] c"an array of length 4", align 1
@143 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"O\00\00\00\00\00\00\00|\04\00\00$\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !48, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !48, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !48, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !48, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiAynQAjgDuT_10xet_client.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i
    i32 13, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i
    i32 12, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i
    i32 11, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i
    i32 10, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i
    i32 9, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiAynQAjgDuT_10xet_client.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiAynQAjgDuT_10xet_client.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !49, !noundef !4
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !49, !noundef !4
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiAynQAjgDuT_10xet_client.exit

_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiAynQAjgDuT_10xet_client.exit: ; preds = %bb.e, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i, %bb.d
  %i.bi = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiAynQAjgDuT_10xet_client.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiAynQAjgDuT_10xet_client.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !50, !noundef !4 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit17.i.i.i.i.i

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.0, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !50, !noundef !4 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.0, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !50, !noundef !4 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.0, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !50, !noundef !4
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiAynQAjgDuT_10xet_client.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !51, !noundef !4
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !51, !noundef !4
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i6

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.0, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsiAynQAjgDuT_10xet_client.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.0 to i64
  %i.do = sub i64 %i.aq, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i, %bb.t, %bb.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiAynQAjgDuT_10xet_client.exit, %bb.u
  %.sroa.0.02934 = phi i64 [ %i.c, %bb.u ], [ %i.c, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiAynQAjgDuT_10xet_client.exit ], [ 0, %bb.a ], [ %i.c, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %i.aq, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsiAynQAjgDuT_10xet_client.exit ], [ 0, %bb.a ], [ %i.aq, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsiAynQAjgDuT_10xet_client.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.02934
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02934
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: noinline nonlazybind uwtable
define noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorECsiAynQAjgDuT_10xet_client(i8 noundef range(i8 0, 44) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorE4fromCsiAynQAjgDuT_10xet_client(ptr noalias noundef nonnull align 8 %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call noundef nonnull ptr @_RNvNtNtCsexYYUdYSQU6_5alloc2io5error21custom_owner_from_box(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c)
  %i.e = tail call noundef nonnull ptr @_RNvMs0_NtNtNtCskKLDkoKarTP_4core2io5error4reprNtB5_4Repr10new_custom(ptr noundef nonnull %i.d)
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error5otherNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorECsiAynQAjgDuT_10xet_client(ptr noalias noundef nonnull align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorECsiAynQAjgDuT_10xet_client(i8 noundef 42, ptr noalias noundef nonnull align 8 %0) #22
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsUrhh0HcRih_5tokio4time7instant7InstantE5force0ECsiAynQAjgDuT_10xet_client() unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils17REFERENCE_INSTANT, i64 16) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils17REFERENCE_INSTANT, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation10xorb_utils17REFERENCE_INSTANT, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object18xorb_object_formatNtB6_16XorbObjectInfoV19serializeINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiAynQAjgDuT_10xet_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.s = call noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef 7) ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.458.0..sroa_idx, align 8
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 139
  %i.u = load i8, ptr %i.t, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.u, ptr %i.h, align 1
  %i.v = call noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not147 = icmp eq ptr %i.v, null
  br i1 %.not147, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.461.0..sroa_idx, align 8
  br label %bb.ak

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = call noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 32) ; 2 uses
  %.not148 = icmp eq ptr %i.x, null
  br i1 %.not148, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %.sroa.464.0..sroa_idx, align 8
  br label %bb.ak

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.z = call noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 7) ; 2 uses
  %.not149 = icmp eq ptr %i.z, null
  br i1 %.not149, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.467.0..sroa_idx, align 8
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 147
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %i.ab, ptr %i.g, align 1
  %i.ac = call noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not150 = icmp eq ptr %i.ac, null
  br i1 %.not150, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %.sroa.470.0..sroa_idx, align 8
  br label %bb.ak

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.ae, ptr %i.f, align 4
  %i.af = call noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not151 = icmp eq ptr %i.af, null
  br i1 %.not151, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.473.0..sroa_idx, align 8
  br label %bb.ak

bb.m:                                             ; preds = %bb.k
  %i.ag = zext i32 %i.ae to i64                   ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 288230376151711744
  call void @llvm.assume(i1 %i.aj)
  %.not152 = icmp eq i64 %i.ai, %i.ag
  br i1 %.not152, label %bb.n, label %.split142

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ag, 5
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.an = icmp eq i32 %i.ae, 0
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.split142:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.ai, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.n, ptr %i.m, align 8
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.478.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.ad, ptr %i.ao, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull @19, ptr noundef nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 13, ptr %0, align 8
  br label %bb.ak

bb.o:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.019.0174, i64 32 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.am
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.019.0174 = phi ptr [ %i.ap, %bb.o ], [ %i.al, %bb.n ] ; 2 uses
  %i.ar = call noundef ptr @_RNvYINtNtCsfB9sgNWUSjB_7countio7counter7CounterQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.019.0174, i64 noundef 32) ; 2 uses
  %.not153 = icmp eq ptr %i.ar, null
  br i1 %.not153, label %bb.o, label %bb.p

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 148
end_hunk_0
