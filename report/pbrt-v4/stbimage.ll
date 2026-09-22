Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stbi_io_callbacks = type { ptr, ptr, ptr }
%struct.stbi__context = type { i32, i32, i32, i32, %struct.stbi_io_callbacks, ptr, i32, i32, [128 x i8], i32, ptr, ptr, ptr, ptr }
%struct.stbi__result_info = type { i32, i32, i32 }
%struct.stbi__gif = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, [256 x [4 x i8]], [256 x [4 x i8]], [8192 x %struct.stbi__gif_lzw], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stbi__gif_lzw = type { i16, i8, i8 }
%struct.stbi__bmp_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stbi__resample = type { ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN4pbrt8LogFatalIJRA54_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt8LogFatalIJRA8_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA8_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$__clang_call_terminate = comdat any

$_ZN4pbrt8LogFatalIJRA31_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt8LogFatalIJRA2_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA31_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA2_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt8LogFatalIJRA82_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA82_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA21_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

$_ZN4pbrt6detail21stringPrintfRecursiveIRA54_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_ = comdat any

@_ZL22stbi__g_failure_reason = internal thread_local unnamed_addr global ptr null, align 8
@_ZL36stbi__vertically_flip_on_load_global = internal unnamed_addr global i32 0, align 4
@_ZL35stbi__vertically_flip_on_load_local = internal thread_local unnamed_addr global i32 0, align 4
@_ZL33stbi__vertically_flip_on_load_set = internal thread_local unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"can't fopen\00", align 1
@_ZL15stbi__l2h_gamma = internal unnamed_addr global float 2.200000e+00, align 4
@_ZL15stbi__l2h_scale = internal unnamed_addr global float 1.000000e+00, align 4
@_ZL17stbi__h2l_gamma_i = internal unnamed_addr global float f0x3EE8BA2E, align 4
@_ZL17stbi__h2l_scale_i = internal unnamed_addr global float 1.000000e+00, align 4
@_ZL21stbi__stdio_callbacks = internal unnamed_addr constant %struct.stbi_io_callbacks { ptr @_ZL16stbi__stdio_readPvPci, ptr @_ZL16stbi__stdio_skipPvi, ptr @_ZL15stbi__stdio_eofPv }, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/ext/stb/stb_image.h\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Check failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"ri.bits_per_channel == 8 || ri.bits_per_channel == 16\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"too large\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"bad offset\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"bad bpp\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"bad masks\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"not BMP\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"bad BMP\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"unknown BMP\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"BMP RLE\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"BMP JPEG/PNG\00", align 1
@_ZZL17stbi__shiftsignedjiiE9mul_table = internal unnamed_addr constant [9 x i32] [i32 0, i32 255, i32 85, i32 73, i32 17, i32 33, i32 65, i32 129, i32 1], align 16
@_ZZL17stbi__shiftsignedjiiE11shift_table = internal unnamed_addr constant [9 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 2, i32 4, i32 6, i32 0], align 16
@.str.17 = private unnamed_addr constant [8 x i8] c"v < 256\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"/opt-bench/work/pbrt-v4/pbrt-v4/src/pbrt/util/print.h\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Non-integral type provided for %* format.\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Non-integral type passed to %d format.\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Excess values passed to Printf.\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"req_comp >= 1 && req_comp <= 4\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"bad Image Descriptor\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"missing color table\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"unknown code\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"not GIF\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"no clear code\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"too many codes\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"illegal code in raster\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"not PSD\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"wrong version\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"wrong channel count\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"unsupported bit depth\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"wrong color format\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"bad compression\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"corrupt\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"no SOI\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"no SOF\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"expected marker\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"bad DRI len\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"bad DQT type\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"bad DQT table\00", align 1
@_ZL19stbi__jpeg_dezigzag = internal unnamed_addr constant [79 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>????????????????", align 16
@.str.49 = private unnamed_addr constant [15 x i8] c"bad DHT header\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"bad COM len\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"bad APP len\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"unknown marker\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"bad code lengths\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"bad SOF len\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"only 8-bit\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"no header height\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"0 width\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"bad component count\00", align 1
@_ZZL26stbi__process_frame_headerP10stbi__jpegiE3rgb = internal unnamed_addr constant [3 x i8] c"RGB", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"bad H\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"bad V\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"bad TQ\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"bad req_comp\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"bad DNL len\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"bad DNL height\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"bad SOS component count\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"bad SOS len\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"bad DC huff\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"bad AC huff\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"bad SOS\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"bad huffman code\00", align 1
@.str.71 = private unnamed_addr constant [82 x i8] c"(((j->code_buffer) >> (32 - h->size[c])) & stbi__bmask[h->size[c]]) == h->code[c]\00", align 1
@_ZL11stbi__jbias = internal unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@.str.72 = private unnamed_addr constant [22 x i8] c"can't merge dc and ac\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"max value > 65535\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"not HDR\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"unsupported format\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"unsupported data layout\00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"invalid decoded scanline length\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"bad format\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"bad palette\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"tga_comp == STBI_rgb\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"#?RADIANCE\0A\00", align 1
@switch.table._ZL14stbi__tga_testP13stbi__context = private unnamed_addr constant [25 x i8] c"\01\00\00\00\00\00\00\01\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01", align 4
@switch.table._ZL14stbi__tga_infoP13stbi__contextPiS1_S1_ = private unnamed_addr constant [25 x i8] [i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @stbi_failure_reason() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @stbi_image_free(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  tail call void @free(ptr noundef %0) #40
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_set_flip_vertically_on_load(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  store i32 %0, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_set_flip_vertically_on_load_thread(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  store i32 %0, ptr %i.a, align 4, !tbaa !20
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  store i32 1, ptr %i.b, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.b, align 8, !tbaa !19
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !30
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !131 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !28
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !28
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !32
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !34
  %i.aa = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %stbi_load_from_file.exit, label %bb.f

bb.f:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %.neg.i = sub i64 %i.ae, %i.ad
  %sext.i = shl i64 %.neg.i, 32
  %i.af = ashr exact i64 %sext.i, 32
  %i.ag = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.af, i32 noundef 1) ; 0 uses
  br label %stbi_load_from_file.exit

stbi_load_from_file.exit:                         ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.ah = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %stbi_load_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %stbi_load_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !22
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !0 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !28
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !28
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !32
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8, !tbaa !34
  %i.y = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
end_hunk_0
begin_hunk_1_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  store i32 %spec.select.i239.i.i.i.i, ptr %i.aue, align 4, !tbaa !251
  store i32 0, ptr %i.auf, align 4, !tbaa !252
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %._crit_edge306.i.i.i.i
  %i.biv = phi i32 [ %i.bio, %._crit_edge306.i.i.i.i ], [ %spec.select.i239.i.i.i.i, %bb.jq ] ; 2 uses
  %i.biw = add nuw nsw i32 %.0206307.i.i.i.i, 1   ; 2 uses
  %i.bix = load i32, ptr %i.auh, align 8, !tbaa !256 ; 2 uses
  %i.biy = icmp slt i32 %i.biw, %i.bix
  br i1 %i.biy, label %.preheader256.i.i.i.i, label %._crit_edge308.loopexit.i.i.i.i, !llvm.loop !203

._crit_edge308.loopexit.i.i.i.i:                  ; preds = %bb.jr
  %.pre358.i.i.i.i = load i32, ptr %i.aug, align 4, !tbaa !255
  br label %._crit_edge308.i.i.i.i

._crit_edge308.i.i.i.i:                           ; preds = %._crit_edge308.loopexit.i.i.i.i, %.preheader257.i.i.i.i
  %i.biz = phi i32 [ %.pre358.i.i.i.i, %._crit_edge308.loopexit.i.i.i.i ], [ %i.bge, %.preheader257.i.i.i.i ] ; 2 uses
  %i.bja = phi i32 [ %i.biv, %._crit_edge308.loopexit.i.i.i.i ], [ %i.bgf, %.preheader257.i.i.i.i ]
  %i.bjb = phi i32 [ %i.bix, %._crit_edge308.loopexit.i.i.i.i ], [ %i.bgg, %.preheader257.i.i.i.i ]
  %i.bjc = add nuw nsw i32 %.0205309.i.i.i.i, 1   ; 2 uses
  %i.bjd = icmp slt i32 %i.bjc, %i.biz
  br i1 %i.bjd, label %.preheader257.i.i.i.i, label %.critedge.i55.i.i.i, !llvm.loop !204

.critedge.i55.i.i.i:                              ; preds = %._crit_edge308.i.i.i.i, %bb.jp, %.lr.ph300.i.i.i.i, %.preheader257.lr.ph.i.i.i.i, %bb.jl
  %.11.i.i.i.i = phi i32 [ 1, %bb.jl ], [ 1, %.preheader257.lr.ph.i.i.i.i ], [ 1, %bb.jp ], [ 0, %.lr.ph300.i.i.i.i ], [ 1, %._crit_edge308.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.i.i.i

bb.js:                                            ; preds = %_ZL25stbi__process_scan_headerP10stbi__jpeg.exit.i.i.i
  br i1 %i.bee, label %bb.jt, label %.preheader269.i.i.i.i

.preheader269.i.i.i.i:                            ; preds = %bb.js
  %i.bje = load i32, ptr %i.aug, align 4, !tbaa !255 ; 2 uses
  %i.bjf = icmp sgt i32 %i.bje, 0
  br i1 %i.bjf, label %.preheader267.lr.ph.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader267.lr.ph.i.i.i.i:                      ; preds = %.preheader269.i.i.i.i
  %i.bjg = load i32, ptr %i.auh, align 8, !tbaa !256 ; 2 uses
  %i.bjh = icmp sgt i32 %i.bjg, 0
  br i1 %i.bjh, label %.preheader267.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

bb.jt:                                            ; preds = %bb.js
  %i.bji = load i32, ptr %i.atq, align 8, !tbaa !20 ; 2 uses
  %i.bjj = sext i32 %i.bji to i64
  %i.bjk = getelementptr inbounds [96 x i8], ptr %i.ath, i64 %i.bjj ; 6 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjk, i64 28
  %i.bjm = load i32, ptr %i.bjl, align 4, !tbaa !253
  %i.bjn = add nsw i32 %i.bjm, 7
  %i.bjo = ashr i32 %i.bjn, 3                     ; 2 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjk, i64 32
  %i.bjq = load i32, ptr %i.bjp, align 8, !tbaa !254
  %i.bjr = add nsw i32 %i.bjq, 7
  %i.bjs = ashr i32 %i.bjr, 3                     ; 2 uses
  %i.bjt = icmp sgt i32 %i.bjs, 0
  br i1 %i.bjt, label %.preheader262.lr.ph.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader262.lr.ph.i.i.i.i:                      ; preds = %bb.jt
  %i.bju = icmp sgt i32 %i.bjo, 0
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjk, i64 80
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjk, i64 88
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjk, i64 20
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjk, i64 16
  br i1 %i.bju, label %.preheader262.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i

.preheader262.i.i.i.i:                            ; preds = %.preheader262.lr.ph.i.i.i.i, %._crit_edge297.i.i.i.i
  %.0200298.i.i.i.i = phi i32 [ %i.bum, %._crit_edge297.i.i.i.i ], [ 0, %.preheader262.lr.ph.i.i.i.i ] ; 2 uses
  br label %bb.ju

bb.ju:                                            ; preds = %bb.mm, %.preheader262.i.i.i.i
  %.0201295.i.i.i.i = phi i32 [ 0, %.preheader262.i.i.i.i ], [ %i.bul, %bb.mm ] ; 2 uses
  %i.bjz = load ptr, ptr %i.bjv, align 8, !tbaa !91
  %i.bka = load i32, ptr %i.bjw, align 8, !tbaa !257
  %i.bkb = mul nsw i32 %i.bka, %.0200298.i.i.i.i
  %i.bkc = add nsw i32 %i.bkb, %.0201295.i.i.i.i
  %i.bkd = shl nsw i32 %i.bkc, 6
  %i.bke = sext i32 %i.bkd to i64
  %i.bkf = getelementptr inbounds [2 x i8], ptr %i.bjz, i64 %i.bke ; 5 uses
  %i.bkg = load i32, ptr %i.atr, align 4, !tbaa !250 ; 5 uses
  %i.bkh = icmp eq i32 %i.bkg, 0
  br i1 %i.bkh, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.bki = load i32, ptr %i.bjy, align 8, !tbaa !248
  %i.bkj = sext i32 %i.bki to i64
  %i.bkk = getelementptr inbounds [1680 x i8], ptr %i.aui, i64 %i.bkj
  %i.bkl = call fastcc noundef i32 @_ZL31stbi__jpeg_decode_block_prog_dcP10stbi__jpegPsP13stbi__huffmani(ptr noundef nonnull %i.ata, ptr noundef %i.bkf, ptr noundef %i.bkk, i32 noundef %i.bji)
  %.not229.i.i.i.i = icmp eq i32 %i.bkl, 0
  br i1 %.not229.i.i.i.i, label %.loopexit365.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i

bb.jw:                                            ; preds = %bb.ju
  %i.bkm = load i32, ptr %i.bjx, align 4, !tbaa !249
  %i.bkn = sext i32 %i.bkm to i64                 ; 2 uses
  %i.bko = getelementptr inbounds [1680 x i8], ptr %i.auj, i64 %i.bkn ; 12 uses
  %i.bkp = getelementptr inbounds [1024 x i8], ptr %i.auk, i64 %i.bkn
  %i.bkq = load i32, ptr %i.att, align 4, !tbaa !78
  %i.bkr = icmp eq i32 %i.bkq, 0
  %i.bks = load i32, ptr %i.atu, align 8, !tbaa !79 ; 5 uses
  %i.bkt = load i32, ptr %i.auf, align 4, !tbaa !252 ; 3 uses
  %.not163.i.i.i.i.i = icmp eq i32 %i.bkt, 0      ; 2 uses
  br i1 %i.bkr, label %bb.jx, label %bb.ky

bb.jx:                                            ; preds = %bb.jw
  br i1 %.not163.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %bb.jy

.preheader.i.i.i.i.i:                             ; preds = %bb.jx
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bko, i64 1280 ; 2 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bko, i64 1024
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bko, i64 1540
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bko, i64 1612
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bko, i64 512
  %.pre257.i.i.i.i.i = load i32, ptr %i.atw, align 4, !tbaa !81
  br label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.bkz = add nsw i32 %i.bkt, -1
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i

bb.jz:                                            ; preds = %bb.kx, %.preheader.i.i.i.i.i
  %i.bla = phi i32 [ %i.bpc, %bb.kx ], [ %.pre257.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.0118.i.i.i.i.i = phi i32 [ %.4122.ph.i.i.i.i.i, %bb.kx ], [ %i.bkg, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.blb = icmp slt i32 %i.bla, 16
  br i1 %i.blb, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.blc = load i32, ptr %i.atx, align 8, !tbaa !82 ; 3 uses
  %i.bld = lshr i32 %i.blc, 23
  %i.ble = zext nneg i32 %i.bld to i64            ; 2 uses
  %i.blf = getelementptr inbounds nuw [2 x i8], ptr %i.bkp, i64 %i.ble
  %i.blg = load i16, ptr %i.blf, align 2, !tbaa !38 ; 2 uses
  %.not164.i.i.i.i.i = icmp eq i16 %i.blg, 0
  br i1 %.not164.i.i.i.i.i, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.blh = sext i16 %i.blg to i32                 ; 3 uses
  %i.bli = lshr i32 %i.blh, 4
  %i.blj = and i32 %i.bli, 15
  %i.blk = add nsw i32 %i.blj, %.0118.i.i.i.i.i   ; 2 uses
  %i.bll = and i32 %i.blh, 15                     ; 2 uses
  %i.blm = shl i32 %i.blc, %i.bll
  store i32 %i.blm, ptr %i.atx, align 8, !tbaa !82
  %i.bln = load i32, ptr %i.atw, align 4, !tbaa !81
  %i.blo = sub nsw i32 %i.bln, %i.bll             ; 2 uses
  store i32 %i.blo, ptr %i.atw, align 4, !tbaa !81
  %i.blp = add nsw i32 %i.blk, 1
  %i.blq = sext i32 %i.blk to i64
  %i.blr = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.blq
  %i.bls = load i8, ptr %i.blr, align 1, !tbaa !32
  %i.blt = lshr i32 %i.blh, 8
  %i.blu = shl i32 %i.blt, %i.bks
  %i.blv = trunc i32 %i.blu to i16
  %i.blw = zext i8 %i.bls to i64
  %i.blx = getelementptr inbounds nuw [2 x i8], ptr %i.bkf, i64 %i.blw
  store i16 %i.blv, ptr %i.blx, align 2, !tbaa !38
  br label %bb.kx

bb.kd:                                            ; preds = %bb.kb
  %i.bly = load i32, ptr %i.atw, align 4, !tbaa !81
  %i.blz = icmp slt i32 %i.bly, 16
  br i1 %i.blz, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  %.pre258.i.i.i.i.i.a = load i32, ptr %i.atx, align 8, !tbaa !82 ; 2 uses
  %.pre262.i.i.i.i.i = lshr i32 %.pre258.i.i.i.i.i.a, 23
  %.pre263.i.i.i.i.i = zext nneg i32 %.pre262.i.i.i.i.i to i64
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %.pre-phi264.i.i.i.i.i = phi i64 [ %.pre263.i.i.i.i.i, %bb.ke ], [ %i.ble, %bb.kd ]
  %i.bma = phi i32 [ %.pre258.i.i.i.i.i.a, %bb.ke ], [ %i.blc, %bb.kd ] ; 5 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bko, i64 %.pre-phi264.i.i.i.i.i
  %i.bmc = load i8, ptr %i.bmb, align 1, !tbaa !32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bmc, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.ki, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bmd = zext i8 %i.bmc to i64                  ; 2 uses
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bku, i64 %i.bmd
  %i.bmf = load i8, ptr %i.bme, align 1, !tbaa !32
  %i.bmg = zext i8 %i.bmf to i32                  ; 3 uses
  %i.bmh = load i32, ptr %i.atw, align 4, !tbaa !81 ; 2 uses
  %i.bmi = icmp slt i32 %i.bmh, %i.bmg
  br i1 %i.bmi, label %.critedge.sink.split.i.i.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.bmj = shl i32 %i.bma, %i.bmg                 ; 2 uses
  store i32 %i.bmj, ptr %i.atx, align 8, !tbaa !82
  %i.bmk = sub nuw nsw i32 %i.bmh, %i.bmg         ; 2 uses
  store i32 %i.bmk, ptr %i.atw, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i

bb.ki:                                            ; preds = %bb.kf
  %i.bml = lshr i32 %i.bma, 16
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kj, %bb.ki
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.kj ], [ 10, %bb.ki ] ; 5 uses
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %i.bkw, i64 %indvars.iv.i.i.i.i.i.i
  %i.bmn = load i32, ptr %i.bmm, align 4, !tbaa !20
  %i.bmo = icmp ult i32 %i.bml, %i.bmn
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1
  br i1 %i.bmo, label %bb.kk, label %bb.kj, !llvm.loop !4

bb.kk:                                            ; preds = %bb.kj
  %i.bmp = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32 ; 5 uses
  %i.bmq = icmp eq i64 %indvars.iv.i.i.i.i.i.i, 17
  %i.bmr = load i32, ptr %i.atw, align 4, !tbaa !81 ; 3 uses
  br i1 %i.bmq, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  %i.bms = add nsw i32 %i.bmr, -16
  store i32 %i.bms, ptr %i.atw, align 4, !tbaa !81
  br label %.critedge.sink.split.i.i.i

bb.km:                                            ; preds = %bb.kk
  %i.bmt = icmp slt i32 %i.bmr, %i.bmp
  br i1 %i.bmt, label %.critedge.sink.split.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bmu = sub nsw i32 32, %i.bmp
  %i.bmv = lshr i32 %i.bma, %i.bmu
  %notmask.i.i.i.i.i.i = shl nsw i32 -1, %i.bmp
  %10 = xor i32 %notmask.i.i.i.i.i.i, -1
  %i.bmw = and i32 %i.bmv, %10
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %indvars.iv.i.i.i.i.i.i
  %i.bmy = load i32, ptr %i.bmx, align 4, !tbaa !20
  %i.bmz = add i32 %i.bmy, %i.bmw
  %i.bna = sext i32 %i.bmz to i64                 ; 3 uses
  %i.bnb = getelementptr inbounds i8, ptr %i.bku, i64 %i.bna
  %i.bnc = load i8, ptr %i.bnb, align 1, !tbaa !32
  %i.bnd = zext i8 %i.bnc to i32                  ; 2 uses
  %i.bne = sub nsw i32 32, %i.bnd
  %i.bnf = lshr i32 %i.bma, %i.bne
  %notmask47.i.i.i.i.i.i = shl nsw i32 -1, %i.bnd
  %11 = xor i32 %notmask47.i.i.i.i.i.i, -1
  %i.bng = and i32 %i.bnf, %11
  %i.bnh = getelementptr inbounds [2 x i8], ptr %i.bky, i64 %i.bna
  %i.bni = load i16, ptr %i.bnh, align 2, !tbaa !38
  %i.bnj = zext i16 %i.bni to i32
  %i.bnk = icmp eq i32 %i.bng, %i.bnj
  br i1 %i.bnk, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  call void @_ZN4pbrt8LogFatalIJRA82_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 2115, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(82) @.str.71) #41
  unreachable

bb.kp:                                            ; preds = %bb.kn
  %i.bnl = sub nuw nsw i32 %i.bmr, %i.bmp         ; 2 uses
  store i32 %i.bnl, ptr %i.atw, align 4, !tbaa !81
  %i.bnm = shl i32 %i.bma, %i.bmp                 ; 2 uses
  store i32 %i.bnm, ptr %i.atx, align 8, !tbaa !82
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i: ; preds = %bb.kp, %bb.kh
  %i.bnn = phi i32 [ %i.bnm, %bb.kp ], [ %i.bmj, %bb.kh ] ; 2 uses
  %i.bno = phi i32 [ %i.bnl, %bb.kp ], [ %i.bmk, %bb.kh ] ; 5 uses
  %.pn293.i.i.i.i.i = phi i64 [ %i.bna, %bb.kp ], [ %i.bmd, %bb.kh ]
  %.1.i.in.in.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bkv, i64 %.pn293.i.i.i.i.i
  %.1.i.in.i.i.i.i.i = load i8, ptr %.1.i.in.in.i.i.i.i.i, align 1, !tbaa !32 ; 2 uses
  %.1.i.i.i.i.i.i = zext i8 %.1.i.in.i.i.i.i.i to i32 ; 2 uses
  %i.bnp = and i32 %.1.i.i.i.i.i.i, 15            ; 6 uses
  %i.bnq = lshr i32 %.1.i.i.i.i.i.i, 4            ; 7 uses
  %i.bnr = icmp eq i32 %i.bnp, 0
  br i1 %i.bnr, label %bb.kq, label %bb.kv

bb.kq:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i
  %i.bns = icmp ult i8 %.1.i.in.i.i.i.i.i, -16
  br i1 %i.bns, label %bb.kr, label %bb.ku

bb.kr:                                            ; preds = %bb.kq
  %i.bnt = shl nuw nsw i32 1, %i.bnq              ; 2 uses
  store i32 %i.bnt, ptr %i.auf, align 4, !tbaa !252
  %.not165.i.i.i.i.i = icmp eq i32 %i.bnq, 0
  br i1 %.not165.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.bnu = icmp slt i32 %i.bno, %i.bnq
  br i1 %i.bnu, label %bb.kt, label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i

bb.kt:                                            ; preds = %bb.ks
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  %.pre.i.i.i.i.i.i = load i32, ptr %i.atw, align 4, !tbaa !81
  %.pre260.i.i.i.i.i.a = load i32, ptr %i.atx, align 8, !tbaa !82
  %.pre261.i.i.i.i.i.a = load i32, ptr %i.auf, align 4, !tbaa !252
  br label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i

_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i: ; preds = %bb.kt, %bb.ks
  %i.bnv = phi i32 [ %.pre261.i.i.i.i.i.a, %bb.kt ], [ %i.bnt, %bb.ks ]
  %i.bnw = phi i32 [ %.pre260.i.i.i.i.i.a, %bb.kt ], [ %i.bnn, %bb.ks ] ; 2 uses
  %i.bnx = phi i32 [ %.pre.i.i.i.i.i.i, %bb.kt ], [ %i.bno, %bb.ks ]
  %i.bny = call i32 @llvm.fshl.i32(i32 %i.bnw, i32 %i.bnw, i32 range(i32 1, 15) %i.bnq) ; 2 uses
  %notmask.i168.i.i.i.i.i = shl nsw i32 -1, %i.bnq ; 2 uses
  %i.bnz = xor i32 %notmask.i168.i.i.i.i.i, -1
  %i.boa = and i32 %i.bny, %notmask.i168.i.i.i.i.i
  store i32 %i.boa, ptr %i.atx, align 8, !tbaa !82
  %i.bob = and i32 %i.bny, %i.bnz
  %i.boc = sub nsw i32 %i.bnx, %i.bnq
  store i32 %i.boc, ptr %i.atw, align 4, !tbaa !81
  %i.bod = add i32 %i.bnv, -1
  %i.boe = add i32 %i.bod, %i.bob
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i

bb.ku:                                            ; preds = %bb.kq
  %i.bof = add nsw i32 %.0118.i.i.i.i.i, 16
  br label %bb.kx

bb.kv:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.i.i.i.i.i
  %i.bog = add nsw i32 %i.bnq, %.0118.i.i.i.i.i   ; 2 uses
  %i.boh = add nsw i32 %i.bog, 1
  %i.boi = sext i32 %i.bog to i64
  %i.boj = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.boi
  %i.bok = load i8, ptr %i.boj, align 1, !tbaa !32
  %i.bol = icmp slt i32 %i.bno, %i.bnp
  br i1 %i.bol, label %bb.kw, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i

bb.kw:                                            ; preds = %bb.kv
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  %.pre.i168.i.i.i.i.i = load i32, ptr %i.atw, align 4, !tbaa !81
  %.pre259.i.i.i.i.i.a = load i32, ptr %i.atx, align 8, !tbaa !82
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i

_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i: ; preds = %bb.kw, %bb.kv
  %i.bom = phi i32 [ %.pre259.i.i.i.i.i.a, %bb.kw ], [ %i.bnn, %bb.kv ] ; 3 uses
  %i.bon = phi i32 [ %.pre.i168.i.i.i.i.i, %bb.kw ], [ %i.bno, %bb.kv ]
  %i.boo = call i32 @llvm.fshl.i32(i32 %i.bom, i32 %i.bom, i32 range(i32 1, 16) %i.bnp) ; 2 uses
  %i.bop = zext nneg i32 %i.bnp to i64
  %notmask.i169.i.i.i.i.i = shl nsw i32 -1, %i.bnp ; 2 uses
  %i.boq = xor i32 %notmask.i169.i.i.i.i.i, -1
  %i.bor = and i32 %i.boo, %notmask.i169.i.i.i.i.i
  store i32 %i.bor, ptr %i.atx, align 8, !tbaa !82
  %i.bos = and i32 %i.boo, %i.boq
  %i.bot = sub nsw i32 %i.bon, %i.bnp             ; 2 uses
  store i32 %i.bot, ptr %i.atw, align 4, !tbaa !81
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.bop
  %i.bov = load i32, ptr %i.bou, align 4, !tbaa !20
  %.inv.i.i.i.i.i.i = icmp slt i32 %i.bom, 0
  %i.bow = select i1 %.inv.i.i.i.i.i.i, i32 0, i32 %i.bov
  %i.box = add i32 %i.bow, %i.bos
  %i.boy = shl i32 %i.box, %i.bks
  %i.boz = trunc i32 %i.boy to i16
  %i.bpa = zext i8 %i.bok to i64
  %i.bpb = getelementptr inbounds nuw [2 x i8], ptr %i.bkf, i64 %i.bpa
  store i16 %i.boz, ptr %i.bpb, align 2, !tbaa !38
  br label %bb.kx

bb.kx:                                            ; preds = %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i, %bb.ku, %bb.kc
  %i.bpc = phi i32 [ %i.bno, %bb.ku ], [ %i.bot, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i ], [ %i.blo, %bb.kc ]
  %.4122.ph.i.i.i.i.i = phi i32 [ %i.bof, %bb.ku ], [ %i.boh, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit.i.i.i.i.i ], [ %i.blp, %bb.kc ] ; 2 uses
  %i.bpd = load i32, ptr %i.ats, align 8, !tbaa !77
  %.not166.i.i.i.i.i = icmp sgt i32 %.4122.ph.i.i.i.i.i, %i.bpd
  br i1 %.not166.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %bb.jz, !llvm.loop !205

bb.ky:                                            ; preds = %bb.jw
  br i1 %.not163.i.i.i.i.i, label %.preheader204.i.i.i.i.i, label %bb.kz

.preheader204.i.i.i.i.i:                          ; preds = %bb.ky
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bko, i64 1280 ; 2 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bko, i64 1024
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bko, i64 1540
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bko, i64 1612
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bko, i64 512
  %sext157.i.i.i.i.i = shl i32 65536, %i.bks
  %i.bpj = ashr exact i32 %sext157.i.i.i.i.i, 16  ; 2 uses
  %i.bpk = trunc nsw i32 %i.bpj to i16            ; 2 uses
  %.pre.i.i53.i.i.i = load i32, ptr %i.atw, align 4, !tbaa !81
  br label %bb.lf

bb.kz:                                            ; preds = %bb.ky
  %i.bpl = add nsw i32 %i.bkt, -1
  store i32 %i.bpl, ptr %i.auf, align 4, !tbaa !252
  %i.bpm = load i32, ptr %i.ats, align 8, !tbaa !77
  %.not159232.i.i.i.i.i = icmp sgt i32 %i.bkg, %i.bpm
  br i1 %.not159232.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.kz
  %sext162.i.i.i.i.i = shl i32 65536, %i.bks
  %i.bpn = ashr exact i32 %sext162.i.i.i.i.i, 16  ; 2 uses
  %i.bpo = trunc nsw i32 %i.bpn to i16            ; 2 uses
  %i.bpp = sext i32 %i.bkg to i64
  %i.bpq = sub i16 0, %i.bpo
  br label %bb.la

bb.la:                                            ; preds = %bb.le, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.bpp, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.le ] ; 3 uses
  %i.bpr = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %indvars.iv.i.i.i.i.i
  %i.bps = load i8, ptr %i.bpr, align 1, !tbaa !32
  %i.bpt = zext i8 %i.bps to i64
  %i.bpu = getelementptr inbounds nuw [2 x i8], ptr %i.bkf, i64 %i.bpt ; 3 uses
  %i.bpv = load i16, ptr %i.bpu, align 2, !tbaa !38
  %.not160.i.i.i.i.i = icmp eq i16 %i.bpv, 0
  br i1 %.not160.i.i.i.i.i, label %bb.le, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bpw = load i32, ptr %i.atw, align 4, !tbaa !81 ; 2 uses
  %i.bpx = icmp slt i32 %i.bpw, 1
  br i1 %i.bpx, label %bb.lc, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i

bb.lc:                                            ; preds = %bb.lb
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  %.pre.i169.i.i.i.i.i = load i32, ptr %i.atw, align 4, !tbaa !81
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i: ; preds = %bb.lc, %bb.lb
  %i.bpy = phi i32 [ %.pre.i169.i.i.i.i.i, %bb.lc ], [ %i.bpw, %bb.lb ]
  %i.bpz = load i32, ptr %i.atx, align 8, !tbaa !82 ; 2 uses
  %i.bqa = shl i32 %i.bpz, 1
  store i32 %i.bqa, ptr %i.atx, align 8, !tbaa !82
  %i.bqb = add nsw i32 %i.bpy, -1
  store i32 %i.bqb, ptr %i.atw, align 4, !tbaa !81
  %.not161.i.i.i.i.i = icmp sgt i32 %i.bpz, -1
  br i1 %.not161.i.i.i.i.i, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i
  %i.bqc = load i16, ptr %i.bpu, align 2, !tbaa !38 ; 3 uses
  %i.bqd = sext i16 %i.bqc to i32
  %i.bqe = and i32 %i.bpn, %i.bqd
  %i.bqf = icmp eq i32 %i.bqe, 0
  br i1 %i.bqf, label %.sink.split.i.i.i.i.i, label %bb.le

.sink.split.i.i.i.i.i:                            ; preds = %bb.ld
  %i.bqg = icmp sgt i16 %i.bqc, 0
  %.sink.p.i.i.i.i.i = select i1 %i.bqg, i16 %i.bpo, i16 %i.bpq
  %.sink.i.i.i.i.i = add i16 %.sink.p.i.i.i.i.i, %i.bqc
  store i16 %.sink.i.i.i.i.i, ptr %i.bpu, align 2, !tbaa !38
  br label %bb.le

bb.le:                                            ; preds = %.sink.split.i.i.i.i.i, %bb.ld, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit.i.i.i.i.i, %bb.la
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, 1
  %i.bqh = load i32, ptr %i.ats, align 8, !tbaa !77
  %i.bqi = sext i32 %i.bqh to i64
  %.not159.not.i.i.i.i.i = icmp slt i64 %indvars.iv.i.i.i.i.i, %i.bqi
  br i1 %.not159.not.i.i.i.i.i, label %bb.la, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, !llvm.loop !206

bb.lf:                                            ; preds = %.loopexit.i.i.i.i.i, %.preheader204.i.i.i.i.i
  %i.bqj = phi i32 [ %i.buc, %.loopexit.i.i.i.i.i ], [ %.pre.i.i53.i.i.i, %.preheader204.i.i.i.i.i ]
  %.6.i.i.i.i.i = phi i32 [ %.9.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %i.bkg, %.preheader204.i.i.i.i.i ] ; 3 uses
  %i.bqk = icmp slt i32 %i.bqj, 16
  br i1 %i.bqk, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.bql = load i32, ptr %i.atx, align 8, !tbaa !82 ; 6 uses
  %i.bqm = lshr i32 %i.bql, 23
  %i.bqn = zext nneg i32 %i.bqm to i64
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bko, i64 %i.bqn
  %i.bqp = load i8, ptr %i.bqo, align 1, !tbaa !32 ; 2 uses
  %.not.i170.i.i.i.i.i = icmp eq i8 %i.bqp, -1
  br i1 %.not.i170.i.i.i.i.i, label %bb.lk, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.bqq = zext i8 %i.bqp to i64                  ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bpe, i64 %i.bqq
  %i.bqs = load i8, ptr %i.bqr, align 1, !tbaa !32
  %i.bqt = zext i8 %i.bqs to i32                  ; 3 uses
  %i.bqu = load i32, ptr %i.atw, align 4, !tbaa !81 ; 2 uses
  %i.bqv = icmp slt i32 %i.bqu, %i.bqt
  br i1 %i.bqv, label %.critedge.sink.split.i.i.i, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bqw = shl i32 %i.bql, %i.bqt                 ; 2 uses
  store i32 %i.bqw, ptr %i.atx, align 8, !tbaa !82
  %i.bqx = sub nuw nsw i32 %i.bqu, %i.bqt         ; 2 uses
  store i32 %i.bqx, ptr %i.atw, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i

bb.lk:                                            ; preds = %bb.lh
  %i.bqy = lshr i32 %i.bql, 16
  br label %bb.ll

bb.ll:                                            ; preds = %bb.ll, %bb.lk
  %indvars.iv.i172.i.i.i.i.i = phi i64 [ %indvars.iv.next.i173.i.i.i.i.i, %bb.ll ], [ 10, %bb.lk ] ; 5 uses
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %i.bpg, i64 %indvars.iv.i172.i.i.i.i.i
  %i.bra = load i32, ptr %i.bqz, align 4, !tbaa !20
  %i.brb = icmp ult i32 %i.bqy, %i.bra
  %indvars.iv.next.i173.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i172.i.i.i.i.i, 1
  br i1 %i.brb, label %bb.lm, label %bb.ll, !llvm.loop !4

bb.lm:                                            ; preds = %bb.ll
  %i.brc = trunc nuw nsw i64 %indvars.iv.i172.i.i.i.i.i to i32 ; 5 uses
  %i.brd = icmp eq i64 %indvars.iv.i172.i.i.i.i.i, 17
  %i.bre = load i32, ptr %i.atw, align 4, !tbaa !81 ; 3 uses
  br i1 %i.brd, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.brf = add nsw i32 %i.bre, -16
  store i32 %i.brf, ptr %i.atw, align 4, !tbaa !81
  br label %.critedge.sink.split.i.i.i

bb.lo:                                            ; preds = %bb.lm
  %i.brg = icmp slt i32 %i.bre, %i.brc
  br i1 %i.brg, label %.critedge.sink.split.i.i.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.brh = sub nsw i32 32, %i.brc
  %i.bri = lshr i32 %i.bql, %i.brh
  %notmask.i176.i.i.i.i.i = shl nsw i32 -1, %i.brc
  %12 = xor i32 %notmask.i176.i.i.i.i.i, -1
  %i.brj = and i32 %i.bri, %12
  %i.brk = getelementptr inbounds nuw [4 x i8], ptr %i.bph, i64 %indvars.iv.i172.i.i.i.i.i
  %i.brl = load i32, ptr %i.brk, align 4, !tbaa !20
  %i.brm = add i32 %i.brl, %i.brj
  %i.brn = sext i32 %i.brm to i64                 ; 3 uses
  %i.bro = getelementptr inbounds i8, ptr %i.bpe, i64 %i.brn
  %i.brp = load i8, ptr %i.bro, align 1, !tbaa !32
  %i.brq = zext i8 %i.brp to i32                  ; 2 uses
  %i.brr = sub nsw i32 32, %i.brq
  %i.brs = lshr i32 %i.bql, %i.brr
  %notmask47.i177.i.i.i.i.i = shl nsw i32 -1, %i.brq
  %13 = xor i32 %notmask47.i177.i.i.i.i.i, -1
  %i.brt = and i32 %i.brs, %13
  %i.bru = getelementptr inbounds [2 x i8], ptr %i.bpi, i64 %i.brn
  %i.brv = load i16, ptr %i.bru, align 2, !tbaa !38
  %i.brw = zext i16 %i.brv to i32
  %i.brx = icmp eq i32 %i.brt, %i.brw
  br i1 %i.brx, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @_ZN4pbrt8LogFatalIJRA82_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 2115, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(82) @.str.71) #41
  unreachable

bb.lr:                                            ; preds = %bb.lp
  %i.bry = sub nuw nsw i32 %i.bre, %i.brc         ; 2 uses
  store i32 %i.bry, ptr %i.atw, align 4, !tbaa !81
  %i.brz = shl i32 %i.bql, %i.brc                 ; 2 uses
  store i32 %i.brz, ptr %i.atx, align 8, !tbaa !82
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i: ; preds = %bb.lr, %bb.lj
  %i.bsa = phi i32 [ %i.brz, %bb.lr ], [ %i.bqw, %bb.lj ] ; 4 uses
  %i.bsb = phi i32 [ %i.bry, %bb.lr ], [ %i.bqx, %bb.lj ] ; 6 uses
  %.pn.i.i.i.i.i = phi i64 [ %i.brn, %bb.lr ], [ %i.bqq, %bb.lj ]
  %.1.i171.in.in.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bpf, i64 %.pn.i.i.i.i.i
  %.1.i171.in.i.i.i.i.i = load i8, ptr %.1.i171.in.in.i.i.i.i.i, align 1, !tbaa !32 ; 2 uses
  %.1.i171.i.i.i.i.i = zext i8 %.1.i171.in.i.i.i.i.i to i32 ; 2 uses
  %i.bsc = and i32 %.1.i171.i.i.i.i.i, 15
  %i.bsd = lshr i32 %.1.i171.i.i.i.i.i, 4         ; 6 uses
  switch i32 %i.bsc, label %.critedge.sink.split.i.i.i [
    i32 0, label %bb.ls
    i32 1, label %bb.lw
  ]

bb.ls:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i
  %i.bse = icmp ult i8 %.1.i171.in.i.i.i.i.i, -16
  br i1 %i.bse, label %bb.lt, label %bb.ly

bb.lt:                                            ; preds = %bb.ls
  %notmask.i.i.i.i.i = shl nsw i32 -1, %i.bsd     ; 2 uses
  %i.bsf = xor i32 %notmask.i.i.i.i.i, -1         ; 3 uses
  store i32 %i.bsf, ptr %i.auf, align 4, !tbaa !252
  %.not153.i.i.i.i.i = icmp eq i32 %i.bsd, 0
  br i1 %.not153.i.i.i.i.i, label %bb.ly, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.bsg = icmp slt i32 %i.bsb, %i.bsd
  br i1 %i.bsg, label %bb.lv, label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i

bb.lv:                                            ; preds = %bb.lu
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  %.pre.i175.i.i.i.i.i = load i32, ptr %i.atw, align 4, !tbaa !81
  %.pre254.i.i.i.i.i = load i32, ptr %i.atx, align 8, !tbaa !82
  %.pre255.i.i.i.i.i = load i32, ptr %i.auf, align 4, !tbaa !252
  br label %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i

_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i: ; preds = %bb.lv, %bb.lu
  %i.bsh = phi i32 [ %.pre255.i.i.i.i.i, %bb.lv ], [ %i.bsf, %bb.lu ]
  %i.bsi = phi i32 [ %.pre254.i.i.i.i.i, %bb.lv ], [ %i.bsa, %bb.lu ] ; 2 uses
  %i.bsj = phi i32 [ %.pre.i175.i.i.i.i.i, %bb.lv ], [ %i.bsb, %bb.lu ]
  %i.bsk = call i32 @llvm.fshl.i32(i32 %i.bsi, i32 %i.bsi, i32 range(i32 1, 15) %i.bsd) ; 2 uses
  %i.bsl = and i32 %i.bsk, %notmask.i.i.i.i.i     ; 2 uses
  store i32 %i.bsl, ptr %i.atx, align 8, !tbaa !82
  %i.bsm = and i32 %i.bsk, %i.bsf
  %i.bsn = sub nsw i32 %i.bsj, %i.bsd             ; 2 uses
  store i32 %i.bsn, ptr %i.atw, align 4, !tbaa !81
  %i.bso = add nsw i32 %i.bsm, %i.bsh
  store i32 %i.bso, ptr %i.auf, align 4, !tbaa !252
  br label %bb.ly

bb.lw:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit174.i.i.i.i.i
  %i.bsp = icmp slt i32 %i.bsb, 1
  br i1 %i.bsp, label %bb.lx, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i

bb.lx:                                            ; preds = %bb.lw
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  %.pre.i177.i.i.i.i.i = load i32, ptr %i.atw, align 4, !tbaa !81
  %.pre253.i.i.i.i.i = load i32, ptr %i.atx, align 8, !tbaa !82
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i: ; preds = %bb.lx, %bb.lw
  %i.bsq = phi i32 [ %.pre253.i.i.i.i.i, %bb.lx ], [ %i.bsa, %bb.lw ] ; 2 uses
  %i.bsr = phi i32 [ %.pre.i177.i.i.i.i.i, %bb.lx ], [ %i.bsb, %bb.lw ]
  %i.bss = shl i32 %i.bsq, 1                      ; 2 uses
  store i32 %i.bss, ptr %i.atx, align 8, !tbaa !82
  %i.bst = add nsw i32 %i.bsr, -1                 ; 2 uses
  store i32 %i.bst, ptr %i.atw, align 4, !tbaa !81
  %.not151238.inv.i.i.i.i.i = icmp sgt i32 %i.bsq, -1
  %..v.i.i.i.i.i = select i1 %.not151238.inv.i.i.i.i.i, i32 -1, i32 1
  %..i.i.i.i.i = shl i32 %..v.i.i.i.i.i, %i.bks
  %i.bsu = trunc i32 %..i.i.i.i.i to i16
  br label %bb.ly

bb.ly:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i, %bb.lt, %bb.ls
  %i.bsv = phi i32 [ %i.bsa, %bb.lt ], [ %i.bsa, %bb.ls ], [ %i.bss, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i ], [ %i.bsl, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i ]
  %i.bsw = phi i32 [ %i.bsb, %bb.lt ], [ %i.bsb, %bb.ls ], [ %i.bst, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i ], [ %i.bsn, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i ] ; 2 uses
  %.0113.i.i.i.i.i = phi i32 [ 64, %bb.lt ], [ 15, %bb.ls ], [ %i.bsd, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i ], [ 64, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i ]
  %.0.i.i54.i.i.i = phi i16 [ 0, %bb.lt ], [ 0, %bb.ls ], [ %i.bsu, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit178.i.i.i.i.i ], [ 0, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit176.i.i.i.i.i ]
  %i.bsx = load i32, ptr %i.ats, align 8, !tbaa !77 ; 3 uses
  %.not154234.i.i.i.i.i = icmp sgt i32 %.6.i.i.i.i.i, %i.bsx
  br i1 %.not154234.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph237.preheader.i.i.i.i.i

.lr.ph237.preheader.i.i.i.i.i:                    ; preds = %bb.ly
  %i.bsy = sext i32 %.6.i.i.i.i.i to i64
  br label %.lr.ph237.i.i.i.i.i

.lr.ph237.i.i.i.i.i:                              ; preds = %bb.mh, %.lr.ph237.preheader.i.i.i.i.i
  %i.bsz = phi i32 [ %i.bsx, %.lr.ph237.preheader.i.i.i.i.i ], [ %i.bty, %bb.mh ]
  %i.bta = phi i32 [ %i.bsv, %.lr.ph237.preheader.i.i.i.i.i ], [ %i.btw, %bb.mh ] ; 2 uses
  %i.btb = phi i32 [ %i.bsw, %.lr.ph237.preheader.i.i.i.i.i ], [ %i.btx, %bb.mh ] ; 4 uses
  %indvars.iv250.i.i.i.i.i = phi i64 [ %i.bsy, %.lr.ph237.preheader.i.i.i.i.i ], [ %indvars.iv.next251.i.i.i.i.i, %bb.mh ] ; 3 uses
  %.1236.i.i.i.i.i = phi i32 [ %.0113.i.i.i.i.i, %.lr.ph237.preheader.i.i.i.i.i ], [ %.3.i.i.i.i.i, %bb.mh ] ; 6 uses
  %indvars.iv.next251.i.i.i.i.i = add nsw i64 %indvars.iv250.i.i.i.i.i, 1 ; 3 uses
  %i.btc = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %indvars.iv250.i.i.i.i.i
  %i.btd = load i8, ptr %i.btc, align 1, !tbaa !32
  %i.bte = zext i8 %i.btd to i64
  %i.btf = getelementptr inbounds nuw [2 x i8], ptr %i.bkf, i64 %i.bte ; 5 uses
  %i.btg = load i16, ptr %i.btf, align 2, !tbaa !38
  %.not155.i.i.i.i.i = icmp eq i16 %i.btg, 0
  br i1 %.not155.i.i.i.i.i, label %bb.mf, label %bb.lz

bb.lz:                                            ; preds = %.lr.ph237.i.i.i.i.i
  %i.bth = icmp slt i32 %i.btb, 1
  br i1 %i.bth, label %bb.ma, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i

bb.ma:                                            ; preds = %bb.lz
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  %.pre.i179.i.i.i.i.i = load i32, ptr %i.atw, align 4, !tbaa !81
  %.pre256.i.i.i.i.i = load i32, ptr %i.atx, align 8, !tbaa !82
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i: ; preds = %bb.ma, %bb.lz
  %i.bti = phi i32 [ %.pre256.i.i.i.i.i, %bb.ma ], [ %i.bta, %bb.lz ] ; 2 uses
  %i.btj = phi i32 [ %.pre.i179.i.i.i.i.i, %bb.ma ], [ %i.btb, %bb.lz ]
  %i.btk = shl i32 %i.bti, 1                      ; 5 uses
  store i32 %i.btk, ptr %i.atx, align 8, !tbaa !82
  %i.btl = add nsw i32 %i.btj, -1                 ; 5 uses
  store i32 %i.btl, ptr %i.atw, align 4, !tbaa !81
  %.not156.i.i.i.i.i = icmp sgt i32 %i.bti, -1
  br i1 %.not156.i.i.i.i.i, label %bb.mh, label %bb.mb

bb.mb:                                            ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i
  %i.btm = load i16, ptr %i.btf, align 2, !tbaa !38 ; 4 uses
  %i.btn = sext i16 %i.btm to i32
  %i.bto = and i32 %i.bpj, %i.btn
  %i.btp = icmp eq i32 %i.bto, 0
  br i1 %i.btp, label %bb.mc, label %bb.mh

bb.mc:                                            ; preds = %bb.mb
  %i.btq = icmp sgt i16 %i.btm, 0
  br i1 %i.btq, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.btr = add i16 %i.btm, %i.bpk
  store i16 %i.btr, ptr %i.btf, align 2, !tbaa !38
  br label %bb.mh

bb.me:                                            ; preds = %bb.mc
  %i.bts = sub i16 %i.btm, %i.bpk
  store i16 %i.bts, ptr %i.btf, align 2, !tbaa !38
  br label %bb.mh

bb.mf:                                            ; preds = %.lr.ph237.i.i.i.i.i
  %i.btt = icmp eq i32 %.1236.i.i.i.i.i, 0
  br i1 %i.btt, label %.thread201.i.i.i.i.i, label %bb.mg

.thread201.i.i.i.i.i:                             ; preds = %bb.mf
  %i.btu = trunc nsw i64 %indvars.iv.next251.i.i.i.i.i to i32
  store i16 %.0.i.i54.i.i.i, ptr %i.btf, align 2, !tbaa !38
  br label %.loopexit.i.i.i.i.i

bb.mg:                                            ; preds = %bb.mf
  %i.btv = add nsw i32 %.1236.i.i.i.i.i, -1
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.me, %bb.md, %bb.mb, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i
  %i.btw = phi i32 [ %i.bta, %bb.mg ], [ %i.btk, %bb.md ], [ %i.btk, %bb.me ], [ %i.btk, %bb.mb ], [ %i.btk, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i ]
  %i.btx = phi i32 [ %i.btb, %bb.mg ], [ %i.btl, %bb.md ], [ %i.btl, %bb.me ], [ %i.btl, %bb.mb ], [ %i.btl, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i.i = phi i32 [ %i.btv, %bb.mg ], [ %.1236.i.i.i.i.i, %bb.md ], [ %.1236.i.i.i.i.i, %bb.me ], [ %.1236.i.i.i.i.i, %bb.mb ], [ %.1236.i.i.i.i.i, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit180.i.i.i.i.i ]
  %i.bty = load i32, ptr %i.ats, align 8, !tbaa !77 ; 3 uses
  %i.btz = sext i32 %i.bty to i64
  %.not154.not.i.i.i.i.i = icmp slt i64 %indvars.iv250.i.i.i.i.i, %i.btz
  br i1 %.not154.not.i.i.i.i.i, label %.lr.ph237.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i

.loopexit.loopexit.i.i.i.i.i:                     ; preds = %bb.mh
  %i.bua = trunc nsw i64 %indvars.iv.next251.i.i.i.i.i to i32
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.loopexit.i.i.i.i.i, %.thread201.i.i.i.i.i, %bb.ly
  %i.bub = phi i32 [ %i.bsz, %.thread201.i.i.i.i.i ], [ %i.bsx, %bb.ly ], [ %i.bty, %.loopexit.loopexit.i.i.i.i.i ]
  %i.buc = phi i32 [ %i.btb, %.thread201.i.i.i.i.i ], [ %i.bsw, %bb.ly ], [ %i.btx, %.loopexit.loopexit.i.i.i.i.i ]
  %.9.i.i.i.i.i = phi i32 [ %i.btu, %.thread201.i.i.i.i.i ], [ %.6.i.i.i.i.i, %bb.ly ], [ %i.bua, %.loopexit.loopexit.i.i.i.i.i ] ; 2 uses
  %.not158.i.i.i.i.i = icmp sgt i32 %.9.i.i.i.i.i, %i.bub
  br i1 %.not158.i.i.i.i.i, label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i, label %bb.lf, !llvm.loop !207

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i: ; preds = %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i, %bb.kr, %bb.jy
  %.sink.i.i.i.i95 = phi i32 [ %i.bkz, %bb.jy ], [ 0, %bb.kr ], [ %i.boe, %_ZL19stbi__jpeg_get_bitsP10stbi__jpegi.exit.i.i.i.i.i ]
  store i32 %.sink.i.i.i.i95, ptr %i.auf, align 4, !tbaa !252
  br label %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i

_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i: ; preds = %bb.le, %.loopexit.i.i.i.i.i, %bb.kx, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.sink.split.i.i.i.i, %bb.kz, %bb.jv
  %i.bud = load i32, ptr %i.aue, align 4, !tbaa !251 ; 2 uses
  %i.bue = add nsw i32 %i.bud, -1
  store i32 %i.bue, ptr %i.aue, align 4, !tbaa !251
  %i.buf = icmp slt i32 %i.bud, 2
  br i1 %i.buf, label %bb.mi, label %bb.mm

bb.mi:                                            ; preds = %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.bug = load i32, ptr %i.atw, align 4, !tbaa !81
  %i.buh = icmp slt i32 %i.bug, 24
  br i1 %i.buh, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %i.ata)
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi
  %i.bui = load i8, ptr %i.aud, align 8, !tbaa !72 ; 2 uses
  %i.buj = and i8 %i.bui, -8
  %or.cond232.i.i.i.i = icmp eq i8 %i.buj, -48
  br i1 %or.cond232.i.i.i.i, label %bb.ml, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.thread.i.i.i

bb.ml:                                            ; preds = %bb.mk
  store i32 0, ptr %i.atw, align 4, !tbaa !81
  store i32 0, ptr %i.atx, align 8, !tbaa !82
  store i32 0, ptr %i.aty, align 4, !tbaa !83
  store i32 0, ptr %i.atz, align 8, !tbaa !84
  store i32 0, ptr %i.aua, align 8, !tbaa !84
  store i32 0, ptr %i.aub, align 8, !tbaa !84
  store i32 0, ptr %i.auc, align 8, !tbaa !84
  store i8 -1, ptr %i.aud, align 8, !tbaa !72
  %i.buk = load i32, ptr %i.atm, align 8, !tbaa !73 ; 2 uses
  %.not.i240.i.i.i.i = icmp eq i32 %i.buk, 0
  %spec.select.i241.i.i.i.i = select i1 %.not.i240.i.i.i.i, i32 2147483647, i32 %i.buk
  store i32 %spec.select.i241.i.i.i.i, ptr %i.aue, align 4, !tbaa !251
  store i32 0, ptr %i.auf, align 4, !tbaa !252
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %_ZL31stbi__jpeg_decode_block_prog_acP10stbi__jpegPsP13stbi__huffmanS1_.exit.thread.i.i.i.i
  %i.bul = add nuw nsw i32 %.0201295.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i52.i.i.i = icmp eq i32 %i.bul, %i.bjo
  br i1 %exitcond.not.i52.i.i.i, label %._crit_edge297.i.i.i.i, label %bb.ju, !llvm.loop !208

._crit_edge297.i.i.i.i:                           ; preds = %bb.mm
  %i.bum = add nuw nsw i32 %.0200298.i.i.i.i, 1   ; 2 uses
  %exitcond343.not.i.i.i.i = icmp eq i32 %i.bum, %i.bjs
  br i1 %exitcond343.not.i.i.i.i, label %_ZL30stbi__parse_entropy_coded_dataP10stbi__jpeg.exit.threadthread-pre-split.i.i.i, label %.preheader262.i.i.i.i, !llvm.loop !209

.preheader267.i.i.i.i:                            ; preds = %.preheader267.lr.ph.i.i.i.i, %._crit_edge293.i.i.i.i
  %i.bun = phi i32 [ %i.bww, %._crit_edge293.i.i.i.i ], [ %i.bje, %.preheader267.lr.ph.i.i.i.i ]
  %i.buo = phi i32 [ %i.bwx, %._crit_edge293.i.i.i.i ], [ %spec.select.i.i.i.i.i, %.preheader267.lr.ph.i.i.i.i ] ; 2 uses
  %i.bup = phi i32 [ %i.bwy, %._crit_edge293.i.i.i.i ], [ %i.bjg, %.preheader267.lr.ph.i.i.i.i ] ; 2 uses
  %.0198294.i.i.i.i = phi i32 [ %i.bwz, %._crit_edge293.i.i.i.i ], [ 0, %.preheader267.lr.ph.i.i.i.i ] ; 2 uses
  %i.buq = icmp sgt i32 %i.bup, 0
  br i1 %i.buq, label %.preheader266.i.i.i.i, label %._crit_edge293.i.i.i.i

.preheader266.i.i.i.i:                            ; preds = %.preheader267.i.i.i.i, %bb.ms
  %i.bur = phi i32 [ %i.bws, %bb.ms ], [ %i.buo, %.preheader267.i.i.i.i ]
  %.0199292.i.i.i.i = phi i32 [ %i.bwt, %bb.ms ], [ 0, %.preheader267.i.i.i.i ] ; 2 uses
  %i.bus = load i32, ptr %i.atp, align 4, !tbaa !247 ; 2 uses
  %i.but = icmp sgt i32 %i.bus, 0
  br i1 %i.but, label %.lr.ph290.i.i.i.i, label %._crit_edge291.i.i.i.i

.lr.ph290.i.i.i.i:                                ; preds = %.preheader266.i.i.i.i, %.critedge234.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZL22stbi__resample_row_h_2PhS_S_ii:bb.a
  %i.da = add nuw nsw i32 %i.cz, 2                ; 2 uses
  %i.db = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !32
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nuw nsw i32 %i.da, %i.dd
  %i.df = lshr i32 %i.de, 2
  %i.dg = trunc nuw i32 %i.df to i8
  %i.dh = shl nuw nsw i64 %indvars.iv.next, 1
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %i.dh ; 2 uses
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !32
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nuw nsw i32 %i.da, %i.dl
  %i.dn = lshr i32 %i.dm, 2
  %i.do = trunc nuw i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !32
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !475

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.dq = shl nuw nsw i32 %i.n, 1
  %i.dr = zext nneg i32 %i.dq to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.037.lcssa = phi i64 [ 2, %bb.c ], [ %i.dr, %._crit_edge.loopexit ]
  %i.ds = sext i32 %3 to i64
  %i.dt = getelementptr i8, ptr %1, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !32
  %i.dw = zext i8 %i.dv to i16
  %i.dx = mul nuw nsw i16 %i.dw, 3
  %i.dy = sext i32 %i.n to i64
  %i.dz = getelementptr inbounds i8, ptr %1, i64 %i.dy ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !32
  %i.eb = zext i8 %i.ea to i16
  %i.ec = add nuw nsw i16 %i.eb, 2
  %i.ed = add nuw nsw i16 %i.ec, %i.dx
  %i.ee = lshr i16 %i.ed, 2
  %i.ef = trunc nuw i16 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %.037.lcssa ; 2 uses
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !32
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL26stbi__resample_row_genericPhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #31 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge16.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64                  ; 7 uses
  %wide.trip.count21 = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %4, 8
  %min.iters.check24 = icmp ult i32 %4, 128
  %i.d = and i64 %i.c, 120
  %n.vec = and i64 %i.c, 2147483520               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec25 = and i64 %i.c, 2147483640             ; 3 uses
  %cmp.n30 = icmp eq i64 %n.vec25, %i.c
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv18
  %i.f = mul nuw nsw i64 %indvars.iv18, %i.c
  %.pre = load i8, ptr %i.e, align 1, !tbaa !32   ; 3 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <32 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat = shufflevector <32 x i8> %broadcast.splatinsert, <32 x i8> poison, <32 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store <32 x i8> %broadcast.splat, ptr %i.g, align 1, !tbaa !32
  store <32 x i8> %broadcast.splat, ptr %i.h, align 1, !tbaa !32
  store <32 x i8> %broadcast.splat, ptr %i.i, align 1, !tbaa !32
  store <32 x i8> %broadcast.splat, ptr %i.j, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !478

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !482

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert26 = insertelement <8 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat27 = shufflevector <8 x i8> %broadcast.splatinsert26, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index28
  store <8 x i8> %broadcast.splat27, ptr %i.l, align 1, !tbaa !32
  %index.next29 = add nuw i64 %index28, 8         ; 2 uses
  %i.m = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !479

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n30, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %.pre, ptr %gep, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !480

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16.split, label %iter.check, !llvm.loop !481

._crit_edge16.split:                              ; preds = %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL23stbi__jpeg_decode_blockP10stbi__jpegPsP13stbi__huffmanS3_S1_iPt(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 19 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !81
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef %0)
  %.pr = load i32, ptr %i.a, align 4, !tbaa !81
  %i.d = icmp slt i32 %.pr, 16
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !82   ; 6 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !32    ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !32
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.f, %i.o
  store i32 %i.r, ptr %i.e, align 8, !tbaa !82
  %i.s = sub nuw nsw i32 %i.p, %i.o
  store i32 %i.s, ptr %i.a, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

bb.f:                                             ; preds = %.thread
  %i.t = lshr i32 %i.f, 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 10, %bb.f ] ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !20
  %i.x = icmp ult i32 %i.t, %i.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.x, label %bb.h, label %bb.g, !llvm.loop !4

bb.h:                                             ; preds = %bb.g
  %i.y = trunc nuw nsw i64 %indvars.iv.i to i32   ; 5 uses
  %i.z = icmp eq i64 %indvars.iv.i, 17
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !81  ; 3 uses
  br i1 %i.z, label %.loopexit.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp slt i32 %i.aa, %i.y
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = sub nsw i32 32, %i.y
  %i.ad = lshr i32 %i.f, %i.ac
  %notmask.i = shl nsw i32 -1, %i.y
  %7 = xor i32 %notmask.i, -1
  %i.ae = and i32 %i.ad, %7
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.ai = add i32 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ak = sext i32 %i.ai to i64                   ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = sub nsw i32 32, %i.an
  %i.ap = lshr i32 %i.f, %i.ao
  %notmask47.i = shl nsw i32 -1, %i.an
  %8 = xor i32 %notmask47.i, -1
  %i.aq = and i32 %i.ap, %8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.as = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.ak
  %i.at = load i16, ptr %i.as, align 2, !tbaa !38
  %i.au = zext i16 %i.at to i32
  %i.av = icmp eq i32 %i.aq, %i.au
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4pbrt8LogFatalIJRA82_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 2115, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(82) @.str.71) #41
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = sub nuw nsw i32 %i.aa, %i.y
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !81
  %i.ax = shl i32 %i.f, %i.y
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !82
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit: ; preds = %bb.e, %bb.l
  %.sink118 = phi i64 [ %i.l, %bb.e ], [ %i.ak, %bb.l ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.sink118
  %.1.i.in = load i8, ptr %i.az, align 1, !tbaa !32 ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 4 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %.loopexit.sink.split, label %bb.m

bb.m:                                             ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %.not = icmp eq i8 %.1.i.in, 0
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !81 ; 3 uses
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp slt i32 %.pre.pre, %.1.i
  br i1 %i.ba, label %bb.o, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !81
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

_ZL20stbi__extend_receiveP10stbi__jpegi.exit:     ; preds = %bb.n, %bb.o
  %i.bb = phi i32 [ %.pre.i, %bb.o ], [ %.pre.pre, %bb.n ]
  %i.bc = load i32, ptr %i.e, align 8, !tbaa !82  ; 3 uses
  %i.bd = tail call i32 @llvm.fshl.i32(i32 %i.bc, i32 %i.bc, i32 range(i32 1, 16) %.1.i) ; 2 uses
  %i.be = zext nneg i8 %.1.i.in to i64
  %notmask.i72 = shl nsw i32 -1, %.1.i            ; 2 uses
  %i.bf = xor i32 %notmask.i72, -1
  %i.bg = and i32 %i.bd, %notmask.i72
  store i32 %i.bg, ptr %i.e, align 8, !tbaa !82
  %i.bh = and i32 %i.bd, %i.bf
  %i.bi = sub nsw i32 %i.bb, %.1.i                ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !81
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.be
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !20
  %.inv.i = icmp slt i32 %i.bc, 0
  %i.bl = select i1 %.inv.i, i32 0, i32 %i.bk
  %i.bm = add i32 %i.bl, %i.bh
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit
  %.pre = phi i32 [ %i.bi, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit ], [ %.pre.pre, %bb.m ]
  %i.bn = phi i32 [ %i.bm, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit ], [ 0, %bb.m ]
  %i.bo = sext i32 %5 to i64
  %i.bp = getelementptr [96 x i8], ptr %0, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 18104  ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !84
  %i.bs = add nsw i32 %i.br, %i.bn                ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !84
  %i.bt = load i16, ptr %6, align 2, !tbaa !38
  %i.bu = trunc i32 %i.bs to i16
  %i.bv = mul i16 %i.bt, %i.bu
  store i16 %i.bv, ptr %1, align 2, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 1280 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 1540
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 1612
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 512
  br label %bb.q

bb.q:                                             ; preds = %bb.ak, %bb.p
  %i.cb = phi i32 [ %.pre, %bb.p ], [ %i.fs, %bb.ak ]
  %.059 = phi i32 [ 1, %bb.p ], [ %.4.ph, %bb.ak ] ; 3 uses
  %i.cc = icmp slt i32 %i.cb, 16
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cd = load i32, ptr %i.e, align 8, !tbaa !82  ; 3 uses
  %i.ce = lshr i32 %i.cd, 23
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !38 ; 3 uses
  %.not70 = icmp eq i16 %i.ch, 0
  br i1 %.not70, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = lshr i32 %i.ci, 4
  %i.ck = and i32 %i.cj, 15
  %i.cl = add nsw i32 %i.ck, %.059                ; 2 uses
  %i.cm = and i32 %i.ci, 15                       ; 2 uses
  %i.cn = shl i32 %i.cd, %i.cm
  store i32 %i.cn, ptr %i.e, align 8, !tbaa !82
  %i.co = load i32, ptr %i.a, align 4, !tbaa !81
  %i.cp = sub nsw i32 %i.co, %i.cm                ; 2 uses
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !81
  %i.cq = add nsw i32 %i.cl, 1
  %i.cr = sext i32 %i.cl to i64
  %i.cs = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !32
  %i.cu = ashr i16 %i.ch, 8
  %i.cv = zext i8 %i.ct to i64                    ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !38
  %i.cy = mul i16 %i.cx, %i.cu
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cv
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !38
  br label %bb.ak

bb.u:                                             ; preds = %bb.s
  %i.da = load i32, ptr %i.a, align 4, !tbaa !81
  %i.db = icmp slt i32 %i.da, 16
  br i1 %i.db, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre99 = load i32, ptr %i.e, align 8, !tbaa !82 ; 2 uses
  %.pre102 = lshr i32 %.pre99, 23
  %.pre103 = zext nneg i32 %.pre102 to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre-phi104 = phi i64 [ %.pre103, %bb.v ], [ %i.cf, %bb.u ]
  %i.dc = phi i32 [ %.pre99, %bb.v ], [ %i.cd, %bb.u ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 %.pre-phi104
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !32  ; 2 uses
  %.not.i72 = icmp eq i8 %i.de, -1
  br i1 %.not.i72, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = zext i8 %i.de to i64                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !32
  %i.di = zext i8 %i.dh to i32                    ; 3 uses
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !81  ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.di
  br i1 %i.dk, label %.loopexit.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = shl i32 %i.dc, %i.di                    ; 2 uses
  store i32 %i.dl, ptr %i.e, align 8, !tbaa !82
  %i.dm = sub nuw nsw i32 %i.dj, %i.di            ; 2 uses
  store i32 %i.dm, ptr %i.a, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit76

bb.z:                                             ; preds = %bb.w
  %i.dn = lshr i32 %i.dc, 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i75, %bb.aa ], [ 10, %bb.z ] ; 5 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i74
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !20
  %i.dq = icmp ult i32 %i.dn, %i.dp
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i74, 1
  br i1 %i.dq, label %bb.ab, label %bb.aa, !llvm.loop !4

bb.ab:                                            ; preds = %bb.aa
  %i.dr = trunc nuw nsw i64 %indvars.iv.i74 to i32 ; 5 uses
  %i.ds = icmp eq i64 %indvars.iv.i74, 17
  %i.dt = load i32, ptr %i.a, align 4, !tbaa !81  ; 3 uses
  br i1 %i.ds, label %.loopexit.sink.split.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.du = icmp slt i32 %i.dt, %i.dr
  br i1 %i.du, label %.loopexit.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dv = sub nsw i32 32, %i.dr
  %i.dw = lshr i32 %i.dc, %i.dv
  %notmask.i77 = shl nsw i32 -1, %i.dr
  %9 = xor i32 %notmask.i77, -1
  %i.dx = and i32 %i.dw, %9
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i74
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !20
  %i.ea = add i32 %i.dz, %i.dx
  %i.eb = sext i32 %i.ea to i64                   ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %i.bw, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !32
  %i.ee = zext i8 %i.ed to i32                    ; 2 uses
  %i.ef = sub nsw i32 32, %i.ee
  %i.eg = lshr i32 %i.dc, %i.ef
  %notmask47.i78 = shl nsw i32 -1, %i.ee
  %10 = xor i32 %notmask47.i78, -1
  %i.eh = and i32 %i.eg, %10
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %i.eb
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !38
  %i.ek = zext i16 %i.ej to i32
  %i.el = icmp eq i32 %i.eh, %i.ek
  br i1 %i.el, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN4pbrt8LogFatalIJRA82_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 2115, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(82) @.str.71) #41
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.em = sub nuw nsw i32 %i.dt, %i.dr            ; 2 uses
  store i32 %i.em, ptr %i.a, align 4, !tbaa !81
  %i.en = shl i32 %i.dc, %i.dr                    ; 2 uses
  store i32 %i.en, ptr %i.e, align 8, !tbaa !82
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit76

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit76: ; preds = %bb.af, %bb.y
  %i.eo = phi i32 [ %i.en, %bb.af ], [ %i.dl, %bb.y ]
  %i.ep = phi i32 [ %i.em, %bb.af ], [ %i.dm, %bb.y ] ; 3 uses
  %.pn = phi i64 [ %i.eb, %bb.af ], [ %i.df, %bb.y ]
  %.1.i73.in.in = getelementptr inbounds i8, ptr %i.bx, i64 %.pn
  %.1.i73.in = load i8, ptr %.1.i73.in.in, align 1, !tbaa !32 ; 2 uses
  %.1.i73 = zext i8 %.1.i73.in to i32             ; 2 uses
  %i.eq = and i32 %.1.i73, 15                     ; 6 uses
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit76
  %.not71 = icmp eq i8 %.1.i73.in, -16
  br i1 %.not71, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.es = add nsw i32 %.059, 16
  br label %bb.ak

bb.ai:                                            ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit76
  %i.et = lshr i32 %.1.i73, 4
  %i.eu = add nsw i32 %i.et, %.059                ; 2 uses
  %i.ev = add nsw i32 %i.eu, 1
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds i8, ptr @_ZL19stbi__jpeg_dezigzag, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !32
  %i.ez = icmp slt i32 %i.ep, %i.eq
  br i1 %i.ez, label %bb.aj, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit79

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i78 = load i32, ptr %i.a, align 4, !tbaa !81
  %.pre100 = load i32, ptr %i.e, align 8, !tbaa !82
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit79

_ZL20stbi__extend_receiveP10stbi__jpegi.exit79:   ; preds = %bb.ai, %bb.aj
  %i.fa = phi i32 [ %.pre100, %bb.aj ], [ %i.eo, %bb.ai ] ; 3 uses
  %i.fb = phi i32 [ %.pre.i78, %bb.aj ], [ %i.ep, %bb.ai ]
  %i.fc = tail call i32 @llvm.fshl.i32(i32 %i.fa, i32 %i.fa, i32 range(i32 1, 16) %i.eq) ; 2 uses
  %i.fd = zext nneg i32 %i.eq to i64
  %notmask.i80 = shl nsw i32 -1, %i.eq            ; 2 uses
  %i.fe = xor i32 %notmask.i80, -1
  %i.ff = and i32 %i.fc, %notmask.i80
  store i32 %i.ff, ptr %i.e, align 8, !tbaa !82
  %i.fg = and i32 %i.fc, %i.fe
  %i.fh = sub nsw i32 %i.fb, %i.eq                ; 2 uses
  store i32 %i.fh, ptr %i.a, align 4, !tbaa !81
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.fd
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !20
  %.inv.i77 = icmp slt i32 %i.fa, 0
  %i.fk = select i1 %.inv.i77, i32 0, i32 %i.fj
  %i.fl = add i32 %i.fk, %i.fg
  %i.fm = zext i8 %i.ey to i64                    ; 2 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !38
  %i.fp = trunc i32 %i.fl to i16
  %i.fq = mul i16 %i.fo, %i.fp
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fm
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !38
  br label %bb.ak

bb.ak:                                            ; preds = %bb.t, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit79, %bb.ah
  %i.fs = phi i32 [ %i.ep, %bb.ah ], [ %i.fh, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit79 ], [ %i.cp, %bb.t ]
  %.4.ph = phi i32 [ %i.es, %bb.ah ], [ %i.ev, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit79 ], [ %i.cq, %bb.t ] ; 2 uses
  %i.ft = icmp slt i32 %.4.ph, 64
  br i1 %i.ft, label %bb.q, label %.loopexit, !llvm.loop !483

.loopexit.sink.split.sink.split:                  ; preds = %bb.ab, %bb.h
  %.lcssa.sink = phi i32 [ %i.aa, %bb.h ], [ %i.dt, %bb.ab ]
  %i.fu = add nsw i32 %.lcssa.sink, -16
  store i32 %i.fu, ptr %i.a, align 4, !tbaa !81
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.x, %bb.ac, %.loopexit.sink.split.sink.split, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit, %bb.d, %bb.i
  %i.fv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.70, ptr %i.fv, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ak, %bb.ag, %.loopexit.sink.split
  %.465 = phi i32 [ 0, %.loopexit.sink.split ], [ 1, %bb.ag ], [ 1, %bb.ak ]
  ret i32 %.465
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18476 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !83
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.a
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !81 ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.promoted, i32 17)
  %i.f = add nuw i32 %smax, 7
  %i.g = sub i32 %i.f, %.promoted
  %i.h = and i32 %i.g, -8
  %i.i = add i32 %.promoted, %i.h
  %i.j = add i32 %i.i, 8
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  br label %.loopexit

.splitthread-pre-split:                           ; preds = %.thread
  %.pr = load i32, ptr %i.a, align 4, !tbaa !83
  br label %.split

.split:                                           ; preds = %bb.a, %.splitthread-pre-split
  %i.k = phi i32 [ %.pr, %.splitthread-pre-split ], [ 0, %bb.a ]
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.split
  %i.l = load ptr, ptr %0, align 8, !tbaa !55     ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store ptr %i.r, ptr %i.m, align 8, !tbaa !30
  %i.s = load i8, ptr %i.n, align 1, !tbaa !32
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !27
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = tail call noundef i32 %i.w(ptr noundef %i.y, ptr noundef nonnull %i.z, i32 noundef %i.ab), !inline_history !6 ; 2 uses
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !28
  %i.am = add nsw i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !28
  %i.an = icmp eq i32 %i.ac, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.t, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store i8 0, ptr %i.z, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ap = sext i32 %i.ac to i64
  %i.aq = getelementptr inbounds i8, ptr %i.z, i64 %i.ap
  %.pre.i = load i8, ptr %i.z, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.g, %bb.f
  %i.ar = phi i8 [ 0, %bb.f ], [ %.pre.i, %bb.g ]
  %.sink.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.aq, %bb.g ]
  store ptr %.sink.i.i, ptr %i.o, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store ptr %i.as, ptr %i.m, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i, %bb.c
  %.0.i = phi i8 [ %i.s, %bb.c ], [ %i.ar, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ] ; 2 uses
  %i.at = icmp eq i8 %.0.i, -1
  br i1 %i.at, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %0, align 8, !tbaa !55    ; 11 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !30
  %i.bb = load i8, ptr %i.aw, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit23.preheader

