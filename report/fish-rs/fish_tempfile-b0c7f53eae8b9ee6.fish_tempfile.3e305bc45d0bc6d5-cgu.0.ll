Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_tempfile-b0c7f53eae8b9ee6.fish_tempfile.3e305bc45d0bc6d5-cgu.0?download=true
inline.NumInlined: 319
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [62 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", align 1
@1 = private unnamed_addr constant [9 x i8] c"fish_tmp_", align 1
@2 = private unnamed_addr constant [27 x i8] c"crates/tempfile/src/lib.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"\1A\00\00\00\00\00\00\00?\00\00\00\05\00\00\00" }>, align 8
@4 = private unnamed_addr constant [15 x i8] c"fish_tmp_XXXXXX", align 1
@_RNvNtCs7XDubkZdKLQ_8chacha2010avx2_cpuid7STORAGE = external local_unnamed_addr global { { { i8 } } }

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvCse7JGOylGlDZ_3nix24with_nix_path_allocatingINtNtCs1xwejQucwHj_5alloc3vec3VechENCINvNtB2_6unistd7mkdtempNtNtCsaL1QbXo9JQH_3std4path7PathBufE0ECs5l1RxndaFs7_13fish_tempfile(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NvMs_NtNtCs1xwejQucwHj_5alloc3ffi5c_strNtB9_7CString3newRShNtB4_11SpecNewImpl13spec_new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !16, !noundef !4 ; 3 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 9 uses
  %i.g = icmp ne i64 %i.f, 0
  call void @llvm.assume(i1 %i.g)
  %i.h = icmp sgt i64 %i.f, -1
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, label %bb.c

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !17
  %i.i = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef 1) #18, !noalias !17 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, %bb.b
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.b ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.f) #19
          to label %.noexc unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs5l1RxndaFs7_13fish_tempfile.exit

