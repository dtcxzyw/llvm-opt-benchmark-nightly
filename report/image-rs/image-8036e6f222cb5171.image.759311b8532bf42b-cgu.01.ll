Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.01?download=true
inline.NumInlined: 1496
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [96 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/smallvec-1.15.2/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00V\01\00\00.\00\00\00" }>, align 8
@2 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00E\01\00\006\00\00\00" }>, align 8
@4 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/zune-jpeg-0.5.15/src/bitstream.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\00b\01\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant [37 x i8] c"\13Bad Huffman Code 0x\C0\0E, corrupt JPEG\00", align 1
@7 = private unnamed_addr constant [39 x i8] c"\0CCode length \C0\16  more than bits left \C0\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\00\82\01\00\005\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\00\A1\01\00\00\11\00\00\00" }>, align 8
@10 = private unnamed_addr constant [640 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\0A\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\19\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00!\00\00\00\00\00\00\00(\00\00\00\00\00\00\000\00\00\00\00\00\00\00)\00\00\00\00\00\00\00\22\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\0D\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\1C\00\00\00\00\00\00\00#\00\00\00\00\00\00\00*\00\00\00\00\00\00\001\00\00\00\00\00\00\008\00\00\00\00\00\00\009\00\00\00\00\00\00\002\00\00\00\00\00\00\00+\00\00\00\00\00\00\00$\00\00\00\00\00\00\00\1D\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\1E\00\00\00\00\00\00\00%\00\00\00\00\00\00\00,\00\00\00\00\00\00\003\00\00\00\00\00\00\00:\00\00\00\00\00\00\00;\00\00\00\00\00\00\004\00\00\00\00\00\00\00-\00\00\00\00\00\00\00&\00\00\00\00\00\00\00\1F\00\00\00\00\00\00\00'\00\00\00\00\00\00\00.\00\00\00\00\00\00\005\00\00\00\00\00\00\00<\00\00\00\00\00\00\00=\00\00\00\00\00\00\006\00\00\00\00\00\00\00/\00\00\00\00\00\00\007\00\00\00\00\00\00\00>\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00?\00\00\00\00\00\00\00", align 8
@11 = private unnamed_addr constant [42 x i8] c"No more bytes left in stream before marker", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\00\C5\01\00\005\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\00\DB\01\00\00\11\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\00C\02\00\003\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\00Y\02\00\00\11\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\00\8A\02\00\00\11\00\00\00" }>, align 8
@17 = private unnamed_addr constant [45 x i8] c"Marker found where not expected in refine bit", align 1
@18 = private unnamed_addr constant [126 x i8] zeroinitializer, align 2
@19 = private unnamed_addr constant [28 x i8] c"Unknown marker in bit stream", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"f\00\00\00\00\00\00\00E\01\00\00\09\00\00\00" }>, align 8
@21 = private unnamed_addr constant [21 x i8] c"text attribute length", align 1
@22 = private unnamed_addr constant [11 x i8] c"vector size", align 1
@23 = private unnamed_addr constant [13 x i8] c"text too long", align 1
@24 = private unnamed_addr constant [20 x i8] c"text array byte size", align 1
@25 = private unnamed_addr constant [1 x i8] c"R", align 1
@26 = private unnamed_addr constant [1 x i8] c"G", align 1
@27 = private unnamed_addr constant [1 x i8] c"B", align 1
@28 = private unnamed_addr constant [1 x i8] c"A", align 1
@29 = private unnamed_addr constant [26 x i8] c"too new file feature flags", align 1
@30 = private unnamed_addr constant [116 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/exr-1.74.2/src/image/read/specific_channels.rs\00", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"s\00\00\00\00\00\00\00\7F\01\00\00/\00\00\00" }>, align 8
@32 = private unnamed_addr constant [15 x i8] c"box coordinates", align 1
@33 = private unnamed_addr constant [37 x i8] c"window size exceeding integer maximum", align 1
@34 = private unnamed_addr constant [26 x i8] c"pixel type attribute value", align 1
@35 = private unnamed_addr constant [18 x i8] c"x channel sampling", align 1
@36 = private unnamed_addr constant [18 x i8] c"y channel sampling", align 1
@37 = private unnamed_addr constant [33 x i8] c"channel linearity attribute value", align 1
@38 = private unnamed_addr constant [31 x i8] c"environment map attribute value", align 1
@39 = private unnamed_addr constant [26 x i8] c"line order attribute value", align 1
@40 = private unnamed_addr constant [82 x i8] c"@Overflow while calculating preview image Attribute size (width: \C0\0A, height: \C0\02).\00", align 1
@41 = private unnamed_addr constant [30 x i8] c"tile description rounding mode", align 1
@42 = private unnamed_addr constant [27 x i8] c"tile description level mode", align 1
@43 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/half-2.7.1/src/binary16/arch.rs\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"d\00\00\00\00\00\00\00p\03\00\00\05\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"d\00\00\00\00\00\00\00\E2\01\00\00\05\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"d\00\00\00\00\00\00\00\F7\01\00\00$\00\00\00" }>, align 8
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"d\00\00\00\00\00\00\00\FA\01\00\00\17\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"d\00\00\00\00\00\00\00\F1\01\00\00$\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"d\00\00\00\00\00\00\00\F4\01\00\00\17\00\00\00" }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @43, [16 x i8] c"d\00\00\00\00\00\00\00\EB\01\00\00\0B\00\00\00" }>, align 8
@51 = private unnamed_addr constant [14 x i8] c"attribute size", align 1
@52 = private unnamed_addr constant [30 x i8] c"sample count was miscalculated", align 1
@53 = private unnamed_addr constant [39 x i8] c"error when reading from in-memory slice", align 1
@54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"s\00\00\00\00\00\00\00\C0\01\00\005\00\00\00" }>, align 8
@55 = private unnamed_addr constant [49 x i8] c"\19a channel with the name `\C0\14` is already defined\00", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"s\00\00\00\00\00\00\00A\00\00\00\09\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"s\00\00\00\00\00\00\00)\00\00\00\09\00\00\00" }>, align 8
@58 = private unnamed_addr constant [90 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/exr-1.74.2/src/io.rs\00", align 1
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"Y\00\00\00\00\00\00\00p\01\00\009\00\00\00" }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"s\00\00\00\00\00\00\00\B7\01\00\00!\00\00\00" }>, align 8
@61 = private unnamed_addr constant [73 x i8] c"8layer does not contain all of your specified channels (`\C0\0D` is missing)\00", align 1
@62 = private unnamed_addr constant [27 x i8] c"chunk size must be non-zero", align 1
@63 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsU_Cs8zlGlznUR0G_8smallvecNtB5_18CollectionAllocErrNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@64 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@65 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs3_NtCsdsTQD3x2eOp_3exr5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt }>, align 8
@66 = private unnamed_addr constant [18 x i8] c"file feature flags", align 1
@67 = private unnamed_addr constant [46 x i8] c"file versions other than 2.0 are not supported", align 1
@68 = private unnamed_addr constant [125 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/zune-core-0.5.3/src/bytestream/reader/no_std_readers.rs\00", align 1
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"|\00\00\00\00\00\00\00r\00\00\00\1C\00\00\00" }>, align 8
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"|\00\00\00\00\00\00\00r\00\00\00\0C\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"|\00\00\00\00\00\00\00q\00\00\00:\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\E6\04\00\00\0E\00\00\00" }>, align 8
@73 = private unnamed_addr constant [32 x i8] c"assertion failed: new_cap >= len", align 1
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"_\00\00\00\00\00\00\00\B1\04\00\00\0D\00\00\00" }>, align 8
@_RNvNtNtCs8llMT7u9xTq_10std_detect6detect5cache5CACHE = external local_unnamed_addr global [3 x { { { { i64 } } } }]
@75 = private unnamed_addr constant [52 x i8] c"destination and source slices have different lengths", align 1
@76 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/half-2.7.1/src/slice.rs\00", align 1
@77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @76, [16 x i8] c"\\\00\00\00\00\00\00\00P\01\00\00\09\00\00\00" }>, align 8
@78 = private unnamed_addr constant [49 x i8] c"`SpecificChannels` does not support deep data yet", align 1
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @30, [16 x i8] c"s\00\00\00\00\00\00\00\EC\00\00\00\0E\00\00\00" }>, align 8
@80 = private unnamed_addr constant [57 x i8] c"no layer in the image matched your specified requirements", align 1
@81 = private unnamed_addr constant [13 x i8] c"Negative seek", align 1
@82 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/exr-1.74.2/src/image/read/layers.rs\00", align 1
@83 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @82, [16 x i8] c"h\00\00\00\00\00\00\00\F2\00\00\007\00\00\00" }>, align 8
@84 = private unnamed_addr constant [7 x i8] c"Aborted", align 1
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@86 = private unnamed_addr constant [12 x i8] c"NotSupported", align 1
@87 = private unnamed_addr constant [7 x i8] c"Invalid", align 1
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@89 = private unnamed_addr constant [2 x i8] c"Io", align 1
@90 = private unnamed_addr constant [78 x i8] c"/rustc/67854e511de21d881bb16426996cd4259d44aa2e/library/alloc/src/io/impls.rs\00", align 1
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @90, [16 x i8] c"M\00\00\00\00\00\00\00?\01\00\00\11\00\00\00" }>, align 8
@92 = private unnamed_addr constant [27 x i8] c"failed to fill whole buffer", align 1
@93 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @92, [9 x i8] c"\1B\00\00\00\00\00\00\00%", [7 x i8] undef }>, align 8
@94 = private unnamed_addr constant [16 x i8] c"CapacityOverflow", align 1
@95 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtB8_5alloc6layout6LayoutNtB6_5Debug3fmtCsa5QsYiPB8Gl_5image }>, align 8
@96 = private unnamed_addr constant [8 x i8] c"AllocErr", align 1
@97 = private unnamed_addr constant [6 x i8] c"layout", align 1
@switch.table._RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8 = private unnamed_addr constant [63 x i8] [i8 0, i8 1, i8 2, i8 poison, i8 undef, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 undef, i8 poison, i8 poison, i8 poison, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 poison, i8 poison, i8 0, i8 1, i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 13, i8 14, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 undef], align 1
@switch.table._RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8.147 = private unnamed_addr constant [63 x i8] [i8 0, i8 0, i8 0, i8 poison, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 2, i8 poison, i8 poison, i8 poison, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 poison, i8 poison, i8 10, i8 10, i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 10, i8 10, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 11], align 1

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %4, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(256) %5, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %6, ptr noalias nofree noundef align 4 captures(none) dereferenceable(4) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca [1 x i8], align 1                 ; 5 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 5 uses
  %i.r = alloca [1 x i8], align 1                 ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 5 uses
  %i.t = alloca [1 x i8], align 1                 ; 5 uses
  %i.u = alloca [1 x i8], align 1                 ; 5 uses
  %i.v = alloca [1 x i8], align 1                 ; 5 uses
  %i.w = alloca [1 x i8], align 1                 ; 5 uses
  %i.x = alloca [1 x i8], align 1                 ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [4 x i8], align 4                ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [4 x i8], align 4                ; 6 uses
  %i.aj = alloca [4 x i8], align 4                ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [4 x i8], align 4                ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.431 = alloca [31 x i8], align 1          ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.429 = alloca [31 x i8], align 1          ; 4 uses
  %i.av = alloca [4 x i8], align 4                ; 6 uses
  %i.aw = alloca [4 x i8], align 4                ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2448
  %i.ay = load i16, ptr %i.ax, align 4, !range !4, !noundef !5
  %i.az = trunc nuw i16 %i.ay to i1
  %.sink982.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink982.sroa.gep1187 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sink982.sroa.gep1189 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sink982.sroa.gep1190 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br i1 %i.az, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 59 uses
  %i.bc = load i8, ptr %i.bb, align 8, !noundef !5 ; 4 uses
  %i.bd = icmp ne i8 %i.bc, 0                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 10 uses
  %i.bf = load i8, ptr %i.be, align 2, !range !7
  %.not = icmp eq i8 %i.bf, -1                    ; 2 uses
  %or.cond = select i1 %i.bd, i1 true, i1 %.not
  br i1 %or.cond, label %bb.d, label %bb.bw

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !209
  %i.bg = icmp ult i8 %i.bc, 32
  br i1 %i.bg, label %bb.e, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %.not.not = xor i1 %.not, true
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bj = load i8, ptr %i.bi, align 1, !range !8, !alias.scope !211, !noalias !212
  %i.bk = trunc nuw i8 %i.bj to i1
  %or.cond.i.i = select i1 %.not.not, i1 true, i1 %i.bk
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

