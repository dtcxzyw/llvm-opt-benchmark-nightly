Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/base64-rs/original/base64-2bb5e08323c56fc8.base64.be38770df9fbf2a4-cgu.0?download=true
inline.NumInlined: 222
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs9_NtNtCskKLDkoKarTP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@2 = private unnamed_addr constant [34 x i8] c"src/engine/general_purpose/mod.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"!\00\00\00\00\00\00\00\FE\00\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"!\00\00\00\00\00\00\00\FF\00\00\00\09\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"!\00\00\00\00\00\00\00\02\01\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"!\00\00\00\00\00\00\00\06\01\00\00\09\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"!\00\00\00\00\00\00\00\07\01\00\00\09\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"!\00\00\00\00\00\00\00\F0\00\00\00'\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"!\00\00\00\00\00\00\00\EF\00\00\00!\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"!\00\00\00\00\00\00\00\AA\00\00\00+\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"!\00\00\00\00\00\00\00\A9\00\00\00%\00\00\00" }>, align 8
@12 = private unnamed_addr constant [44 x i8] c"src/engine/general_purpose/decode_suffix.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"+\00\00\00\00\00\00\00[\00\00\00\09\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"+\00\00\00\00\00\00\00#\00\00\00&\00\00\00" }>, align 8
@15 = private unnamed_addr constant [37 x i8] c"src/engine/general_purpose/decode.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"$\00\00\00\00\00\00\00\C3\00\00\00\19\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"$\00\00\00\00\00\00\00\A3\00\00\00'\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"$\00\00\00\00\00\00\00\9E\00\00\00&\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"$\00\00\00\00\00\00\00\80\00\00\00'\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"$\00\00\00\00\00\00\00z\00\00\00&\00\00\00" }>, align 8
@21 = private unnamed_addr constant [22 x i8] c"Output slice too small", align 1
@22 = private unnamed_addr constant [23 x i8] c"src/chunked_encoder.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"\16\00\00\00\00\00\00\00C\00\00\000\00\00\00" }>, align 8
@24 = private unnamed_addr constant [24 x i8] c"base64 data was not utf8", align 1
@25 = private unnamed_addr constant [15 x i8] c"src/display.rs\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @25, [16 x i8] c"\0E\00\00\00\00\00\00\003\00\00\000\00\00\00" }>, align 8
@27 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@28 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsgkxsgNF9KUO_6base64 }>, align 8
@29 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@30 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@31 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@32 = private unnamed_addr constant [4 x i8] c"None", align 1
@33 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsgkxsgNF9KUO_6base64 }>, align 8
@34 = private unnamed_addr constant [4 x i8] c"Some", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211decode_bulkNtB4_7UrlSafeEB8_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %2, 64
  %.not13132 = icmp samesign ult i64 %4, 24
  %or.cond = select i1 %i.a, i1 true, i1 %.not13132
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.ag, %bb.b ], [ 24, %bb.a ]  ; 3 uses
  %.sroa.05.0128134 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.01.0129133 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = phi i64 [ %i.af, %bb.b ], [ 32, %bb.a ]  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0129133
  %.sroa.0.0.copyload.i19 = load <4 x i64>, ptr %i.d, align 1, !noalias !18 ; 3 uses
  %i.e = bitcast <4 x i64> %.sroa.0.0.copyload.i19 to <8 x i32>
  %i.f = lshr <8 x i32> %i.e, splat (i32 4)
  %i.g = bitcast <4 x i64> %.sroa.0.0.copyload.i19 to <32 x i8>
  %i.h = and <32 x i8> %i.g, splat (i8 15)
  %i.i = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -88, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -16, i8 80, i8 80, i8 84, i8 80, i8 112, i8 -88, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -16, i8 80, i8 80, i8 84, i8 80, i8 112>, <32 x i8> %i.h)
  %i.j = bitcast <8 x i32> %i.f to <32 x i8>
  %i.k = and <32 x i8> %i.j, splat (i8 15)        ; 2 uses
  %i.l = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.k)
  %i.m = and <32 x i8> %i.l, %i.i
  %i.n = icmp eq <32 x i8> %i.m, zeroinitializer
  %i.o = bitcast <32 x i1> %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.q = bitcast <4 x i64> %.sroa.0.0.copyload.i19 to <32 x i8> ; 2 uses
  %i.r = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 17, i8 4, i8 -65, i8 -65, i8 -71, i8 -71, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 17, i8 4, i8 -65, i8 -65, i8 -71, i8 -71, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.k)
  %i.s = icmp eq <32 x i8> %i.q, splat (i8 95)
  %i.t = select <32 x i1> %i.s, <32 x i8> splat (i8 -32), <32 x i8> %i.r
  %i.u = add <32 x i8> %i.t, %i.q
  %i.v = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.u, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.w = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.v, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.x = bitcast <8 x i32> %i.w to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.z = bitcast <32 x i8> %i.y to <8 x i32>
  %i.aa = shufflevector <8 x i32> %i.z, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 poison, i32 poison>
  %i.ab = bitcast <8 x i32> %i.aa to <4 x i64>    ; 2 uses
  %i.ac = shufflevector <4 x i64> %i.ab, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ad = getelementptr i8, ptr %3, i64 %.sroa.05.0128134 ; 2 uses
  store <2 x i64> %i.ac, ptr %i.ad, align 1, !noalias !19
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.sroa.0127.0.vec.extract = extractelement <4 x i64> %i.ab, i64 2
  store i64 %.sroa.0127.0.vec.extract, ptr %i.ae, align 1, !noalias !20
  %i.af = add nuw i64 %i.c, 32                    ; 2 uses
  %.not = icmp ugt i64 %i.af, %2
  %i.ag = add nuw i64 %i.b, 24                    ; 2 uses
  %.not13 = icmp ugt i64 %i.ag, %4
  %or.cond141 = select i1 %.not, i1 true, i1 %.not13
  br i1 %or.cond141, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ 0, %bb.a ], [ %.sroa.05.0128134, %.lr.ph ], [ %i.b, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.01.0129133, %.lr.ph ], [ %i.c, %bb.b ]
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.ai
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211decode_bulkNtB4_8StandardEB8_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %2, 64
  %.not13132 = icmp samesign ult i64 %4, 24
  %or.cond = select i1 %i.a, i1 true, i1 %.not13132
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.ag, %bb.b ], [ 24, %bb.a ]  ; 3 uses
  %.sroa.05.0128134 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.01.0129133 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = phi i64 [ %i.af, %bb.b ], [ 32, %bb.a ]  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0129133
  %.sroa.0.0.copyload.i19 = load <4 x i64>, ptr %i.d, align 1, !noalias !27 ; 3 uses
  %i.e = bitcast <4 x i64> %.sroa.0.0.copyload.i19 to <8 x i32>
  %i.f = lshr <8 x i32> %i.e, splat (i32 4)
  %i.g = bitcast <4 x i64> %.sroa.0.0.copyload.i19 to <32 x i8>
  %i.h = and <32 x i8> %i.g, splat (i8 15)
  %i.i = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -88, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -16, i8 84, i8 80, i8 80, i8 80, i8 84, i8 -88, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -8, i8 -16, i8 84, i8 80, i8 80, i8 80, i8 84>, <32 x i8> %i.h)
  %i.j = bitcast <8 x i32> %i.f to <32 x i8>
  %i.k = and <32 x i8> %i.j, splat (i8 15)        ; 2 uses
  %i.l = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.k)
  %i.m = and <32 x i8> %i.l, %i.i
  %i.n = icmp eq <32 x i8> %i.m, zeroinitializer
  %i.o = bitcast <32 x i1> %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.q = bitcast <4 x i64> %.sroa.0.0.copyload.i19 to <32 x i8> ; 2 uses
  %i.r = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 19, i8 4, i8 -65, i8 -65, i8 -71, i8 -71, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 19, i8 4, i8 -65, i8 -65, i8 -71, i8 -71, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i8> %i.k)
  %i.s = icmp eq <32 x i8> %i.q, splat (i8 47)
  %i.t = select <32 x i1> %i.s, <32 x i8> splat (i8 16), <32 x i8> %i.r
  %i.u = add <32 x i8> %i.t, %i.q
  %i.v = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.u, <32 x i8> <i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1, i8 64, i8 1>)
  %i.w = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.v, <16 x i16> <i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1, i16 4096, i16 1>)
  %i.x = bitcast <8 x i32> %i.w to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <32 x i32> <i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 10, i32 9, i32 8, i32 14, i32 13, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 18, i32 17, i32 16, i32 22, i32 21, i32 20, i32 26, i32 25, i32 24, i32 30, i32 29, i32 28, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.z = bitcast <32 x i8> %i.y to <8 x i32>
  %i.aa = shufflevector <8 x i32> %i.z, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 poison, i32 poison>
  %i.ab = bitcast <8 x i32> %i.aa to <4 x i64>    ; 2 uses
  %i.ac = shufflevector <4 x i64> %i.ab, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ad = getelementptr i8, ptr %3, i64 %.sroa.05.0128134 ; 2 uses
  store <2 x i64> %i.ac, ptr %i.ad, align 1, !noalias !28
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.sroa.0127.0.vec.extract = extractelement <4 x i64> %i.ab, i64 2
  store i64 %.sroa.0127.0.vec.extract, ptr %i.ae, align 1, !noalias !29
  %i.af = add nuw i64 %i.c, 32                    ; 2 uses
  %.not = icmp ugt i64 %i.af, %2
  %i.ag = add nuw i64 %i.b, 24                    ; 2 uses
  %.not13 = icmp ugt i64 %i.ag, %4
  %or.cond141 = select i1 %.not, i1 true, i1 %.not13
  br i1 %or.cond141, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.3.0 = phi i64 [ 0, %bb.a ], [ %.sroa.05.0128134, %.lr.ph ], [ %i.b, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.01.0129133, %.lr.ph ], [ %i.c, %bb.b ]
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.ai
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211encode_bulkNtB4_7UrlSafeEB8_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 128
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.sroa.01.099 = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.sroa.05.098 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw i64 %.sroa.05.098, 32            ; 3 uses
  %.not11 = icmp ugt i64 %i.b, %3
  br i1 %.not11, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.099
  %.sroa.0.0.copyload.i1597 = load <8 x i32>, ptr %i.c, align 1, !noalias !34
  %i.d = shufflevector <8 x i32> %.sroa.0.0.copyload.i1597, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 3, i32 4, i32 5, i32 poison>
  %i.e = bitcast <8 x i32> %i.d to <32 x i8>
  %i.f = shufflevector <32 x i8> %i.e, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.g = bitcast <32 x i8> %i.f to <16 x i16>
  %i.h = and <16 x i16> %i.g, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %4 = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.h, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.i = bitcast <32 x i8> %i.f to <16 x i16>
  %i.j = and <16 x i16> %i.i, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.k = shl <16 x i16> %i.j, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.l = or <16 x i16> %4, %i.k
  %i.m = bitcast <16 x i16> %i.l to <32 x i8>     ; 3 uses
  %i.n = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.m, <32 x i8> splat (i8 51))
  %i.o = icmp sgt <32 x i8> %i.m, splat (i8 25)
  %.neg = zext <32 x i1> %i.o to <32 x i8>
  %i.p = add nuw <32 x i8> %i.n, %.neg
  %i.q = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -17, i8 32, i8 0, i8 0, i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -17, i8 32, i8 0, i8 0>, <32 x i8> %i.p)
  %i.r = add <32 x i8> %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.05.098
  store <32 x i8> %i.r, ptr %i.s, align 1, !noalias !35
  %i.t = add nuw nsw i64 %.sroa.01.099, 24        ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.01.099, 56
  %.not = icmp samesign ugt i64 %i.u, %1
  br i1 %.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.sroa.3.0 = phi i64 [ 0, %bb.a ], [ %.sroa.05.098, %.preheader ], [ %i.b, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.01.099, %.preheader ], [ %i.t, %bb.b ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211encode_bulkNtB4_8StandardEB8_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull writeonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 128
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.sroa.01.099 = phi i64 [ %i.t, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.sroa.05.098 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw i64 %.sroa.05.098, 32            ; 3 uses
  %.not11 = icmp ugt i64 %i.b, %3
  br i1 %.not11, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.099
  %.sroa.0.0.copyload.i1597 = load <8 x i32>, ptr %i.c, align 1, !noalias !40
  %i.d = shufflevector <8 x i32> %.sroa.0.0.copyload.i1597, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 3, i32 4, i32 5, i32 poison>
  %i.e = bitcast <8 x i32> %i.d to <32 x i8>
  %i.f = shufflevector <32 x i8> %i.e, <32 x i8> poison, <32 x i32> <i32 1, i32 0, i32 2, i32 1, i32 4, i32 3, i32 5, i32 4, i32 7, i32 6, i32 8, i32 7, i32 10, i32 9, i32 11, i32 10, i32 17, i32 16, i32 18, i32 17, i32 20, i32 19, i32 21, i32 20, i32 23, i32 22, i32 24, i32 23, i32 26, i32 25, i32 27, i32 26> ; 2 uses
  %i.g = bitcast <32 x i8> %i.f to <16 x i16>
  %i.h = and <16 x i16> %i.g, <i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032, i16 -1024, i16 4032>
  %4 = tail call <16 x i16> @llvm.umulh.v16i16(<16 x i16> %i.h, <16 x i16> <i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024, i16 64, i16 1024>)
  %i.i = bitcast <32 x i8> %i.f to <16 x i16>
  %i.j = and <16 x i16> %i.i, <i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63, i16 1008, i16 63>
  %i.k = shl <16 x i16> %i.j, <i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8, i16 4, i16 8>
  %i.l = or <16 x i16> %4, %i.k
  %i.m = bitcast <16 x i16> %i.l to <32 x i8>     ; 3 uses
  %i.n = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.m, <32 x i8> splat (i8 51))
  %i.o = icmp sgt <32 x i8> %i.m, splat (i8 25)
  %.neg = zext <32 x i1> %i.o to <32 x i8>
  %i.p = add nuw <32 x i8> %i.n, %.neg
  %i.q = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 0, i8 0, i8 65, i8 71, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -4, i8 -19, i8 -16, i8 0, i8 0>, <32 x i8> %i.p)
  %i.r = add <32 x i8> %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.05.098
  store <32 x i8> %i.r, ptr %i.s, align 1, !noalias !41
  %i.t = add nuw nsw i64 %.sroa.01.099, 24        ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.01.099, 56
  %.not = icmp samesign ugt i64 %i.u, %1
  br i1 %.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.sroa.3.0 = phi i64 [ 0, %bb.a ], [ %.sroa.05.098, %.preheader ], [ %i.b, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %.sroa.01.099, %.preheader ], [ %i.t, %bb.b ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.w
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !4, !alias.scope !44, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !44
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i)
  %i.g = load i64, ptr %i.a, align 8, !range !6, !noalias !44, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !45, !noalias !44, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !44, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !44
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMNtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB2_14GeneralPurpose3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([324 x i8]) align 1 captures(none) dereferenceable(324) initializes((0, 324)) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(65) %1, i24 %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 68 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, i8 -1, i64 256, i1 false), !alias.scope !49, !noalias !50
  %i.b = load i8, ptr %1, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  store i8 0, ptr %i.d, align 1, !alias.scope !49, !noalias !50
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  store i8 1, ptr %i.h, align 1, !alias.scope !49, !noalias !50
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  store i8 2, ptr %i.l, align 1, !alias.scope !49, !noalias !50
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  store i8 3, ptr %i.p, align 1, !alias.scope !49, !noalias !50
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s
  store i8 4, ptr %i.t, align 1, !alias.scope !49, !noalias !50
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  store i8 5, ptr %i.x, align 1, !alias.scope !49, !noalias !50
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 6, ptr %i.ab, align 1, !alias.scope !49, !noalias !50
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  store i8 7, ptr %i.af, align 1, !alias.scope !49, !noalias !50
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 8, ptr %i.aj, align 1, !alias.scope !49, !noalias !50
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.am
  store i8 9, ptr %i.an, align 1, !alias.scope !49, !noalias !50
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq
  store i8 10, ptr %i.ar, align 1, !alias.scope !49, !noalias !50
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  store i8 11, ptr %i.av, align 1, !alias.scope !49, !noalias !50
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  store i8 12, ptr %i.az, align 1, !alias.scope !49, !noalias !50
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  store i8 13, ptr %i.bd, align 1, !alias.scope !49, !noalias !50
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  store i8 14, ptr %i.bh, align 1, !alias.scope !49, !noalias !50
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  store i8 15, ptr %i.bl, align 1, !alias.scope !49, !noalias !50
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  store i8 16, ptr %i.bp, align 1, !alias.scope !49, !noalias !50
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.br = load i8, ptr %i.bq, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  store i8 17, ptr %i.bt, align 1, !alias.scope !49, !noalias !50
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  store i8 18, ptr %i.bx, align 1, !alias.scope !49, !noalias !50
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ca
  store i8 19, ptr %i.cb, align 1, !alias.scope !49, !noalias !50
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ce
  store i8 20, ptr %i.cf, align 1, !alias.scope !49, !noalias !50
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ci
  store i8 21, ptr %i.cj, align 1, !alias.scope !49, !noalias !50
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  store i8 22, ptr %i.cn, align 1, !alias.scope !49, !noalias !50
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cq
  store i8 23, ptr %i.cr, align 1, !alias.scope !49, !noalias !50
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !50, !noalias !49, !noundef !5
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cu
  store i8 24, ptr %i.cv, align 1, !alias.scope !49, !noalias !50
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode:bb.a
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.mp = icmp eq i8 %i.mo, -1
  br i1 %i.mp, label %.loopexit295.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 29
  %i.mr = load i8, ptr %i.mq, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.ms = zext i8 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.mv = icmp eq i8 %i.mu, -1
  br i1 %i.mv, label %.loopexit295.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 30
  %i.mx = load i8, ptr %i.mw, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.my = zext i8 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.my
  %i.na = load i8, ptr %i.mz, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.nb = icmp eq i8 %i.na, -1
  br i1 %i.nb, label %.loopexit295.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.0.01031.i.i, i64 31
  %i.nd = load i8, ptr %i.nc, align 1, !alias.scope !194, !noalias !195, !noundef !5 ; 2 uses
  %i.ne = zext i8 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !alias.scope !196, !noalias !197, !noundef !5 ; 2 uses
  %i.nh = icmp eq i8 %i.ng, -1
  br i1 %i.nh, label %.loopexit295.i.i, label %bb.bh