.noexc:                                           ; preds = %bb.c
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs5l1RxndaFs7_13fish_tempfile.exit: ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.d, align 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1) #18
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %i.d, i64 %i.f, i1 false), !noalias !18
  store i64 %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.520.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1) #18
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringNtBZ_8NulErrorEECs5l1RxndaFs7_13fish_tempfile.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringNtBZ_8NulErrorEECs5l1RxndaFs7_13fish_tempfile.exit17: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i15, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 22, ptr %i.l, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %cond = icmp eq i64 %i.b, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringNtBZ_8NulErrorEECs5l1RxndaFs7_13fish_tempfile.exit17, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i15

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i15: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i16 = load ptr, ptr %i.m, align 8, !alias.scope !19, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i16, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringNtBZ_8NulErrorEECs5l1RxndaFs7_13fish_tempfile.exit17
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5l1RxndaFs7_13fish_tempfile(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5l1RxndaFs7_13fish_tempfile.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5l1RxndaFs7_13fish_tempfile.exit
    i64 1, label %bb.c
  ], !prof !5

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5l1RxndaFs7_13fish_tempfile.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !22
  store i8 3, ptr %i.a, align 8, !alias.scope !22
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5l1RxndaFs7_13fish_tempfile.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs5l1RxndaFs7_13fish_tempfile.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RINvNtNtCs7XDubkZdKLQ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs5l1RxndaFs7_13fish_tempfile(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(256) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.preheader.preheader:
  %.sroa.0.0.copyload.i121 = load <4 x i32>, ptr %0, align 4, !noalias !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i18122 = load <4 x i32>, ptr %i.a, align 4, !noalias !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i19123 = load <4 x i32>, ptr %i.b, align 4, !noalias !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i20 = load <2 x i64>, ptr %i.c, align 4, !noalias !38
  %i.d = shufflevector <2 x i64> %.sroa.0.0.copyload.i20, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.e = add <4 x i64> %i.d, <i64 0, i64 0, i64 1, i64 0> ; 2 uses
  %i.f = add <4 x i64> %i.d, <i64 2, i64 0, i64 3, i64 0> ; 2 uses
  %.cast = shufflevector <4 x i32> %.sroa.0.0.copyload.i19123, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %2 = shufflevector <4 x i32> %.sroa.0.0.copyload.i18122, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %3 = shufflevector <4 x i32> %.sroa.0.0.copyload.i121, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.46.0.i = phi <4 x i64> [ %i.f, %.preheader.preheader ], [ %11, %bb.a ]
  %.sroa.19.0.i = phi <4 x i64> [ %i.e, %.preheader.preheader ], [ %9, %bb.a ]
  %.sroa.023.062.i = phi i64 [ 0, %.preheader.preheader ], [ %i.m, %bb.a ]
  %i.g = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.ce, %bb.a ]
  %i.h = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.by, %bb.a ] ; 2 uses
  %i.i = phi <8 x i32> [ %3, %.preheader.preheader ], [ %i.cg, %bb.a ]
  %i.j = phi <8 x i32> [ %2, %.preheader.preheader ], [ %i.cc, %bb.a ] ; 2 uses
  %i.k = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cd, %bb.a ]
  %i.l = phi <8 x i32> [ %.cast, %.preheader.preheader ], [ %i.cf, %bb.a ]
  %i.m = add nuw nsw i64 %.sroa.023.062.i, 1      ; 2 uses
  %i.n = add <8 x i32> %i.h, %i.g                 ; 2 uses
  %i.o = bitcast <8 x i32> %i.n to <4 x i64>
  %i.p = xor <4 x i64> %.sroa.19.0.i, %i.o
  %i.q = bitcast <4 x i64> %i.p to <32 x i8>
  %i.r = shufflevector <32 x i8> %i.q, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.s = add <8 x i32> %i.j, %i.i                 ; 2 uses
  %i.t = bitcast <8 x i32> %i.s to <4 x i64>
  %i.u = xor <4 x i64> %.sroa.46.0.i, %i.t
  %i.v = bitcast <4 x i64> %i.u to <32 x i8>
  %i.w = shufflevector <32 x i8> %i.v, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.x = bitcast <32 x i8> %i.r to <8 x i32>
  %i.y = add <8 x i32> %i.k, %i.x                 ; 2 uses
  %i.z = xor <8 x i32> %i.y, %i.h                 ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.z, <8 x i32> %i.z, <8 x i32> splat (i32 12)) ; 2 uses
  %i.ab = bitcast <32 x i8> %i.w to <8 x i32>
  %i.ac = add <8 x i32> %i.l, %i.ab               ; 2 uses
  %i.ad = xor <8 x i32> %i.ac, %i.j               ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ad, <8 x i32> splat (i32 12)) ; 2 uses
  %i.af = add <8 x i32> %i.aa, %i.n               ; 2 uses
  %i.ag = bitcast <8 x i32> %i.af to <32 x i8>
  %i.ah = xor <32 x i8> %i.r, %i.ag
  %i.ai = shufflevector <32 x i8> %i.ah, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.aj = add <8 x i32> %i.ae, %i.s               ; 2 uses
  %i.ak = bitcast <8 x i32> %i.aj to <32 x i8>
  %i.al = xor <32 x i8> %i.w, %i.ak
  %i.am = shufflevector <32 x i8> %i.al, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.an = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.ao = add <8 x i32> %i.y, %i.an               ; 2 uses
  %i.ap = xor <8 x i32> %i.ao, %i.aa              ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.ap, <8 x i32> %i.ap, <8 x i32> splat (i32 7)) ; 2 uses
  %i.ar = bitcast <32 x i8> %i.am to <8 x i32>    ; 2 uses
  %i.as = add <8 x i32> %i.ac, %i.ar              ; 2 uses
  %i.at = xor <8 x i32> %i.as, %i.ae              ; 2 uses
  %i.au = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.at, <8 x i32> %i.at, <8 x i32> splat (i32 7)) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %4 = shufflevector <8 x i32> %i.an, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.aw = shufflevector <8 x i32> %i.af, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.ax = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %5 = shufflevector <8 x i32> %i.ar, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.ay = shufflevector <8 x i32> %i.aj, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6>
  %i.az = add <8 x i32> %i.aq, %i.aw              ; 2 uses
  %6 = xor <8 x i32> %i.az, %4
  %i.ba = bitcast <8 x i32> %6 to <32 x i8>
  %i.bb = shufflevector <32 x i8> %i.ba, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bc = add <8 x i32> %i.au, %i.ay              ; 2 uses
  %7 = xor <8 x i32> %i.bc, %5
  %i.bd = bitcast <8 x i32> %7 to <32 x i8>
  %i.be = shufflevector <32 x i8> %i.bd, <32 x i8> poison, <32 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13, i32 18, i32 19, i32 16, i32 17, i32 22, i32 23, i32 20, i32 21, i32 26, i32 27, i32 24, i32 25, i32 30, i32 31, i32 28, i32 29> ; 2 uses
  %i.bf = bitcast <32 x i8> %i.bb to <8 x i32>
  %i.bg = add <8 x i32> %i.av, %i.bf              ; 2 uses
  %i.bh = xor <8 x i32> %i.bg, %i.aq              ; 2 uses
  %i.bi = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bh, <8 x i32> %i.bh, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bj = bitcast <32 x i8> %i.be to <8 x i32>
  %i.bk = add <8 x i32> %i.ax, %i.bj              ; 2 uses
  %i.bl = xor <8 x i32> %i.bk, %i.au              ; 2 uses
  %i.bm = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bl, <8 x i32> %i.bl, <8 x i32> splat (i32 12)) ; 2 uses
  %i.bn = add <8 x i32> %i.bi, %i.az              ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bn to <32 x i8>
  %i.bp = xor <32 x i8> %i.bb, %i.bo
  %i.bq = shufflevector <32 x i8> %i.bp, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.br = add <8 x i32> %i.bm, %i.bc              ; 2 uses
  %i.bs = bitcast <8 x i32> %i.br to <32 x i8>
  %i.bt = xor <32 x i8> %i.be, %i.bs
  %i.bu = shufflevector <32 x i8> %i.bt, <32 x i8> poison, <32 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14, i32 19, i32 16, i32 17, i32 18, i32 23, i32 20, i32 21, i32 22, i32 27, i32 24, i32 25, i32 26, i32 31, i32 28, i32 29, i32 30>
  %i.bv = bitcast <32 x i8> %i.bq to <8 x i32>    ; 2 uses
  %i.bw = add <8 x i32> %i.bg, %i.bv              ; 2 uses
  %i.bx = xor <8 x i32> %i.bw, %i.bi              ; 2 uses
  %i.by = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.bx, <8 x i32> %i.bx, <8 x i32> splat (i32 7)) ; 2 uses
  %i.bz = bitcast <32 x i8> %i.bu to <8 x i32>    ; 2 uses
  %i.ca = add <8 x i32> %i.bk, %i.bz              ; 2 uses
  %i.cb = xor <8 x i32> %i.ca, %i.bm              ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %i.cb, <8 x i32> %i.cb, <8 x i32> splat (i32 7)) ; 2 uses
  %i.cd = shufflevector <8 x i32> %i.bw, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %8 = shufflevector <8 x i32> %i.bv, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %9 = bitcast <8 x i32> %8 to <4 x i64>
  %i.ce = shufflevector <8 x i32> %i.bn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.cf = shufflevector <8 x i32> %i.ca, <8 x i32> poison, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6> ; 2 uses
  %10 = shufflevector <8 x i32> %i.bz, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %11 = bitcast <8 x i32> %10 to <4 x i64>
  %i.cg = shufflevector <8 x i32> %i.br, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, 6
  br i1 %exitcond.not.i, label %_RNvMNtNtCs7XDubkZdKLQ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs5l1RxndaFs7_13fish_tempfile.exit, label %bb.a