bb.k:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !27
  %.not.i18 = icmp eq i32 %i.bd, 0
  br i1 %.not.i18, label %_ZL10stbi__get8P13stbi__context.exit23.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26
  %i.bl = tail call noundef i32 %i.bf(ptr noundef %i.bh, ptr noundef nonnull %i.bi, i32 noundef %i.bk), !inline_history !6 ; 2 uses
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 184 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !28
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !28
  %i.bw = icmp eq i32 %i.bl, 0
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bc, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store i8 0, ptr %i.bi, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i20

bb.n:                                             ; preds = %bb.l
  %i.by = sext i32 %i.bl to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bi, i64 %i.by
  %.pre.i19 = load i8, ptr %i.bi, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i20

_ZL19stbi__refill_bufferP13stbi__context.exit.i20: ; preds = %bb.n, %bb.m
  %i.ca = phi i8 [ 0, %bb.m ], [ %.pre.i19, %bb.n ]
  %.sink.i.i21 = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  store ptr %.sink.i.i21, ptr %i.ax, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.au, i64 57
  store ptr %i.cb, ptr %i.av, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit23.preheader

_ZL10stbi__get8P13stbi__context.exit23.preheader: ; preds = %bb.j, %bb.k, %_ZL19stbi__refill_bufferP13stbi__context.exit.i20
  %.016.in.ph = phi i8 [ %i.ca, %_ZL19stbi__refill_bufferP13stbi__context.exit.i20 ], [ %i.bb, %bb.j ], [ 0, %bb.k ]
  br label %_ZL10stbi__get8P13stbi__context.exit23