.loopexit572:                                     ; preds = %.preheader571, %.loopexit574, %bb.be
  %i.bl = load i64, ptr %1, align 8, !alias.scope !211, !noalias !212, !noundef !5
  %i.bm = load i8, ptr %i.bb, align 8, !alias.scope !211, !noalias !212, !noundef !5
  %i.bn = sub i8 0, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = and i8 %i.bn, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl i64 %i.bl, %i.bq
  store i64 %i.br, ptr %i.bo, align 8, !alias.scope !211, !noalias !212
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.bs = load i64, ptr %1, align 8, !alias.scope !211, !noalias !212, !noundef !5
  %i.bt = shl i64 %i.bs, 32                       ; 2 uses
  store i64 %i.bt, ptr %1, align 8, !alias.scope !211, !noalias !212
  %i.bu = or disjoint i8 %i.bc, 32
  store i8 %i.bu, ptr %i.bb, align 8, !alias.scope !211, !noalias !212
  %i.bv = sub nuw nsw i8 32, %i.bc
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = zext nneg i8 %i.bv to i64
  %i.by = shl i64 %i.bt, %i.bx
  store i64 %i.by, ptr %i.bw, align 8, !alias.scope !211, !noalias !212
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.g:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !211, !noalias !212, !noundef !5
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !213
  store i32 0, ptr %i.ac, align 4, !noalias !213
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val28.i = load ptr, ptr %i.cb, align 8, !alias.scope !214, !noalias !215, !nonnull !5, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %.val29.i = load i64, ptr %i.cc, align 8, !alias.scope !214, !noalias !215, !noundef !5 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %.promoted = load i64, ptr %i.cd, align 8, !alias.scope !214, !noalias !215
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.n
  %.sroa.0.0.i680 = phi i64 [ 0, %bb.h ], [ %i.ct, %bb.n ] ; 5 uses
  %i.ce = phi i64 [ %.promoted, %bb.h ], [ %i.cl, %bb.n ] ; 3 uses
  %i.cf = sub nuw nsw i64 4, %.sroa.0.0.i680      ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.0.0.i680
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.ce) ; 4 uses
  %i.ch = add i64 %i.ce, %i.cf                    ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %..i.i
  br i1 %i.ci, label %bb.k, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.ch) ; 2 uses
  %i.cj = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.cj, %i.cf
  br i1 %.not4.i.i, label %bb.l, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !10

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !216
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cj, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !216
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %..i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.cg, i64 noundef %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !217
  %i.cl = add i64 %i.cj, %i.ce                    ; 4 uses
  store i64 %i.cl, ptr %i.cd, align 8, !alias.scope !214, !noalias !215
  %i.cm = icmp eq i64 %..i30.i, %..i.i
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
  %i.cn = sub nsw i64 0, %.sroa.0.0.i680
  %i.co = call { i64, ptr } @_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, i64 noundef 2, i64 noundef %i.cn), !noalias !218 ; 2 uses
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  %i.cq = trunc nuw i64 %i.cp to i1               ; 2 uses
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  %i.cs = ptrtoint ptr %i.cr to i64
  %.sroa.0399.0.ph = select i1 %i.cq, i64 -9223372036854775808, i64 -9223372036854775806
  %.sroa.8.0.ph = select i1 %i.cq, i64 %i.cs, i64 %.sroa.0.0.i680
  store i64 %.sroa.0399.0.ph, ptr %i.ad, align 8, !noalias !213
  %.sroa.4402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.8.0.ph, ptr %.sroa.4402.0..sroa_idx, align 8, !noalias !213
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !213
  br label %bb.v