_RNvMNtNtCs7XDubkZdKLQ_8chacha208backends4avx2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE21rng_gen_par_ks_blocksCs5l1RxndaFs7_13fish_tempfile.exit: ; preds = %bb.a
  %i.ch = bitcast <4 x i64> %i.f to <8 x i32>
  %i.ci = add <8 x i32> %10, %i.ch                ; 2 uses
  %i.cj = add <8 x i32> %i.cf, %.cast             ; 2 uses
  %i.ck = add <8 x i32> %i.cc, %2                 ; 2 uses
  %i.cl = add <8 x i32> %i.cg, %3                 ; 2 uses
  %i.cm = bitcast <4 x i64> %i.e to <8 x i32>
  %i.cn = add <8 x i32> %8, %i.cm                 ; 2 uses
  %i.co = add <8 x i32> %i.cd, %.cast             ; 2 uses
  %i.cp = add <8 x i32> %i.by, %2                 ; 2 uses
  %i.cq = add <8 x i32> %i.ce, %3                 ; 2 uses
  %.sroa.2.32.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.2.48.vec.extract = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.5.64.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.5.80.vec.extract = shufflevector <8 x i32> %i.cp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.8.96.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.8.112.vec.extract = shufflevector <8 x i32> %i.co, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.11.128.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.11.144.vec.extract = shufflevector <8 x i32> %i.cn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.2.32.vec.extract, ptr %1, align 4, !noalias !39
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  store <4 x i32> %.sroa.2.48.vec.extract, ptr %i.cr, align 4, !noalias !40
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %.sroa.5.64.vec.extract, ptr %i.cs, align 4, !noalias !39
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x i32> %.sroa.5.80.vec.extract, ptr %i.ct, align 4, !noalias !40
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <4 x i32> %.sroa.8.96.vec.extract, ptr %i.cu, align 4, !noalias !39
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <4 x i32> %.sroa.8.112.vec.extract, ptr %i.cv, align 4, !noalias !40
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x i32> %.sroa.11.128.vec.extract, ptr %i.cw, align 4, !noalias !39
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <4 x i32> %.sroa.11.144.vec.extract, ptr %i.cx, align 4, !noalias !40
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.14.160.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.14.176.vec.extract = shufflevector <8 x i32> %i.cl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.17.192.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.17.208.vec.extract = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.20.224.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.20.240.vec.extract = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.sroa.23.256.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.sroa.23.272.vec.extract = shufflevector <8 x i32> %i.ci, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %.sroa.14.160.vec.extract, ptr %i.cy, align 4, !noalias !39
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 192
  store <4 x i32> %.sroa.14.176.vec.extract, ptr %i.cz, align 4, !noalias !40
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 144
  store <4 x i32> %.sroa.17.192.vec.extract, ptr %i.da, align 4, !noalias !39
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <4 x i32> %.sroa.17.208.vec.extract, ptr %i.db, align 4, !noalias !40
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <4 x i32> %.sroa.20.224.vec.extract, ptr %i.dc, align 4, !noalias !39
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 224
  store <4 x i32> %.sroa.20.240.vec.extract, ptr %i.dd, align 4, !noalias !40
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  store <4 x i32> %.sroa.23.256.vec.extract, ptr %i.de, align 4, !noalias !39
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 240
  store <4 x i32> %.sroa.23.272.vec.extract, ptr %i.df, align 4, !noalias !40
  %i.dg = add <4 x i64> %i.d, <i64 4, i64 poison, i64 poison, i64 poison>
  %12 = bitcast <4 x i64> %i.dg to <8 x i32>
  %13 = shufflevector <8 x i32> %12, <8 x i32> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i32> %13, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs5l1RxndaFs7_13fish_tempfile(<2 x i64> %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = bitcast <2 x i64> %.0.val to <4 x i32>
  %i.b = extractelement <4 x i32> %i.a, i64 1
  ret i32 %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5l1RxndaFs7_13fish_tempfile(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !43, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 8) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !43
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5l1RxndaFs7_13fish_tempfile(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i)
  %i.g = load i64, ptr %i.a, align 8, !range !7, !noalias !43, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !44, !noalias !43, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !43, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !43
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !43
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvXs5_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtB22_4take4TakeINtNtNtCsfFbyYyxlmiH_4rand5distr12distribution4IterNtNtB2M_5other12AlphanumericQNtNtNtB2O_4rngs6thread9ThreadRnghEENvYcINtNtBU_7convert4FromhE4fromEECs5l1RxndaFs7_13fish_tempfile(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5l1RxndaFs7_13fish_tempfile(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 10)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 272 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 320 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 324
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 288
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 304
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 112
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 128
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 144
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 160
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 176
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 192
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 208
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 224
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 240
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i
  %i.h = phi i64 [ %i.fn, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 10, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i ]
  %.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 4, !alias.scope !86, !noalias !87
  br label %bb.c

bb.c:                                             ; preds = %_RNvXCskiWbj8QrlSm_9rand_coreQNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXCskiWbj8QrlSm_9rand_coreQNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.j = icmp ugt i32 %i.i, 63
  br i1 %i.j, label %bb.d, label %_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.d, align 4, !alias.scope !88, !noalias !87
  %i.l = icmp ugt i64 %i.k, 1023
  br i1 %i.l, label %bb.e, label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !8

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs_NtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.c) #20
          to label %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89), !noalias !90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91), !noalias !90
  %i.m = load atomic i8, ptr @_RNvNtCs7XDubkZdKLQ_8chacha2010avx2_cpuid7STORAGE monotonic, align 1, !noalias !92
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93), !noalias !90
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94), !noalias !90
  %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i.i.i.i = load <4 x i32>, ptr %i.c, align 4, !alias.scope !95, !noalias !87 ; 8 uses
  %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i.i.i.i = load <4 x i32>, ptr %i.f, align 4, !alias.scope !95, !noalias !87 ; 8 uses
  %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i.i.i.i = load <4 x i32>, ptr %i.g, align 4, !alias.scope !95, !noalias !87 ; 8 uses
  %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load <2 x i64>, ptr %i.d, align 4, !alias.scope !95, !noalias !87 ; 5 uses
  %1 = bitcast <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.o = add <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, <i64 1, i64 0>
  %i.p = add <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, <i64 2, i64 0>
  %i.q = add <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, <i64 3, i64 0>
  %2 = bitcast <2 x i64> %i.o to <4 x i32>        ; 2 uses
  %3 = bitcast <2 x i64> %i.p to <4 x i32>        ; 2 uses
  %4 = bitcast <2 x i64> %i.q to <4 x i32>        ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.042.0110.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.ad, %bb.g ]
  %5 = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.ed, %bb.g ]
  %6 = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.cr, %bb.g ] ; 2 uses
  %7 = phi <4 x i32> [ %1, %bb.f ], [ %15, %bb.g ]
  %8 = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.ec, %bb.g ]
  %i.r = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.ef, %bb.g ]
  %i.s = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.dd, %bb.g ] ; 2 uses
  %i.t = phi <4 x i32> [ %2, %bb.f ], [ %16, %bb.g ]
  %i.u = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.ee, %bb.g ]
  %i.v = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.eh, %bb.g ]
  %i.w = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.dp, %bb.g ] ; 2 uses
  %i.x = phi <4 x i32> [ %3, %bb.f ], [ %17, %bb.g ]
  %i.y = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.eg, %bb.g ]
  %i.z = phi <4 x i32> [ %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.ej, %bb.g ]
  %i.aa = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.eb, %bb.g ] ; 2 uses
  %i.ab = phi <4 x i32> [ %4, %bb.f ], [ %18, %bb.g ]
  %i.ac = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.ei, %bb.g ]
  %i.ad = add nuw nsw i64 %.sroa.042.0110.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ae = add <4 x i32> %6, %5                    ; 2 uses
  %i.af = xor <4 x i32> %7, %i.ae                 ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.af, <4 x i32> %i.af, <4 x i32> splat (i32 16)) ; 2 uses
  %i.ah = add <4 x i32> %i.ag, %8                 ; 2 uses
  %i.ai = xor <4 x i32> %i.ah, %6                 ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ai, <4 x i32> %i.ai, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ak = add <4 x i32> %i.aj, %i.ae              ; 2 uses
  %i.al = xor <4 x i32> %i.ak, %i.ag              ; 2 uses
  %i.am = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.al, <4 x i32> %i.al, <4 x i32> splat (i32 8)) ; 2 uses
  %i.an = add <4 x i32> %i.am, %i.ah              ; 2 uses
  %i.ao = xor <4 x i32> %i.an, %i.aj              ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ao, <4 x i32> %i.ao, <4 x i32> splat (i32 7)) ; 2 uses
  %i.aq = add <4 x i32> %i.s, %i.r                ; 2 uses
  %i.ar = xor <4 x i32> %i.t, %i.aq               ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> splat (i32 16)) ; 2 uses
  %i.at = add <4 x i32> %i.as, %i.u               ; 2 uses
  %i.au = xor <4 x i32> %i.at, %i.s               ; 2 uses
  %i.av = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.au, <4 x i32> %i.au, <4 x i32> splat (i32 12)) ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.aq              ; 2 uses
  %i.ax = xor <4 x i32> %i.aw, %i.as              ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ax, <4 x i32> splat (i32 8)) ; 2 uses
  %i.az = add <4 x i32> %i.ay, %i.at              ; 2 uses
  %i.ba = xor <4 x i32> %i.az, %i.av              ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bc = add <4 x i32> %i.w, %i.v                ; 2 uses
  %i.bd = xor <4 x i32> %i.x, %i.bc               ; 2 uses
  %i.be = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bd, <4 x i32> %i.bd, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bf = add <4 x i32> %i.be, %i.y               ; 2 uses
  %i.bg = xor <4 x i32> %i.bf, %i.w               ; 2 uses
  %i.bh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bg, <4 x i32> %i.bg, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bi = add <4 x i32> %i.bh, %i.bc              ; 2 uses
  %i.bj = xor <4 x i32> %i.bi, %i.be              ; 2 uses
  %i.bk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bj, <4 x i32> %i.bj, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bl = add <4 x i32> %i.bk, %i.bf              ; 2 uses
  %i.bm = xor <4 x i32> %i.bl, %i.bh              ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bm, <4 x i32> splat (i32 7)) ; 2 uses
  %i.bo = add <4 x i32> %i.aa, %i.z               ; 2 uses
  %i.bp = xor <4 x i32> %i.ab, %i.bo              ; 2 uses
  %i.bq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bp, <4 x i32> %i.bp, <4 x i32> splat (i32 16)) ; 2 uses
  %i.br = add <4 x i32> %i.bq, %i.ac              ; 2 uses
  %i.bs = xor <4 x i32> %i.br, %i.aa              ; 2 uses
  %i.bt = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bs, <4 x i32> %i.bs, <4 x i32> splat (i32 12)) ; 2 uses
  %i.bu = add <4 x i32> %i.bt, %i.bo              ; 2 uses
  %i.bv = xor <4 x i32> %i.bu, %i.bq              ; 2 uses
  %i.bw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bv, <4 x i32> %i.bv, <4 x i32> splat (i32 8)) ; 2 uses
  %i.bx = add <4 x i32> %i.bw, %i.br              ; 2 uses
  %i.by = xor <4 x i32> %i.bx, %i.bt              ; 2 uses
  %i.bz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.by, <4 x i32> %i.by, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ca = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %9 = shufflevector <4 x i32> %i.am, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cb = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cc = shufflevector <4 x i32> %i.az, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %10 = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cd = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.ce = shufflevector <4 x i32> %i.bl, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %11 = shufflevector <4 x i32> %i.bk, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cf = shufflevector <4 x i32> %i.bi, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.cg = shufflevector <4 x i32> %i.bx, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %12 = shufflevector <4 x i32> %i.bw, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %13 = shufflevector <4 x i32> %i.bu, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %14 = add <4 x i32> %i.ap, %i.cb                ; 2 uses
  %i.ch = xor <4 x i32> %14, %9                   ; 2 uses
  %i.ci = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ch, <4 x i32> %i.ch, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cj = add <4 x i32> %i.ci, %i.ca              ; 2 uses
  %i.ck = xor <4 x i32> %i.cj, %i.ap              ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ck, <4 x i32> %i.ck, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cm = add <4 x i32> %i.cl, %14                ; 2 uses
  %i.cn = xor <4 x i32> %i.cm, %i.ci              ; 2 uses
  %i.co = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cn, <4 x i32> %i.cn, <4 x i32> splat (i32 8)) ; 2 uses
  %i.cp = add <4 x i32> %i.co, %i.cj              ; 2 uses
  %i.cq = xor <4 x i32> %i.cp, %i.cl              ; 2 uses
  %i.cr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cq, <4 x i32> %i.cq, <4 x i32> splat (i32 7)) ; 2 uses
  %i.cs = add <4 x i32> %i.bb, %i.cd              ; 2 uses
  %i.ct = xor <4 x i32> %i.cs, %10                ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> splat (i32 16)) ; 2 uses
  %i.cv = add <4 x i32> %i.cu, %i.cc              ; 2 uses
  %i.cw = xor <4 x i32> %i.cv, %i.bb              ; 2 uses
  %i.cx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cw, <4 x i32> %i.cw, <4 x i32> splat (i32 12)) ; 2 uses
  %i.cy = add <4 x i32> %i.cx, %i.cs              ; 2 uses
  %i.cz = xor <4 x i32> %i.cy, %i.cu              ; 2 uses
  %i.da = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cz, <4 x i32> %i.cz, <4 x i32> splat (i32 8)) ; 2 uses
  %i.db = add <4 x i32> %i.da, %i.cv              ; 2 uses
  %i.dc = xor <4 x i32> %i.db, %i.cx              ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dc, <4 x i32> %i.dc, <4 x i32> splat (i32 7)) ; 2 uses
  %i.de = add <4 x i32> %i.bn, %i.cf              ; 2 uses
  %i.df = xor <4 x i32> %i.de, %11                ; 2 uses
  %i.dg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.df, <4 x i32> %i.df, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dh = add <4 x i32> %i.dg, %i.ce              ; 2 uses
  %i.di = xor <4 x i32> %i.dh, %i.bn              ; 2 uses
  %i.dj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.di, <4 x i32> %i.di, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dk = add <4 x i32> %i.dj, %i.de              ; 2 uses
  %i.dl = xor <4 x i32> %i.dk, %i.dg              ; 2 uses
  %i.dm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dn = add <4 x i32> %i.dm, %i.dh              ; 2 uses
  %i.do = xor <4 x i32> %i.dn, %i.dj              ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.do, <4 x i32> %i.do, <4 x i32> splat (i32 7)) ; 2 uses
  %i.dq = add <4 x i32> %i.bz, %13                ; 2 uses
  %i.dr = xor <4 x i32> %i.dq, %12                ; 2 uses
  %i.ds = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dr, <4 x i32> %i.dr, <4 x i32> splat (i32 16)) ; 2 uses
  %i.dt = add <4 x i32> %i.ds, %i.cg              ; 2 uses
  %i.du = xor <4 x i32> %i.dt, %i.bz              ; 2 uses
  %i.dv = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.du, <4 x i32> %i.du, <4 x i32> splat (i32 12)) ; 2 uses
  %i.dw = add <4 x i32> %i.dv, %i.dq              ; 2 uses
  %i.dx = xor <4 x i32> %i.dw, %i.ds              ; 2 uses
  %i.dy = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dx, <4 x i32> %i.dx, <4 x i32> splat (i32 8)) ; 2 uses
  %i.dz = add <4 x i32> %i.dy, %i.dt              ; 2 uses
  %i.ea = xor <4 x i32> %i.dz, %i.dv              ; 2 uses
  %i.eb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ea, <4 x i32> %i.ea, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ec = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %15 = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ed = shufflevector <4 x i32> %i.cm, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ee = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %16 = shufflevector <4 x i32> %i.da, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ef = shufflevector <4 x i32> %i.cy, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.eg = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %17 = shufflevector <4 x i32> %i.dm, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.eh = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ei = shufflevector <4 x i32> %i.dz, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %18 = shufflevector <4 x i32> %i.dy, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ej = shufflevector <4 x i32> %i.dw, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 6
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCs7XDubkZdKLQ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

