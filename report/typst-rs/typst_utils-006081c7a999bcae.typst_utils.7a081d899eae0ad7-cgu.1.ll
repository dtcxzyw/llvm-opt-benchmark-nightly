Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-006081c7a999bcae.typst_utils.7a081d899eae0ad7-cgu.1?download=true
inline.NumInlined: 190
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00<\00\00\00\0D\00\00\00" }>, align 8
@108 = private unnamed_addr constant [5 x i8] c"\C0\02 s\00", align 1
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\009\00\00\00\11\00\00\00" }>, align 8
@110 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\007\00\00\00\11\00\00\00" }>, align 8
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00(\00\00\00\0D\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00$\00\00\00\0D\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @102, [16 x i8] c"\22\00\00\00\00\00\00\00 \00\00\00\0D\00\00\00" }>, align 8
@114 = private unnamed_addr constant [12 x i8] c"float is NaN", align 1
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @90, [16 x i8] c" \00\00\00\00\00\00\00a\00\00\00\09\00\00\00" }>, align 8
@116 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @90, [16 x i8] c" \00\00\00\00\00\00\00n\00\00\00&\00\00\00" }>, align 8
@117 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsaDvkSoazevh_14rustc_demangle }>, align 8
@118 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@119 = private unnamed_addr constant [90 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/iter/adapters/step_by.rs\00", align 1
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @119, [16 x i8] c"Y\00\00\00\00\00\00\00m\02\00\00\05\00\00\00" }>, align 8
@121 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@122 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @121, [24 x i8] zeroinitializer }>, align 8