bb.n:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
  %i.ct = add nuw nsw i64 %i.cj, %.sroa.0.0.i680  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 4
  br i1 %i.cu, label %bb.i, label %bb.p

bb.o:                                             ; preds = %bb.g
  br i1 %i.bd, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread

bb.p:                                             ; preds = %bb.n
  %.sroa.0112.0.copyload.i.i = load i32, ptr %i.ac, align 4, !noalias !213 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %.sroa.0112.0.copyload.i.i, ptr %i.cv, align 8, !noalias !213
  store i64 -1, ptr %i.ad, align 8, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !213
  %i.cw = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i.i) ; 3 uses
  %i.cx = or i32 %i.cw, -2139062144
  %i.cy = add i32 %i.cx, -2139062143
  %i.cz = and i32 %i.cw, -2139062144
  %i.da = and i32 %i.cz, %i.cy
  %.not221.i.i = icmp eq i32 %i.da, 0
  br i1 %.not221.i.i, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread498, label %bb.q

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread498: ; preds = %bb.p
  %i.db = load i8, ptr %i.bb, align 8, !alias.scope !211, !noalias !212, !noundef !5 ; 2 uses
  %i.dc = add i8 %i.db, 32
  store i8 %i.dc, ptr %i.bb, align 8, !alias.scope !211, !noalias !212
  %i.dd = load i64, ptr %1, align 8, !alias.scope !211, !noalias !212, !noundef !5
  %i.de = shl i64 %i.dd, 32
  %i.df = zext i32 %i.cw to i64
  %i.dg = or disjoint i64 %i.de, %i.df            ; 2 uses
  store i64 %i.dg, ptr %1, align 8, !alias.scope !211, !noalias !212
  %i.dh = sub i8 32, %i.db
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = and i8 %i.dh, 63
  %i.dk = zext nneg i8 %i.dj to i64
  %i.dl = shl i64 %i.dg, %i.dk
  store i64 %i.dl, ptr %i.di, align 8, !alias.scope !211, !noalias !212
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad), !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !213
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.q:                                             ; preds = %bb.p
  %i.dm = icmp ult i64 %i.cl, 4
  br i1 %i.dm, label %bb.r, label %bb.t, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.dn = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32
          to label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #33
          to label %common.resume unwind label %bb.u, !noalias !219

