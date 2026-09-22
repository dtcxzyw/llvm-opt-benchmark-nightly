Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa_macros-fbc2f095275dd02c.salsa_macros.d0d34daddd3cd1da-cgu.14?download=true
inline.NumInlined: 383
inline.NumDeleted: 190
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [92 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/syn-3.0.4/src/parse.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\004\04\00\00\1C\00\00\00" }>, align 8
@2 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@3 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @2, [24 x i8] zeroinitializer }>, align 8
@4 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCshVzvyy7iigg_12salsa_macros, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00!\05\00\00\09\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00 \05\00\00\14\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\11\05\00\00\09\00\00\00" }>, align 8
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00\10\05\00\00\14\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define hidden ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE11get_or_initNvNvNvMNtNtBe_4hash6randomNtB2d_11RandomState3new4KEYS27___rust_std_internal_init_fnECshVzvyy7iigg_12salsa_macros(ptr nofree returned align 8 captures(ret: address, provenance) %0, ptr nofree align 8 captures(address_is_null) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshVzvyy7iigg_12salsa_macros(ptr nonnull align 8 %0, ptr align 8 %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECshVzvyy7iigg_12salsa_macros(ptr nofree returned align 8 captures(ret: address, provenance) %0, ptr nofree align 8 captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %trunc = trunc i8 %i.b to i1
  br i1 %trunc, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.35.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.35.0.copyload = load i64, ptr %.sroa.35.0..sroa.0.0.1.sroa_idx, align 8
  %.sroa.4.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa.0.0.1.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.c = trunc nuw i64 %.sroa.04.0.copyload to i1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = tail call { i64, i64 } @_RNvNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtB6_11RandomState3new4KEYS27___rust_std_internal_init_fnCshVzvyy7iigg_12salsa_macros() ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.4.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i64 [ %i.e, %bb.d ], [ %.sroa.35.0.copyload, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %0, align 8
  store i64 %.sroa.3.0, ptr %i.g, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RINvMs2_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3setINtB6_7HashSetNtCsRujiHMkeh3_11proc_macro25IdentE8containsB14_ECshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtCsRujiHMkeh3_11proc_macro25IdentuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyBO_ECshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RINvMs2_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3setINtB6_7HashSetNtNtCscdodAO9FK5_5alloc6string6StringE8containsB14_ECshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyBO_ECshVzvyy7iigg_12salsa_macros(ptr align 8 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB6_11ParseBuffer16parse_terminatedNtNtB8_8generics14WherePredicateINvNtB8_5token5CommaNtNtB8_9lookahead11TokenMarkerEECshVzvyy7iigg_12salsa_macros(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr %2) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMNtCs3Eghgi3KVFH_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14WherePredicateNtNtB4_5token5CommaE21parse_terminated_withCshVzvyy7iigg_12salsa_macros(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, ptr %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden zeroext i1 @_RINvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB6_11ParseBuffer4peekINvNtCshVzvyy7iigg_12salsa_macros2kw5proveNtNtB8_9lookahead11TokenMarkerEEBY_(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB5_11ParseBuffer6cursor(ptr align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call zeroext i1 @_RNvXs0_NtCs3Eghgi3KVFH_3syn5tokenNtNtCshVzvyy7iigg_12salsa_macros2kw5proveNtB5_5Token4peekBz_(ptr %i.b, ptr %i.c)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB6_11ParseBuffer4stepNCNvXs0_NvNtCshVzvyy7iigg_12salsa_macros2kw1__NtB13_5proveNtB6_5Parse5parse0B1D_EB15_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call { ptr, ptr } @_RNvMs8_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCs3Eghgi3KVFH_3syn6buffer6CursorE3getBK_(ptr align 8 %1) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  store ptr %i.h, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RNCNvXs0_NvNtCshVzvyy7iigg_12salsa_macros2kw1__NtB9_5proveNtNtCs3Eghgi3KVFH_3syn5parse5Parse5parse0Bb_(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtCshVzvyy7iigg_12salsa_macros2kw5proveNtNtCs3Eghgi3KVFH_3syn6buffer6CursorENtNtB1u_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.j = load i64, ptr %i.d, align 8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCshVzvyy7iigg_12salsa_macros2kw5proveNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1p_EE13from_residualBO_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i32, ptr %i.l, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.34.0.copyload = load ptr, ptr %.sroa.34.0..sroa_idx, align 8
  call void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCs3Eghgi3KVFH_3syn6buffer6CursorE3setBK_(ptr nonnull align 8 %1, ptr %.sroa.23.0.copyload, ptr %.sroa.34.0.copyload)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.01.0.copyload, ptr %i.m, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB6_11ParseBuffer4stepNCNvXs0_NvNtCshVzvyy7iigg_12salsa_macros2kws_1__NtB13_29prove_safe_to_retain_manuallyNtB6_5Parse5parse0B1F_EB15_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call { ptr, ptr } @_RNvMs8_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCs3Eghgi3KVFH_3syn6buffer6CursorE3getBK_(ptr align 8 %1) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  store ptr %i.h, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  call void @_RNCNvXs0_NvNtCshVzvyy7iigg_12salsa_macros2kws_1__NtB9_29prove_safe_to_retain_manuallyNtNtCs3Eghgi3KVFH_3syn5parse5Parse5parse0Bb_(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  call void @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultTNtNtCshVzvyy7iigg_12salsa_macros2kw29prove_safe_to_retain_manuallyNtNtCs3Eghgi3KVFH_3syn6buffer6CursorENtNtB1T_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([32 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.j = load i64, ptr %i.d, align 8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtNtCshVzvyy7iigg_12salsa_macros2kw29prove_safe_to_retain_manuallyNtNtCs3Eghgi3KVFH_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1O_EE13from_residualBO_(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i32, ptr %i.l, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.23.0.copyload = load ptr, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.34.0.copyload = load ptr, ptr %.sroa.34.0..sroa_idx, align 8
  call void @_RNvMs7_NtCs4NRVxsYgnAr_4core4cellINtB5_4CellNtNtCs3Eghgi3KVFH_3syn6buffer6CursorE3setBK_(ptr nonnull align 8 %1, ptr %.sroa.23.0.copyload, ptr %.sroa.34.0.copyload)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.01.0.copyload, ptr %i.m, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB6_11ParseBuffer5parseNtNtCshVzvyy7iigg_12salsa_macros2kw29prove_safe_to_retain_manuallyEBY_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs0_NvNtCshVzvyy7iigg_12salsa_macros2kws_1__NtB7_29prove_safe_to_retain_manuallyNtNtCs3Eghgi3KVFH_3syn5parse5Parse5parse(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs9_NtCs3Eghgi3KVFH_3syn5parseNtB6_11ParseBuffer5parseNtNtCshVzvyy7iigg_12salsa_macros2kw5proveEBY_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvXs0_NvNtCshVzvyy7iigg_12salsa_macros2kw1__NtB7_5proveNtNtCs3Eghgi3KVFH_3syn5parse5Parse5parse(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3Eghgi3KVFH_3syn5parse12parse_scopedNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value28parse_manual_retention_proof0EBM_(ptr sret([32 x i8]) align 8 %0, i32 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @_RNvXsh_NtCs3Eghgi3KVFH_3syn5parseNCNvNtCshVzvyy7iigg_12salsa_macros11salsa_value28parse_manual_retention_proof0NtB5_6Parser14___parse_scopedBB_(ptr sret([32 x i8]) align 8 %0, i32 %1, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3Eghgi3KVFH_3syn5parse12parse_scopedNvYINtNtCshVzvyy7iigg_12salsa_macros7options7OptionsNtNtBO_10tracked_fn9TrackedFnENtB2_5Parse5parseEBO_(ptr sret([1392 x i8]) align 8 %0, i32 %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [1392 x i8], align 8              ; 4 uses
  %i.h = alloca [1392 x i8], align 8              ; 6 uses
  %i.i = alloca [1392 x i8], align 8              ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
end_hunk_0