_ZL10stbi__get8P13stbi__context.exit23:           ; preds = %_ZL10stbi__get8P13stbi__context.exit23.backedge, %_ZL10stbi__get8P13stbi__context.exit23.preheader
  %.016.in = phi i8 [ %.016.in.ph, %_ZL10stbi__get8P13stbi__context.exit23.preheader ], [ %.016.in.be, %_ZL10stbi__get8P13stbi__context.exit23.backedge ] ; 2 uses
  switch i8 %.016.in, label %bb.u [
    i8 -1, label %bb.o
    i8 0, label %.thread
  ]

bb.o:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit23
  %i.cc = load ptr, ptr %0, align 8, !tbaa !55    ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 192 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !30 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 200 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !33
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !30
  %i.cj = load i8, ptr %i.ce, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit23.backedge

_ZL10stbi__get8P13stbi__context.exit23.backedge:  ; preds = %bb.p, %bb.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i26
  %.016.in.be = phi i8 [ %i.cj, %bb.p ], [ %i.di, %_ZL19stbi__refill_bufferP13stbi__context.exit.i26 ], [ 0, %bb.q ]
  br label %_ZL10stbi__get8P13stbi__context.exit23, !llvm.loop !484

bb.q:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !27
  %.not.i24 = icmp eq i32 %i.cl, 0
  br i1 %.not.i24, label %_ZL10stbi__get8P13stbi__context.exit23.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 56 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 52
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !26
  %i.ct = tail call noundef i32 %i.cn(ptr noundef %i.cp, ptr noundef nonnull %i.cq, i32 noundef %i.cs), !inline_history !6 ; 2 uses
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cc, i64 208
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !29
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 184 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !28
  %i.dd = add nsw i32 %i.dc, %i.da
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !28
  %i.de = icmp eq i32 %i.ct, 0
  br i1 %i.de, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ck, align 8, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store i8 0, ptr %i.cq, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i26