bb.t:                                             ; preds = %bb.q
  %i.dp = add i64 %i.cl, -4
  store i64 %i.dp, ptr %i.cd, align 8, !alias.scope !220
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !219
  unreachable

common.resume:                                    ; preds = %bb.cw, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.do, %bb.s ], [ %i.sd, %bb.cw ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.t, %bb.m
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad), !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !221
  store i8 0, ptr %i.m, align 1, !noalias !221
  %i.dr = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.m, i64 noundef 1), !noalias !219 ; 2 uses
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = extractvalue { i64, ptr } %i.dr, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.ds, ptr %i.dt)
  %i.du = load i8, ptr %i.m, align 1, !noalias !221, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !221
  %.val1.i.i = load i64, ptr %i.cc, align 8, !alias.scope !222, !noalias !223, !noundef !5
  %i.dv = load i64, ptr %i.cd, align 8, !alias.scope !222, !noalias !223, !noundef !5
  %i.dw = icmp ule i64 %.val1.i.i, %i.dv
  %i.dx = zext i8 %i.du to i64
  %i.dy = zext i1 %i.dw to i64
  %i.dz = load i64, ptr %i.bz, align 8, !alias.scope !211, !noalias !212, !noundef !5
  %i.ea = add i64 %i.dz, %i.dy
  store i64 %i.ea, ptr %i.bz, align 8, !alias.scope !211, !noalias !212
  %i.eb = load i64, ptr %1, align 8, !alias.scope !211, !noalias !212, !noundef !5
  %i.ec = shl i64 %i.eb, 8
  %i.ed = or disjoint i64 %i.ec, %i.dx
  store i64 %i.ed, ptr %1, align 8, !alias.scope !211, !noalias !212
  %i.ee = load i8, ptr %i.bb, align 8, !alias.scope !211, !noalias !212, !noundef !5
  %i.ef = add i8 %i.ee, 8
  store i8 %i.ef, ptr %i.bb, align 8, !alias.scope !211, !noalias !212
  %i.eg = icmp eq i8 %i.du, -1
  br i1 %i.eg, label %bb.w, label %.loopexit578

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !224
  store i8 0, ptr %i.w, align 1, !noalias !224
  %i.eh = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2, ptr noalias nofree noundef nonnull %i.w, i64 noundef 1), !noalias !219 ; 2 uses
  %i.ei = extractvalue { i64, ptr } %i.eh, 0
  %i.ej = extractvalue { i64, ptr } %i.eh, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.ei, ptr %i.ej)
  %i.ek = load i8, ptr %i.w, align 1, !noalias !224, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !224
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %.loopexit578, label %.preheader577

.preheader577:                                    ; preds = %bb.w
  %.promoted681 = load i64, ptr %i.cd, align 8
  %.val28.i175 = load ptr, ptr %i.cb, align 8, !nonnull !5
  %.val29.i176 = load i64, ptr %i.cc, align 8     ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.preheader577, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180
  %i.em = phi i64 [ %i.er, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180 ], [ %.promoted681, %.preheader577 ] ; 3 uses
  %.sroa.022.0.in.i.i = phi i8 [ %i.es, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180 ], [ %i.ek, %.preheader577 ] ; 3 uses
  switch i8 %.sroa.022.0.in.i.i, label %bb.ac [
    i8 -1, label %bb.y
    i8 0, label %.loopexit578
  ]

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !225
  store i8 0, ptr %i.x, align 1, !noalias !225
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %..i.i177 = call noundef i64 @llvm.umin.i64(i64 %.val29.i176, i64 %i.em) ; 3 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  %i.eo = icmp ult i64 %i.en, %..i.i177
  br i1 %i.eo, label %bb.aa, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  %..i30.i178 = call noundef i64 @llvm.umin.i64(i64 %.val29.i176, i64 %i.en)
  %i.ep = sub nuw i64 %..i30.i178, %..i.i177      ; 5 uses
  %.not4.i.i179 = icmp ugt i64 %i.ep, 1
  br i1 %.not4.i.i179, label %bb.ab, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180, !prof !10

bb.aa:                                            ; preds = %bb.y
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !227
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ep, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !227
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180: ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %.val28.i175, i64 %..i.i177
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.x, i64 noundef %i.ep, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !228
  %i.er = add i64 %i.ep, %i.em                    ; 2 uses
  store i64 %i.er, ptr %i.cd, align 8, !alias.scope !226, !noalias !229
  %i.es = load i8, ptr %i.x, align 1, !noalias !225, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !225
  br label %bb.x

