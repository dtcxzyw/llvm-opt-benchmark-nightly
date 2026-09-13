Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.6?download=true
inline.NumInlined: 73
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [13 x i8] c"\0AIO Error: \C0\00", align 1
@1 = private unnamed_addr constant [31 x i8] c"\18Invalid WebP signature: \C1 \00\00b\00", align 1
@2 = private unnamed_addr constant [29 x i8] c"An expected chunk was missing", align 1
@3 = private unnamed_addr constant [29 x i8] c"\16Invalid Chunk header: \C1 \00\00b\00", align 1
@4 = private unnamed_addr constant [17 x i8] c"Reserved bits set", align 1
@5 = private unnamed_addr constant [38 x i8] c"Alpha chunk preprocessing flag invalid", align 1
@6 = private unnamed_addr constant [26 x i8] c"Invalid compression method", align 1
@7 = private unnamed_addr constant [25 x i8] c"Alpha chunk size mismatch", align 1
@8 = private unnamed_addr constant [15 x i8] c"Image too large", align 1
@9 = private unnamed_addr constant [19 x i8] c"Frame outside image", align 1
@10 = private unnamed_addr constant [35 x i8] c"\1CInvalid lossless signature: \C1 \00\00b\00", align 1
@11 = private unnamed_addr constant [31 x i8] c"\18Invalid RIFF signature: \C1 \00\00b\00", align 1
@12 = private unnamed_addr constant [36 x i8] c"!Invalid lossless version number: \C0\00", align 1
@13 = private unnamed_addr constant [29 x i8] c"\1AInvalid color cache bits: \C0\00", align 1
@14 = private unnamed_addr constant [20 x i8] c"Invalid Huffman code", align 1
@15 = private unnamed_addr constant [17 x i8] c"Corrupt bitstream", align 1
@16 = private unnamed_addr constant [17 x i8] c"Invalid transform", align 1
@17 = private unnamed_addr constant [26 x i8] c"\13Invalid VP8 magic: \C1 \00\00b\00", align 1
@18 = private unnamed_addr constant [24 x i8] c"Not enough VP8 init data", align 1
@19 = private unnamed_addr constant [28 x i8] c"\19Invalid VP8 color space: \C0\00", align 1
@20 = private unnamed_addr constant [37 x i8] c"\22Invalid VP8 luma prediction mode: \C0\00", align 1
@21 = private unnamed_addr constant [38 x i8] c"#Invalid VP8 intra prediction mode: \C0\00", align 1
@22 = private unnamed_addr constant [39 x i8] c"$Invalid VP8 chroma prediction mode: \C0\00", align 1
@23 = private unnamed_addr constant [24 x i8] c"Inconsistent image sizes", align 1
@24 = private unnamed_addr constant [24 x i8] c"\15Unsupported feature: \C0\00", align 1
@25 = private unnamed_addr constant [22 x i8] c"\13Invalid parameter: \C0\00", align 1
@26 = private unnamed_addr constant [21 x i8] c"Memory limit exceeded", align 1
@27 = private unnamed_addr constant [18 x i8] c"Invalid chunk size", align 1
@28 = private unnamed_addr constant [14 x i8] c"No more frames", align 1
@29 = private unnamed_addr constant [13 x i8] c"\0AIO error: \C0\00", align 1
@30 = private unnamed_addr constant [18 x i8] c"Invalid dimensions", align 1
@31 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/image-webp-0.2.4/src/encoder.rs\00", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00!\01\00\00\1B\00\00\00" }>, align 8
@33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00c\00\00\00\05\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00d\00\00\00\05\00\00\00" }>, align 8
@35 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\8F\00\00\00\1D\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\A3\00\00\00\0D\00\00\00" }>, align 8
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\C1\00\00\00\17\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\C4\00\00\00\11\00\00\00" }>, align 8
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\D6\00\00\00\05\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\D0\00\00\00\11\00\00\00" }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\B2\00\00\00\13\00\00\00" }>, align 8
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\B6\00\00\00\0D\00\00\00" }>, align 8
@43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\95\00\00\00/\00\00\00" }>, align 8
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\83\00\00\004\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"d\00\00\00\00\00\00\00\84\00\00\00)\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjmEEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTjmEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjmEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTjmEEECsksn9slvsHfS_10image_webp.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjmEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTjmEEECsksn9slvsHfS_10image_webp.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTtlEEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTtlEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTtlEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTtlEEECsksn9slvsHfS_10image_webp.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTtlEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTtlEEECsksn9slvsHfS_10image_webp.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTttEEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTttEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTttEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTttEEECsksn9slvsHfS_10image_webp.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTttEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecTttEEECsksn9slvsHfS_10image_webp.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1e_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1l_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1l_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1e_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i16, i8 } @_RNvNtCsksn9slvsHfS_10image_webp7encoder16length_to_symbol(i16 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = add i16 %0, -1                           ; 3 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %1 = icmp ne i16 %0, 1
  tail call void @llvm.assume(i1 %1)
  %i.b = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.a, i1 true) ; 2 uses
  %i.c = sub nsw i16 14, %i.b                     ; 2 uses
  %i.d = and i16 %i.c, 15
  %i.e = lshr i16 %i.a, %i.d
  %i.f = and i16 %i.e, 1
  %i.g = shl nuw nsw i16 %i.b, 1
  %i.h = or disjoint i16 %i.f, %i.g
  %i.i = xor i16 %i.h, 30
  %i.j = trunc nsw i16 %i.c to i8
  %i.k = insertvalue { i16, i8 } poison, i16 %i.i, 0
  %i.l = insertvalue { i16, i8 } %i.k, i8 %i.j, 1
  ret { i16, i8 } %i.l

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtCsj6eKBz9Db1c_4core3num3imp9int_log1030panic_for_nonpositive_argument(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull captures(address) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull writeonly align 2 captures(none) %4, i64 noundef range(i64 0, 4611686018427387904) %5, i8 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [64 x i8], align 4                ; 26 uses
  %i.h = alloca [12 x i8], align 4                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 15 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [12 x i8], align 4                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 2 uses
  %i.r = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.r, align 8
  store i64 %3, ptr %i.q, align 8
  %i.s = icmp eq i64 %1, %3
  br i1 %i.s, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %1, ptr %i.p, align 8
  store i64 %5, ptr %i.o, align 8
  %i.t = icmp eq i64 %1, %5
  br i1 %i.t, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.idx = shl nuw nsw i64 %1, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.v = icmp eq i64 %1, 0
  br i1 %i.v, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.e
  %min.iters.check = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check, label %.preheader.i.preheader400, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %1, 2305843009213693948        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi347 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.load = load <2 x i32>, ptr %i.w, align 4, !alias.scope !29
  %wide.load348 = load <2 x i32>, ptr %i.x, align 4, !alias.scope !29
  %i.y = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.z = icmp ne <2 x i32> %wide.load348, zeroinitializer
  %i.aa = zext <2 x i1> %i.y to <2 x i64>
  %i.ab = zext <2 x i1> %i.z to <2 x i64>
  %i.ac = add <2 x i64> %vec.phi, %i.aa           ; 2 uses
  %i.ad = add <2 x i64> %vec.phi347, %i.ab        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ad, %i.ac
  %i.af = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit, label %.preheader.i.preheader400

.preheader.i.preheader400:                        ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.af, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader400, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.ak, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader400 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.aj, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader400 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.ag, align 4, !alias.scope !29, !noundef !5
  %i.ah = icmp ne i32 %.val.i.i, 0
  %i.ai = zext i1 %i.ah to i64
  %i.aj = add i64 %.sroa.02.0.i.i, %i.ai          ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i.i, 1      ; 2 uses
  %i.al = icmp eq i64 %i.ak, %1
  br i1 %i.al, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit, label %.preheader.i, !llvm.loop !10

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit: ; preds = %.preheader.i, %middle.block
  %.lcssa346 = phi i64 [ %i.af, %middle.block ], [ %i.aj, %.preheader.i ] ; 2 uses
  %i.am = icmp ule i64 %.lcssa346, %1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp ugt i64 %.lcssa346, 1
  br i1 %i.an, label %bb.f, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.thread

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 2 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %0, ptr %i.l, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.u, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  invoke void @_RINvXsO_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB6_10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB1c_E9from_iterINtNtNtB2n_8adapters3map3MapINtNtB3A_6filter6FilterINtNtB3A_9enumerate9EnumerateINtNtNtB2p_5slice4iter4ItermEENCB1e_s_0ENCB1e_s0_0EEB1i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.g

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit.thread: ; preds = %bb.e, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4ItermENCNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree0ENtNtNtB9_6traits8iterator8Iterator5countB1A_.exit
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %2, i8 0, i64 %1, i1 false)
  %i.aq = shl nuw nsw i64 %1, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %4, i8 0, i64 %i.aq, i1 false), !alias.scope !32
  br label %bb.aq

.body99:                                          ; preds = %bb.am, %bb.g, %.body97
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %.body97 ], [ %i.ar, %bb.g ], [ %i.jx, %bb.am ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTttEEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #16
          to label %common.resume unwind label %bb.aw

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1e_.exit.i, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body99

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %i.au = icmp ult i64 %i.at, 1152921504606846976
  call void @llvm.assume(i1 %i.au)
  %i.av = icmp samesign ugt i64 %i.at, 1
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ba = trunc i64 %1 to i16
  %i.bb = add i16 %i.ba, -1
  br label %bb.i

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap7PeekMutNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1G_.exit111, %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %2, i8 0, i64 %1, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 6 uses
  store i64 0, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemE3popB1h_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.j unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc11collections11binary_heap7PeekMutNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemEEB1G_.exit111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs9_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_10BinaryHeapNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemE3popB1h_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.be unwind label %.loopexit133

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.z, %bb.x
  %.pn84 = phi { ptr, i32 } [ %i.il, %bb.x ], [ %i.iw, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTtlEEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #16
          to label %.body97 unwind label %bb.aw

.loopexit:                                        ; preds = %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_0