bb.t:                                             ; preds = %bb.r
  %i.dg = sext i32 %i.ct to i64
  %i.dh = getelementptr inbounds i8, ptr %i.cq, i64 %i.dg
  %.pre.i25 = load i8, ptr %i.cq, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i26

_ZL19stbi__refill_bufferP13stbi__context.exit.i26: ; preds = %bb.t, %bb.s
  %i.di = phi i8 [ 0, %bb.s ], [ %.pre.i25, %bb.t ]
  %.sink.i.i27 = phi ptr [ %i.df, %bb.s ], [ %i.dh, %bb.t ]
  store ptr %.sink.i.i27, ptr %i.cf, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 57
  store ptr %i.dj, ptr %i.cd, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit23.backedge

bb.u:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit23
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 %.016.in, ptr %i.dk, align 8, !tbaa !72
  store i32 1, ptr %i.a, align 4, !tbaa !83
  br label %.loopexit

.thread:                                          ; preds = %_ZL10stbi__get8P13stbi__context.exit23, %bb.d, %.split, %bb.h
  %.shrunk = phi i8 [ 0, %.split ], [ 0, %bb.d ], [ %.0.i, %bb.h ], [ -1, %_ZL10stbi__get8P13stbi__context.exit23 ]
  %i.dl = zext i8 %.shrunk to i32
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !81  ; 3 uses
  %i.dn = sub nsw i32 24, %i.dm
  %i.do = shl i32 %i.dl, %i.dn
  %i.dp = load i32, ptr %i.c, align 8, !tbaa !82
  %i.dq = or i32 %i.do, %i.dp
  store i32 %i.dq, ptr %i.c, align 8, !tbaa !82
  %i.dr = add nsw i32 %i.dm, 8
  store i32 %i.dr, ptr %i.b, align 4, !tbaa !81
  %i.ds = icmp slt i32 %i.dm, 17
  br i1 %i.ds, label %.splitthread-pre-split, label %.loopexit, !llvm.loop !485