bb.ac:                                            ; preds = %bb.x
  %i.et = load i64, ptr %1, align 8, !alias.scope !211, !noalias !212, !noundef !5 ; 2 uses
  %i.eu = lshr i64 %i.et, 8                       ; 2 uses
  store i64 %i.eu, ptr %1, align 8, !alias.scope !211, !noalias !212
  %i.ev = load i8, ptr %i.bb, align 8, !alias.scope !211, !noalias !212, !noundef !5 ; 4 uses
  %i.ew = add i8 %i.ev, -8                        ; 2 uses
  store i8 %i.ew, ptr %i.bb, align 8, !alias.scope !211, !noalias !212
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = sub i8 8, %i.ev
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fa = and i8 %i.ey, 63
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = shl i64 %i.eu, %i.fb
  store i64 %i.fc, ptr %i.ez, align 8, !alias.scope !211, !noalias !212
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fd = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.022.0.in.i.i), !noalias !219 ; 2 uses
  %i.fe = extractvalue { i8, i8 } %i.fd, 0        ; 2 uses
  %i.ff = extractvalue { i8, i8 } %i.fd, 1
  store i8 %i.fe, ptr %i.be, align 2, !alias.scope !211, !noalias !212
  store i8 %i.ff, ptr %i.bh, align 1, !alias.scope !211, !noalias !212
  %i.fg = icmp eq i8 %i.fe, 12
  br i1 %i.fg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = icmp eq i8 %.sroa.022.0.in.i.i, -39
  br i1 %i.fh, label %bb.aj, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !213
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !219
  %i.fi = load i64, ptr %i.ab, align 8, !range !11, !noalias !213, !noundef !5
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !12, !noalias !213, !noundef !5 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.fj, label %bb.ah, label %bb.ai, !prof !9

bb.ah:                                            ; preds = %bb.ag
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !213
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fl, i64 %i.fn) #35, !noalias !219
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.fo = load ptr, ptr %i.fm, align 8, !noalias !213, !nonnull !5, !noundef !5 ; 2 uses
  %i.fp = icmp samesign ugt i64 %i.fl, 27
end_hunk_0
begin_hunk_1_@_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image:bb.a
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bb.fo, label %bb.fp

.split79:                                         ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.av, ptr %i.ar, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.469.0..sroa_idx, align 8
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.bb, ptr %i.acg, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @_RNvXNtNtNtCsj6eKBz9Db1c_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noundef nonnull @7, ptr noundef nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.sroa.431.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.431, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.431.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.431.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.431, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.431)
  br label %bb.fk

bb.fo:                                            ; preds = %bb.fn
  %i.ach = icmp eq i32 %i.acd, 15
  br i1 %i.ach, label %bb.fq, label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %i.aci = zext nneg i32 %i.acd to i64
  %i.acj = add nuw nsw i64 %.sroa.01.0706, %i.aci ; 2 uses
  %i.ack = trunc nuw nsw i32 %i.ace to i8
  %i.acl = zext nneg i32 %i.ace to i64            ; 2 uses
  %notmask = shl nsw i64 -1, %i.acl
  %i.acm = xor i64 %notmask, -1
  %i.acn = call noundef i64 @llvm.fshl.i64(i64 %i.acc, i64 %i.acc, i64 %i.acl) ; 2 uses
  store i64 %i.acn, ptr %i.mh, align 8
  %i.aco = and i64 %i.acn, %i.acm
  %i.acp = trunc nuw nsw i64 %i.aco to i32        ; 2 uses
  %i.acq = sub i8 %i.abz, %i.ack                  ; 2 uses
  store i8 %i.acq, ptr %i.bb, align 8
  %i.acr = add nuw nsw i32 %i.ace, 31
  %i.acs = and i32 %i.acr, 31
  %.neg = shl nsw i32 -1, %i.acs
  %i.act = add nsw i32 %.neg, %i.acp
  %i.acu = shl nsw i32 -1, %i.ace
  %i.acv = or disjoint i32 %i.acu, 1
  %isneg = icmp slt i32 %i.act, 0
  %i.acw = select i1 %isneg, i32 %i.acv, i32 0
  %i.acx = add nsw i32 %i.acw, %i.acp             ; 2 uses
  store i32 %i.acx, ptr %i.aw, align 4
  %i.acy = and i64 %i.acj, 63
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %i.acy
  %i.ada = load i64, ptr %i.acz, align 8, !noundef !5
  %i.adb = and i64 %i.ada, 63                     ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adb
  %i.add = load i32, ptr %i.adc, align 4, !noundef !5
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adb
  %i.adf = mul i32 %i.add, %i.acx
  store i32 %i.adf, ptr %i.ade, align 4
  %i.adg = add nuw nsw i64 %i.acj, 1
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fo
  %i.adh = add nuw nsw i64 %.sroa.01.0706, 16
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fo
  %i.adi = trunc nuw nsw i64 %.sroa.01.0706 to i16
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.adi, ptr %i.adj, align 2
  store i8 -1, ptr %0, align 8
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fp, %bb.fq
  %i.adk = phi i8 [ %i.abz, %bb.fq ], [ %i.acq, %bb.fp ]
  %.sroa.01.1 = phi i64 [ %i.adh, %bb.fq ], [ %i.adg, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fu, %bb.fs
  %i.adl = phi i8 [ %i.adk, %bb.fs ], [ %i.aed, %bb.fu ]
  %.sroa.01.2 = phi i64 [ %.sroa.01.1, %bb.fs ], [ %i.aeg, %bb.fu ] ; 2 uses
  %i.adm = icmp ult i64 %.sroa.01.2, 64
  br i1 %i.adm, label %bb.ca, label %bb.bz

bb.fu:                                            ; preds = %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image.exit.thread
  %i.adn = lshr i16 %i.aaq, 4
  %i.ado = and i16 %i.adn, 15
  %i.adp = zext nneg i16 %i.ado to i64
  %i.adq = add nuw nsw i64 %.sroa.01.0706, %i.adp ; 2 uses
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.adq, i64 63)
  %i.adr = ashr i16 %i.aaq, 8
  %i.ads = sext i16 %i.adr to i32
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr @10, i64 %..i
  %i.adu = load i64, ptr %i.adt, align 8, !noundef !5
  %i.adv = and i64 %i.adu, 63                     ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.adv
  %i.adx = load i32, ptr %i.adw, align 4, !noundef !5
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.adv
  %i.adz = mul i32 %i.adx, %i.ads
  store i32 %i.adz, ptr %i.ady, align 4
  %i.aea = trunc i16 %i.aaq to i8
  %i.aeb = and i8 %i.aea, 15                      ; 2 uses
  %i.aec = load i8, ptr %i.bb, align 8, !noundef !5
  %i.aed = call i8 @llvm.usub.sat.i8(i8 %i.aec, i8 %i.aeb) ; 2 uses
  store i8 %i.aed, ptr %i.bb, align 8
  %i.aee = zext nneg i8 %i.aeb to i64
  %i.aef = shl i64 %i.aan, %i.aee
  store i64 %i.aef, ptr %i.mh, align 8
  %i.aeg = add nuw nsw i64 %i.adq, 1
  br label %bb.ft