_RINvNtNtCs7XDubkZdKLQ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ek = add <4 x i32> %i.ed, %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = add <4 x i32> %i.cr, %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.em = add <4 x i32> %i.ec, %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.en = add <4 x i32> %15, %1
  %i.eo = add <4 x i32> %i.ef, %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ep = add <4 x i32> %i.dd, %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = add <4 x i32> %i.ee, %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.er = add <4 x i32> %16, %2
  %i.es = add <4 x i32> %i.eh, %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.et = add <4 x i32> %i.dp, %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = add <4 x i32> %i.eg, %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ev = add <4 x i32> %17, %3
  %i.ew = add <4 x i32> %i.ej, %.sroa.012.0.copyload24.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ex = add <4 x i32> %i.eb, %.sroa.013.0.copyload25.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ey = add <4 x i32> %i.ei, %.sroa.014.0.copyload26.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = add <4 x i32> %18, %4
  store <4 x i32> %i.ek, ptr %i.b, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.el, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.em, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.en, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.eo, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.ep, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.eq, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.er, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.es, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.et, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.eu, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.ev, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.ew, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.ex, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.ey, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  store <4 x i32> %i.ez, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !96, !noalias !87
  %i.fa = add <2 x i64> %.sroa.015.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, <i64 4, i64 0> ; 2 uses
  %i.fb = bitcast <2 x i64> %i.fa to <4 x i32>
  %i.fc = extractelement <4 x i32> %i.fb, i64 0
  store i32 %i.fc, ptr %i.d, align 4, !alias.scope !95, !noalias !87
  %i.fd = tail call fastcc noundef i32 @_RINvNtNtNtCs3oUPovFnLWP_4core9core_arch3x865sse4117__mm_extract_epi32Kl1_ECs5l1RxndaFs7_13fish_tempfile(<2 x i64> %i.fa) #21
  store i32 %i.fd, ptr %i.e, align 4, !alias.scope !95, !noalias !87
  br label %_RNvXCskiWbj8QrlSm_9rand_coreQNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_RNvXNtNtCsfFbyYyxlmiH_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCskiWbj8QrlSm_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs7XDubkZdKLQ_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs5l1RxndaFs7_13fish_tempfile(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.b) #21, !alias.scope !97, !noalias !87
  br label %_RNvXCskiWbj8QrlSm_9rand_coreQNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.fe = zext nneg i32 %i.i to i64
  %i.ff = add nuw nsw i32 %i.i, 1
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fe
  br label %_RNvXCskiWbj8QrlSm_9rand_coreQNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i