.loopexit:                                        ; preds = %.thread, %.split.us, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL31stbi__jpeg_decode_block_prog_dcP10stbi__jpegPsP13stbi__huffmani(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.72, ptr %i.c, align 8, !tbaa !19
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 12 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !81
  %i.f = icmp slt i32 %i.e, 16
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18492
  %i.h = load i32, ptr %i.g, align 4, !tbaa !78
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %i.j = load i32, ptr %i.d, align 4, !tbaa !81
  %i.k = icmp slt i32 %i.j, 16
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !82   ; 6 uses
  %i.n = lshr i32 %i.m, 23
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32    ; 2 uses
  %.not.i = icmp eq i8 %i.q, -1
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.s = zext i8 %i.q to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !81   ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.v
  br i1 %i.x, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = shl i32 %i.m, %i.v                       ; 2 uses
  store i32 %i.y, ptr %i.l, align 8, !tbaa !82
  %i.z = sub nuw nsw i32 %i.w, %i.v               ; 2 uses
  store i32 %i.z, ptr %i.d, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

bb.k:                                             ; preds = %bb.h
  %i.aa = lshr i32 %i.m, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 10, %bb.k ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20
  %i.ae = icmp ult i32 %i.aa, %i.ad
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ae, label %bb.m, label %bb.l, !llvm.loop !4

bb.m:                                             ; preds = %bb.l
  %i.af = trunc nuw nsw i64 %indvars.iv.i to i32  ; 5 uses
  %i.ag = icmp eq i64 %indvars.iv.i, 17
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !81  ; 3 uses
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %i.ah, -16
  store i32 %i.ai, ptr %i.d, align 4, !tbaa !81
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp slt i32 %i.ah, %i.af
  br i1 %i.aj, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = sub nsw i32 32, %i.af
  %i.al = lshr i32 %i.m, %i.ak
  %notmask.i = shl nsw i32 -1, %i.af
  %4 = xor i32 %notmask.i, -1
  %i.am = and i32 %i.al, %4
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20
  %i.aq = add i32 %i.ap, %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.as = sext i32 %i.aq to i64                   ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = sub nsw i32 32, %i.av
  %i.ax = lshr i32 %i.m, %i.aw
  %notmask47.i = shl nsw i32 -1, %i.av
  %5 = xor i32 %notmask47.i, -1
  %i.ay = and i32 %i.ax, %5
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.as
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !38
  %i.bc = zext i16 %i.bb to i32
  %i.bd = icmp eq i32 %i.ay, %i.bc
  br i1 %i.bd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4pbrt8LogFatalIJRA82_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 2115, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(82) @.str.71) #41
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.be = sub nuw nsw i32 %i.ah, %i.af            ; 2 uses
  store i32 %i.be, ptr %i.d, align 4, !tbaa !81
  %i.bf = shl i32 %i.m, %i.af                     ; 2 uses
  store i32 %i.bf, ptr %i.l, align 8, !tbaa !82
  br label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit: ; preds = %bb.j, %bb.r
  %.sink38 = phi i64 [ %i.s, %bb.j ], [ %i.as, %bb.r ]
  %i.bg = phi i32 [ %i.y, %bb.j ], [ %i.bf, %bb.r ]
  %i.bh = phi i32 [ %i.z, %bb.j ], [ %i.be, %bb.r ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %.sink38
  %.1.i.in = load i8, ptr %i.bj, align 1, !tbaa !32 ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 4 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, label %bb.s

_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread: ; preds = %bb.o, %bb.i, %bb.n, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit
  %i.bk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.72, ptr %i.bk, align 8, !tbaa !19
  br label %bb.z

bb.s:                                             ; preds = %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit
  %.not27 = icmp eq i8 %.1.i.in, 0
  br i1 %.not27, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = icmp slt i32 %i.bh, %.1.i
  br i1 %i.bl, label %bb.u, label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !81
  %.pre = load i32, ptr %i.l, align 8, !tbaa !82
  br label %_ZL20stbi__extend_receiveP10stbi__jpegi.exit

_ZL20stbi__extend_receiveP10stbi__jpegi.exit:     ; preds = %bb.t, %bb.u
  %i.bm = phi i32 [ %.pre, %bb.u ], [ %i.bg, %bb.t ] ; 3 uses
  %i.bn = phi i32 [ %.pre.i, %bb.u ], [ %i.bh, %bb.t ]
  %i.bo = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 range(i32 1, 16) %.1.i) ; 2 uses
  %i.bp = zext nneg i8 %.1.i.in to i64
  %notmask.i28 = shl nsw i32 -1, %.1.i            ; 2 uses
  %i.bq = xor i32 %notmask.i28, -1
  %i.br = and i32 %i.bo, %notmask.i28
  store i32 %i.br, ptr %i.l, align 8, !tbaa !82
  %i.bs = and i32 %i.bo, %i.bq
  %i.bt = sub nsw i32 %i.bn, %.1.i
  store i32 %i.bt, ptr %i.d, align 4, !tbaa !81
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @_ZL11stbi__jbias, i64 %i.bp
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !20
  %.inv.i = icmp slt i32 %i.bm, 0
  %i.bw = select i1 %.inv.i, i32 0, i32 %i.bv
  %i.bx = add i32 %i.bw, %i.bs
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit
  %i.by = phi i32 [ %i.bx, %_ZL20stbi__extend_receiveP10stbi__jpegi.exit ], [ 0, %bb.s ]
  %i.bz = sext i32 %3 to i64
  %i.ca = getelementptr [96 x i8], ptr %0, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 18104  ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !84
  %i.cd = add nsw i32 %i.cc, %i.by                ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !84
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !79
  %i.cg = shl i32 %i.cd, %i.cf
  %i.ch = trunc i32 %i.cg to i16
  store i16 %i.ch, ptr %1, align 2, !tbaa !38
  br label %bb.z