bb.fv:                                            ; preds = %bb.bw
  %i.aeh = load i64, ptr %i.ov, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ou, i64 %i.aeh) #35
  unreachable

bb.fw:                                            ; preds = %bb.bw
  %i.aei = load ptr, ptr %i.ov, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aej = icmp samesign ugt i64 %i.ou, 41
  tail call void @llvm.assume(i1 %i.aej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aei, ptr noundef nonnull align 1 dereferenceable(42) @11, i64 42, i1 false)
  store i8 0, ptr %0, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ou, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aei, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 42, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.fe
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream16decode_mcu_blockINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(3476) %4, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(256) %5, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %6, ptr noalias nofree noundef align 4 captures(none) dereferenceable(4) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = alloca [1 x i8], align 1                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca [1 x i8], align 1                 ; 5 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = alloca [1 x i8], align 1                 ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 5 uses
  %i.r = alloca [1 x i8], align 1                 ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 5 uses
  %i.t = alloca [1 x i8], align 1                 ; 5 uses
  %i.u = alloca [1 x i8], align 1                 ; 5 uses
  %i.v = alloca [1 x i8], align 1                 ; 5 uses
  %i.w = alloca [1 x i8], align 1                 ; 5 uses
  %i.x = alloca [1 x i8], align 1                 ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [4 x i8], align 4                ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 13 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [4 x i8], align 4                ; 6 uses
  %i.aj = alloca [4 x i8], align 4                ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [4 x i8], align 4                ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 12 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.431 = alloca [31 x i8], align 1          ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.429 = alloca [31 x i8], align 1          ; 4 uses
  %i.av = alloca [4 x i8], align 4                ; 6 uses
  %i.aw = alloca [4 x i8], align 4                ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2448
  %i.ay = load i16, ptr %i.ax, align 4, !range !4, !noundef !5
  %i.az = trunc nuw i16 %i.ay to i1
  %.sink982.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sink982.sroa.gep1187 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sink982.sroa.gep1189 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sink982.sroa.gep1190 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br i1 %i.az, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 2450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 59 uses
  %i.bc = load i8, ptr %i.bb, align 8, !noundef !5 ; 4 uses
  %i.bd = icmp ne i8 %i.bc, 0                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 10 uses
  %i.bf = load i8, ptr %i.be, align 2, !range !7
  %.not = icmp eq i8 %i.bf, -1                    ; 2 uses
  %or.cond = select i1 %i.bd, i1 true, i1 %.not
  br i1 %or.cond, label %bb.d, label %bb.bw

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !478
  %i.bg = icmp ult i8 %i.bc, 32
  br i1 %i.bg, label %bb.e, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 4 uses
  %.not.not = xor i1 %.not, true
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bj = load i8, ptr %i.bi, align 1, !range !8, !alias.scope !480, !noalias !481
  %i.bk = trunc nuw i8 %i.bj to i1
  %or.cond.i.i = select i1 %.not.not, i1 true, i1 %i.bk
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