_RNvXCskiWbj8QrlSm_9rand_coreQNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.h, %_RINvNtNtCs7XDubkZdKLQ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fg, %_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.b, %_RINvNtNtCs7XDubkZdKLQ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.b, %bb.h ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ff, %_RNvXs_NtCs7XDubkZdKLQ_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCskiWbj8QrlSm_9rand_core5block9Generator8generateCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %_RINvNtNtCs7XDubkZdKLQ_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.h ] ; 2 uses
  %i.fh = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !86, !noalias !87, !noundef !4 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.b, align 4, !alias.scope !86, !noalias !87
  %i.fi = icmp ult i32 %i.fh, -134217728
  br i1 %i.fi, label %_RINvXs0_NtNtCsfFbyYyxlmiH_4rand5distr5otherNtB6_12AlphanumericINtNtB8_12distribution12DistributionhE6sampleQNtNtNtBa_4rngs6thread9ThreadRngECs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i, label %bb.c

_RINvXs0_NtNtCsfFbyYyxlmiH_4rand5distr5otherNtB6_12AlphanumericINtNtB8_12distribution12DistributionhE6sampleQNtNtNtBa_4rngs6thread9ThreadRngECs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i: ; preds = %_RNvXCskiWbj8QrlSm_9rand_coreQNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u32Cs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i
  %i.fj = lshr i32 %i.fh, 26
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @0, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !98, !noundef !4
  %i.fn = add nsw i64 %i.h, -1                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.fo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !100, !noundef !4 ; 5 uses
  %i.fp = icmp sgt i64 %i.fo, -1
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = load i64, ptr %i.a, align 8, !range !6, !alias.scope !101, !noundef !4
  %i.fr = icmp eq i64 %i.fq, %i.fo
  br i1 %i.fr, label %bb.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !8