bb.w:                                             ; preds = %bb.e
  %i.ci = load i32, ptr %i.d, align 4, !tbaa !81  ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %bb.x, label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_ZL24stbi__grow_buffer_unsafeP10stbi__jpeg(ptr noundef nonnull %0)
  %.pre.i28 = load i32, ptr %i.d, align 4, !tbaa !81
  br label %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit

_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit:        ; preds = %bb.w, %bb.x
  %i.ck = phi i32 [ %.pre.i28, %bb.x ], [ %i.ci, %bb.w ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !82 ; 2 uses
  %i.cn = shl i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !82
  %i.co = add nsw i32 %i.ck, -1
  store i32 %i.co, ptr %i.d, align 4, !tbaa !81
  %.not26 = icmp sgt i32 %i.cm, -1
  br i1 %.not26, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 18496
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !79
  %i.cr = shl nuw i32 1, %i.cq
  %i.cs = load i16, ptr %1, align 2, !tbaa !38
  %i.ct = trunc i32 %i.cr to i16
  %i.cu = add i16 %i.cs, %i.ct
  store i16 %i.cu, ptr %1, align 2, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %_ZL22stbi__jpeg_huff_decodeP10stbi__jpegP13stbi__huffman.exit.thread ], [ 1, %_ZL18stbi__jpeg_get_bitP10stbi__jpeg.exit ], [ 1, %bb.y ], [ 1, %bb.v ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA82_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(82) %4) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !98, !alias.scope !488
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !101, !alias.scope !488
  store i8 0, ptr %i.a, align 8, !tbaa !32, !alias.scope !488
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA82_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(82) %4)
          to label %_ZN4pbrt12StringPrintfIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !102, !alias.scope !488 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !32, !alias.scope !488
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #44
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !102
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #41
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA82_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !102    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA82_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(82) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #40
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #40
  %.not16 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #40
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.x
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.d, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.i = load ptr, ptr %3, align 8, !tbaa !102    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !98, !alias.scope !499
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !101, !alias.scope !499
  store i8 0, ptr %i.j, align 8, !tbaa !32, !alias.scope !499
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110, !noalias !499 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !499 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111, !noalias !499 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !102, !alias.scope !499 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h
end_hunk_2