.loopexit572:                                     ; preds = %.preheader571, %.loopexit574, %bb.be
  %i.bl = load i64, ptr %1, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.bm = load i8, ptr %i.bb, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.bn = sub i8 0, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = and i8 %i.bn, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl i64 %i.bl, %i.bq
  store i64 %i.br, ptr %i.bo, align 8, !alias.scope !480, !noalias !481
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.f:                                             ; preds = %bb.e
  %i.bs = load i64, ptr %1, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.bt = shl i64 %i.bs, 32                       ; 2 uses
  store i64 %i.bt, ptr %1, align 8, !alias.scope !480, !noalias !481
  %i.bu = or disjoint i8 %i.bc, 32
  store i8 %i.bu, ptr %i.bb, align 8, !alias.scope !480, !noalias !481
  %i.bv = sub nuw nsw i8 32, %i.bc
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = zext nneg i8 %i.bv to i64
  %i.by = shl i64 %i.bt, %i.bx
  store i64 %i.by, ptr %i.bw, align 8, !alias.scope !480, !noalias !481
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.g:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !482
  store i32 0, ptr %i.ac, align 4, !noalias !482
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 14 uses
  %.val28.i = load ptr, ptr %i.cb, align 8, !alias.scope !483, !noalias !484, !nonnull !5, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %.val29.i = load i64, ptr %i.cc, align 8, !alias.scope !483, !noalias !484, !noundef !5 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  %.promoted = load i64, ptr %i.cd, align 8, !alias.scope !483, !noalias !484
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.n
  %.sroa.0.0.i680 = phi i64 [ 0, %bb.h ], [ %i.ct, %bb.n ] ; 5 uses
  %i.ce = phi i64 [ %.promoted, %bb.h ], [ %i.cl, %bb.n ] ; 3 uses
  %i.cf = sub nuw nsw i64 4, %.sroa.0.0.i680      ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.0.0.i680
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.ce) ; 4 uses
  %i.ch = add i64 %i.ce, %i.cf                    ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %..i.i
  br i1 %i.ci, label %bb.k, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  %..i30.i = call noundef i64 @llvm.umin.i64(i64 %.val29.i, i64 %i.ch) ; 2 uses
  %i.cj = sub nuw i64 %..i30.i, %..i.i            ; 6 uses
  %.not4.i.i = icmp ugt i64 %i.cj, %i.cf
  br i1 %.not4.i.i, label %bb.l, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit, !prof !10

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !485
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cj, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !485
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.val28.i, i64 %..i.i
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.cg, i64 noundef %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !486
  %i.cl = add i64 %i.cj, %i.ce                    ; 4 uses
  store i64 %i.cl, ptr %i.cd, align 8, !alias.scope !483, !noalias !484
  %i.cm = icmp eq i64 %..i30.i, %..i.i
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
  %i.cn = sub nsw i64 0, %.sroa.0.0.i680
  %i.co = call { i64, ptr } @_RNvXs1_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB7_14no_std_readers7ZCursorRShENtNtNtCsj6eKBz9Db1c_4core2io4seek4Seek4seekCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb, i64 noundef 2, i64 noundef %i.cn), !noalias !487 ; 2 uses
  %i.cp = extractvalue { i64, ptr } %i.co, 0
  %i.cq = trunc nuw i64 %i.cp to i1               ; 2 uses
  %i.cr = extractvalue { i64, ptr } %i.co, 1
  %i.cs = ptrtoint ptr %i.cr to i64
  %.sroa.0399.0.ph = select i1 %i.cq, i64 -9223372036854775808, i64 -9223372036854775806
  %.sroa.8.0.ph = select i1 %i.cq, i64 %i.cs, i64 %.sroa.0.0.i680
  store i64 %.sroa.0399.0.ph, ptr %i.ad, align 8, !noalias !482
  %.sroa.4402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.8.0.ph, ptr %.sroa.4402.0..sroa_idx, align 8, !noalias !482
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !482
  br label %bb.v

bb.n:                                             ; preds = %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit
  %i.ct = add nuw nsw i64 %i.cj, %.sroa.0.0.i680  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 4
  br i1 %i.cu, label %bb.i, label %bb.p

bb.o:                                             ; preds = %bb.g
  br i1 %i.bd, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream9decode_dcINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.thread

bb.p:                                             ; preds = %bb.n
  %.sroa.0112.0.copyload.i.i = load i32, ptr %i.ac, align 4, !noalias !482 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %.sroa.0112.0.copyload.i.i, ptr %i.cv, align 8, !noalias !482
  store i64 -1, ptr %i.ad, align 8, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !482
  %i.cw = call i32 @llvm.bswap.i32(i32 %.sroa.0112.0.copyload.i.i) ; 3 uses
  %i.cx = or i32 %i.cw, -2139062144
  %i.cy = add i32 %i.cx, -2139062143
  %i.cz = and i32 %i.cw, -2139062144
  %i.da = and i32 %i.cz, %i.cy
  %.not221.i.i = icmp eq i32 %i.da, 0
  br i1 %.not221.i.i, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread498, label %bb.q

_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread498: ; preds = %bb.p
  %i.db = load i8, ptr %i.bb, align 8, !alias.scope !480, !noalias !481, !noundef !5 ; 2 uses
  %i.dc = add i8 %i.db, 32
  store i8 %i.dc, ptr %i.bb, align 8, !alias.scope !480, !noalias !481
  %i.dd = load i64, ptr %1, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.de = shl i64 %i.dd, 32
  %i.df = zext i32 %i.cw to i64
  %i.dg = or disjoint i64 %i.de, %i.df            ; 2 uses
  store i64 %i.dg, ptr %1, align 8, !alias.scope !480, !noalias !481
  %i.dh = sub i8 32, %i.db
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = and i8 %i.dh, 63
  %i.dk = zext nneg i8 %i.dj to i64
  %i.dl = shl i64 %i.dg, %i.dk
  store i64 %i.dl, ptr %i.di, align 8, !alias.scope !480, !noalias !481
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !482
  br label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.q:                                             ; preds = %bb.p
  %i.dm = icmp ult i64 %i.cl, 4
  br i1 %i.dm, label %bb.r, label %bb.t, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.dn = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 13) #32
          to label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #33
          to label %common.resume unwind label %bb.u, !noalias !488

bb.t:                                             ; preds = %bb.q
  %i.dp = add i64 %i.cl, -4
  store i64 %i.dp, ptr %i.cd, align 8, !alias.scope !489
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !488
  unreachable

