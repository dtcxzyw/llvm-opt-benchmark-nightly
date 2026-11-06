Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/rand_chacha-7dcf4a2cce0eb843.rand_chacha.860f9dec89af09c8-cgu.1?download=true
inline.NumInlined: 279
inline.NumDeleted: 43
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [27 x i8] c"chunk size must be non-zero", align 1, !guid !4
@1 = private unnamed_addr constant [53 x i8] c"assertion failed: index < self.results.as_ref().len()", align 1, !guid !4
@2 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.6.4/src/block.rs\00", align 1, !guid !4
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"a\00\00\00\00\00\00\00\AF\00\00\00\09\00\00\00" }>, align 8, !guid !4
@_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE = external global [3 x { { { { i64 } } } }]
@4 = private unnamed_addr constant [14 x i8] c"ChaChaXCore {}", align 1, !guid !4
@5 = private unnamed_addr constant [8 x i8] zeroinitializer, align 1, !guid !4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core3ptr15write_unalignedNtNtNtB4_9core_arch3x867___m128iECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 !guid !6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx217__mm256_slli_epi32Kl7_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #1 !guid !7 {
bb.a:
  %i.a = load <8 x i32>, ptr %1, align 32
  %i.b = shl <8 x i32> %i.a, splat (i32 7)
  store <8 x i32> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx217__mm256_slli_epi32Klc_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #1 !guid !8 {
bb.a:
  %i.a = load <8 x i32>, ptr %1, align 32
  %i.b = shl <8 x i32> %i.a, splat (i32 12)
  store <8 x i32> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx217__mm256_srli_epi32Kl14_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #1 !guid !9 {
bb.a:
  %i.a = load <8 x i32>, ptr %1, align 32
  %i.b = lshr <8 x i32> %i.a, splat (i32 20)
  store <8 x i32> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx217__mm256_srli_epi32Kl19_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #1 !guid !10 {
bb.a:
  %i.a = load <8 x i32>, ptr %1, align 32
  %i.b = lshr <8 x i32> %i.a, splat (i32 25)
  store <8 x i32> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl39_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #1 !guid !11 {
bb.a:
  %i.a = load <8 x i32>, ptr %1, align 32
  %i.b = shufflevector <8 x i32> %i.a, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  store <8 x i32> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl4e_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #1 !guid !12 {
bb.a:
  %2 = load <8 x i32>, ptr %1, align 32
  %3 = shufflevector <8 x i32> %2, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  store <8 x i32> %3, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx220__mm256_shuffle_epi32Kl93_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([32 x i8]) align 32 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #1 !guid !13 {
bb.a:
  %i.a = load <8 x i32>, ptr %1, align 32
  %i.b = shufflevector <8 x i32> %i.a, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  store <8 x i32> %i.b, ptr %0, align 32
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx224__mm256_extracti128_si256Kl0_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #1 !guid !14 {
bb.a:
  %i.a = load <4 x i64>, ptr %1, align 32
  %i.b = shufflevector <4 x i64> %i.a, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864avx224__mm256_extracti128_si256Kl1_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 32 captures(none) %1) unnamed_addr #1 !guid !15 {