.loopexit295.i.i:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.sink2477.i.i = phi i64 [ 31, %bb.bg ], [ 30, %bb.bf ], [ 25, %bb.ba ], [ 26, %bb.bb ], [ 27, %bb.bc ], [ 28, %bb.bd ], [ 29, %bb.be ], [ 24, %bb.az ]
  %.sroa.1499.0.ph.i.i = phi i8 [ %i.nd, %bb.bg ], [ %i.mx, %bb.bf ], [ %i.lt, %bb.ba ], [ %i.lz, %bb.bb ], [ %i.mf, %bb.bc ], [ %i.ml, %bb.bd ], [ %i.mr, %bb.be ], [ %i.ln, %bb.az ]
  %i.ni = shl i64 %.sroa.13.01029.i.i, 5
  %i.nj = or disjoint i64 %.sink2477.i.i, %i.ni
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.nk = zext i8 %i.lq to i64
  %i.nl = shl i64 %i.nk, 58
  %i.nm = zext i8 %i.lw to i64
  %i.nn = shl nuw nsw i64 %i.nm, 52
  %i.no = or i64 %i.nn, %i.nl
  %i.np = zext i8 %i.mc to i64
  %i.nq = shl nuw nsw i64 %i.np, 46
  %i.nr = or i64 %i.no, %i.nq
  %i.ns = zext i8 %i.mi to i64
  %i.nt = shl nuw nsw i64 %i.ns, 40
  %i.nu = or i64 %i.nr, %i.nt
  %i.nv = zext i8 %i.mo to i64
  %i.nw = shl nuw nsw i64 %i.nv, 34
  %i.nx = or i64 %i.nu, %i.nw
  %i.ny = zext i8 %i.mu to i64
  %i.nz = shl nuw nsw i64 %i.ny, 28
  %i.oa = or i64 %i.nx, %i.nz
  %i.ob = zext i8 %i.na to i64
  %i.oc = shl nuw nsw i64 %i.ob, 22
  %i.od = or i64 %i.oa, %i.oc
  %i.oe = zext i8 %i.ng to i64
  %i.of = shl nuw nsw i64 %i.oe, 16
  %i.og = or i64 %i.od, %i.of
  %i.oh = tail call i64 @llvm.bswap.i64(i64 %i.og)
  %.sroa.0241.0.extract.trunc.i.i = trunc i64 %i.oh to i48
  store i48 %.sroa.0241.0.extract.trunc.i.i, ptr %i.lm, align 1, !alias.scope !198, !noalias !199
  %.not.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.bi:                                            ; preds = %.loopexit295.i.i, %.loopexit294.i.i, %.loopexit293.i.i, %.loopexit292.i.i, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %.loopexit.i.i, %bb.q, %bb.o, %bb.m
  %.sroa.165.0.ph.i = phi i64 [ %i.es, %.loopexit292.i.i ], [ %i.dj, %bb.z ], [ %i.dr, %bb.ab ], [ %i.dz, %bb.ad ], [ %i.eh, %bb.af ], [ %i.ep, %bb.ah ], [ %i.er, %bb.ai ], [ %i.db, %bb.x ], [ %i.bk, %bb.o ], [ %i.bt, %bb.q ], [ %i.bb, %bb.m ], [ %i.km, %.loopexit294.i.i ], [ %i.hp, %.loopexit293.i.i ], [ %i.bv, %.loopexit.i.i ], [ %i.nj, %.loopexit295.i.i ]
  %.sroa.11.0.ph.i = phi i8 [ %i.cj, %.loopexit292.i.i ], [ %i.cv, %bb.z ], [ %i.dd, %bb.ab ], [ %i.dl, %bb.ad ], [ %i.dt, %bb.af ], [ %i.eb, %bb.ah ], [ %i.ej, %bb.ai ], [ %i.cp, %bb.x ], [ %i.bd, %bb.o ], [ %i.bm, %bb.q ], [ %i.au, %bb.m ], [ %.sroa.1495.0.ph.i.i, %.loopexit294.i.i ], [ %.sroa.1491.0.ph.i.i, %.loopexit293.i.i ], [ %i.ao, %.loopexit.i.i ], [ %.sroa.1499.0.ph.i.i, %.loopexit295.i.i ]
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.oi, align 8, !alias.scope !144, !noalias !155
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.11.0.ph.i, ptr %.sroa.419.0..sroa_idx.i, align 1, !alias.scope !144, !noalias !155
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.165.0.ph.i, ptr %.sroa.621.0..sroa_idx.i, align 8, !alias.scope !144, !noalias !155
  store i64 2, ptr %0, align 8, !alias.scope !144, !noalias !155
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i: ; preds = %bb.s, %bb.j
  tail call void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose13decode_suffix13decode_suffix(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.n, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.a, i1 noundef zeroext %i.d, i8 noundef %i.f, i8 noundef range(i8 0, 3) %i.h)
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit

_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_.exit: ; preds = %bb.g, %bb.bi, %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(none) dereferenceable(324) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = tail call noundef i64 @_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose18encode_scalar_tail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4, i64 noundef 0, i64 noundef 0)
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.usub.sat.v32i8(<32 x i8>, <32 x i8>) #11

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.umulh.v16i16(<16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noinline noreturn }
attributes #19 = { noreturn }
attributes #20 = { nounwind }
attributes #21 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 0, i64 -9223372036854775808}
!5 = !{}
!6 = !{i64 0, i64 2}
!7 = !{!"branch_weights", i32 4001, i32 4000000}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{i64 8}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256"}
!13 = distinct !{!13, !12, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256: argument 0"}
!14 = distinct !{!14, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgkxsgNF9KUO_6base64"}
!15 = distinct !{!15, !14, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgkxsgNF9KUO_6base64: argument 0"}
!16 = distinct !{!16, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse216__mm_storel_epi64"}
!17 = distinct !{!17, !16, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse216__mm_storel_epi64: argument 0"}
!18 = !{!13}
!19 = !{!15}
!20 = !{!17}
!21 = distinct !{!21, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256"}
!22 = distinct !{!22, !21, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256: argument 0"}
!23 = distinct !{!23, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgkxsgNF9KUO_6base64"}
!24 = distinct !{!24, !23, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m128i15write_unalignedCsgkxsgNF9KUO_6base64: argument 0"}
!25 = distinct !{!25, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse216__mm_storel_epi64"}
!26 = distinct !{!26, !25, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse216__mm_storel_epi64: argument 0"}
!27 = !{!22}
!28 = !{!24}
!29 = !{!26}
!30 = distinct !{!30, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256"}
!31 = distinct !{!31, !30, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256: argument 0"}
!32 = distinct !{!32, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m256i15write_unalignedCsgkxsgNF9KUO_6base64"}
!33 = distinct !{!33, !32, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m256i15write_unalignedCsgkxsgNF9KUO_6base64: argument 0"}
!34 = !{!31}
!35 = !{!33}
!36 = distinct !{!36, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256"}
!37 = distinct !{!37, !36, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x863avx18__mm256_loadu_si256: argument 0"}
!38 = distinct !{!38, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m256i15write_unalignedCsgkxsgNF9KUO_6base64"}
!39 = distinct !{!39, !38, !"_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrONtNtNtB6_9core_arch3x867___m256i15write_unalignedCsgkxsgNF9KUO_6base64: argument 0"}
!40 = !{!37}
!41 = !{!39}
!42 = distinct !{!42, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgkxsgNF9KUO_6base64"}
!43 = distinct !{!43, !42, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCsgkxsgNF9KUO_6base64: argument 0"}
!44 = !{!43}
!45 = !{i64 0, i64 -9223372036854775807}
!46 = distinct !{!46, !"_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose12decode_table"}
!47 = distinct !{!47, !46, !"_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose12decode_table: argument 0"}
!48 = distinct !{!48, !46, !"_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose12decode_table: argument 1"}
!49 = !{!47}
!50 = !{!48}
!51 = !{!"branch_weights", i32 1, i32 127}
!52 = !{!"branch_weights", i32 127, i32 255873}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.peeled.count", i32 1}
!55 = distinct !{!55, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsgkxsgNF9KUO_6base64"}
!56 = distinct !{!56, !55, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsgkxsgNF9KUO_6base64: argument 0"}
!57 = distinct !{!57, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64"}
!58 = distinct !{!58, !57, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64: argument 0"}
!59 = distinct !{!59, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64"}
!60 = distinct !{!60, !59, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64: argument 0"}
!61 = !{!56}
!62 = !{!58}
!63 = !{!60, !58}
!64 = distinct !{!64, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsgkxsgNF9KUO_6base64"}
!65 = distinct !{!65, !64, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsgkxsgNF9KUO_6base64: argument 0"}
!66 = !{!65}
!67 = distinct !{!67, !"_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsgkxsgNF9KUO_6base64"}
!68 = distinct !{!68, !67, !"_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsgkxsgNF9KUO_6base64: argument 0"}
!69 = distinct !{!69, !67, !"_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionhENtNtB7_3fmt5Debug3fmtCsgkxsgNF9KUO_6base64: argument 1"}
!70 = !{!68}
!71 = !{!69}
!72 = !{!68, !69}
!73 = distinct !{!73, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt"}
!74 = distinct !{!74, !73, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt: argument 1"}
!75 = distinct !{!75, !73, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt: argument 0"}
!76 = !{!74}
!77 = !{!75}
!78 = distinct !{!78, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64"}
!79 = distinct !{!79, !78, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsgkxsgNF9KUO_6base64: argument 0"}
!80 = distinct !{!80, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64"}
!81 = distinct !{!81, !80, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsgkxsgNF9KUO_6base64: argument 0"}
!82 = !{!79}
!83 = !{!81, !79}
!84 = distinct !{!84, !"_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_"}
!85 = distinct !{!85, !84, !"_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_: argument 0"}
!86 = distinct !{!86, !84, !"_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_: argument 1"}
!87 = distinct !{!87, !84, !"_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_: argument 2"}
!88 = distinct !{!88, !84, !"_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs_B4_NtB4_14GeneralPurposeNtB6_6Engine15internal_decode0EB8_: argument 3"}
!89 = distinct !{!89, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len"}
!90 = distinct !{!90, !89, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len: argument 1"}
!91 = distinct !{!91, !89, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len: argument 2"}
!92 = distinct !{!92, !89, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len: argument 0"}
!93 = distinct !{!93, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads"}
!94 = distinct !{!94, !93, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads: argument 1"}
!95 = distinct !{!95, !93, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads: argument 2"}
!96 = distinct !{!96, !93, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads: argument 3"}
!97 = distinct !{!97, !93, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads: argument 0"}
!98 = distinct !{!98, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4"}
!99 = distinct !{!99, !98, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4: argument 1"}
!100 = distinct !{!100, !98, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4: argument 2"}
!101 = distinct !{!101, !98, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4: argument 3"}
!102 = distinct !{!102, !98, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4: argument 0"}
!103 = distinct !{!103, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64"}
!104 = distinct !{!104, !103, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 1"}
!105 = distinct !{!105, !103, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 0"}
!106 = distinct !{!106, !103, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 2"}
!107 = distinct !{!107, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8"}
!108 = distinct !{!108, !107, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!109 = distinct !{!109, !107, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!110 = distinct !{!110, !107, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 3"}
!111 = distinct !{!111, !107, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 0"}
!112 = distinct !{!112, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64"}
!113 = distinct !{!113, !112, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 1"}
!114 = distinct !{!114, !112, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 0"}
!115 = distinct !{!115, !112, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 2"}
!116 = distinct !{!116, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8"}
!117 = distinct !{!117, !116, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!118 = distinct !{!118, !116, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!119 = distinct !{!119, !116, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 3"}
!120 = distinct !{!120, !116, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 0"}
!121 = distinct !{!121, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64"}
!122 = distinct !{!122, !121, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 1"}
!123 = distinct !{!123, !121, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 0"}
!124 = distinct !{!124, !121, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 2"}
!125 = distinct !{!125, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8"}
!126 = distinct !{!126, !125, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!127 = distinct !{!127, !125, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!128 = distinct !{!128, !125, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 3"}
!129 = distinct !{!129, !125, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 0"}
!130 = distinct !{!130, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64"}
!131 = distinct !{!131, !130, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 1"}
!132 = distinct !{!132, !130, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 0"}
!133 = distinct !{!133, !130, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 2"}
!134 = distinct !{!134, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8"}
!135 = distinct !{!135, !134, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!136 = distinct !{!136, !134, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!137 = distinct !{!137, !134, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 3"}
!138 = distinct !{!138, !134, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 0"}
!139 = distinct !{!139, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64"}
!140 = distinct !{!140, !139, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 1"}
!141 = distinct !{!141, !139, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 0"}
!142 = distinct !{!142, !139, !"_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64: argument 2"}
!143 = !{i8 0, i8 3}
!144 = !{!85}
!145 = !{!86}
!146 = !{!87}
!147 = !{!88}
!148 = !{!90}
!149 = !{!91}
!150 = !{!90, !86}
!151 = !{!92, !91, !85, !87, !88}
!152 = !{!92, !90, !91, !85, !86, !87, !88}
!153 = !{!91, !88}
!154 = !{!92, !90, !85, !86, !87}
!155 = !{!86, !87, !88}
!156 = !{!94}
!157 = !{!95}
!158 = !{!96}
!159 = !{!97, !94, !95, !96, !85, !86, !87, !88}
!160 = !{!99}
!161 = !{!100}
!162 = !{!99, !94, !86}
!163 = !{!102, !100, !101, !97, !95, !96, !85, !87, !88}
!164 = !{!100, !95, !88}
!165 = !{!102, !99, !101, !97, !94, !96, !85, !86, !87}
!166 = !{!105, !104, !96, !87}
!167 = !{!106, !102, !99, !100, !97, !94, !95, !85, !86, !88}
!168 = !{!108}
!169 = !{!109}
!170 = !{!108, !94, !86}
!171 = !{!111, !109, !110, !97, !95, !96, !85, !87, !88}
end_hunk_1