; Function Attrs: nonlazybind uwtable
define i64 @_RINvCslnPB5LbcFkI_8thin_vec10alloc_sizejECsatzsiS36G5T_11typst_utils(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.a, i64 %0) #32
  %i.c = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = add i64 %i.c, 1152921504606846976
  %i.e = icmp ult i64 %i.d, 2305843009213693952
  %i.f = shl i64 %i.c, 3
  %.sroa.0.0.i1 = zext i1 %i.e to i64
  %i.g = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1, i64 %i.f)
  %i.h = call i64 @llvm.umax.i64(i64 %i.b, i64 16)
  %i.i = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.g, i64 range(i64 16, 0) %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %not..i = xor i1 %i.j, true
  %.sroa.0.0.i2 = zext i1 %not..i to i64
  %i.l = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2, i64 %i.k)
  ret i64 %i.l
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvCslnPB5LbcFkI_8thin_vec11alloc_alignjECsatzsiS36G5T_11typst_utils() unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvCslnPB5LbcFkI_8thin_vec20header_with_capacityjECsatzsiS36G5T_11typst_utils(i64 %0, i1 zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.a, i64 %0) #32
  %i.c = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = add i64 %i.c, 1152921504606846976
  %i.e = icmp ult i64 %i.d, 2305843009213693952
  %i.f = shl i64 %i.c, 3
  %.sroa.0.0.i1.i.i = zext i1 %i.e to i64
  %i.g = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1.i.i, i64 %i.f)
  %i.h = call i64 @llvm.umax.i64(i64 %i.b, i64 16)
  %i.i = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.g, i64 range(i64 16, 0) %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %not..i.i.i = xor i1 %i.j, true
  %.sroa.0.0.i2.i.i = zext i1 %not..i.i.i to i64
  %i.l = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i.i, i64 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.n = call { i64, i64 } @_RNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsatzsiS36G5T_11typst_utils(i64 %i.l, i64 %i.m, ptr nonnull align 8 @2) #32 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.q = call noalias ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 %i.p, i64 %i.o) #33 ; 4 uses
  %i.r = call zeroext i1 @_RNvMNtNtCs3oUPovFnLWP_4core3ptr7mut_ptrONtCslnPB5LbcFkI_8thin_vec6Header7is_nullBE_(ptr %i.q) #32
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %0, ptr %i.s, align 8
  %i.t = call ptr @_RNvMs1_NtNtCs3oUPovFnLWP_4core3ptr8non_nullINtB5_7NonNullNtCslnPB5LbcFkI_8thin_vec6HeaderE13new_uncheckedBV_(ptr nonnull %i.q, ptr nonnull align 8 @1) #32
  ret ptr %i.t

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 %i.o, i64 %i.p) #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RINvCslnPB5LbcFkI_8thin_vec6layoutjECsatzsiS36G5T_11typst_utils(i64 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  call void @_RNvXs3_NtCs3oUPovFnLWP_4core7convertjINtB5_7TryIntoiE8try_intoCslnPB5LbcFkI_8thin_vec(ptr nonnull sret([16 x i8]) align 8 %i.a, i64 %0) #32
  %i.c = call i64 @_RNvXs_CslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowB4_(ptr nonnull align 8 %i.a) ; 2 uses
  %i.d = add i64 %i.c, 1152921504606846976
  %i.e = icmp ult i64 %i.d, 2305843009213693952
  %i.f = shl i64 %i.c, 3
  %.sroa.0.0.i1.i = zext i1 %i.e to i64
  %i.g = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i1.i, i64 %i.f)
  %i.h = call i64 @llvm.umax.i64(i64 %i.b, i64 16)
  %i.i = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.g, i64 range(i64 16, 0) %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %not..i.i = xor i1 %i.j, true
  %.sroa.0.0.i2.i = zext i1 %not..i.i to i64
  %i.l = call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptioniEINtB2_17UnwrapCapOverflowiE19unwrap_cap_overflowB2_(i64 %.sroa.0.0.i2.i, i64 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.n = call { i64, i64 } @_RNvMNtNtCs3oUPovFnLWP_4core5alloc6layoutNtB2_6Layout25from_size_align_uncheckedCsatzsiS36G5T_11typst_utils(i64 %i.l, i64 %i.m, ptr nonnull align 8 @2) #32
  ret { i64, i64 } %i.n
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, -16) i64 @_RINvCslnPB5LbcFkI_8thin_vec7paddingjECsatzsiS36G5T_11typst_utils() unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 16)
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RINvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEB1a_(ptr align 8 %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call align 8 ptr @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEBU_(ptr align 8 %0, ptr %1, i64 %2) #32
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define zeroext i1 @_RINvNtCs3oUPovFnLWP_4core3mem7replacebECsatzsiS36G5T_11typst_utils(ptr nofree captures(none) %0, i1 zeroext %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = zext i1 %1 to i8
  store i8 %i.c, ptr %0, align 1
  ret i1 %i.b
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13panic_displayReECsatzsiS36G5T_11typst_utils(ptr align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsaDvkSoazevh_14rustc_demangle, ptr %.sroa.22.0..sroa_idx, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @3, ptr nonnull %i.a, ptr align 8 %1) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvYNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRReECsatzsiS36G5T_11typst_utils(ptr %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = tail call i64 @_RNvXs2_Cs87aT6TjYOVO_10rustc_hashNtB5_13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher(ptr %0)
  store i64 %i.c, ptr %i.a, align 8
  call void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsRReNtB8_4Hash4hashNtCs87aT6TjYOVO_10rustc_hash8FxHasherECsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #32
  %.val = load i64, ptr %i.a, align 8
  %i.d = call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftjECsatzsiS36G5T_11typst_utils(i64 %.val, i32 26) #33
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define i64 @_RINvYNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneReECsatzsiS36G5T_11typst_utils(ptr %0, ptr %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = tail call i64 @_RNvXs2_Cs87aT6TjYOVO_10rustc_hashNtB5_13FxBuildHasherNtNtCs3oUPovFnLWP_4core4hash11BuildHasher12build_hasher(ptr %0)
  store i64 %i.d, ptr %i.a, align 8
  call void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsReNtB8_4Hash4hashNtCs87aT6TjYOVO_10rustc_hash8FxHasherECsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #32
  %.val = load i64, ptr %i.a, align 8
  %i.e = call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftjECsatzsiS36G5T_11typst_utils(i64 %.val, i32 26) #33
  ret i64 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNCNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB7_15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE3new0B1f_(ptr align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %0, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i1 } @_RNCNvMse_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB7_16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE3new0B1g_(ptr align 8 %0, i1 zeroext %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, i1 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i1 } %i.a, i1 %1, 1
  ret { ptr, i1 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNCNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER0B5_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 9), (16, 72)) %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, i8 0, i64 9, i1 false)
  store i64 0, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @122, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VecReE3newCsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #5 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i64 @_RNvMNtCs3oUPovFnLWP_4core3stre3lenCsatzsiS36G5T_11typst_utils(ptr nofree readnone captures(none) %0, i64 returned %1) unnamed_addr #4 {
bb.a:
  ret i64 %1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden double @_RNvMNtCsaL1QbXo9JQH_3std3f64d5roundCsatzsiS36G5T_11typst_utils(double %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call double @llvm.round.f64(double %0)
  ret double %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr12try_constant(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico7bitcode6encode(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %1, i64 %2)
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = call { i64, i64 } @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico10exceptions3get(ptr %1, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, -9223372036854775808
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.0 = phi i64 [ %i.o, %bb.f ], [ %i.k, %bb.c ]
  %i.l = call i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3newCsatzsiS36G5T_11typst_utils(i64 %.sroa.0.0) #32 ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @18) #35
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.f, 1
  %i.o = add i64 %i.n, 1
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.p, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit
  %storemerge = phi i8 [ 1, %bb.g ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionINtNtNtB4_3num7nonzero7NonZeroyEE6unwrapCsatzsiS36G5T_11typst_utils.exit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMNtCsatzsiS36G5T_11typst_utils4picoNtB2_7PicoStr3get(ptr %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico7bitcode6encode(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %0, i64 %1)
  %i.e = load i8, ptr %i.a, align 8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call { i64, i64 } @_RNvNtNtCsatzsiS36G5T_11typst_utils4pico10exceptions3get(ptr %0, i64 %1) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = or i64 %i.k, -9223372036854775808
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.o, %bb.f ], [ %i.l, %bb.c ]
  %i.m = call i64 @_RNvMse_NtNtCs3oUPovFnLWP_4core3num7nonzeroINtB5_7NonZeroyE3newCsatzsiS36G5T_11typst_utils(i64 %.sroa.0.0.i) #32 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @18) #35
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.n = extractvalue { i64, i64 } %i.g, 1
  %i.o = add i64 %i.n, 1
  br label %bb.d

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call align 8 ptr @_RNvXs1_NtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB5_8LazyLockINtNtNtB7_6poison6rwlock6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB1u_(ptr nonnull align 8 @_RNvNtCsatzsiS36G5T_11typst_utils4pico8INTERNER) #32 ; 5 uses
  %i.q = call i32 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadmKb0_ECscb9PBP19vM_15crossbeam_utils(ptr align 8 %i.p, i8 0) #32 ; 3 uses
  %or.cond3.i.i = icmp ult i32 %i.q, 1073741822
  br i1 %or.cond3.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr align 8 %i.p, i32 %i.q, i32 %i.r, i8 2, i8 0) #32
  %i.t = extractvalue { i32, i32 } %i.s, 0
  %.not2.i.i = icmp eq i32 %i.t, 0
  br i1 %.not2.i.i, label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 8 %i.p)
  br label %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit

_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit: ; preds = %bb.h, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECscb9PBP19vM_15crossbeam_utils(ptr nonnull %i.u, i8 0) #32
  %.not.i.i2 = icmp ne i8 %i.v, 0
  call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMsd_BQ_BN_3new0EB1n_(ptr nonnull sret([24 x i8]) align 8 %i.c, i1 zeroext %.not.i.i2, ptr align 8 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = load i64, ptr %i.c, align 8
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit
  store ptr %i.z, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @14, i64 43, ptr nonnull %i.b, ptr nonnull align 8 @15, ptr nonnull align 8 @19) #34
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEEB1Z_(ptr nonnull align 8 %i.b) #36
          to label %common.resume unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.af, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.r ], [ %i.m, %bb.n ]
  ret i64 %.sroa.0.0

bb.p:                                             ; preds = %bb.q, %_RINvMs2_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3mapINtB6_7HashMapReNtNtCsatzsiS36G5T_11typst_utils4pico7PicoStrNtCs87aT6TjYOVO_10rustc_hash13FxBuildHasherE3geteEB1a_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerEEB1G_(ptr nonnull align 8 %i.d) #36
          to label %common.resume unwind label %bb.s

bb.q:                                             ; preds = %_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_.exit
end_hunk_0
begin_hunk_1_@_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8as_sliceCsatzsiS36G5T_11typst_utils
define { ptr, i64 } @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8as_sliceCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
  %i.b = icmp ult i64 %i.a, 17
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.c)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge, label %bb.c

._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge: ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.a, i64 16)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit: ; preds = %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge, %bb.c
  %i.i = phi ptr [ %i.f, %bb.c ], [ %.pre, %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge ]
  %.sroa.0.0.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %._RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit_crit_edge ]
  %.val.i = load i64, ptr %i.i, align 8
  %i.j = tail call { ptr, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice3raw14from_raw_partsjECsatzsiS36G5T_11typst_utils(ptr nonnull %.sroa.0.0.i, i64 %.val.i, ptr nonnull align 8 @95) #32
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8capacityCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define nonnull ptr @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32 ; 2 uses
  %i.b = icmp ult i64 %i.a, 17
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.c)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.a, i64 16)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0, i64 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i2 = load i64, ptr %i.a, align 8          ; 2 uses
  %i.b = icmp ult i64 %1, %.val.i2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit
  %.val.i3 = phi i64 [ %.val.i, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit ], [ %.val.i2, %bb.a ]
  %i.c = phi ptr [ %i.i, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit ], [ %i.a, %bb.a ]
  %i.d = add i64 %.val.i3, -1
  store i64 %i.d, ptr %i.c, align 8
  %i.e = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.g) ; 0 uses
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.b, %.lr.ph
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i = load i64, ptr %i.i, align 8           ; 2 uses
  %i.j = icmp ult i64 %1, %.val.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs3_NtNtNtCsl9Fzn6kz1og_15portable_atomic3imp9atomic1286x86_64NtB5_10AtomicU1283newCsatzsiS36G5T_11typst_utils(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, i128 %1) unnamed_addr #5 {