common.resume:                                    ; preds = %bb.cw, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.do, %bb.s ], [ %i.sd, %bb.cw ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.t, %bb.m
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultAhj4_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader12ZByteIoErrorEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !490
  store i8 0, ptr %i.m, align 1, !noalias !490
  %i.dr = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull %i.m, i64 noundef 1), !noalias !488 ; 2 uses
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = extractvalue { i64, ptr } %i.dr, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.ds, ptr %i.dt)
  %i.du = load i8, ptr %i.m, align 1, !noalias !490, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !490
  %.val1.i.i = load i64, ptr %i.cc, align 8, !alias.scope !491, !noalias !492, !noundef !5
  %i.dv = load i64, ptr %i.cd, align 8, !alias.scope !491, !noalias !492, !noundef !5
  %i.dw = icmp ule i64 %.val1.i.i, %i.dv
  %i.dx = zext i8 %i.du to i64
  %i.dy = zext i1 %i.dw to i64
  %i.dz = load i64, ptr %i.bz, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.ea = add i64 %i.dz, %i.dy
  store i64 %i.ea, ptr %i.bz, align 8, !alias.scope !480, !noalias !481
  %i.eb = load i64, ptr %1, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.ec = shl i64 %i.eb, 8
  %i.ed = or disjoint i64 %i.ec, %i.dx
  store i64 %i.ed, ptr %1, align 8, !alias.scope !480, !noalias !481
  %i.ee = load i8, ptr %i.bb, align 8, !alias.scope !480, !noalias !481, !noundef !5
  %i.ef = add i8 %i.ee, 8
  store i8 %i.ef, ptr %i.bb, align 8, !alias.scope !480, !noalias !481
  %i.eg = icmp eq i8 %i.du, -1
  br i1 %i.eg, label %bb.w, label %.loopexit578

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !493
  store i8 0, ptr %i.w, align 1, !noalias !493
  %i.eh = call { i64, ptr } @_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull %i.w, i64 noundef 1), !noalias !488 ; 2 uses
  %i.ei = extractvalue { i64, ptr } %i.eh, 0
  %i.ej = extractvalue { i64, ptr } %i.eh, 1
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i64 %i.ei, ptr %i.ej)
  %i.ek = load i8, ptr %i.w, align 1, !noalias !493, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !493
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %.loopexit578, label %.preheader577

.preheader577:                                    ; preds = %bb.w
  %.promoted681 = load i64, ptr %i.cd, align 8
  %.val28.i175 = load ptr, ptr %i.cb, align 8, !nonnull !5
  %.val29.i176 = load i64, ptr %i.cc, align 8     ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.preheader577, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180
  %i.em = phi i64 [ %i.er, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180 ], [ %.promoted681, %.preheader577 ] ; 3 uses
  %.sroa.022.0.in.i.i = phi i8 [ %i.es, %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180 ], [ %i.ek, %.preheader577 ] ; 3 uses
  switch i8 %.sroa.022.0.in.i.i, label %bb.ac [
    i8 -1, label %bb.y
    i8 0, label %.loopexit578
  ]

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !494
  store i8 0, ptr %i.x, align 1, !noalias !494
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %..i.i177 = call noundef i64 @llvm.umin.i64(i64 %.val29.i176, i64 %i.em) ; 3 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  %i.eo = icmp ult i64 %i.en, %..i.i177
  br i1 %i.eo, label %bb.aa, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  %..i30.i178 = call noundef i64 @llvm.umin.i64(i64 %.val29.i176, i64 %i.en)
  %i.ep = sub nuw i64 %..i30.i178, %..i.i177      ; 5 uses
  %.not4.i.i179 = icmp ugt i64 %i.ep, 1
  br i1 %.not4.i.i179, label %bb.ab, label %_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180, !prof !10

bb.aa:                                            ; preds = %bb.y
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #31, !noalias !496
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ep, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #31, !noalias !496
  unreachable

_RNvXs_NtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader11std_readersINtNtB6_14no_std_readers7ZCursorRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsa5QsYiPB8Gl_5image.exit180: ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %.val28.i175, i64 %..i.i177
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.x, i64 noundef %i.ep, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69), !noalias !497
  %i.er = add i64 %i.ep, %i.em                    ; 2 uses
  store i64 %i.er, ptr %i.cd, align 8, !alias.scope !495, !noalias !498
  %i.es = load i8, ptr %i.x, align 1, !noalias !494, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !494
  br label %bb.x

bb.ac:                                            ; preds = %bb.x
  %i.et = load i64, ptr %1, align 8, !alias.scope !480, !noalias !481, !noundef !5 ; 2 uses
  %i.eu = lshr i64 %i.et, 8                       ; 2 uses
  store i64 %i.eu, ptr %1, align 8, !alias.scope !480, !noalias !481
  %i.ev = load i8, ptr %i.bb, align 8, !alias.scope !480, !noalias !481, !noundef !5 ; 4 uses
  %i.ew = add i8 %i.ev, -8                        ; 2 uses
  store i8 %i.ew, ptr %i.bb, align 8, !alias.scope !480, !noalias !481
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = sub i8 8, %i.ev
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fa = and i8 %i.ey, 63
  %i.fb = zext nneg i8 %i.fa to i64
  %i.fc = shl i64 %i.eu, %i.fb
  store i64 %i.fc, ptr %i.ez, align 8, !alias.scope !480, !noalias !481
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fd = call fastcc { i8, i8 } @_RNvMNtCsaXAyoiiLu3Y_9zune_jpeg6markerNtB2_6Marker7from_u8(i8 noundef %.sroa.022.0.in.i.i), !noalias !488 ; 2 uses
  %i.fe = extractvalue { i8, i8 } %i.fd, 0        ; 2 uses
  %i.ff = extractvalue { i8, i8 } %i.fd, 1
  store i8 %i.fe, ptr %i.be, align 2, !alias.scope !480, !noalias !481
  store i8 %i.ff, ptr %i.bh, align 1, !alias.scope !480, !noalias !481
  %i.fg = icmp eq i8 %i.fe, 12
  br i1 %i.fg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = icmp eq i8 %.sroa.022.0.in.i.i, -39
  br i1 %i.fh, label %bb.aj, label %_RINvMNtCsaXAyoiiLu3Y_9zune_jpeg9bitstreamNtB3_9BitStream6refillINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEECsa5QsYiPB8Gl_5image.exit.i.thread

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !482
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !488
  %i.fi = load i64, ptr %i.ab, align 8, !range !11, !noalias !482, !noundef !5
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !12, !noalias !482, !noundef !5 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.fj, label %bb.ah, label %bb.ai, !prof !9

bb.ah:                                            ; preds = %bb.ag
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !482
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.fl, i64 %i.fn) #35, !noalias !488
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.fo = load ptr, ptr %i.fm, align 8, !noalias !482, !nonnull !5, !noundef !5 ; 2 uses
  %i.fp = icmp samesign ugt i64 %i.fl, 27
end_hunk_1