bb.i:                                             ; preds = %_RINvXs0_NtNtCsfFbyYyxlmiH_4rand5distr5otherNtB6_12AlphanumericINtNtB8_12distribution12DistributionhE6sampleQNtNtNtBa_4rngs6thread9ThreadRngECs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5l1RxndaFs7_13fish_tempfile(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.fo, i64 noundef 1)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %_RINvXs0_NtNtCsfFbyYyxlmiH_4rand5distr5otherNtB6_12AlphanumericINtNtB8_12distribution12DistributionhE6sampleQNtNtNtBa_4rngs6thread9ThreadRngECs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i
  %i.fs = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !100, !nonnull !4, !noundef !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fo
  store i8 %i.fm, ptr %i.ft, align 1, !noalias !102
  %i.fu = add nuw i64 %i.fo, 1
  store i64 %i.fu, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !100
  %i.fv = icmp eq i64 %i.fn, 0
  br i1 %i.fv, label %_RINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3map3MapINtNtB1S_4take4TakeINtNtNtCsfFbyYyxlmiH_4rand5distr12distribution4IterNtNtB2C_5other12AlphanumericQNtNtNtB2E_4rngs6thread9ThreadRnghEENvYcINtNtBU_7convert4FromhE4fromEECs5l1RxndaFs7_13fish_tempfile.exit, label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.i, %bb.a
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.fw = icmp eq i64 %.val, 0
  br i1 %i.fw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val3 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit

_RINvXsd_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3map3MapINtNtB1S_4take4TakeINtNtNtCsfFbyYyxlmiH_4rand5distr12distribution4IterNtNtB2C_5other12AlphanumericQNtNtNtB2E_4rngs6thread9ThreadRnghEENvYcINtNtBU_7convert4FromhE4fromEECs5l1RxndaFs7_13fish_tempfile.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp21
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs5l1RxndaFs7_13fish_tempfile15random_filename(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = invoke noundef nonnull ptr @_RNvNtNtCsfFbyYyxlmiH_4rand4rngs6thread3rng()
          to label %bb.b unwind label %.thread17  ; 2 uses

.thread17:                                        ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 10, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvXs5_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3map3MapINtNtB22_4take4TakeINtNtNtCsfFbyYyxlmiH_4rand5distr12distribution4IterNtNtB2M_5other12AlphanumericQNtNtNtB2O_4rngs6thread9ThreadRnghEENvYcINtNtBU_7convert4FromhE4fromEECs5l1RxndaFs7_13fish_tempfile(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr nonnull %i.e)
          to label %bb.e unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.k, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.ag, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %i.ag, %bb.k ], [ %i.u, %bb.g ], [ %i.u, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !127, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !127, !noundef !4
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !127
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellINtNtCskiWbj8QrlSm_9rand_core5block8BlockRngNtNtNtCsfFbyYyxlmiH_4rand4rngs6thread13ReseedingCoreEEE9drop_slowB26_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %.thread unwind label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 3 uses
  store i64 %i.m, ptr %i.a, align 8
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.m, 10
  br i1 %.not, label %bb.f, label %bb.h, !prof !128

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !132, !noundef !4 ; 3 uses
  %i.q = load i64, ptr %1, align 8, !range !6, !alias.scope !132, !noundef !4
  %i.r = sub i64 %i.q, %i.p
  %i.s = icmp ult i64 %i.r, 10
  br i1 %i.s, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.thread.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i, !prof !8

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.thread.i.i.i: ; preds = %bb.f
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5l1RxndaFs7_13fish_tempfile(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p, i64 noundef 10)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.thread.i.i.i
  %i.t = load i64, ptr %i.o, align 8, !alias.scope !133, !noundef !4
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i

bb.g:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.thread.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i: ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !134
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i: ; preds = %bb.f, %.noexc.i
  %.sink20 = phi i64 [ %i.t, %.noexc.i ], [ %i.p, %bb.f ] ; 3 uses
  %i.w = icmp sgt i64 %.sink20, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !133, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.z, ptr noundef nonnull readonly align 1 dereferenceable(10) %.sroa.5.0.copyload, i64 10, i1 false), !noalias !135
  %i.aa = add nuw i64 %.sink20, 10
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !133
  %i.ab = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ab, label %_RINvMNtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB3_8OsString4pushNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i6.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i6.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !134
  br label %_RINvMNtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB3_8OsString4pushNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit

bb.h:                                             ; preds = %bb.e
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
          to label %bb.j unwind label %bb.k

_RINvMNtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB3_8OsString4pushNtNtCs1xwejQucwHj_5alloc6string6StringECs5l1RxndaFs7_13fish_tempfile.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i6.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5l1RxndaFs7_13fish_tempfile.exit.i.i.i
end_hunk_0