bb.a:
  %i.a = load <4 x i64>, ptr %1, align 32
  %i.b = shufflevector <4 x i64> %i.a, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_slli_epi32Kl7_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !16 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = shl <4 x i32> %i.a, splat (i32 7)
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_slli_epi32Kl8_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !17 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = shl <4 x i32> %i.a, splat (i32 8)
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_slli_epi32Klc_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !18 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = shl <4 x i32> %i.a, splat (i32 12)
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_slli_si128Kl4_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !19 {
bb.a:
  %i.a = load <16 x i8>, ptr %1, align 16
  %i.b = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.a, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  store <16 x i8> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_slli_si128Kl8_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !20 {
bb.a:
  %i.a = load <16 x i8>, ptr %1, align 16
  %i.b = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.a, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x i8> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_srli_epi32Kl14_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !21 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = lshr <4 x i32> %i.a, splat (i32 20)
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_srli_epi32Kl18_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !22 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = lshr <4 x i32> %i.a, splat (i32 24)
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse214__mm_srli_epi32Kl19_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !23 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = lshr <4 x i32> %i.a, splat (i32 25)
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Kl39_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !24 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Kl4e_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !25 {
bb.a:
  %2 = load <4 x i32>, ptr %1, align 16
  %3 = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %3, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Kl78_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !26 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Kl93_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !27 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Klb4_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !28 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Klc9_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !29 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Kle1_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !30 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse217__mm_shuffle_epi32Klee_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !31 {
bb.a:
  %2 = load <4 x i32>, ptr %1, align 16
  %3 = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  store <4 x i32> %3, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse219__mm_shufflehi_epi16Klb1_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !32 {
bb.a:
  %i.a = load <8 x i16>, ptr %1, align 16
  %i.b = shufflevector <8 x i16> %i.a, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5, i32 4, i32 7, i32 6>
  store <8 x i16> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse219__mm_shufflelo_epi16Klb1_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1) unnamed_addr #2 !guid !33 {
bb.a:
  %i.a = load <8 x i16>, ptr %1, align 16
  %i.b = shufflevector <8 x i16> %i.a, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 4, i32 5, i32 6, i32 7>
  store <8 x i16> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x865sse4116__mm_insert_epi32Kl0_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, i32 %2) unnamed_addr #3 !guid !34 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = insertelement <4 x i32> %i.a, i32 %2, i64 0
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x865sse4116__mm_insert_epi32Kl1_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, i32 %2) unnamed_addr #3 !guid !35 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = insertelement <4 x i32> %i.a, i32 %2, i64 1
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x865sse4116__mm_insert_epi32Kl2_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, i32 %2) unnamed_addr #3 !guid !36 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = insertelement <4 x i32> %i.a, i32 %2, i64 2
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x865sse4116__mm_insert_epi32Kl3_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, i32 %2) unnamed_addr #3 !guid !37 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 16
  %i.b = insertelement <4 x i32> %i.a, i32 %2, i64 3
  store <4 x i32> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch6x86_645sse4116__mm_insert_epi64Kl1_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 16 captures(none) %1, i64 %2) unnamed_addr #3 !guid !38 {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 16
  %i.b = insertelement <2 x i64> %i.a, i64 %2, i64 1
  store <2 x i64> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RINvNtNtNtCs4NRVxsYgnAr_4core9core_arch6x86_645sse4117__mm_extract_epi64Kl1_ECsbvBq90rv2US_11rand_chacha(ptr nofree readonly align 16 captures(none) %0) unnamed_addr #4 !guid !39 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterINtNtNtCs2Xjzeg6558L_10ppv_lite866x86_644sse210u32x4_sse2NtBO_4NoS3NtBO_4NoS4NtBO_4NoNIEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRABJ_j4_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr %1, ptr %2, ptr align 16 %3) unnamed_addr #5 personality ptr @rust_eh_personality !guid !40 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  %i.f = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCs9ROpsoYYFOX_9rand_core(i64 %i.e, i64 4)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.f, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterINtNtNtCs2Xjzeg6558L_10ppv_lite866x86_644sse210u32x4_sse2NtBO_5YesS3NtBO_4NoS4NtBO_4NoNIEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRABJ_j4_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr %1, ptr %2, ptr align 16 %3) unnamed_addr #5 personality ptr @rust_eh_personality !guid !41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  %i.f = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCs9ROpsoYYFOX_9rand_core(i64 %i.e, i64 4)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.f, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterINtNtNtCs2Xjzeg6558L_10ppv_lite866x86_644sse210u32x4_sse2NtBO_5YesS3NtBO_5YesS4NtBO_4NoNIEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRABJ_j4_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 48)) %0, ptr %1, ptr %2, ptr align 16 %3) unnamed_addr #5 personality ptr @rust_eh_personality !guid !42 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  %i.f = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCs9ROpsoYYFOX_9rand_core(i64 %i.e, i64 4)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.f, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipIB4_IB4_INtNtNtBc_5slice4iter4IterINtNtNtCs2Xjzeg6558L_10ppv_lite866x86_644sse210u32x4_sse2NtB1u_4NoS3NtB1u_4NoS4NtB1u_4NoNIEEBZ_EBZ_EBZ_ENtNtNtBa_6traits8iterator8Iterator3zipRAB1p_j4_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([144 x i8]) align 8 captures(none) initializes((0, 144)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 16 %2) unnamed_addr #5 personality ptr @rust_eh_personality !guid !43 {
bb.a:
  %.sroa.0 = alloca [96 x i8], align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = sub i64 %.sroa.3.0.copyload, %.sroa.2.0.copyload
  %i.c = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCs9ROpsoYYFOX_9rand_core(i64 %i.b, i64 4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0, i64 96, i1 false)
  %.sroa.2.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx2, align 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.c, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3ZipIB4_IB4_INtNtNtBc_5slice4iter4IterINtNtNtCs2Xjzeg6558L_10ppv_lite866x86_644sse210u32x4_sse2NtB1u_5YesS3NtB1u_4NoS4NtB1u_4NoNIEEBZ_EBZ_EBZ_ENtNtNtBa_6traits8iterator8Iterator3zipRAB1p_j4_ECsbvBq90rv2US_11rand_chacha(ptr nofree writeonly sret([144 x i8]) align 8 captures(none) initializes((0, 144)) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 16 %2) unnamed_addr #5 personality ptr @rust_eh_personality !guid !44 {
bb.a:
  %.sroa.0 = alloca [96 x i8], align 8            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = sub i64 %.sroa.3.0.copyload, %.sroa.2.0.copyload
  %i.c = tail call i64 @_RNvYjNtNtCs4NRVxsYgnAr_4core3cmp3Ord3minCs9ROpsoYYFOX_9rand_core(i64 %i.b, i64 4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0, i64 96, i1 false)
  %.sroa.2.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx2, align 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.3.0.copyload, ptr %.sroa.3.0..sroa_idx4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.c, ptr %i.g, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
