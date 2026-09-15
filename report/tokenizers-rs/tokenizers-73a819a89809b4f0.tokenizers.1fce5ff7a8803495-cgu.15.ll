Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.15?download=true
inline.NumInlined: 1271
inline.NumDeleted: 426
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers:bb.a
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #35
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #35
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #35
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #35
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #35
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #35
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #35
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !1989
  %i.a = tail call noundef dereferenceable_or_null(3) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1989 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9Metaspace3new.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #36, !noalias !1988
  unreachable

_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9Metaspace3new.exit: ; preds = %bb.a
  store i8 -30, ptr %i.a, align 1, !noalias !1988
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 -106, ptr %.sroa.0.i.sroa.5.0..sroa_idx, align 1, !noalias !1988
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 -127, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 1, !noalias !1988
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 9601, ptr %i.c, align 8, !alias.scope !1988
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 2, ptr %i.d, align 1, !alias.scope !1988
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.e, align 4, !alias.scope !1988
  store i64 3, ptr %0, align 8, !alias.scope !1988
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !1988
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1988
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRDNtNtCsboAIIHEtPkY_10serde_core2de8ExpectedEL_NtB6_7Display3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !6, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXs1_NtCsboAIIHEtPkY_10serde_core2deDNtB5_8ExpectedEL_NtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtB9_9tokenizer12PreTokenizer12pre_tokenize(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString5splitNCNvXs2_NtNtBa_14pre_tokenizers9metaspaceNtB1C_9MetaspaceNtB8_12PreTokenizer12pre_tokenize0INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_10normalizer16NormalizedStringEB3t_EBa_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternRNtNtNtB9_5utils4onig8SysRegexNtB5_7Pattern12find_matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.e = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #35 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #36
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %8

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = mul i64 %3, 24                           ; 3 uses
  %or.cond.i = icmp ugt i64 %3, 384307168202282325
  br i1 %or.cond.i, label %9, label %4, !prof !10

4:                                                ; preds = %bb.d
  %5 = icmp eq i64 %i.g, 0
  br i1 %5, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

bb.e:                                             ; preds = %4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !2001
  %i.h = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !2001 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %9, label %6

6:                                                ; preds = %bb.e
  %7 = ptrtoint ptr %i.h to i64
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit

8:                                                ; preds = %bb.n, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  ret void

9:                                                ; preds = %bb.d, %bb.e
  %.sroa.443.0.ph = phi i64 [ 8, %bb.e ], [ 0, %bb.d ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.443.0.ph, i64 %i.g) #36
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %6, %4
  %.sroa.10.0 = phi i64 [ %7, %6 ], [ 8, %4 ]
  %.sroa.443.0 = phi i64 [ %3, %6 ], [ 0, %4 ]    ; 2 uses
  %10 = inttoptr i64 %.sroa.10.0 to ptr           ; 2 uses
  %11 = icmp samesign ule i64 %3, %.sroa.443.0
  tail call void @llvm.assume(i1 %11)
  store i64 %.sroa.443.0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %10, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %3, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.611.0..sroa_idx, i8 0, i64 40, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.u, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit
  %i.o = phi ptr [ %10, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ai, %bb.u ] ; 2 uses
  %i.p = phi i64 [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ak, %bb.u ] ; 7 uses
  %.sroa.04.0 = phi i64 [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.u, %bb.u ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs6_NtCsaiktC1pStS5_4onig4findNtB5_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.s, %bb.q, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtCsaiktC1pStS5_4onig6regionNtB5_6RegionNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.611.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.a, align 8, !range !15, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.u = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %.not25 = icmp eq i64 %.sroa.04.0, %i.t
  %.pre55 = load i64, ptr %i.c, align 8, !range !14, !noalias !4 ; 2 uses
  br i1 %.not25, label %bb.r, label %bb.p

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXs0_NtCsaiktC1pStS5_4onig6regionNtB5_6RegionNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.611.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit27 unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.q, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTTjjEbEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.c) #33
          to label %bb.w unwind label %bb.v

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit27: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %.sroa.04.0, %3
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit27
  call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  %i.w = load i64, ptr %i.c, align 8, !range !14, !alias.scope !2002, !noalias !2003, !noundef !4
  %i.x = icmp eq i64 %i.p, %i.w
  br i1 %i.x, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge unwind label %bb.k

._crit_edge:                                      ; preds = %bb.m
  %.pre = load ptr, ptr %i.j, align 8, !alias.scope !2002, !noalias !2003
  br label %bb.o

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit27, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %8

bb.o:                                             ; preds = %._crit_edge, %bb.l
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %i.o, %bb.l ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.p ; 3 uses
  store i64 %.sroa.04.0, ptr %i.z, align 8, !noalias !2002
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %3, ptr %.sroa.439.0..sroa_idx, align 8, !noalias !2002
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i8 0, ptr %.sroa.540.0..sroa_idx, align 8, !noalias !2002
  %i.aa = add i64 %i.p, 1
  store i64 %i.aa, ptr %i.k, align 8, !alias.scope !2002, !noalias !2003
  br label %bb.n

bb.p:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %i.ab = icmp eq i64 %i.p, %.pre55
  br i1 %i.ab, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge52 unwind label %bb.g

._crit_edge52:                                    ; preds = %bb.q
  %.pre53 = load ptr, ptr %i.j, align 8, !alias.scope !2004, !noalias !2005
  br label %bb.t

bb.r:                                             ; preds = %bb.i, %bb.t
  %i.ac = phi i64 [ %.pre55, %bb.i ], [ %.pre54, %bb.t ]
  %i.ad = phi i64 [ %i.p, %bb.i ], [ %i.ah, %bb.t ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.u unwind label %bb.g

bb.t:                                             ; preds = %._crit_edge52, %bb.p
  %i.af = phi ptr [ %.pre53, %._crit_edge52 ], [ %i.o, %bb.p ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.p ; 3 uses
  store i64 %.sroa.04.0, ptr %i.ag, align 8, !noalias !2004
  %.sroa.4.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx32, align 8, !noalias !2004
  %.sroa.5.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx33, align 8, !noalias !2004
  %i.ah = add i64 %i.p, 1                         ; 2 uses
  store i64 %i.ah, ptr %i.k, align 8, !alias.scope !2004, !noalias !2005
  %.pre54 = load i64, ptr %i.c, align 8, !range !14, !alias.scope !2006, !noalias !2007
  br label %bb.r

bb.u:                                             ; preds = %bb.r, %bb.s
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !2006, !noalias !2007, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ad ; 3 uses
  store i64 %i.t, ptr %i.aj, align 8, !noalias !2006
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.u, ptr %.sroa.435.0..sroa_idx, align 8, !noalias !2006
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i8 1, ptr %.sroa.536.0..sroa_idx, align 8, !noalias !2006
  %i.ak = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ak, ptr %i.k, align 8, !alias.scope !2006, !noalias !2007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.v:                                             ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYjNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRjB1p_EE9call_onceCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #15 {
bb.a:
  %.val = load i64, ptr %1, align 8, !noundef !4
  %.val1 = load i64, ptr %2, align 8, !noundef !4
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val, i64 %.val1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtB9_9tokenizer7Decoder12decode_chain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.i, align 8
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1X_9enumerate9EnumerateINtNtNtB21_5slice4iter4IterB12_EENCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB3O_9MetaspaceNtNtB3S_9tokenizer7Decoder12decode_chain0EE9from_iterB3S_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %2) #33
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %2, align 8, !alias.scope !2016 ; 2 uses
  %i.l = icmp eq i64 %.val2.i, 0
  br i1 %i.l, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val3.i = load ptr, ptr %i.d, align 8, !alias.scope !2017, !nonnull !4, !noundef !4
  %i.m = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !2018
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %2, align 8, !alias.scope !2016 ; 2 uses
  %i.n = icmp eq i64 %.val.i, 0
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !2017, !nonnull !4, !noundef !4
  %i.o = mul nuw i64 %.val.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !2019
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

common.resume:                                    ; preds = %bb.b, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc10is_numericNtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.g = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #35 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #36
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %3
  store ptr null, ptr %i.a, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
end_hunk_0
begin_hunk_1_@_RNvXsK_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawDrainTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4 ; 5 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit
  %i.al = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %i.am = add i64 %i.aj, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 -1, i64 %i.am, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.an, align 8
  %i.ao = icmp ult i64 %i.aj, 8
  %i.ap = add i64 %i.aj, 1
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = mul nuw i64 %i.aq, 7
  %.sroa.0.0 = select i1 %i.ao, i64 %i.aj, i64 %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsL_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawDrainTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !alias.scope !2155, !noundef !4 ; 2 uses
  %.not12.i = icmp eq i16 %i.e, 0
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !2155 ; 2 uses
  br i1 %.not12.i, label %.lr.ph.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.f, align 8, !alias.scope !2155
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !alias.scope !2155
  store ptr %i.j, ptr %1, align 8, !alias.scope !2155
  br label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.g = phi ptr [ %.promoted14.i, %.lr.ph.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ]
  %.val10.i = load <16 x i8>, ptr %i.g, align 16, !noalias !2155
  %i.i = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -1152 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.i to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %._crit_edge.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.m = add i16 %.lcssa.i, -1
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = and i16 %i.m, %.lcssa.i
  store i16 %i.p, ptr %i.d, align 8, !alias.scope !2155
  %i.q = sub nsw i64 0, %i.o
  %i.r = getelementptr inbounds [72 x i8], ptr %i.l, i64 %i.q
  %i.s = add i64 %i.b, -1
  store i64 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations0_1__NtBG_14PunctuationDef11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations1_1__NtBG_15PunctuationTypeNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations2_1__NtBG_23PunctuationDeserializerNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations2_1__NtBG_23PunctuationDeserializerNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 30)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaces_1__NtBG_13PrependSchemeNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations1_1__NtBG_16TruncationParamsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 23)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations3_1__NtBG_18TruncationStrategyNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils10truncations_1__NtBG_19TruncationDirectionNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBL_9MetaspaceNtB4_11Deserialize11deserialize1__NtBG_4TypeB1U_11deserialize14___FieldVisitorNtB4_8Expected3fmtBP_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBL_9MetaspaceNtB4_11Deserialize11deserializes_1__NtBG_15MetaspaceHelperB1U_11deserialize14___FieldVisitorNtB4_8Expected3fmtBP_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtBL_9MetaspaceNtB4_11Deserialize11deserializes_1__NtBG_15MetaspaceHelperB1U_11deserialize9___VisitorNtB4_8Expected3fmtBP_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtBJ_6string9MustBeStrpENtB4_11Deserialize11deserialize16MustBeStrVisitorNtB4_8Expected3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXsc_NtCsiMQwbiKUetM_9monostate11deserializeINtNtBa_6string9MustBeStrpENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB2_16MustBeStrVisitorNtB1e_7Visitor9expecting(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers5utils4onigRNtCsaiktC1pStS5_4onig5RegexNtNtNtB8_9tokenizer7pattern7Pattern12find_matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.e = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #35 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #36
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %8

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = mul i64 %3, 24                           ; 3 uses
  %or.cond.i = icmp ugt i64 %3, 384307168202282325
  br i1 %or.cond.i, label %9, label %4, !prof !10

4:                                                ; preds = %bb.d
  %5 = icmp eq i64 %i.g, 0
  br i1 %5, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

bb.e:                                             ; preds = %4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !2167
  %i.h = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !2167 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %9, label %6

6:                                                ; preds = %bb.e
  %7 = ptrtoint ptr %i.h to i64
  br label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit

8:                                                ; preds = %bb.n, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  ret void

9:                                                ; preds = %bb.d, %bb.e
  %.sroa.443.0.ph = phi i64 [ 8, %bb.e ], [ 0, %bb.d ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.443.0.ph, i64 %i.g) #36
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %6, %4
  %.sroa.10.0 = phi i64 [ %7, %6 ], [ 8, %4 ]
  %.sroa.443.0 = phi i64 [ %3, %6 ], [ 0, %4 ]    ; 2 uses
  %10 = inttoptr i64 %.sroa.10.0 to ptr           ; 2 uses
  %11 = icmp samesign ule i64 %3, %.sroa.443.0
  tail call void @llvm.assume(i1 %11)
  store i64 %.sroa.443.0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %10, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.l, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %3, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.611.0..sroa_idx, i8 0, i64 40, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.u, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit
  %i.o = phi ptr [ %10, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ai, %bb.u ] ; 2 uses
  %i.p = phi i64 [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ak, %bb.u ] ; 7 uses
  %.sroa.04.0 = phi i64 [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.u, %bb.u ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs6_NtCsaiktC1pStS5_4onig4findNtB5_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.s, %bb.q, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtCsaiktC1pStS5_4onig6regionNtB5_6RegionNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.611.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.a, align 8, !range !15, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.u = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %.not25 = icmp eq i64 %.sroa.04.0, %i.t
  %.pre55 = load i64, ptr %i.c, align 8, !range !14, !noalias !4 ; 2 uses
  br i1 %.not25, label %bb.r, label %bb.p

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXs0_NtCsaiktC1pStS5_4onig6regionNtB5_6RegionNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.611.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit27 unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.q, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTTjjEbEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.c) #33
          to label %bb.w unwind label %bb.v

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit27: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %.sroa.04.0, %3
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit27
  call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  %i.w = load i64, ptr %i.c, align 8, !range !14, !alias.scope !2168, !noalias !2169, !noundef !4
  %i.x = icmp eq i64 %i.p, %i.w
  br i1 %i.x, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge unwind label %bb.k

._crit_edge:                                      ; preds = %bb.m
  %.pre = load ptr, ptr %i.j, align 8, !alias.scope !2168, !noalias !2169
  br label %bb.o

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit27, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %8

bb.o:                                             ; preds = %._crit_edge, %bb.l
  %i.y = phi ptr [ %.pre, %._crit_edge ], [ %i.o, %bb.l ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.p ; 3 uses
  store i64 %.sroa.04.0, ptr %i.z, align 8, !noalias !2168
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %3, ptr %.sroa.439.0..sroa_idx, align 8, !noalias !2168
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i8 0, ptr %.sroa.540.0..sroa_idx, align 8, !noalias !2168
  %i.aa = add i64 %i.p, 1
  store i64 %i.aa, ptr %i.k, align 8, !alias.scope !2168, !noalias !2169
  br label %bb.n

bb.p:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %i.ab = icmp eq i64 %i.p, %.pre55
  br i1 %i.ab, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge52 unwind label %bb.g

._crit_edge52:                                    ; preds = %bb.q
  %.pre53 = load ptr, ptr %i.j, align 8, !alias.scope !2170, !noalias !2171
  br label %bb.t

bb.r:                                             ; preds = %bb.i, %bb.t
  %i.ac = phi i64 [ %.pre55, %bb.i ], [ %.pre54, %bb.t ]
  %i.ad = phi i64 [ %i.p, %bb.i ], [ %i.ah, %bb.t ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.u unwind label %bb.g

bb.t:                                             ; preds = %._crit_edge52, %bb.p
  %i.af = phi ptr [ %.pre53, %._crit_edge52 ], [ %i.o, %bb.p ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.p ; 3 uses
  store i64 %.sroa.04.0, ptr %i.ag, align 8, !noalias !2170
  %.sroa.4.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx32, align 8, !noalias !2170
  %.sroa.5.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx33, align 8, !noalias !2170
  %i.ah = add i64 %i.p, 1                         ; 2 uses
  store i64 %i.ah, ptr %i.k, align 8, !alias.scope !2170, !noalias !2171
  %.pre54 = load i64, ptr %i.c, align 8, !range !14, !alias.scope !2172, !noalias !2173
  br label %bb.r

bb.u:                                             ; preds = %bb.r, %bb.s
  %i.ai = load ptr, ptr %i.j, align 8, !alias.scope !2172, !noalias !2173, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ad ; 3 uses
  store i64 %i.t, ptr %i.aj, align 8, !noalias !2172
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.u, ptr %.sroa.435.0..sroa_idx, align 8, !noalias !2172
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i8 1, ptr %.sroa.536.0..sroa_idx, align 8, !noalias !2172
  %i.ak = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ak, ptr %i.k, align 8, !alias.scope !2172, !noalias !2173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.v:                                             ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaiktC1pStS5_4onig4find11FindMatchesECs2JiOgHzbbc7_10tokenizers.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !2176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !2176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !2176
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4ItercEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !2179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !2179
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !2179
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB1w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.i = add i64 %i.g, 1                          ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 96) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  %i.m = add i64 %i.g, 17                         ; 2 uses
  %i.n = add i64 %i.m, %i.l                       ; 5 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.n, 9223372036854775792
  %or.cond.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !10

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %bb.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !2200
  %i.r = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 16) #35, !noalias !2200 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !2200
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.u = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.n), !noalias !2200
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEE17new_uninitializedB1w_.exit

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.r, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.l
  %i.w = icmp ult i64 %i.g, 8
  %i.x = lshr i64 %i.i, 3
  %i.y = mul nuw nsw i64 %i.x, 7
  %.sroa.07.0.i.i = select i1 %i.w, i64 %i.g, i64 %i.y
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEE17new_uninitializedB1w_.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEE17new_uninitializedB1w_.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.m, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.0.0, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %i.z = load ptr, ptr %1, align 8, !alias.scope !2205, !noalias !2206, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.z, i64 %.pre-phi, i1 false), !noalias !2207
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2205, !noalias !2206, !noundef !4 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEE17new_uninitializedB1w_.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.z, align 16, !noalias !2208
  %i.ad = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.aj = ptrtoint ptr %i.z to i64
  br label %bb.j

end_hunk_1