bb.a:
  store i128 %1, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i128 @_RNvMs3_NtNtNtCsl9Fzn6kz1og_15portable_atomic3imp9atomic1286x86_64NtB5_10AtomicU1284loadCsatzsiS36G5T_11typst_utils(ptr align 16 %0, i8 %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvNtCsl9Fzn6kz1og_15portable_atomic5utils20assert_load_orderingCsatzsiS36G5T_11typst_utils(i8 %1) #32
  %i.a = tail call ptr @_RNvMs3_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicOuE4loadCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 @_RNvNvNtNtNtCsl9Fzn6kz1og_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC, i8 0) #32
  %i.b = tail call i128 %i.a(ptr %0), !inline_history !8
  ret i128 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE6resizeCsatzsiS36G5T_11typst_utils(ptr nofree align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %.val.i = load i64, ptr %i.b, align 8           ; 4 uses
  %i.c = icmp ugt i64 %1, %.val.i
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, %.val.i
  br i1 %i.d, label %.lr.ph.i, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %.val.i
  %i.f = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr nonnull align 8 %i.b) ; 4 uses
  %i.g = tail call i64 @_RNvXCslnPB5LbcFkI_8thin_vecINtNtCs3oUPovFnLWP_4core6option6OptionjEINtB2_17UnwrapCapOverflowjE19unwrap_cap_overflowB2_(i64 1, i64 %1) ; 2 uses
  %.not.i = icmp ugt i64 %i.g, %i.f
  br i1 %.not.i, label %bb.d, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.f, 0
  %i.i = shl i64 %i.f, 1
  %.inv.i.i = icmp sgt i64 %i.f, -1
  %.sroa.0.0.i.i = select i1 %.inv.i.i, i64 %i.i, i64 -1
  %.sroa.0.0.i = select i1 %i.h, i64 4, i64 %.sroa.0.0.i.i
  %i.j = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 %i.g, i64 %.sroa.0.0.i) #32
  tail call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE10reallocateCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %i.j)
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.c, %bb.d
  %i.k = tail call { i64, i64 } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCs6fqsdctdrJG_6semver(i64 1, i64 %i.e) #32 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  store i64 %i.l, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = call { i64, i64 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs6fqsdctdrJG_6semver(ptr nonnull align 8 %i.a) #32
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i
  %.val.i3.i = phi i64 [ %.val.i.i3, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i ], [ %.val.i, %bb.b ]
  %i.r = phi ptr [ %i.x, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i ], [ %i.b, %bb.b ]
  %i.s = add i64 %.val.i3.i, -1
  store i64 %i.s, ptr %i.r, align 8
  %i.t = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3maxjECslnPB5LbcFkI_8thin_vec(i64 8, i64 8) #32
  %i.u = icmp ult i64 %i.t, 17
  br i1 %i.u, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %0, align 8
  %i.w = tail call i64 @_RNvMs0_CslnPB5LbcFkI_8thin_vecNtB5_6Header3cap(ptr align 8 %i.v) ; 0 uses
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %.val.i.i3 = load i64, ptr %i.x, align 8        ; 2 uses
  %i.y = icmp ult i64 %1, %.val.i.i3
  br i1 %i.y, label %.lr.ph.i, label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit

.lr.ph:                                           ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit, %.lr.ph
  call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE4pushCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %2)
  %i.z = call { i64, i64 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs6fqsdctdrJG_6semver(ptr nonnull align 8 %i.a) #32
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE7reserveCsatzsiS36G5T_11typst_utils.exit
  call void @_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE4pushCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0, i64 %2)
  br label %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit

_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8truncateCsatzsiS36G5T_11typst_utils.exit: ; preds = %_RNvMs3_CslnPB5LbcFkI_8thin_vecINtB5_7ThinVecjE8data_rawCsatzsiS36G5T_11typst_utils.exit.i, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvMs7_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeE4leakCsatzsiS36G5T_11typst_utils(ptr %0, i64 %1) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs8_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE3newB13_(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) initializes((0, 9), (16, 72)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, i8 0, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE4readB13_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadmKb0_ECscb9PBP19vM_15crossbeam_utils(ptr align 4 %1, i8 0) #32 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.a, 1073741822
  br i1 %or.cond3.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i32 %i.a, 1
  %i.c = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr align 4 %1, i32 %i.a, i32 %i.b, i8 2, i8 0) #32
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsatzsiS36G5T_11typst_utils.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 4 %1)
  br label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsatzsiS36G5T_11typst_utils.exit

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECscb9PBP19vM_15crossbeam_utils(ptr nonnull %i.e, i8 0) #32
  %.not.i = icmp ne i8 %i.f, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMsd_BQ_BN_3new0EB1n_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not.i, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE5writeB13_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsatzsiS36G5T_11typst_utils(ptr %1, i32 0, i32 1073741823, i8 2, i8 0) #32
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call { i1, i8 } @_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guardCsatzsiS36G5T_11typst_utils(ptr nonnull %i.c) #32 ; 2 uses
  %i.e = extractvalue { i1, i8 } %i.d, 0
  %i.f = extractvalue { i1, i8 } %i.d, 1
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMse_B10_BX_3new0EB1y_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %i.e, i8 %i.f, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE4pushCsatzsiS36G5T_11typst_utils(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0) #38
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store ptr %1, ptr %i.g, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 8 ptr @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecReE8push_mutCsatzsiS36G5T_11typst_utils(ptr align 8 %0, ptr nofree readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsatzsiS36G5T_11typst_utils(ptr nonnull align 8 %0) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.b ; 3 uses
  store ptr %1, ptr %i.g, align 8, !captures !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %i.h, align 8
  %i.i = add i64 %i.b, 1
  store i64 %i.i, ptr %i.a, align 8
  ret ptr %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define i64 @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE3lenCsatzsiS36G5T_11typst_utils(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE16into_boxed_sliceCsatzsiS36G5T_11typst_utils(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs1iWEYfdUYYU_10rayon_core(ptr nonnull align 8 %0, i64 %i.c, i64 1, i64 1)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.311.0.copyload = phi i64 [ %.sroa.311.0.copyload.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.210.0.copyload, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.311.0.copyload, 1
  ret { ptr, i64 } %i.g

bb.d:                                             ; preds = %bb.f, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs1iWEYfdUYYU_10rayon_core(ptr nonnull align 8 %0) #36
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.sroa.311.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.j = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 %i.i, i64 %i.j) #34
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerE3newB1d_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECscb9PBP19vM_15crossbeam_utils(ptr nonnull %i.a, i8 0) #32
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsatzsiS36G5T_11typst_utils4pico8InternerENCNvMsd_BQ_BN_3new0EB1n_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMse_NtCsatzsiS36G5T_11typst_utils4hashNtB5_8HashLock3new(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  call void @_RNvMs16_Csl9Fzn6kz1og_15portable_atomicNtB6_10AtomicU1283newCsatzsiS36G5T_11typst_utils(ptr nonnull sret([16 x i8]) align 16 %i.a, i128 0) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  ret void
}

; Function Attrs: noreturn nonlazybind uwtable
define void @_RNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern(i1 zeroext %0, ptr nofree readonly captures(none) %1, i64 %2, ptr align 8 %3) unnamed_addr #12 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [520 x i8], align 8               ; 96 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = zext i1 %0 to i8
  store i8 %i.f, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 512 ; 187 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i8 0, i64 520, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]    ; 3 uses
  %.sroa.0.04.i = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ] ; 3 uses
  %i.i = icmp ult i64 %i.h, 512
  br i1 %i.i, label %.lr.ph.i.1, label %_RNvNvNtCsatzsiS36G5T_11typst_utils4pico29failed_to_compile_time_intern4push.exit
end_hunk_1
