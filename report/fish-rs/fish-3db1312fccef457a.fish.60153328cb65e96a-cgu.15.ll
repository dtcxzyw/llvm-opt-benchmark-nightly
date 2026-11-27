Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.15?download=true
inline.NumInlined: 2884
inline.NumDeleted: 1261
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEINtB2_12SpecFromIterBU_QINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNBU_EE9from_iterB10_:bb.a
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4605
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtB6_8Iterator4folduNCINvNvB2p_8for_each4callB1q_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3l_3VecB1q_E14extend_trustedBQ_E0E0EB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEINtB4_18SpecFromIterNestedB13_QINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNB13_EE9from_iterB19_.exit unwind label %bb.j, !noalias !4606

bb.i:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #32, !noalias !4596
  unreachable

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNBG_EEBM_.exit.i.i, %bb.h, %bb.g, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.e, align 8, !noalias !4595 ; 2 uses
  %i.ac = icmp eq i64 %.val.i, 0
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val2.i = load ptr, ptr %i.r, align 8, !noalias !4595, !nonnull !16, !noundef !16
  %i.ad = shl nuw i64 %.val.i, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4607
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.ab

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEINtB4_18SpecFromIterNestedB13_QINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNB13_EE9from_iterB19_.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNBG_EEBM_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !4608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNCNvNtCs8frGy5WneL6_4fish5wutil21path_normalize_for_cd0EE9from_iterB3T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4645
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4646
  store ptr %i.g, ptr %i.d, align 8, !noalias !4647
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.i = call { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !4644 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4647
  store ptr %i.j, ptr %i.c, align 8, !noalias !4648
  store i64 %i.k, ptr %i.h, align 8, !noalias !4648
  %i.l = call noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5wutil21path_normalize_for_cd0INtB7_5FnMutTRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8call_mutBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !4644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4647
  br i1 %i.l, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4646
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4649
  %i.m = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !4649 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #35, !noalias !4644
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.d
  store ptr %i.j, ptr %i.m, align 8, !noalias !4644, !captures !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.k, ptr %i.o, align 8, !noalias !4644
  store i64 4, ptr %i.f, align 8, !noalias !4645
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4645
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !4645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !4644
  call void @llvm.experimental.noalias.scope.decl(metadata !4650)
  call void @llvm.experimental.noalias.scope.decl(metadata !4651)
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.noexc11.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %i.r = phi ptr [ %i.aa, %.noexc11.i ], [ %i.m, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i ]
  %i.s = phi i64 [ %i.ad, %.noexc11.i ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4652
  store ptr %i.p, ptr %i.b, align 8, !noalias !4653
  br label %bb.g

bb.g:                                             ; preds = %.noexc10.i, %bb.f
  %i.t = invoke { ptr, i64 } @_RNvXsg_Cskr4qsHYS30i_15fish_widestringNtB5_17WStrCharSplitIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4654 ; 2 uses

.noexc.i:                                         ; preds = %bb.g
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.noexc.i
  %i.v = extractvalue { ptr, i64 } %i.t, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4653
  store ptr %i.u, ptr %i.a, align 8, !noalias !4655
  store i64 %i.v, ptr %i.q, align 8, !noalias !4655
  %i.w = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5wutil21path_normalize_for_cd0INtB7_5FnMutTRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8call_mutBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4654

.noexc10.i:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4653
  br i1 %i.w, label %bb.i, label %bb.g

bb.i:                                             ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4652
  %i.x = icmp samesign ult i64 %i.s, 576460752303423488
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.f, align 8, !range !27, !alias.scope !4656, !noalias !4645, !noundef !16
  %i.z = icmp eq i64 %i.s, %i.y
  br i1 %i.z, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i.i, label %.noexc11.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.s, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc11_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4644

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc11_crit_edge.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4656, !noalias !4645
  br label %.noexc11.i

.noexc11.i:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc11_crit_edge.i, %bb.i
  %i.aa = phi ptr [ %.pre.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i..noexc11_crit_edge.i ], [ %i.r, %bb.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.s ; 2 uses
  store ptr %i.u, ptr %i.ab, align 8, !noalias !4654, !captures !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.v, ptr %i.ac, align 8, !noalias !4654
  %i.ad = add nuw nsw i64 %i.s, 1                 ; 2 uses
  store i64 %i.ad, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !4656, !noalias !4645
  br label %bb.f

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4646
  store i64 0, ptr %0, align 8, !alias.scope !4644
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !4644
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !4644
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNCNvNtCs8frGy5WneL6_4fish5wutil21path_normalize_for_cd0EE9from_iterB47_.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.g, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reserveCs8frGy5WneL6_4fish.exit.i.i.i
  %lpad.loopexit.split-lp21 = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.f, align 8, !noalias !4645 ; 2 uses
  %i.ag = icmp eq i64 %.val.i, 0
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val9.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4645, !nonnull !16, !noundef !16
  %i.ah = shl nuw i64 %.val.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !4657
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i

bb.l:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !4658
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNCNvNtCs8frGy5WneL6_4fish5wutil21path_normalize_for_cd0EE9from_iterB47_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.k, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp21

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterNCNvNtCs8frGy5WneL6_4fish5wutil21path_normalize_for_cd0EE9from_iterB47_.exit: ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4645
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEINtB2_12SpecFromIterBU_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4IterBW_B1O_EE9from_iterB1U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4674
  %i.c = tail call { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !4672 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i = load i64, ptr %i.f, align 8, !alias.scope !4673, !noundef !16 ; 2 uses
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i, i64 1)
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.g, i64 4) ; 3 uses
  %i.h = shl i64 %..i.i, 4                        ; 4 uses
  %i.i = icmp ugt i64 %.val.i, 1152921504606846974
  %.not.i.i.i = icmp ugt i64 %i.h, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.i, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.d, label %2, !prof !42

2:                                                ; preds = %bb.b
  %3 = icmp eq i64 %i.h, 0
  br i1 %3, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i, label %bb.c

bb.c:                                             ; preds = %2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4675
  %i.j = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !4675 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.h) #35, !noalias !4672
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.c, %2
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %2 ], [ %..i.i, %bb.c ] ; 4 uses
  %4 = icmp ule i64 %..i.i, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %4)
  store ptr %i.d, ptr %.sroa.10.0.i.i, align 8, !noalias !4672
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store ptr %i.e, ptr %i.l, align 8, !noalias !4672
  store i64 %.sroa.4.0.i.i, ptr %i.b, align 8, !noalias !4674
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4674
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !4674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !4672
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4679)
  %i.m = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc.i unwind label %.loopexit.split-lp.i.a, !noalias !4680 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not4.i.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEINtB2_10SpecExtendBR_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4IterBT_B1L_EE11spec_extendB1R_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.noexc13.i, %.lr.ph.i.i.i
  %i.p = phi ptr [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ], [ %i.x, %.noexc13.i ]
  %i.q = phi i64 [ %.sroa.4.0.i.i, %.lr.ph.i.i.i ], [ %i.y, %.noexc13.i ] ; 3 uses
  %i.r = phi i64 [ 1, %.lr.ph.i.i.i ], [ %i.ab, %.noexc13.i ] ; 4 uses
  %.pn.i.i.i = phi { ptr, ptr } [ %i.m, %.lr.ph.i.i.i ], [ %i.ac, %.noexc13.i ]
  %i.s = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.ad, %.noexc13.i ]
  %i.t = extractvalue { ptr, ptr } %.pn.i.i.i, 1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = icmp samesign ult i64 %i.r, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.r, %i.q
  br i1 %i.v, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE7reserveB1E_.exit.i.i.i, label %bb.f

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE7reserveB1E_.exit.i.i.i: ; preds = %bb.e
  %.val.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !4681, !noalias !4674, !noundef !16
  %i.w = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef range(i64 1, 0) %i.w, i64 noundef 8, i64 noundef 16)
          to label %.noexc12.i unwind label %.loopexit.split-lp.thread.i, !noalias !4672

.noexc12.i:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE7reserveB1E_.exit.i.i.i
  %.pre5.i.i.i = load i64, ptr %i.b, align 8, !range !27, !alias.scope !4682, !noalias !4674
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4682, !noalias !4674
  br label %bb.f

bb.f:                                             ; preds = %.noexc12.i, %bb.e
  %i.x = phi ptr [ %i.p, %bb.e ], [ %.pre.i, %.noexc12.i ] ; 2 uses
  %i.y = phi i64 [ %i.q, %bb.e ], [ %.pre5.i.i.i, %.noexc12.i ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.r ; 2 uses
  store ptr %i.s, ptr %i.z, align 8, !noalias !4680
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.t, ptr %i.aa, align 8, !noalias !4680
  %i.ab = add nuw nsw i64 %i.r, 1                 ; 2 uses
  store i64 %i.ab, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !4682, !noalias !4674
  %i.ac = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.thread.i, !noalias !4680 ; 2 uses

.noexc13.i:                                       ; preds = %bb.f
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i11.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEINtB2_10SpecExtendBR_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4IterBT_B1L_EE11spec_extendB1R_.exit.i, label %bb.e

bb.g:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !4672
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !alias.scope !4672
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.af, align 8, !alias.scope !4672
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4IterB13_B1V_EE9from_iterB21_.exit

.loopexit.split-lp.thread.i:                      ; preds = %bb.f, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE7reserveB1E_.exit.i.i.i
  %lpad.loopexit.split-lp14.i.a = landingpad { ptr, i32 }
          cleanup
  %.val9.pre.i = load i64, ptr %i.b, align 8, !noalias !4674
  br label %.loopexit.split-lp.i._crit_edge

.loopexit.split-lp.i.a:                           ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i._crit_edge

.loopexit.split-lp.i._crit_edge:                  ; preds = %.loopexit.split-lp.i.a, %.loopexit.split-lp.thread.i
  %.val9.i = phi i64 [ %.val9.pre.i, %.loopexit.split-lp.thread.i ], [ %.sroa.4.0.i.i, %.loopexit.split-lp.i.a ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp14.i.a, %.loopexit.split-lp.thread.i ], [ %lpad.loopexit.i, %.loopexit.split-lp.i.a ]
  %5 = icmp eq i64 %.val9.i, 0
  br i1 %5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEEB28_.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i._crit_edge
  %.val10.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4674, !nonnull !16, !noundef !16
  %6 = shl nuw i64 %.val9.i, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i, i64 noundef %6, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !4683
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEEB28_.exit.i

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEINtB2_10SpecExtendBR_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4IterBT_B1L_EE11spec_extendB1R_.exit.i: ; preds = %.noexc13.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4673
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4IterB13_B1V_EE9from_iterB21_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEEB28_.exit.i: ; preds = %bb.h, %.loopexit.split-lp.i._crit_edge
  resume { ptr, i32 } %lpad.phi.i

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4IterB13_B1V_EE9from_iterB21_.exit: ; preds = %bb.g, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEINtB2_10SpecExtendBR_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4IterBT_B1L_EE11spec_extendB1R_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4674
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VeccEINtB2_12SpecFromItercINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB34_5RegexNtNtB36_3ffi15CodeUnitWidth32E12replace_impl0EE9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !4694
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.g, align 8, !noalias !4694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4694
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f), !noalias !4694
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !26, !noalias !4694, !noundef !16
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.i, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !4694, !noundef !16 ; 4 uses
  %i.m = shl i64 %i.l, 2                          ; 4 uses
  %i.n = icmp ugt i64 %i.l, 4611686018427387903
  %.not.i.i.i = icmp ugt i64 %i.m, 9223372036854775804
  %or.cond.i.i.i = or i1 %i.n, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4695
  %i.p = call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.m, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !4695 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 4, %bb.d ], [ 0, %bb.b ]
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m) #35, !noalias !4694
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ] ; 3 uses
  %i.r = icmp samesign ule i64 %i.l, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.r)
  store i64 %.sroa.4.0.i.i, ptr %i.e, align 8, !noalias !4694
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %i.s, align 8, !noalias !4694
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8, !noalias !4694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4694
  call void @llvm.experimental.noalias.scope.decl(metadata !4696)
  call void @llvm.experimental.noalias.scope.decl(metadata !4697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4698
  store ptr %1, ptr %i.c, align 8, !noalias !4699
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.u, align 8, !noalias !4699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4699
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %.noexc.i unwind label %bb.j, !noalias !4699

.noexc.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !26, !noalias !4699, !noundef !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !4699 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4699
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %bb.f, label %bb.h, !prof !18

bb.f:                                             ; preds = %.noexc.i
  %i.aa = icmp ugt i64 %i.y, %.sroa.4.0.i.i
  br i1 %i.aa, label %bb.g, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeccE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB2L_5RegexNtNtB2N_3ffi15CodeUnitWidth32E12replace_impl0EECs8frGy5WneL6_4fish.exit.i.i, !prof !21

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %i.y, i64 noundef 4, i64 noundef 4)
          to label %.noexc3.i unwind label %bb.j, !noalias !4694

.noexc3.i:                                        ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !4700, !noalias !4694
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !4700, !noalias !4694
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeccE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB2L_5RegexNtNtB2N_3ffi15CodeUnitWidth32E12replace_impl0EECs8frGy5WneL6_4fish.exit.i.i

bb.h:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
          to label %.noexc4.i unwind label %bb.j, !noalias !4699

.noexc4.i:                                        ; preds = %bb.h
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeccE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB2L_5RegexNtNtB2N_3ffi15CodeUnitWidth32E12replace_impl0EECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.noexc3.i, %bb.f
  %i.ab = phi ptr [ %.sroa.10.0.i.i, %bb.f ], [ %.pre.i, %.noexc3.i ]
  %i.ac = phi i64 [ 0, %bb.f ], [ %.pre.i.i.i, %.noexc3.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4699
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !4699
  store ptr %i.t, ptr %i.a, align 8, !noalias !4699
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !4699
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB1U_5RegexNtNtB1W_3ffi15CodeUnitWidth32E12replace_impl0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3p_8for_each4callcNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4C_3VeccE14extend_trustedBN_E0E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %1, ptr noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VeccEINtB4_18SpecFromIterNestedcINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1B_6copied6CopiedINtNtNtB1F_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB3j_5RegexNtNtB3l_3ffi15CodeUnitWidth32E12replace_impl0EE9from_iterCs8frGy5WneL6_4fish.exit unwind label %bb.j, !noalias !4694

bb.i:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #32, !noalias !4694
  unreachable

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeccE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB2L_5RegexNtNtB2N_3ffi15CodeUnitWidth32E12replace_impl0EECs8frGy5WneL6_4fish.exit.i.i, %bb.h, %bb.g, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.e, align 8, !noalias !4694 ; 2 uses
  %i.ag = icmp eq i64 %.val.i, 0
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeccEECs8frGy5WneL6_4fish.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val2.i = load ptr, ptr %i.s, align 8, !noalias !4694, !nonnull !16, !noundef !16
  %i.ah = shl nuw i64 %.val.i, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !4701
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeccEECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeccEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.af

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VeccEINtB4_18SpecFromIterNestedcINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1B_6copied6CopiedINtNtNtB1F_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB3j_5RegexNtNtB3l_3ffi15CodeUnitWidth32E12replace_impl0EE9from_iterCs8frGy5WneL6_4fish.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VeccE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB13_6copied6CopiedINtNtNtB17_5slice4iter4ItermEENCNvMs3_NtCs8n0tpEuULLm_5pcre210regex_implINtB2L_5RegexNtNtB2N_3ffi15CodeUnitWidth32E12replace_impl0EECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VeccEINtB2_12SpecFromItercQNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !4713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4714)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !4715, !nonnull !16, !noundef !16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4715, !nonnull !16, !noundef !16
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.i, ptr %1, align 8, !alias.scope !4715
  %i.j = load i32, ptr %i.e, align 4, !noalias !4716, !noundef !16 ; 4 uses
  %i.k = xor i32 %i.j, 55296
  %i.l = add i32 %i.k, -1114112
  %i.m = icmp ult i32 %i.l, -1112064
  br i1 %i.m, label %.split.i.i.i, label %bb.c

.split.i.i.i:                                     ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4717
  store i32 %i.j, ptr %i.a, align 4, !noalias !4717
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #32, !noalias !4716
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i32 %i.j, 1114112
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4713
  call void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtB5_8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !4711
  %i.o = load i64, ptr %i.b, align 8, !noalias !4713, !noundef !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4713
  %i.p = call i64 @llvm.uadd.sat.i64(i64 %i.o, i64 1)
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %i.p, i64 4) ; 3 uses
  %i.q = shl i64 %..i.i, 2                        ; 4 uses
  %i.r = icmp ugt i64 %i.o, 4611686018427387902
  %.not.i.i.i = icmp ugt i64 %i.q, 9223372036854775804
  %or.cond.i.i.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %2, !prof !42

2:                                                ; preds = %bb.c
  %3 = icmp eq i64 %i.q, 0
  br i1 %3, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i, label %bb.d

bb.d:                                             ; preds = %2
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4718
  %i.s = call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.q, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !4718 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.ph.i.i = phi i64 [ 4, %bb.d ], [ 0, %bb.c ]
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.q) #35, !noalias !4711
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.d, %2
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 4 to ptr), %2 ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %2 ], [ %..i.i, %bb.d ] ; 2 uses
  %4 = icmp ule i64 %..i.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %4)
  store i32 %i.j, ptr %.sroa.10.0.i.i, align 4, !noalias !4711
  store i64 %.sroa.4.0.i.i, ptr %i.c, align 8, !noalias !4713
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4713
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !4713
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcQNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.i unwind label %bb.g, !noalias !4711

bb.f:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !4711
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.u, align 8, !alias.scope !4711
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.v, align 8, !alias.scope !4711
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcQNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E9from_iterCs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.c, align 8, !noalias !4713 ; 2 uses
  %i.x = icmp eq i64 %.val.i, 0
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeccEECs8frGy5WneL6_4fish.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val7.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4713, !nonnull !16, !noundef !16
  %i.y = shl nuw i64 %.val.i, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !4719
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeccEECs8frGy5WneL6_4fish.exit.i

bb.i:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4712
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcQNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E9from_iterCs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VeccEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.w

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcQNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E9from_iterCs8frGy5WneL6_4fish.exit: ; preds = %bb.f, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1r_5slice4iter4IterhEEE9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !4736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4736
  call void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterhEENtB5_8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f), !noalias !4737
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !26, !noalias !4736, !noundef !16
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.i, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !4736, !noundef !16 ; 6 uses
  %.not.i.i.i = icmp slt i64 %i.k, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4738
  %i.m = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4738 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.k) #35, !noalias !4737
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  store i64 %i.k, ptr %i.e, align 8, !noalias !4736
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %i.o, align 8, !noalias !4736
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8, !noalias !4736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4736
  call void @llvm.experimental.noalias.scope.decl(metadata !4739)
  call void @llvm.experimental.noalias.scope.decl(metadata !4740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4741
  store ptr %1, ptr %i.c, align 8, !noalias !4742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4742
  invoke void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters6copied6CopiedINtNtNtBb_5slice4iter4IterhEENtB5_8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc.i unwind label %bb.j, !noalias !4743

.noexc.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !26, !noalias !4742, !noundef !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noalias !4742 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4742
  %i.u = trunc nuw i64 %i.r to i1
  br i1 %i.u, label %bb.f, label %bb.h, !prof !18

bb.f:                                             ; preds = %.noexc.i
  %i.v = icmp ugt i64 %i.t, %i.k
  br i1 %i.v, label %bb.g, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB18_5slice4iter4IterhEEECs8frGy5WneL6_4fish.exit.i.i, !prof !21

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %i.t, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %bb.j, !noalias !4737

.noexc3.i:                                        ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !4744, !noalias !4736
  %.pre.i = load ptr, ptr %i.o, align 8, !alias.scope !4744, !noalias !4736
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB18_5slice4iter4IterhEEECs8frGy5WneL6_4fish.exit.i.i

bb.h:                                             ; preds = %.noexc.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #32
          to label %.noexc4.i unwind label %bb.j, !noalias !4743

.noexc4.i:                                        ; preds = %bb.h
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB18_5slice4iter4IterhEEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.noexc3.i, %bb.f
  %i.w = phi ptr [ %.sroa.10.0.i.i, %bb.f ], [ %.pre.i, %.noexc3.i ]
  %i.x = phi i64 [ 0, %bb.f ], [ %.pre.i.i.i, %.noexc3.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4745
  store ptr %i.p, ptr %i.a, align 8, !noalias !4746
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4746
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4746
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_8Iterator4folduNCINvNvB1R_8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2K_3VechE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1G_5slice4iter4IterhEEE9from_iterCs8frGy5WneL6_4fish.exit unwind label %bb.j, !noalias !4747

bb.i:                                             ; preds = %bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #32, !noalias !4737
  unreachable

bb.j:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB18_5slice4iter4IterhEEECs8frGy5WneL6_4fish.exit.i.i, %bb.h, %bb.g, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.e, align 8, !noalias !4736 ; 2 uses
  %i.z = icmp eq i64 %.val.i, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val2.i = load ptr, ptr %i.o, align 8, !noalias !4736, !nonnull !16, !noundef !16
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4748
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.y

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1G_5slice4iter4IterhEEE9from_iterCs8frGy5WneL6_4fish.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VechE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB18_5slice4iter4IterhEEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !4749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecmEINtB2_12SpecFromItermQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1r_5slice4iter4ItermEEE9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !4766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4766
  call void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtB9_8adapters6copied6CopiedINtNtNtBb_5slice4iter4ItermEENtB5_8Iterator9size_hintCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f), !noalias !4767
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !26, !noalias !4766, !noundef !16
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.i, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !4766, !noundef !16 ; 4 uses
  %i.l = shl i64 %i.k, 2                          ; 4 uses
  %i.m = icmp ugt i64 %i.k, 4611686018427387903
  %.not.i.i.i = icmp ugt i64 %i.l, 9223372036854775804
  %or.cond.i.i.i = or i1 %i.m, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4768
  %i.o = call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !4768 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterNtB17_20CompletionEntryIndexNtB17_15CompletionEntryENCNvMs8_B17_NtB17_9Completer26complete_param_for_command0EE9from_iterB19_:bb.a

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.q, %bb.b ], [ %i.k, %bb.a ]
  %i.m = phi { ptr, ptr } [ %i.p, %bb.b ], [ %i.j, %bb.a ]
  %i.n = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4823
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs8_NtCs8frGy5WneL6_4fish8completeNtBW_9Completer26complete_param_for_command0INtB7_5FnMutTTRNtBW_20CompletionEntryIndexRNtBW_15CompletionEntryEEE8call_mutBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n), !noalias !4824
  %i.o = load i64, ptr %i.d, align 8, !range !19, !noalias !4823, !noundef !16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4823
  %i.p = call { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB15_15CompletionEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1), !noalias !4822 ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %.loopexit19, label %.lr.ph.i.i.i

.loopexit19:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4820
  store i64 0, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.s, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit14, %.loopexit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.d:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #33
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4825
  %.sroa.9.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.9.8.copyload.i.i = load i64, ptr %.sroa.9.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !4825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.o, ptr %i.g, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.7.8.copyload.i.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.9.8.copyload.i.i, ptr %.sroa.8.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4826
  %i.u = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !4826 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #35
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 4, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4827)
  call void @llvm.experimental.noalias.scope.decl(metadata !4828)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4829
  store ptr %i.w, ptr %i.b, align 8, !noalias !4830
  %i.x = invoke { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB15_15CompletionEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4831 ; 2 uses

.noexc5:                                          ; preds = %bb.g
  %i.y = extractvalue { ptr, ptr } %i.x, 0        ; 2 uses
  %.not14.i.i.i9.i.i = icmp eq ptr %i.y, null
  br i1 %.not14.i.i.i9.i.i, label %.loopexit14, label %.lr.ph.i.i.i.preheader.lr.ph.i.i

.lr.ph.i.i.i.preheader.lr.ph.i.i:                 ; preds = %.noexc5
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i.i.i.preheader.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %.noexc8, %.lr.ph.i.i.i.preheader.lr.ph.i.i
  %i.z = phi ptr [ %i.u, %.lr.ph.i.i.i.preheader.lr.ph.i.i ], [ %i.am, %.noexc8 ]
  %i.aa = phi i64 [ 1, %.lr.ph.i.i.i.preheader.lr.ph.i.i ], [ %i.ao, %.noexc8 ] ; 5 uses
  %i.ab = phi ptr [ %i.y, %.lr.ph.i.i.i.preheader.lr.ph.i.i ], [ %i.aq, %.noexc8 ]
  %i.ac = phi { ptr, ptr } [ %i.x, %.lr.ph.i.i.i.preheader.lr.ph.i.i ], [ %i.ap, %.noexc8 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc7, %.lr.ph.i.i.i.preheader.i.i
  %i.ad = phi ptr [ %i.ai, %.noexc7 ], [ %i.ab, %.lr.ph.i.i.i.preheader.i.i ]
  %i.ae = phi { ptr, ptr } [ %i.ah, %.noexc7 ], [ %i.ac, %.lr.ph.i.i.i.preheader.i.i ]
  %i.af = extractvalue { ptr, ptr } %i.ae, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4832
  invoke void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs8_NtCs8frGy5WneL6_4fish8completeNtBW_9Completer26complete_param_for_command0INtB7_5FnMutTTRNtBW_20CompletionEntryIndexRNtBW_15CompletionEntryEEE8call_mutBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4833

.noexc6:                                          ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = load i64, ptr %i.a, align 8, !range !19, !noalias !4832, !noundef !16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4832
  %i.ah = invoke { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB15_15CompletionEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4831 ; 2 uses

.noexc7:                                          ; preds = %bb.h
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i, label %.loopexit14, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %.noexc6
  %.sroa.7.8.copyload.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4834
  %.sroa.9.8.copyload.i.i.i.i = load i64, ptr %.sroa.9.8..sroa.6.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !4834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4835
  store i64 %i.ag, ptr %i.c, align 8, !noalias !4835
  store ptr %.sroa.7.8.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !4835
  store i64 %.sroa.9.8.copyload.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !4835
  %i.aj = icmp samesign ult i64 %i.aa, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.h, align 8, !range !27, !alias.scope !4836, !noundef !16
  %i.al = icmp eq i64 %i.aa, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEE7reserveBM_.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEE7reserveBM_.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEE7reserveBM_.exit.i.i_crit_edge, %bb.i
  %i.am = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEE7reserveBM_.exit.i.i_crit_edge ], [ %i.z, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4836
  %i.ao = add nuw nsw i64 %i.aa, 1                ; 2 uses
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4829
  store ptr %i.w, ptr %i.b, align 8, !noalias !4830
  %i.ap = invoke { ptr, ptr } @_RNvXsk_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_4IterNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB15_15CompletionEntryENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4831 ; 2 uses

.noexc8:                                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEE7reserveBM_.exit.i.i
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0      ; 2 uses
  %.not14.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not14.i.i.i.i.i, label %.loopexit14, label %.lr.ph.i.i.i.preheader.i.i

bb.j:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #33, !noalias !4836
  br label %.body

bb.k:                                             ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.aa, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEE7reserveBM_.exit.i.i_crit_edge unwind label %bb.j

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEE7reserveBM_.exit.i.i_crit_edge: ; preds = %bb.k
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4836
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEE7reserveBM_.exit.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %.lr.ph.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecIBv_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEE7reserveBM_.exit.i.i, %bb.g
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %lpad.loopexit.split-lp50, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtCs8frGy5WneL6_4fish8complete16CompleteEntryOptEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #33
  br label %bb.l

.loopexit14:                                      ; preds = %.noexc8, %.noexc7, %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.c

bb.l:                                             ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.t, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru4IterNtNtB1j_4proc3PidB11_ENCNvMs1_B1h_NtB1h_15WaitHandleStore8get_list0EE9from_iterB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4861)
  %i.d = load i64, ptr %1, align 8, !alias.scope !4862, !noundef !16 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, -1                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !4862, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !4862, !noundef !16
  %.val.i = load ptr, ptr %i.h, align 8, !noalias !4860, !nonnull !16, !noundef !16 ; 6 uses
  %i.k = load i64, ptr %.val.i, align 8, !noalias !4860, !noundef !16 ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.m, ptr %.val.i, align 8, !noalias !4860
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.h, !prof !21

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru4IterNtNtB19_4proc3PidBR_ENCNvMs1_B17_NtB17_15WaitHandleStore8get_list0EE11spec_extendB19_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load i64, ptr %.val.i, align 8, !noalias !4863, !noundef !16
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %.val.i, align 8, !noalias !4863
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit unwind label %bb.q

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.val.i, ptr %i.b, align 8
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.u = shl i64 %..i, 3                          ; 3 uses
  %i.v = icmp ugt i64 %i.f, 2305843009213693950
  %.not.i.i = icmp ugt i64 %i.u, 9223372036854775800
  %or.cond.i.i = or i1 %i.v, %.not.i.i
  br i1 %or.cond.i.i, label %bb.j, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4864
  %i.w = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !4864 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.i ], [ 0, %bb.h ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.u) #35
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  store ptr %.val.i, ptr %i.w, align 8
  store i64 %..i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4866)
  %i.y = icmp eq i64 %i.f, 0
  br i1 %i.y, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru4IterNtNtB19_4proc3PidBR_ENCNvMs1_B17_NtB17_15WaitHandleStore8get_list0EE11spec_extendB19_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i
  %i.z = phi ptr [ %i.an, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i ], [ %i.w, %bb.k ]
  %i.aa = phi i64 [ %i.ap, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i ], [ 1, %bb.k ] ; 5 uses
  %i.ab = phi ptr [ %i.af, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i ], [ %i.j, %bb.k ] ; 2 uses
  %i.ac = phi i64 [ %i.ad, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i ], [ %i.f, %bb.k ] ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !4867, !noundef !16
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !4868, !nonnull !16, !noundef !16 ; 6 uses
  %i.ag = load i64, ptr %.val.i.i.i, align 8, !noalias !4868, !noundef !16 ; 2 uses
  %i.ah = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = add i64 %i.ag, 1                        ; 2 uses
  store i64 %i.ai, ptr %.val.i.i.i, align 8, !noalias !4868
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtCskOHnqPTvc0z_3lru4IterNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1q_11wait_handle10WaitHandleEENCNvMs1_B2p_NtB2p_15WaitHandleStore8get_list0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.i.i, !prof !21

bb.l:                                             ; preds = %.lr.ph.i.i
  tail call void @llvm.trap()
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtCskOHnqPTvc0z_3lru4IterNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1q_11wait_handle10WaitHandleEENCNvMs1_B2p_NtB2p_15WaitHandleStore8get_list0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.i.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4869
  store ptr %.val.i.i.i, ptr %i.a, align 8, !noalias !4869
  %i.ak = icmp samesign ult i64 %i.aa, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i64, ptr %i.c, align 8, !range !27, !alias.scope !4870, !noundef !16
  %i.am = icmp eq i64 %i.aa, %i.al
  br i1 %i.am, label %bb.o, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i_crit_edge, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtCskOHnqPTvc0z_3lru4IterNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1q_11wait_handle10WaitHandleEENCNvMs1_B2p_NtB2p_15WaitHandleStore8get_list0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.i.i
  %i.an = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i_crit_edge ], [ %i.z, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtCskOHnqPTvc0z_3lru4IterNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1q_11wait_handle10WaitHandleEENCNvMs1_B2p_NtB2p_15WaitHandleStore8get_list0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aa
  store ptr %.val.i.i.i, ptr %i.ao, align 8, !noalias !4869
  %i.ap = add nuw nsw i64 %i.aa, 1                ; 2 uses
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4869
  %i.aq = icmp eq i64 %i.ad, 0
  br i1 %i.aq, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru4IterNtNtB19_4proc3PidBR_ENCNvMs1_B17_NtB17_15WaitHandleStore8get_list0EE11spec_extendB19_.exit, label %.lr.ph.i.i

bb.m:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load i64, ptr %.val.i.i.i, align 8, !noalias !4871, !noundef !16
  %i.at = add i64 %i.as, -1                       ; 2 uses
  store i64 %i.at, ptr %.val.i.i.i, align 8, !noalias !4871
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.n, label %.body

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #29
          to label %.body unwind label %bb.p, !noalias !4869

bb.o:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtCskOHnqPTvc0z_3lru4IterNtNtCs8frGy5WneL6_4fish4proc3PidINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1q_11wait_handle10WaitHandleEENCNvMs1_B2p_NtB2p_15WaitHandleStore8get_list0ENtNtNtB9_6traits8iterator8Iterator4nextB1q_.exit.i.i
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aa, i64 noundef range(i64 1, 0) %i.ac, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i_crit_edge unwind label %bb.m, !noalias !4872

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i_crit_edge: ; preds = %bb.o
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4870
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4869
  unreachable

.body:                                            ; preds = %bb.m, %bb.n
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEEB1q_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit unwind label %bb.q

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru4IterNtNtB19_4proc3PidBR_ENCNvMs1_B17_NtB17_15WaitHandleStore8get_list0EE11spec_extendB19_.exit: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEE7reserveBW_.exit.i.i, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.q:                                             ; preds = %bb.g, %.body
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish11wait_handle10WaitHandleEEB1a_.exit: ; preds = %bb.f, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.ar, %.body ], [ %i.q, %bb.g ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2q_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtB1j_8builtins6disown6disown0EE9from_iterB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4899)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4900)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4899
  store ptr %i.g, ptr %i.c, align 8, !noalias !4901
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !4902, !nonnull !16, !noundef !16
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !4902
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.j = phi ptr [ %i.l, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.i
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !4902
  %i.m = call noundef ptr @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins6disown6disown0INtB7_5FnMutTRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8call_mutBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !noalias !4900 ; 5 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.b, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4899
  store i64 0, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.f:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load i64, ptr %i.m, align 8, !noalias !4903, !noundef !16
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.m, align 8, !noalias !4903
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit unwind label %bb.u

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.m, ptr %i.e, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4904
  %i.t = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !4904 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 32) #35
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr %i.m, ptr %i.t, align 8
  store i64 4, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4905)
  call void @llvm.experimental.noalias.scope.decl(metadata !4906)
  call void @llvm.experimental.noalias.scope.decl(metadata !4907)
  call void @llvm.experimental.noalias.scope.decl(metadata !4908)
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i, %bb.j
  %i.x = phi ptr [ %i.ah, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i ], [ %i.t, %bb.j ]
  %i.y = phi i64 [ %i.aj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i ], [ 1, %bb.j ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4909)
  call void @llvm.experimental.noalias.scope.decl(metadata !4910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4911
  store ptr %i.v, ptr %i.a, align 8, !noalias !4912
  %i.z = load ptr, ptr %i.w, align 8, !alias.scope !4913, !nonnull !16, !noundef !16
  %.promoted.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4913
  br label %bb.l

bb.l:                                             ; preds = %.noexc10, %bb.k
  %i.aa = phi ptr [ %i.ac, %.noexc10 ], [ %.promoted.i.i.i.i, %bb.k ] ; 3 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.d, align 8, !alias.scope !4913
  %i.ad = invoke noundef ptr @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins6disown6disown0INtB7_5FnMutTRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE8call_mutBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aa)
          to label %.noexc10 unwind label %bb.s, !noalias !4914 ; 5 uses

.noexc10:                                         ; preds = %bb.m
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.n

bb.n:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4915
  store ptr %i.ad, ptr %i.b, align 8, !noalias !4915
  %i.ae = icmp samesign ult i64 %i.y, 1152921504606846976
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i64, ptr %i.f, align 8, !range !27, !alias.scope !4916, !noundef !16
  %i.ag = icmp eq i64 %i.y, %i.af
  br i1 %i.ag, label %bb.q, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i_crit_edge, %bb.n
  %i.ah = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i_crit_edge ], [ %i.x, %bb.n ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.y
  store ptr %i.ad, ptr %i.ai, align 8, !noalias !4916
  %i.aj = add nuw nsw i64 %i.y, 1                 ; 2 uses
  store i64 %i.aj, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4915
  br label %bb.k

bb.o:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load i64, ptr %i.ad, align 8, !noalias !4917, !noundef !16
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ad, align 8, !noalias !4917
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %.body

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %.body unwind label %bb.r, !noalias !4916

bb.q:                                             ; preds = %bb.n
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.y, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i_crit_edge unwind label %bb.o

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i_crit_edge: ; preds = %bb.q
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4916
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE7reserveBW_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4916
  unreachable

bb.s:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %i.ak, %bb.p ], [ %i.ak, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1q_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit unwind label %bb.u

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.e

bb.u:                                             ; preds = %bb.g, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit: ; preds = %bb.f, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.g ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2A_6filter6FilterINtNtNtB2E_5slice4iter4IterB11_ENCNvB1k_13fire_internals_0EEE9from_iterB1m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call noundef ptr @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_13fire_internals_0EENtNtNtB8_6traits8iterator8Iterator4nextB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_13fire_internals_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.g unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB2l_5slice4iter4IterBR_ENCNvB1a_13fire_internals_0EEE11spec_extendB1c_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !4934
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit unwind label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.d, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 1)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 3 uses
  %i.o = shl i64 %..i, 3                          ; 4 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693950
  %.not.i.i = icmp ugt i64 %i.o, 9223372036854775800
  %or.cond.i.i = or i1 %i.p, %.not.i.i
  br i1 %or.cond.i.i, label %bb.i, label %2, !prof !42

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.o, 0
  br i1 %3, label %bb.j, label %bb.h

bb.h:                                             ; preds = %2
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4935
  %i.q = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !4935 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.h ], [ 0, %bb.g ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.o) #35
          to label %.noexc7 unwind label %bb.e

.noexc7:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h, %2
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.q, %bb.h ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %2 ], [ %..i, %bb.h ] ; 2 uses
  %4 = icmp ule i64 %..i, %.sroa.4.0.i
  call void @llvm.assume(i1 %4)
  store ptr %i.g, ptr %.sroa.10.0.i, align 8
  store i64 %.sroa.4.0.i, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4936)
  call void @llvm.experimental.noalias.scope.decl(metadata !4937)
  %i.s = invoke noundef ptr @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_13fire_internals_0EENtNtNtB8_6traits8iterator8Iterator4nextB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4938 ; 2 uses

.noexc9:                                          ; preds = %bb.j
  %.not5.i.i = icmp eq ptr %i.s, null
  br i1 %.not5.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB2l_5slice4iter4IterBR_ENCNvB1a_13fire_internals_0EEE11spec_extendB1c_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc9, %.noexc10
  %i.t = phi ptr [ %i.z, %.noexc10 ], [ %.sroa.10.0.i, %.noexc9 ]
  %i.u = phi i64 [ %i.ab, %.noexc10 ], [ 1, %.noexc9 ] ; 5 uses
  %i.v = phi ptr [ %i.ac, %.noexc10 ], [ %i.s, %.noexc9 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4939
  store ptr %i.v, ptr %i.b, align 8, !noalias !4939
  %i.w = icmp samesign ult i64 %i.u, 1152921504606846976
  call void @llvm.assume(i1 %i.w)
  %i.x = load i64, ptr %i.f, align 8, !range !27, !alias.scope !4938, !noundef !16
  %i.y = icmp eq i64 %i.u, %i.x
  br i1 %i.y, label %bb.k, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4939
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_13fire_internals_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.n unwind label %bb.l, !noalias !4938

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i_crit_edge, %.lr.ph.i.i
  %i.z = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i_crit_edge ], [ %i.t, %.lr.ph.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.u
  store ptr %i.v, ptr %i.aa, align 8, !noalias !4938
  %i.ab = add nuw nsw i64 %i.u, 1                 ; 2 uses
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4939
  %i.ac = invoke noundef ptr @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_13fire_internals_0EENtNtNtB8_6traits8iterator8Iterator4nextB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4938 ; 2 uses

.noexc10:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i
  %.not.i.i8 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i8, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB2l_5slice4iter4IterBR_ENCNvB1a_13fire_internals_0EEE11spec_extendB1c_.exit, label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !4940
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %.body

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %.body unwind label %bb.o, !noalias !4938

bb.n:                                             ; preds = %bb.k
  %i.ag = load i64, ptr %i.a, align 8, !noalias !4939, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4939
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %i.ag, i64 1)
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.u, i64 noundef range(i64 1, 0) %i.ah, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i_crit_edge unwind label %bb.l

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4938
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4938
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i, %bb.j
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.ad, %bb.m ], [ %lpad.loopexit.split-lp25, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit unwind label %bb.p

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB2l_5slice4iter4IterBR_ENCNvB1a_13fire_internals_0EEE11spec_extendB1c_.exit: ; preds = %.noexc10, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.d

bb.p:                                             ; preds = %bb.f, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit: ; preds = %bb.e, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.f ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2A_6filter6FilterINtNtNtB2E_5slice4iter4IterB11_ENCNvB1k_21get_function_handlers0EEE9from_iterB1m_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = tail call noundef ptr @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_21get_function_handlers0EENtNtNtB8_6traits8iterator8Iterator4nextB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_21get_function_handlers0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.g unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB2l_5slice4iter4IterBR_ENCNvB1a_21get_function_handlers0EEE11spec_extendB1c_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !4957
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit unwind label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.d, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 1)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 3 uses
  %i.o = shl i64 %..i, 3                          ; 4 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693950
  %.not.i.i = icmp ugt i64 %i.o, 9223372036854775800
  %or.cond.i.i = or i1 %i.p, %.not.i.i
  br i1 %or.cond.i.i, label %bb.i, label %2, !prof !42

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.o, 0
  br i1 %3, label %bb.j, label %bb.h

bb.h:                                             ; preds = %2
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !4958
  %i.q = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !4958 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.h ], [ 0, %bb.g ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.o) #35
          to label %.noexc7 unwind label %bb.e

.noexc7:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h, %2
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.q, %bb.h ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %2 ], [ %..i, %bb.h ] ; 2 uses
  %4 = icmp ule i64 %..i, %.sroa.4.0.i
  call void @llvm.assume(i1 %4)
  store ptr %i.g, ptr %.sroa.10.0.i, align 8
  store i64 %.sroa.4.0.i, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4959)
  call void @llvm.experimental.noalias.scope.decl(metadata !4960)
  %i.s = invoke noundef ptr @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_21get_function_handlers0EENtNtNtB8_6traits8iterator8Iterator4nextB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4961 ; 2 uses

.noexc9:                                          ; preds = %bb.j
  %.not5.i.i = icmp eq ptr %i.s, null
  br i1 %.not5.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB2l_5slice4iter4IterBR_ENCNvB1a_21get_function_handlers0EEE11spec_extendB1c_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc9, %.noexc10
  %i.t = phi ptr [ %i.z, %.noexc10 ], [ %.sroa.10.0.i, %.noexc9 ]
  %i.u = phi i64 [ %i.ab, %.noexc10 ], [ 1, %.noexc9 ] ; 5 uses
  %i.v = phi ptr [ %i.ac, %.noexc10 ], [ %i.s, %.noexc9 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4962
  store ptr %i.v, ptr %i.b, align 8, !noalias !4962
  %i.w = icmp samesign ult i64 %i.u, 1152921504606846976
  call void @llvm.assume(i1 %i.w)
  %i.x = load i64, ptr %i.f, align 8, !range !27, !alias.scope !4961, !noundef !16
  %i.y = icmp eq i64 %i.u, %i.x
  br i1 %i.y, label %bb.k, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4962
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_21get_function_handlers0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2p_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.n unwind label %bb.l, !noalias !4961

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i_crit_edge, %.lr.ph.i.i
  %i.z = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i_crit_edge ], [ %i.t, %.lr.ph.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.u
  store ptr %i.v, ptr %i.aa, align 8, !noalias !4961
  %i.ab = add nuw nsw i64 %i.u, 1                 ; 2 uses
  store i64 %i.ab, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4962
  %i.ac = invoke noundef ptr @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_21get_function_handlers0EENtNtNtB8_6traits8iterator8Iterator4nextB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4961 ; 2 uses

.noexc10:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i
  %.not.i.i8 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i8, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB2l_5slice4iter4IterBR_ENCNvB1a_21get_function_handlers0EEE11spec_extendB1c_.exit, label %.lr.ph.i.i

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !4963
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %.body

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %.body unwind label %bb.o, !noalias !4961

bb.n:                                             ; preds = %bb.k
  %i.ag = load i64, ptr %i.a, align 8, !noalias !4962, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4962
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %i.ag, i64 1)
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.u, i64 noundef range(i64 1, 0) %i.ah, i64 noundef 8, i64 noundef 8)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i_crit_edge unwind label %bb.l

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4961
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !4961
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE7reserveBZ_.exit.i.i, %bb.j
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.ad, %bb.m ], [ %lpad.loopexit.split-lp25, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEEB1t_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit unwind label %bb.p

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB2l_5slice4iter4IterBR_ENCNvB1a_21get_function_handlers0EEE11spec_extendB1c_.exit: ; preds = %.noexc10, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.d

bb.p:                                             ; preds = %bb.f, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEEB1d_.exit: ; preds = %bb.e, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.f ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB3u_4path9path_sort0EE9from_iterB3w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
          to label %.noexc unwind label %bb.b, !noalias !4998

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !44, !noalias !4999, !noundef !16 ; 4 uses
  %.not.i = icmp eq i64 %i.e, -2
  br i1 %.not.i, label %bb.c, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !5000)
  call void @llvm.experimental.noalias.scope.decl(metadata !5001)
  call void @llvm.experimental.noalias.scope.decl(metadata !5002)
  %i.i = load i64, ptr %1, align 8, !range !19, !alias.scope !5003, !noundef !16 ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB1f_4path9path_sort0EEB1h_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !5003, !nonnull !16, !noundef !16
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5004
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !5003, !noundef !16 ; 2 uses
  %i.l = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB1f_4path9path_sort0EEB1h_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i6.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i6.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !5003, !nonnull !16, !noundef !16
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %.val3.i.i.i, i64 noundef 1) #31, !noalias !5003
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB1f_4path9path_sort0EEB1h_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB1f_4path9path_sort0EEB1h_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i6.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i.i.i, %bb.c, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsNCNvNtB3b_4path9path_sort0EE11spec_extendB3d_.exit
  ret void

bb.e:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = icmp sgt i64 %i.e, 0
  br i1 %i.o, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload) ]
  %i.p = shl nuw i64 %i.e, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5005
  br label %bb.s

bb.g:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx7, align 8, !noalias !5006 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx7.sroa_idx, align 8, !noalias !5006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5007
  %i.q = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5007 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #35
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  store i64 %i.e, ptr %i.q, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload, ptr %.sroa.513.0..sroa_idx, align 8
  store i64 4, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5008)
  call void @llvm.experimental.noalias.scope.decl(metadata !5009)
  call void @llvm.experimental.noalias.scope.decl(metadata !5010)
  call void @llvm.experimental.noalias.scope.decl(metadata !5011)
  %.sroa.7.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit.i.i, %bb.i
  %i.s = phi ptr [ %i.ae, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ %i.q, %bb.i ]
  %i.t = phi i64 [ %i.ag, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ 1, %bb.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5012
  invoke void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c)
end_hunk_1
begin_hunk_2_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB3f_3ffi6os_str8OsStringEEE9from_iterCs8frGy5WneL6_4fish:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !5194)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5195
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !5196, !nonnull !16, !noundef !16 ; 3 uses
  %i.af = load ptr, ptr %i.ad, align 8, !alias.scope !5196, !nonnull !16, !noundef !16 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i, label %_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i

_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i: ; preds = %bb.k
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = ptrtoint ptr %i.ae to i64
  br label %_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i

_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i, %_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i
  %i.ai = phi ptr [ %.sroa.10.0.i, %_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i ], [ %i.aq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i ]
  %i.aj = phi i64 [ 1, %_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i ], [ %i.as, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i ] ; 5 uses
  %i.ak = phi ptr [ %i.af, %_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.lr.ph.i.i ], [ %i.al, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5197)
  call void @llvm.experimental.noalias.scope.decl(metadata !5198)
  call void @llvm.experimental.noalias.scope.decl(metadata !5199)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 6 uses
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.ak, align 8, !noalias !5200 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -1
  br i1 %.not.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i.loopexit, label %bb.l

bb.l:                                             ; preds = %_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !5201
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %i.a, align 8, !noalias !5202
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB10_3ffi6os_str8OsStringEENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i unwind label %bb.m, !noalias !5203

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.au, %bb.o ], [ %i.au, %bb.p ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body unwind label %bb.r, !noalias !5204

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  store ptr %i.al, ptr %i.ad, align 8, !alias.scope !5205
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB10_3ffi6os_str8OsStringEENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5201
  %.pr.i.i = load i64, ptr %i.b, align 8, !noalias !5195 ; 4 uses
  %.not.i.i8 = icmp eq i64 %.pr.i.i, -1
  br i1 %.not.i.i8, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i.loopexit, label %bb.n

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB10_3ffi6os_str8OsStringEENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5195 ; 3 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5195
  %i.an = icmp samesign ult i64 %i.aj, 384307168202282326
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i64, ptr %i.f, align 8, !range !27, !alias.scope !5204, !noundef !16
  %i.ap = icmp eq i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.q, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge, %bb.n
  %i.aq = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge ], [ %i.ai, %bb.n ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.aj ; 3 uses
  store i64 %.pr.i.i, ptr %i.ar, align 8, !noalias !5195
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !5195
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !5195
  %i.as = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.as, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5195
  %i.at = icmp eq ptr %i.al, %i.ae
  br i1 %i.at, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i.loopexit, label %_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i

bb.o:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.al, ptr %i.ad, align 8, !alias.scope !5205
  %i.av = icmp eq i64 %.pr.i.i, 0
  br i1 %i.av, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  %i.aw = shl nuw i64 %.pr.i.i, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5206
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i

bb.q:                                             ; preds = %bb.n
  %i.ax = ptrtoint ptr %i.al to i64
  %i.ay = sub nuw i64 %i.ah, %i.ax
  %i.az = udiv exact i64 %i.ay, 24
  %i.ba = add nuw nsw i64 %i.az, 1
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.aj, i64 noundef %i.ba, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge unwind label %bb.o, !noalias !5207

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge: ; preds = %bb.q
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5204
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !5204
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i.loopexit: ; preds = %_RNvXsi_NtCsaL1QbXo9JQH_3std3envNtB5_6ArgsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB10_3ffi6os_str8OsStringEENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i
  store ptr %i.al, ptr %i.ad, align 8, !alias.scope !5205
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i.loopexit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5195
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2W_3ffi6os_str8OsStringEEE11spec_extendCs8frGy5WneL6_4fish.exit unwind label %bb.s, !noalias !5204

bb.s:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.s ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB1d_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2W_3ffi6os_str8OsStringEEE11spec_extendCs8frGy5WneL6_4fish.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB2I_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.d

bb.t:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB1d_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit: ; preds = %.body, %bb.u
  %.pn24 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.u ]
  resume { ptr, i32 } %.pn24

bb.u:                                             ; preds = %bb.c, %bb.e, %bb.f
  %.pn.ph = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.p, %bb.e ], [ %i.p, %bb.f ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6ArgsOsINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtB1d_3ffi6os_str8OsStringEEECs8frGy5WneL6_4fish.exit unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4KeysB11_NtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEE9from_iterB4j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4KeysNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtB8_6traits8iterator8Iterator4nextB2Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.g = load i64, ptr %i.e, align 8, !range !19, !noundef !16 ; 4 uses
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4KeysNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtB8_6traits8iterator8Iterator9size_hintB2Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.g unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %.loopexit18, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.j, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.l = shl nuw i64 %i.g, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5220
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.d, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = call i64 @llvm.uadd.sat.i64(i64 %i.m, i64 1)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 4) ; 3 uses
  %i.o = mul i64 %..i, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.m, 384307168202282324
  br i1 %or.cond.i.i, label %bb.j, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5221
  %i.q = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5221 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.i ], [ 0, %bb.g ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.o) #35
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.q, %bb.i ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.h ], [ %..i, %bb.i ] ; 2 uses
  %i.s = icmp ule i64 %..i, %.sroa.4.0.i
  call void @llvm.assume(i1 %i.s)
  store i64 %i.g, ptr %.sroa.10.0.i, align 8
  %.sroa.4.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx16, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.517.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5222)
  call void @llvm.experimental.noalias.scope.decl(metadata !5223)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5224
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4KeysNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtB8_6traits8iterator8Iterator4nextB2Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5225

.noexc7:                                          ; preds = %bb.k
  %i.t = load i64, ptr %i.b, align 8, !range !19, !noalias !5224, !noundef !16 ; 2 uses
  %.not11.i.i = icmp eq i64 %i.t, -1
  br i1 %.not11.i.i, label %.loopexit18, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc7
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.noexc8, %.lr.ph.i.i
  %i.u = phi ptr [ %.sroa.10.0.i, %.lr.ph.i.i ], [ %i.aa, %.noexc8 ]
  %i.v = phi i64 [ 1, %.lr.ph.i.i ], [ %i.ac, %.noexc8 ] ; 5 uses
  %i.w = phi i64 [ %i.t, %.lr.ph.i.i ], [ %i.ad, %.noexc8 ] ; 3 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5224 ; 3 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !5224
  %i.x = icmp samesign ult i64 %i.v, 384307168202282326
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.f, align 8, !range !27, !alias.scope !5225, !noundef !16
  %i.z = icmp eq i64 %i.v, %i.y
  br i1 %i.z, label %bb.m, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5224
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4KeysNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtB8_6traits8iterator8Iterator9size_hintB2Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.p unwind label %bb.n, !noalias !5225

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge, %bb.l
  %i.aa = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge ], [ %i.u, %bb.l ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.v ; 3 uses
  store i64 %i.w, ptr %i.ab, align 8, !noalias !5225
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5225
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !5225
  %i.ac = add nuw nsw i64 %i.v, 1                 ; 2 uses
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5224
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4KeysNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtB8_6traits8iterator8Iterator4nextB2Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5225

.noexc8:                                          ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i
  %i.ad = load i64, ptr %i.b, align 8, !range !19, !noalias !5224, !noundef !16 ; 2 uses
  %.not.i.i6 = icmp eq i64 %i.ad, -1
  br i1 %.not.i.i6, label %.loopexit18, label %bb.l

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq i64 %i.w, 0
  br i1 %i.af, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  %i.ag = shl nuw i64 %i.w, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5226
  br label %.body

bb.p:                                             ; preds = %bb.m
  %i.ah = load i64, ptr %i.a, align 8, !noalias !5224, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5224
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1)
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.v, i64 noundef %i.ai, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge unwind label %bb.n

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge: ; preds = %bb.p
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5225
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i, %bb.k
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.ae, %bb.o ], [ %lpad.loopexit.split-lp42, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit

.loopexit18:                                      ; preds = %.noexc8, %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %.body, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.e ], [ %i.j, %bb.f ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterB11_EE9from_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5245
  invoke void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc unwind label %bb.b, !noalias !5246

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !19, !noalias !5245, !noundef !16 ; 4 uses
  %.not.i = icmp eq i64 %i.e, -1
  br i1 %.not.i, label %bb.c, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5245
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterBR_EE11spec_extendCs8frGy5WneL6_4fish.exit, %bb.c
  ret void

bb.e:                                             ; preds = %bb.j
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = icmp eq i64 %i.e, 0
  br i1 %i.j, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload) ]
  %i.k = shl nuw i64 %i.e, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5247
  br label %bb.u

bb.g:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx10, align 8, !noalias !5248 ; 3 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx10.sroa_idx, align 8, !noalias !5248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5245
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val5 = load i64, ptr %i.l, align 8, !noundef !16 ; 2 uses
  %i.m = tail call i64 @llvm.uadd.sat.i64(i64 %.val5, i64 1)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 4) ; 3 uses
  %i.n = mul i64 %..i, 24                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %.val5, 384307168202282324
  br i1 %or.cond.i.i, label %bb.j, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5249
  %i.p = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5249 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.i ], [ 0, %bb.g ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.n) #35
          to label %.noexc6 unwind label %bb.e

.noexc6:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.p, %bb.i ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.h ], [ %..i, %bb.i ] ; 2 uses
  %i.r = icmp ule i64 %..i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.r)
  store i64 %i.e, ptr %.sroa.10.0.i, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload, ptr %.sroa.517.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5253)
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx8.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i, %bb.k
  %i.t = phi ptr [ %i.aa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.10.0.i, %bb.k ]
  %i.u = phi i64 [ %i.ac, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ 1, %bb.k ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5254
  invoke void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.noexc.i.i unwind label %bb.m, !noalias !5255

.noexc.i.i:                                       ; preds = %bb.l
  %i.v = load i64, ptr %i.a, align 8, !range !19, !noalias !5254, !noundef !16 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.v, -1
  br i1 %.not.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterBG_EECs8frGy5WneL6_4fish.exit.i, label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.w, %bb.m ], [ %i.ad, %bb.o ], [ %i.ad, %bb.p ]
  invoke void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body unwind label %bb.r, !noalias !5256

bb.m:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i

bb.n:                                             ; preds = %.noexc.i.i
  %.sroa.7.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx8.i.i, align 8, !noalias !5257 ; 3 uses
  %.sroa.7.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx8.sroa_idx.i.i, align 8, !noalias !5257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5254
  %i.x = icmp samesign ult i64 %i.u, 384307168202282326
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.d, align 8, !range !27, !alias.scope !5256, !noundef !16
  %i.z = icmp eq i64 %i.u, %i.y
  br i1 %i.z, label %bb.q, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge, %bb.n
  %i.aa = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge ], [ %i.t, %bb.n ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.u ; 3 uses
  store i64 %i.v, ptr %i.ab, align 8, !noalias !5256
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.7.sroa.0.0.copyload.i.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !5256
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.7.sroa.5.0.copyload.i.i, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !5256
  %i.ac = add nuw nsw i64 %i.u, 1                 ; 2 uses
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5256
  br label %bb.l

bb.o:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.v, 0
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload.i.i) ]
  %i.af = shl nuw i64 %i.v, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload.i.i, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5258
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i

bb.q:                                             ; preds = %bb.n
  %.val4.i.i = load i64, ptr %i.s, align 8, !alias.scope !5259, !noundef !16
  %i.ag = call i64 @llvm.uadd.sat.i64(i64 %.val4.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.u, i64 noundef %i.ag, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge unwind label %bb.o

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge: ; preds = %bb.q
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5256
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE7reserveCs8frGy5WneL6_4fish.exit.i.i

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !5256
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterBG_EECs8frGy5WneL6_4fish.exit.i: ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5254
  invoke void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterBR_EE11spec_extendCs8frGy5WneL6_4fish.exit unwind label %bb.s, !noalias !5256

bb.s:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterBG_EECs8frGy5WneL6_4fish.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_10SpecExtendBR_INtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterBR_EE11spec_extendCs8frGy5WneL6_4fish.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE16extend_desugaredINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterBG_EECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.t:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %.body, %bb.u
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.u ]
  resume { ptr, i32 } %.pn20

bb.u:                                             ; preds = %bb.b, %bb.e, %bb.f
  %.pn.ph = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  invoke void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEINtB2_18SpecFromIterNestedB11_INtNtNtNtB6_11collections9vec_deque5drain5DrainB11_EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5276)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !5276, !noundef !16 ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.thread, label %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit

_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !alias.scope !5276, !nonnull !16, !noundef !16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !5276, !noundef !16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !5277, !noundef !16
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = load i64, ptr %i.h, align 8, !range !27, !noalias !5277, !noundef !16 ; 2 uses
  %.not.i = icmp ult i64 %i.m, %i.n
  %i.o = select i1 %.not.i, i64 0, i64 %i.n
  %.sroa.02.0.i = sub nuw i64 %i.m, %i.o
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.i, align 8, !alias.scope !5276
  %i.q = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.q, ptr %i.e, align 8, !alias.scope !5276
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !5277, !nonnull !16, !noundef !16
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %.sroa.02.0.i ; 2 uses
  %.sroa.0.0.copyload7 = load i64, ptr %i.t, align 8, !noalias !5276 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload7, -1
  br i1 %.not, label %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.thread, label %bb.d

_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.thread: ; preds = %bb.a, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit
  store i64 0, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendBX_.exit, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.thread
  ret void

bb.c:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #33
  invoke void @_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1J_.exit unwind label %bb.n

bb.d:                                             ; preds = %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.0.copyload7, ptr %i.c, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx8, i64 40, i1 false)
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.f, i64 4) ; 3 uses
  %i.x = mul i64 %..i, 48                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.q, 192153584101141161
  br i1 %or.cond.i.i, label %bb.g, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5278
  %i.z = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5278 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.f ], [ 0, %bb.d ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.x) #35
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.z, %bb.f ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.e ], [ %..i, %bb.f ] ; 2 uses
  %i.ab = icmp ule i64 %..i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  store i64 %.sroa.4.0.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5282)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !5283, !noundef !16 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBM_.exit.i, label %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.lr.ph.i.i

_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.lr.ph.i.i: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load ptr, ptr %i.b, align 8, !alias.scope !5284, !nonnull !16, !noundef !16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.promoted.i = load i64, ptr %i.af, align 8, !alias.scope !5284
  br label %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.i

_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.lr.ph.i.i
  %i.aj = phi ptr [ %.sroa.10.0.i, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.lr.ph.i.i ], [ %i.ay, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i ]
  %i.ak = phi i64 [ 1, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.lr.ph.i.i ], [ %i.ba, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i ] ; 5 uses
  %i.al = phi i64 [ %.promoted.i, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.lr.ph.i.i ], [ %i.ar, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i ] ; 2 uses
  %i.am = phi i64 [ %i.ad, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.lr.ph.i.i ], [ %i.as, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5285)
  %i.an = load i64, ptr %i.ah, align 8, !noalias !5286, !noundef !16
  %i.ao = add i64 %i.an, %i.al                    ; 2 uses
  %i.ap = load i64, ptr %i.ag, align 8, !range !27, !noalias !5286, !noundef !16 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.ao, %i.ap
  %i.aq = select i1 %.not.i.i.i, i64 0, i64 %i.ap
  %.sroa.02.0.i.i.i = sub nuw i64 %i.ao, %i.aq
  %i.ar = add i64 %i.al, 1                        ; 3 uses
  %i.as = add i64 %i.am, -1                       ; 4 uses
  %i.at = load ptr, ptr %i.ai, align 8, !noalias !5286, !nonnull !16, !noundef !16
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %.sroa.02.0.i.i.i ; 2 uses
  %.sroa.0.0.copyload3.i.i = load i64, ptr %i.au, align 8, !noalias !5287 ; 2 uses
  %.not.i.i4 = icmp eq i64 %.sroa.0.0.copyload3.i.i, -1
  br i1 %.not.i.i4, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBM_.exit.i.loopexit, label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.i
  %.sroa.7.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5288
  store i64 %.sroa.0.0.copyload3.i.i, ptr %i.a, align 8, !noalias !5288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx4.i.i, i64 40, i1 false), !noalias !5288
  %i.av = icmp samesign ult i64 %i.ak, 192153584101141163
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %i.d, align 8, !range !27, !alias.scope !5289, !noundef !16
  %i.ax = icmp eq i64 %i.ak, %i.aw
  br i1 %i.ax, label %bb.k, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i_crit_edge, %bb.i
  %i.ay = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i_crit_edge ], [ %i.aj, %bb.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !5288
  %i.ba = add nuw nsw i64 %i.ak, 1                ; 2 uses
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5288
  %i.bb = icmp eq i64 %i.as, 0
  br i1 %i.bb, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBM_.exit.i.loopexit, label %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.i

bb.j:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ar, ptr %i.af, align 8, !alias.scope !5284
  store i64 %i.as, ptr %i.ac, align 8, !alias.scope !5284
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #33, !noalias !5288
  invoke void @_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body unwind label %bb.l, !noalias !5289

bb.k:                                             ; preds = %bb.i
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ak, i64 noundef range(i64 1, 0) %i.am, i64 noundef 8, i64 noundef 48)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i_crit_edge unwind label %bb.j, !noalias !5290

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i_crit_edge: ; preds = %bb.k
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5289
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !5289
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBM_.exit.i.loopexit: ; preds = %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i
  %.lcssa = phi i64 [ %i.as, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.i ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE7reserveBK_.exit.i.i ]
  store i64 %i.ar, ptr %i.af, align 8, !alias.scope !5284
  store i64 %.lcssa, ptr %i.ac, align 8, !alias.scope !5284
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBM_.exit.i

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBM_.exit.i: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBM_.exit.i.loopexit, %bb.h
  invoke void @_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendBX_.exit unwind label %bb.m, !noalias !5289

bb.m:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBM_.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.bc, %bb.j ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1J_.exit

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEINtB2_10SpecExtendBR_INtNtNtNtB6_11collections9vec_deque5drain5DrainBR_EE11spec_extendBX_.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE16extend_desugaredINtNtNtNtB8_11collections9vec_deque5drain5DrainBG_EEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.n:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventEEB1J_.exit: ; preds = %.body, %bb.c
  %.pn12 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.w, %bb.c ]
  resume { ptr, i32 } %.pn12
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB11_ENCNvMs3_B13_NtB13_11HistoryImpl25rewrite_to_temporary_file0EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.7.i.i = alloca [80 x i8], align 8        ; 5 uses
  %i.c = alloca [112 x i8], align 8               ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [80 x i8], align 8            ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXst_CskOHnqPTvc0z_3lruINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1z_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc unwind label %bb.d, !noalias !5315

.noexc:                                           ; preds = %bb.a
  %i.g = load i64, ptr %i.c, align 8, !range !19, !noalias !5316, !noundef !16 ; 3 uses
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %.thread14, label %bb.b

.thread14:                                        ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.b:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5316, !nonnull !16, !noundef !16
  %i.j = shl nuw i64 %i.g, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.0.copyload.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5317
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.e:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.copyload7 = load i64, ptr %i.h, align 8, !noalias !5318 ; 2 uses
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx8, i64 80, i1 false), !noalias !5318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %.sroa.0.0.copyload7, -1
  br i1 %.not, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.thread14, %bb.e
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsa_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENCNvMs3_B2w_NtB2w_11HistoryImpl25rewrite_to_temporary_file0EEB2A_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalEB3I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 16, i64 noundef 16)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.ac, %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %.pn.ph, %bb.ac ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENCNvMs3_B2w_NtB2w_11HistoryImpl25rewrite_to_temporary_file0EEB2A_.exit: ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalEB3I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 16, i64 noundef 16)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBR_ENCNvMs3_BT_NtBT_11HistoryImpl25rewrite_to_temporary_file0EE11spec_extendBX_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENCNvMs3_B2w_NtB2w_11HistoryImpl25rewrite_to_temporary_file0EEB2A_.exit
  ret void

bb.j:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.e) #33
  br label %bb.ac

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.0.0.copyload7, ptr %i.e, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7, i64 80, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i64, ptr %i.s, align 8, !noundef !16 ; 2 uses
  %i.t = call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.t, i64 4) ; 3 uses
  %i.u = mul i64 %..i, 88                         ; 3 uses
  %or.cond.i.i = icmp ugt i64 %.val, 104811045873349724
  br i1 %or.cond.i.i, label %bb.n, label %bb.l, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5319
  %i.w = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5319 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.m ], [ 0, %bb.k ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.u) #35
          to label %.noexc4 unwind label %bb.j

.noexc4:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.l ], [ %i.w, %bb.m ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.l ], [ %..i, %bb.m ] ; 2 uses
  %i.y = icmp ule i64 %..i, %.sroa.4.0.i
  call void @llvm.assume(i1 %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10.0.i, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false)
  store i64 %.sroa.4.0.i, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5320)
  call void @llvm.experimental.noalias.scope.decl(metadata !5321)
  call void @llvm.experimental.noalias.scope.decl(metadata !5322)
  call void @llvm.experimental.noalias.scope.decl(metadata !5323)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i, %bb.o
  %i.ab = phi ptr [ %i.am, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i ], [ %.sroa.10.0.i, %bb.o ]
  %i.ac = phi i64 [ %i.ao, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i ], [ 1, %bb.o ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5324
  invoke void @_RNvXst_CskOHnqPTvc0z_3lruINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1z_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc.i.i unwind label %bb.s, !noalias !5325

.noexc.i.i:                                       ; preds = %bb.p
  %i.ad = load i64, ptr %i.a, align 8, !range !19, !noalias !5326, !noundef !16 ; 2 uses
  switch i64 %i.ad, label %bb.q [
    i64 -1, label %.thread.i.i
    i64 0, label %bb.t
  ]

.thread.i.i:                                      ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5324
  br label %.loopexit.i.i

bb.q:                                             ; preds = %.noexc.i.i
  %.sroa.42.0.copyload.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !5326, !nonnull !16, !noundef !16
  %i.ae = shl nuw i64 %i.ad, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.0.copyload.i.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5327
  br label %bb.t

bb.r:                                             ; preds = %bb.x, %bb.s
  %.pn.i.i = phi { ptr, i32 } [ %i.ap, %bb.x ], [ %i.af, %bb.s ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENCNvMs3_B2w_NtB2w_11HistoryImpl25rewrite_to_temporary_file0EEB2A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d) #33
          to label %.body unwind label %bb.z, !noalias !5328

bb.s:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q, %.noexc.i.i
  %.sroa.0.0.copyload4.i.i = load i64, ptr %i.z, align 8, !noalias !5329 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx5.i.i, i64 80, i1 false), !noalias !5329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5324
  %.not.i.i5 = icmp eq i64 %.sroa.0.0.copyload4.i.i, -1
  br i1 %.not.i.i5, label %.loopexit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5324
  store i64 %.sroa.0.0.copyload4.i.i, ptr %i.b, align 8, !noalias !5324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7.i.i, i64 80, i1 false), !noalias !5324
  %i.ag = icmp samesign ult i64 %i.ac, 104811045873349726
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %i.f, align 8, !range !27, !alias.scope !5328, !noundef !16
  %i.ai = icmp eq i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.y, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i

.loopexit.i.i:                                    ; preds = %bb.t, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  invoke void @_RNvXsa_CskOHnqPTvc0z_3lruINtB5_8LruCacheNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_ENCNvMs3_BI_NtBI_11HistoryImpl25rewrite_to_temporary_file0EEBM_.exit.i unwind label %bb.v, !noalias !5328

bb.v:                                             ; preds = %.loopexit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalEB3I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef 16, i64 noundef 16)
          to label %.body unwind label %bb.w, !noalias !5328

bb.w:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !5328
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i_crit_edge, %bb.u
  %i.am = phi ptr [ %.pre, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i_crit_edge ], [ %i.ab, %bb.u ] ; 2 uses
  %i.an = getelementptr inbounds nuw [88 x i8], ptr %i.am, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !5328
  %i.ao = add nuw nsw i64 %i.ac, 1                ; 2 uses
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5324
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.p

bb.x:                                             ; preds = %bb.y
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #33, !noalias !5328
  br label %bb.r

bb.y:                                             ; preds = %bb.u
  %.val.i.i = load i64, ptr %i.aa, align 8, !alias.scope !5330, !noundef !16
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ac, i64 noundef range(i64 1, 0) %i.aq, i64 noundef 8, i64 noundef 88)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i_crit_edge unwind label %bb.x

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i_crit_edge: ; preds = %bb.y
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5328
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE7reserveBK_.exit.i.i

bb.z:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !5328
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_ENCNvMs3_BI_NtBI_11HistoryImpl25rewrite_to_temporary_file0EEBM_.exit.i: ; preds = %.loopexit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_NtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalEB3I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef 16, i64 noundef 16)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBR_ENCNvMs3_BT_NtBT_11HistoryImpl25rewrite_to_temporary_file0EE11spec_extendBX_.exit unwind label %bb.aa, !noalias !5328

bb.aa:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_ENCNvMs3_BI_NtBI_11HistoryImpl25rewrite_to_temporary_file0EEBM_.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.v, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.aa ], [ %i.aj, %bb.v ], [ %.pn.i.i, %bb.r ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #33
  br label %common.resume

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBR_ENCNvMs3_BT_NtBT_11HistoryImpl25rewrite_to_temporary_file0EE11spec_extendBX_.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBG_ENCNvMs3_BI_NtBI_11HistoryImpl25rewrite_to_temporary_file0EEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.ab:                                            ; preds = %bb.ac
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ac:                                            ; preds = %bb.j, %bb.d
  %.pn.ph = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.r, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtCskOHnqPTvc0z_3lru8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemENCNvMs3_B2w_NtB2w_11HistoryImpl25rewrite_to_temporary_file0EEB2A_(ptr noalias nofree noundef align 8 dereferenceable(64) %1) #33
          to label %common.resume unwind label %bb.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEINtB2_18SpecFromIterNestedB11_NtB13_9ArgumentsE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8, !range !44, !noundef !16 ; 4 uses
  %.not = icmp eq i64 %i.f, -2
end_hunk_2
begin_hunk_3_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtB2r_5slice4iter4IterB12_ENCNvMs6_B14_NtB14_10BindingSet3get0EE9from_iterB18_:bb.a
  br label %.noexc11

.noexc11:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE7reserveBL_.exit.i.i..noexc11_crit_edge, %bb.f
  %i.ae = phi ptr [ %.pre, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE7reserveBL_.exit.i.i..noexc11_crit_edge ], [ %i.u, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.v
  store ptr %i.x, ptr %i.af, align 8, !noalias !5619, !captures !46
  %i.ag = add nuw nsw i64 %i.v, 1                 ; 2 uses
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5619
  call void @llvm.experimental.noalias.scope.decl(metadata !5620)
  call void @llvm.experimental.noalias.scope.decl(metadata !5621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5622
  store ptr %i.q, ptr %i.b, align 8, !noalias !5623
  %i.ah = load ptr, ptr %i.r, align 8, !alias.scope !5624, !nonnull !16, !noundef !16 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !5624 ; 2 uses
  %i.ai = icmp eq ptr %.promoted.i.i.i.i, %i.ah
  br i1 %i.ai, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B1u_NtB1u_10BindingSet3get0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.thread.i.i, label %.lr.ph.i.i.preheader.i.i

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B1u_NtB1u_10BindingSet3get0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.thread, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B1u_NtB1u_10BindingSet3get0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit
  store i64 0, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ak, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtB28_5slice4iter4IterBS_ENCNvMs6_BU_NtBU_10BindingSet3get0EE11spec_extendBY_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.e, align 8, !alias.scope !5618
  br label %bb.i

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingE7reserveBL_.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val8 = load i64, ptr %i.f, align 8            ; 2 uses
  %i.al = icmp eq i64 %.val8, 0
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEEB1f_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val9 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %i.am = shl nuw i64 %.val8, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5625
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEEB1f_.exit

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter6FilterINtNtNtB28_5slice4iter4IterBS_ENCNvMs6_BU_NtBU_10BindingSet3get0EE11spec_extendBY_.exit: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B1u_NtB1u_10BindingSet3get0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingENCNvMs6_B1u_NtB1u_10BindingSet3get0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCs8frGy5WneL6_4fish5input7binding7BindingEEB1f_.exit: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB12_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EE9from_iterB3W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4.i.i = alloca [40 x i8], align 8        ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7.i.i = alloca [40 x i8], align 8        ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.4 = alloca [40 x i8], align 8            ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5654
  invoke void @_RNvXs2_NtCsaL1QbXo9JQH_3std3envNtB5_6VarsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc unwind label %bb.h, !noalias !5655

.noexc:                                           ; preds = %bb.a
  %i.q = load i64, ptr %i.l, align 8, !range !19, !noalias !5654, !noundef !16
  %.not.i = icmp eq i64 %i.q, -1
  br i1 %.not.i, label %.thread19, label %bb.b

.thread19:                                        ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5654
  br label %bb.k

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !5654
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.42.0.copyload.i = load i64, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !5654 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.53.0.copyload.i = load ptr, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !5654 ; 3 uses
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.64.0.copyload.i = load i64, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !5654
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5656
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.c unwind label %bb.f, !noalias !5657

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5656
  store i64 %.sroa.42.0.copyload.i, ptr %i.h, align 8, !noalias !5656
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.53.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !5656
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.64.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !5656
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.i unwind label %bb.d, !noalias !5657

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.j, align 8, !noalias !5656 ; 2 uses
  %i.s = icmp eq i64 %.val.i.i, 0
  br i1 %i.s, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val3.i.i = load ptr, ptr %i.t, align 8, !noalias !5656, !nonnull !16, !noundef !16
  %i.u = shl nuw i64 %.val.i.i, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5658
  br label %bb.ah

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %.sroa.42.0.copyload.i, 0
  br i1 %i.w, label %bb.ah, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0.copyload.i, i64 noundef %.sroa.42.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5659
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5656
  %.sroa.013.0.copyload = load i64, ptr %i.j, align 8, !noalias !5660 ; 2 uses
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx14, i64 16, i1 false), !noalias !5660
  %.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !5660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, i64 40, i1 false), !noalias !5661
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5654
  %.not = icmp eq i64 %.sroa.013.0.copyload, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.013.0.copyload, ptr %i.o, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvXs2_NtCsaL1QbXo9JQH_3std3envNtB5_6VarsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %.thread19, %bb.i
  store i64 0, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBX_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.l

bb.l:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBS_EEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EE11spec_extendB3C_.exit, %bb.k
  ret void

bb.m:                                             ; preds = %bb.q, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o) #33
  br label %bb.ah

bb.n:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.n, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ac = call i64 @llvm.uadd.sat.i64(i64 %i.ab, i64 1)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.ac, i64 4) ; 3 uses
  %i.ad = mul i64 %..i, 48                        ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.ab, 192153584101141161
  br i1 %or.cond.i.i, label %bb.q, label %bb.o, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !5662
  %i.af = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !5662 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.p ], [ 0, %bb.n ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ad) #35
          to label %.noexc5 unwind label %bb.m

.noexc5:                                          ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.o ], [ %i.af, %bb.p ] ; 3 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.o ], [ %..i, %bb.p ] ; 2 uses
  %i.ah = icmp ule i64 %..i, %.sroa.4.0.i
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0.i, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  store i64 %.sroa.4.0.i, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5663)
  call void @llvm.experimental.noalias.scope.decl(metadata !5664)
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.4.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.s

bb.s:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i, %bb.r
  %i.ai = phi ptr [ %i.au, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ %.sroa.10.0.i, %bb.r ]
  %i.aj = phi i64 [ %i.aw, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i ], [ 1, %bb.r ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5665
  invoke void @_RNvXs2_NtCsaL1QbXo9JQH_3std3envNtB5_6VarsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.noexc.i.i unwind label %bb.z, !noalias !5666

.noexc.i.i:                                       ; preds = %bb.s
  %i.ak = load i64, ptr %i.e, align 8, !range !19, !noalias !5665, !noundef !16
  %.not.i.i.i = icmp eq i64 %i.ak, -1
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.t

.thread.i.i:                                      ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5665
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBH_EE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EEB3o_.exit.i

bb.t:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5665
  %.sroa.42.0.copyload.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !5665 ; 3 uses
  %.sroa.53.0.copyload.i.i.i = load ptr, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !5665 ; 3 uses
  %.sroa.64.0.copyload.i.i.i = load i64, ptr %.sroa.64.0..sroa_idx.i.i.i, align 8, !noalias !5665
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5667
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.u unwind label %bb.x, !noalias !5668

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5667
  store i64 %.sroa.42.0.copyload.i.i.i, ptr %i.a, align 8, !noalias !5667
  store ptr %.sroa.53.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i.i, align 8, !noalias !5667
  store i64 %.sroa.64.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !noalias !5667
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aa unwind label %bb.v, !noalias !5668

bb.v:                                             ; preds = %bb.u
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !5667 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.am, label %.body.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val3.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !5667, !nonnull !16, !noundef !16
  %i.an = shl nuw i64 %.val.i.i.i.i, 2
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 4) #31, !noalias !5669
  br label %.body.i.i

bb.x:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.42.0.copyload.i.i.i, 0
  br i1 %i.ap, label %.body.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.53.0.copyload.i.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.53.0.copyload.i.i.i, i64 noundef %.sroa.42.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !5670
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ad, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.ax, %bb.ad ], [ %i.aq, %bb.z ], [ %i.al, %bb.v ], [ %i.al, %bb.w ], [ %i.ao, %bb.x ], [ %i.ao, %bb.y ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBX_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body7 unwind label %bb.ae, !noalias !5671

bb.z:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5667
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !5672 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !5672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, i64 40, i1 false), !noalias !5673
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5665
  %.not.i.i6 = icmp eq i64 %.sroa.08.0.copyload.i.i, -1
  br i1 %.not.i.i6, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBH_EE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EEB3o_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5674
  store i64 %.sroa.08.0.copyload.i.i, ptr %i.g, align 8, !noalias !5674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i, i64 40, i1 false), !noalias !5674
  %i.ar = icmp samesign ult i64 %i.aj, 192153584101141163
  call void @llvm.assume(i1 %i.ar)
  %i.as = load i64, ptr %i.p, align 8, !range !27, !alias.scope !5671, !noundef !16
  %i.at = icmp eq i64 %i.aj, %i.as
  br i1 %i.at, label %bb.ac, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5674
  invoke void @_RNvXs2_NtCsaL1QbXo9JQH_3std3envNtB5_6VarsOsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1B_.exit.i.i unwind label %bb.ad, !noalias !5671

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1B_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge, %bb.ab
  %i.au = phi ptr [ %.pre, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1B_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge ], [ %i.ai, %bb.ab ] ; 2 uses
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.au, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !5671
  %i.aw = add nuw nsw i64 %i.aj, 1                ; 2 uses
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5674
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.s

bb.ad:                                            ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1B_.exit.i.i, %bb.ac
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #33, !noalias !5671
  br label %.body.i.i

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1B_.exit.i.i: ; preds = %bb.ac
  %i.ay = load i64, ptr %i.f, align 8, !noalias !5674, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5674
  %i.az = call i64 @llvm.uadd.sat.i64(i64 %i.ay, i64 1)
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.aj, i64 noundef range(i64 1, 0) %i.az, i64 noundef 8, i64 noundef 48)
          to label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1B_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge unwind label %bb.ad

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1B_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1B_.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5671
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBF_EE7reserveCs8frGy5WneL6_4fish.exit.i.i

bb.ae:                                            ; preds = %.body.i.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !5671
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBH_EE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EEB3o_.exit.i: ; preds = %bb.aa, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringBX_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBS_EEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EE11spec_extendB3C_.exit unwind label %bb.af, !noalias !5671

bb.af:                                            ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBH_EE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EEB3o_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body7

.body7:                                           ; preds = %.body.i.i, %bb.af
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.bb, %bb.af ], [ %.pn.i.i, %.body.i.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringB19_EEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EEB1O_.exit

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBS_EEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EE11spec_extendB3C_.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBH_EE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtCsaL1QbXo9JQH_3std3env6VarsOsNCNvNtNtCs8frGy5WneL6_4fish3env11environment8env_init0EEB3o_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.l
end_hunk_3
begin_hunk_4_@_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1F_:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeccENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeciENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VeclENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecxENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3key3KeyNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtB5_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSmNtB5_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCslLGyqsphxMB_10widestring5errorNtB5_16DecodeUtf32ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtCs1xwejQucwHj_5alloc3vec3VechENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i1, i8 } @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10skip_while9SkipWhileINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00ENtNtNtB9_6traits8iterator8Iterator3nthB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters10skip_while9SkipWhileINtNtB1i_6copied6CopiedINtNtNtBe_5slice4iter4IterhEENCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00ENtB4_13SpecAdvanceBy15spec_advance_byB2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef range(i64 1, 0) %1)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.d = tail call { i1, i8 } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkhNCINvNvXs0_NtB7_10skip_whileINtB2L_9SkipWhileppEB1v_4next5checkhNCNCNvNtCs8frGy5WneL6_4fish6common30is_windows_subsystem_for_linux00E0E0INtNtNtBb_3ops12control_flow11ControlFlowhEEB3K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull %i.c) ; 2 uses
  %i.e = extractvalue { i1, i8 } %i.d, 0          ; 2 uses
  %i.f = extractvalue { i1, i8 } %i.d, 1
  %.sroa.3.0.i.i = select i1 %i.e, i8 %i.f, i8 undef
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %.sroa.3.0.i.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  %i.g = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.h = insertvalue { i1, i8 } %i.g, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB7_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIBV_IB1b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB30_s0_0EENtCs1E3VsKHMe0J_9itertools9Itertools15sorted_unstableB36_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7633)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7634
  %i.d = load ptr, ptr %1, align 8, !alias.scope !7635, !noundef !16
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !7636
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not4.i.i.i.i, label %bb.c, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread15.i.i

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !alias.scope !7635
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !7637, !noundef !16
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.i.i: ; preds = %bb.d
  %i.i = tail call { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g), !noalias !7638
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit.thread, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread15.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread15.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.i.i, %bb.b
  %.sroa.0.0.i2.i18.i.i = phi ptr [ %i.j, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.i.i ], [ %i.f, %bb.b ]
  %i.k = load ptr, ptr %1, align 8, !alias.scope !7639, !noundef !16
  %.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7639, !noundef !16
  %.not7.i.i.i = icmp eq ptr %i.m, null           ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread15.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val11.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !7639, !noundef !16 ; 2 uses
  br i1 %.not7.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i, label %bb.h

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread15.i.i
  br i1 %.not7.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val10.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !7639, !noundef !16
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i

bb.h:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !7639, !noundef !16
  %i.q = tail call i64 @llvm.uadd.sat.i64(i64 %.val11.i.i.i, i64 %.val.i.i.i)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sink18.i.i.i = phi i64 [ %i.q, %bb.h ], [ %.val10.i.i.i, %bb.g ], [ %.val11.i.i.i, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.r = tail call i64 @llvm.uadd.sat.i64(i64 %.sink18.i.i.i, i64 1)
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.r, i64 4) ; 3 uses
  %i.s = shl i64 %..i.i.i, 3                      ; 4 uses
  %i.t = icmp ugt i64 %.sink18.i.i.i, 2305843009213693950
  %.not.i.i8.i.i = icmp ugt i64 %i.s, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.t, %.not.i.i8.i.i
  br i1 %or.cond.i.i.i.i, label %bb.j, label %2, !prof !42

2:                                                ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i
  %3 = icmp eq i64 %i.s, 0
  br i1 %3, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i, label %bb.i

bb.i:                                             ; preds = %2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7640
  %i.u = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !7640 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i

bb.j:                                             ; preds = %bb.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.s) #35, !noalias !7636
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.i, %2
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.u, %bb.i ] ; 3 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %2 ], [ %..i.i.i, %bb.i ] ; 2 uses
  %4 = icmp ule i64 %..i.i.i, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %4)
  store ptr %.sroa.0.0.i2.i18.i.i, ptr %.sroa.10.0.i.i.i, align 8, !noalias !7636, !captures !46
  store i64 %.sroa.4.0.i.i.i, ptr %i.c, align 8, !noalias !7634
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7634
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !7634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !noalias !7636
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7644)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i
  %i.z = phi ptr [ %i.an, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i.i.i ], [ %.sroa.10.0.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i ]
  %.sroa.10.0.copyload = phi i64 [ %i.ap, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i.i.i ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i ] ; 12 uses
  %i.aa = load ptr, ptr %i.b, align 8, !alias.scope !7645, !noalias !7634, !noundef !16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %.noexc.i.i unwind label %bb.s, !noalias !7646

.noexc.i.i:                                       ; preds = %bb.l
  %i.ac = extractvalue { ptr, ptr } %i.ab, 0      ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not4.i.i.i.i.i.i, label %bb.m, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread5.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i
  store ptr null, ptr %i.b, align 8, !alias.scope !7645, !noalias !7634
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.ad = load ptr, ptr %i.w, align 8, !alias.scope !7647, !noalias !7634, !noundef !16
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.i.i.i.i: ; preds = %bb.n
  %i.ae = invoke { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %.noexc11.i.i unwind label %bb.s, !noalias !7648

.noexc11.i.i:                                     ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.i.i.i.i
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  %.not.i.i10.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i10.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread5.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread5.i.i.i.i: ; preds = %.noexc11.i.i, %.noexc.i.i
  %.sroa.0.0.i2.i8.i.i.i.i = phi ptr [ %i.af, %.noexc11.i.i ], [ %i.ac, %.noexc.i.i ]
  %i.ag = icmp samesign ult i64 %.sroa.10.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %i.c, align 8, !range !27, !alias.scope !7649, !noalias !7634, !noundef !16
  %i.ai = icmp eq i64 %.sroa.10.0.copyload, %i.ah
  br i1 %i.ai, label %bb.o, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i.i.i

bb.o:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread5.i.i.i.i
  %i.aj = load ptr, ptr %i.b, align 8, !alias.scope !7650, !noalias !7634, !noundef !16
  %.not.i.i.i9.i.i = icmp eq ptr %i.aj, null
  %i.ak = load ptr, ptr %i.w, align 8, !alias.scope !7650, !noalias !7634, !noundef !16
  %.not7.i.i.i.i.i = icmp eq ptr %i.ak, null      ; 2 uses
  br i1 %.not.i.i.i9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val11.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !7650, !noalias !7634, !noundef !16 ; 2 uses
  br i1 %.not7.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i.i.i, label %bb.r

bb.q:                                             ; preds = %bb.o
  %.val10.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !7651, !noalias !7634
  %spec.select.i.i.i.i = select i1 %.not7.i.i.i.i.i, i64 0, i64 %.val10.i.i.i.i.i
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %.val.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !7650, !noalias !7634, !noundef !16
  %i.al = call i64 @llvm.uadd.sat.i64(i64 %.val11.i.i.i.i.i, i64 %.val.i.i.i.i.i)
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  %.sink18.i.i.i.i.i = phi i64 [ %i.al, %bb.r ], [ %spec.select.i.i.i.i, %bb.q ], [ %.val11.i.i.i.i.i, %bb.p ]
  %i.am = call i64 @llvm.uadd.sat.i64(i64 %.sink18.i.i.i.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.10.0.copyload, i64 noundef range(i64 1, 0) %i.am, i64 noundef 8, i64 noundef 8)
          to label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge.i.i unwind label %bb.s, !noalias !7636

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !7649, !noalias !7634
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread5.i.i.i.i
  %i.an = phi ptr [ %.pre.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE7reserveCs8frGy5WneL6_4fish.exit.i.i_crit_edge.i.i ], [ %i.z, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.thread5.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.10.0.copyload
  store ptr %.sroa.0.0.i2.i8.i.i.i.i, ptr %i.ao, align 8, !noalias !7646, !captures !46
  %i.ap = add nuw nsw i64 %.sroa.10.0.copyload, 1 ; 2 uses
  store i64 %i.ap, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !7649, !noalias !7634
  br label %bb.k

bb.s:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_.exit.i.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.i.i.i.i, %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i = load i64, ptr %i.c, align 8, !noalias !7634 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i, 0
  br i1 %i.ar, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val7.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7634, !nonnull !16, !noundef !16
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.t, %bb.y
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.y ], [ %.val.i.i, %bb.t ]
  %.sroa.6.0.copyload.sink = phi ptr [ %.sroa.6.0.copyload, %bb.y ], [ %.val7.i.i, %bb.t ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.av, %bb.y ], [ %i.aq, %bb.t ]
  %i.as = shl nuw i64 %.sroa.0.0.copyload.sink, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.sink, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !16
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.x, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.av, %bb.x ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit.thread: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7634
  br label %bb.z

_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit: ; preds = %bb.n, %.noexc11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7634
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !7652 ; 5 uses
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7652 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7634
  %i.at = icmp samesign ult i64 %.sroa.10.0.copyload, 2
  br i1 %i.at, label %bb.z, label %bb.u, !prof !7653

bb.u:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit
  %i.au = icmp samesign ult i64 %.sroa.10.0.copyload, 21
  br i1 %i.au, label %bb.w, label %bb.v, !prof !18

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable7ipnsortRNtCslSwhfOFuxKz_17fish_localization8LanguageNvYBT_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %.sroa.6.0.copyload, i64 noundef %.sroa.10.0.copyload, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.z unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtCslSwhfOFuxKz_17fish_localization8LanguageNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %.sroa.6.0.copyload, i64 noundef %.sroa.10.0.copyload, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.aw, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  br label %common.resume.sink.split

bb.z:                                             ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit.thread, %bb.w, %bb.v, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit
  %.sroa.0.011 = phi i64 [ 0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit.thread ], [ %.sroa.0.0.copyload, %bb.w ], [ %.sroa.0.0.copyload, %bb.v ], [ %.sroa.0.0.copyload, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit ]
  %.sroa.6.010 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit.thread ], [ %.sroa.6.0.copyload, %bb.w ], [ %.sroa.6.0.copyload, %bb.v ], [ %.sroa.6.0.copyload, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit ] ; 3 uses
  %.sroa.10.09 = phi i64 [ 0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit.thread ], [ %.sroa.10.0.copyload, %bb.w ], [ %.sroa.10.0.copyload, %bb.v ], [ %.sroa.10.0.copyload, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_.exit ] ; 2 uses
  %i.ax = icmp samesign ult i64 %.sroa.10.09, 1152921504606846976
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.010, i64 %.sroa.10.09
  store ptr %.sroa.6.010, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.011, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.010, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ay, ptr %i.bb, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCs1xwejQucwHj_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs8frGy5WneL6_4fish.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @147, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !7654
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs8frGy5WneL6_4fish4flog16FloggableDisplay11to_flog_strBI_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7664
  %i.d = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val1, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !7664 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val1) #35, !noalias !7665
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val1, i1 false), !noalias !7666
  br label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs8frGy5WneL6_4fish.exit

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.d
  %.sroa.5.0.i.i = phi ptr [ %i.d, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.a ]
  store i64 %.val1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

end_hunk_4
begin_hunk_5_@llvm.smax.i32
!7453 = distinct !{!7453, !7452, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameEBI_: argument 0"}
!7454 = distinct !{!7454, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameEBH_"}
!7455 = distinct !{!7455, !7454, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5input7binding11BindingNameEBH_: argument 0"}
!7456 = distinct !{!7456, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3key3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_"}
!7457 = distinct !{!7457, !7456, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3key3KeyENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_: argument 0"}
!7458 = distinct !{!7458, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7459 = distinct !{!7459, !7458, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7460 = !{!7453}
!7461 = !{!7455}
!7462 = !{!7455, !7453}
!7463 = !{!7457, !7455, !7453}
!7464 = !{!7459, !7455, !7453}
!7465 = distinct !{!7465, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBI_"}
!7466 = distinct !{!7466, !7465, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish6reader14history_search11SearchMatchEBI_: argument 0"}
!7467 = distinct !{!7467, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7468 = distinct !{!7468, !7467, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7469 = !{!7466}
!7470 = !{!7468, !7466}
!7471 = distinct !{!7471, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_"}
!7472 = distinct !{!7472, !7471, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBI_: argument 0"}
!7473 = distinct !{!7473, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_"}
!7474 = distinct !{!7474, !7473, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEBH_: argument 0"}
!7475 = distinct !{!7475, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7476 = distinct !{!7476, !7475, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7477 = distinct !{!7477, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish"}
!7478 = distinct !{!7478, !7477, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish: argument 0"}
!7479 = distinct !{!7479, i1 true, !"_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7480 = distinct !{!7480, !7479, !"_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7481 = distinct !{!7481, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish"}
!7482 = distinct !{!7482, !7481, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish: argument 0"}
!7483 = distinct !{!7483, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7484 = distinct !{!7484, !7483, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7485 = distinct !{!7485, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7486 = distinct !{!7486, !7485, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7487 = distinct !{!7487, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7488 = distinct !{!7488, !7487, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7489 = !{!7472}
!7490 = !{!7474}
!7491 = !{!7474, !7472}
!7492 = !{!7476, !7474, !7472}
!7493 = !{!7478}
!7494 = !{!7480}
!7495 = !{!7480, !7478, !7474, !7472}
!7496 = !{!7482}
!7497 = !{!7484, !7482, !7480, !7478, !7474, !7472}
!7498 = !{!7486, !7478, !7474, !7472}
!7499 = !{!7488, !7478, !7474, !7472}
!7500 = distinct !{!7500, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCse7JGOylGlDZ_3nix3sys7inotify12InotifyEventECs8frGy5WneL6_4fish"}
!7501 = distinct !{!7501, !7500, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCse7JGOylGlDZ_3nix3sys7inotify12InotifyEventECs8frGy5WneL6_4fish: argument 0"}
!7502 = distinct !{!7502, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7503 = distinct !{!7503, !7502, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7504 = !{!7501}
!7505 = !{!7503, !7501}
!7506 = distinct !{!7506, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_"}
!7507 = distinct !{!7507, !7506, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_: argument 0"}
!7508 = distinct !{!7508, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEEB1h_"}
!7509 = distinct !{!7509, !7508, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEEB1h_: argument 0"}
!7510 = distinct !{!7510, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!7511 = distinct !{!7511, !7510, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!7512 = distinct !{!7512, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBK_"}
!7513 = distinct !{!7513, !7512, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBK_: argument 0"}
!7514 = distinct !{!7514, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_"}
!7515 = distinct !{!7515, !7514, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_: argument 0"}
!7516 = distinct !{!7516, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEEB1h_"}
!7517 = distinct !{!7517, !7516, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellEEB1h_: argument 0"}
!7518 = distinct !{!7518, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_"}
!7519 = distinct !{!7519, !7518, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_: argument 0"}
!7520 = !{!7507}
!7521 = !{!7509}
!7522 = !{!7511}
!7523 = !{!7511, !7509, !7507, !7513}
!7524 = !{!7511, !7509, !7507}
!7525 = !{!7515}
!7526 = !{!7517}
!7527 = !{!7519}
!7528 = !{!7519, !7517, !7515, !7513}
!7529 = !{!7519, !7517, !7515}
!7530 = distinct !{!7530, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEBK_"}
!7531 = distinct !{!7531, !7530, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEBK_: argument 0"}
!7532 = distinct !{!7532, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7533 = distinct !{!7533, !7532, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7534 = !{!7531}
!7535 = !{!7533, !7531}
!7536 = distinct !{!7536, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEjEECs8frGy5WneL6_4fish"}
!7537 = distinct !{!7537, !7536, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEjEECs8frGy5WneL6_4fish: argument 0"}
!7538 = distinct !{!7538, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7539 = distinct !{!7539, !7538, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7540 = !{!7537}
!7541 = !{!7539, !7537}
!7542 = distinct !{!7542, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs8frGy5WneL6_4fish"}
!7543 = distinct !{!7543, !7542, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs8frGy5WneL6_4fish: argument 0"}
!7544 = distinct !{!7544, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs8frGy5WneL6_4fish"}
!7545 = distinct !{!7545, !7544, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs8frGy5WneL6_4fish: argument 0"}
!7546 = distinct !{!7546, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish"}
!7547 = distinct !{!7547, !7546, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish: argument 0"}
!7548 = distinct !{!7548, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7549 = distinct !{!7549, !7548, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7550 = !{!7543}
!7551 = !{!7545}
!7552 = !{!7545, !7543}
!7553 = !{!7549, !7547, !7545, !7543}
!7554 = distinct !{!7554, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBD_EECs8frGy5WneL6_4fish"}
!7555 = distinct !{!7555, !7554, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBD_EECs8frGy5WneL6_4fish: argument 0"}
!7556 = distinct !{!7556, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish"}
!7557 = distinct !{!7557, !7556, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringBC_EECs8frGy5WneL6_4fish: argument 0"}
!7558 = distinct !{!7558, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7559 = distinct !{!7559, !7558, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7560 = distinct !{!7560, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7561 = distinct !{!7561, !7560, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7562 = !{!7555}
!7563 = !{!7557}
!7564 = !{!7557, !7555}
!7565 = !{!7559, !7557, !7555}
!7566 = !{!7561, !7557, !7555}
!7567 = distinct !{!7567, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBD_EEECs8frGy5WneL6_4fish"}
!7568 = distinct !{!7568, !7567, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBD_EEECs8frGy5WneL6_4fish: argument 0"}
!7569 = distinct !{!7569, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish"}
!7570 = distinct !{!7570, !7569, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecBC_EEECs8frGy5WneL6_4fish: argument 0"}
!7571 = distinct !{!7571, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7572 = distinct !{!7572, !7571, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7573 = distinct !{!7573, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish"}
!7574 = distinct !{!7574, !7573, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish: argument 0"}
!7575 = distinct !{!7575, i1 true, !"_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7576 = distinct !{!7576, !7575, !"_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7577 = distinct !{!7577, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish"}
!7578 = distinct !{!7578, !7577, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish: argument 0"}
!7579 = distinct !{!7579, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7580 = distinct !{!7580, !7579, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7581 = distinct !{!7581, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7582 = distinct !{!7582, !7581, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7583 = distinct !{!7583, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!7584 = distinct !{!7584, !7583, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!7585 = !{!7568}
!7586 = !{!7570}
!7587 = !{!7570, !7568}
!7588 = !{!7572, !7570, !7568}
!7589 = !{!7574}
!7590 = !{!7576}
!7591 = !{!7576, !7574, !7570, !7568}
!7592 = !{!7578}
!7593 = !{!7580, !7578, !7576, !7574, !7570, !7568}
!7594 = !{!7582, !7574, !7570, !7568}
!7595 = !{!7584, !7574, !7570, !7568}
!7596 = distinct !{!7596, i1 true, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_"}
!7597 = distinct !{!7597, !7596, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_: argument 1"}
!7598 = distinct !{!7598, i1 true, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2k_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB38_IB3p_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB5e_s0_0EEE9from_iterB5k_"}
!7599 = distinct !{!7599, !7598, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2k_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB38_IB3p_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB5e_s0_0EEE9from_iterB5k_: argument 1"}
!7600 = distinct !{!7600, !7596, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB26_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2U_IB3b_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB50_s0_0EEE9from_iterB56_: argument 0"}
!7601 = distinct !{!7601, !7598, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB2k_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB38_IB3p_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB5e_s0_0EEE9from_iterB5k_: argument 0"}
!7602 = distinct !{!7602, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_"}
!7603 = distinct !{!7603, !7602, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_: argument 0"}
!7604 = distinct !{!7604, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0ERNtCslSwhfOFuxKz_17fish_localization8LanguageNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_"}
!7605 = distinct !{!7605, !7604, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0ERNtCslSwhfOFuxKz_17fish_localization8LanguageNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_: argument 0"}
!7606 = distinct !{!7606, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtCslSwhfOFuxKz_17fish_localization8LanguageE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1H_5ChainINtNtB1J_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2o_IB2F_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4u_s0_0EENtNtNtB1L_6traits8iterator8Iterator4next0EB4A_"}
!7607 = distinct !{!7607, !7606, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtCslSwhfOFuxKz_17fish_localization8LanguageE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1H_5ChainINtNtB1J_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2o_IB2F_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4u_s0_0EENtNtNtB1L_6traits8iterator8Iterator4next0EB4A_: argument 1"}
!7608 = distinct !{!7608, i1 true, !"_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtB8_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB12_IB1i_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB37_s0_0EENtNtNtBa_6traits8iterator8Iterator4next0B3d_"}
!7609 = distinct !{!7609, !7608, !"_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtB8_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB12_IB1i_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB37_s0_0EENtNtNtBa_6traits8iterator8Iterator4next0B3d_: argument 0"}
!7610 = distinct !{!7610, !7606, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtCslSwhfOFuxKz_17fish_localization8LanguageE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1H_5ChainINtNtB1J_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2o_IB2F_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4u_s0_0EENtNtNtB1L_6traits8iterator8Iterator4next0EB4A_: argument 0"}
!7611 = distinct !{!7611, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_"}
!7612 = distinct !{!7612, !7611, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_: argument 1"}
!7613 = distinct !{!7613, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish"}
!7614 = distinct !{!7614, !7613, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish: argument 0"}
!7615 = distinct !{!7615, i1 true, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB21_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2P_IB36_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4V_s0_0EEE11spec_extendB51_"}
!7616 = distinct !{!7616, !7615, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB21_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2P_IB36_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4V_s0_0EEE11spec_extendB51_: argument 0"}
!7617 = distinct !{!7617, !7615, !"_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB21_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2P_IB36_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4V_s0_0EEE11spec_extendB51_: argument 1"}
!7618 = distinct !{!7618, i1 true, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1N_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2B_IB2S_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4H_s0_0EEEB4N_"}
!7619 = distinct !{!7619, !7618, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1N_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2B_IB2S_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4H_s0_0EEEB4N_: argument 0"}
!7620 = distinct !{!7620, !7618, !"_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecRNtCslSwhfOFuxKz_17fish_localization8LanguageE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB1N_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2B_IB2S_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4H_s0_0EEEB4N_: argument 1"}
!7621 = distinct !{!7621, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_"}
!7622 = distinct !{!7622, !7621, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_: argument 0"}
!7623 = distinct !{!7623, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0ERNtCslSwhfOFuxKz_17fish_localization8LanguageNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_"}
!7624 = distinct !{!7624, !7623, !"_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0ERNtCslSwhfOFuxKz_17fish_localization8LanguageNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_: argument 0"}
!7625 = distinct !{!7625, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtCslSwhfOFuxKz_17fish_localization8LanguageE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1H_5ChainINtNtB1J_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2o_IB2F_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4u_s0_0EENtNtNtB1L_6traits8iterator8Iterator4next0EB4A_"}
!7626 = distinct !{!7626, !7625, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtCslSwhfOFuxKz_17fish_localization8LanguageE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1H_5ChainINtNtB1J_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2o_IB2F_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4u_s0_0EENtNtNtB1L_6traits8iterator8Iterator4next0EB4A_: argument 1"}
!7627 = distinct !{!7627, i1 true, !"_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtB8_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB12_IB1i_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB37_s0_0EENtNtNtBa_6traits8iterator8Iterator4next0B3d_"}
!7628 = distinct !{!7628, !7627, !"_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtB8_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB12_IB1i_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB37_s0_0EENtNtNtBa_6traits8iterator8Iterator4next0B3d_: argument 0"}
!7629 = distinct !{!7629, !7625, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtCslSwhfOFuxKz_17fish_localization8LanguageE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1H_5ChainINtNtB1J_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB2o_IB2F_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB4u_s0_0EENtNtNtB1L_6traits8iterator8Iterator4next0EB4A_: argument 0"}
!7630 = distinct !{!7630, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_"}
!7631 = distinct !{!7631, !7630, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageENCNvNtNtCs8frGy5WneL6_4fish12localization8settings24list_available_languagess_0EIB10_IB1g_NtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageENCB35_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_: argument 1"}
!7632 = !{!7597}
!7633 = !{!7599}
!7634 = !{!7601, !7599, !7600, !7597}
!7635 = !{!7605, !7603, !7599, !7597}
!7636 = !{!7601, !7600}
!7637 = !{!7609, !7607, !7603, !7599, !7597}
!7638 = !{!7610, !7601, !7600}
!7639 = !{!7612, !7599, !7597}
!7640 = !{!7614, !7601, !7600}
!7641 = !{!7616}
!7642 = !{!7617}
!7643 = !{!7619}
!7644 = !{!7620}
!7645 = !{!7624, !7622, !7620, !7617}
!7646 = !{!7619, !7616, !7601, !7600}
!7647 = !{!7628, !7626, !7622, !7620, !7617}
!7648 = !{!7629, !7619, !7616, !7601, !7600}
!7649 = !{!7619, !7616}
!7650 = !{!7631, !7620, !7617}
!7651 = !{!7620, !7617}
!7652 = !{!7599, !7597}
!7653 = !{!"branch_weights", !"expected", i32 2145141913, i32 2341735}
!7654 = distinct !{null}
!7655 = distinct !{!7655, i1 true, !"_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs8frGy5WneL6_4fish"}
!7656 = distinct !{!7656, !7655, !"_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtB5_8ToString9to_stringCs8frGy5WneL6_4fish: argument 0"}
!7657 = distinct !{!7657, i1 true, !"_RNvXs1T_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string"}
!7658 = distinct !{!7658, !7657, !"_RNvXs1T_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringNtB6_12SpecToString14spec_to_string: argument 0"}
!7659 = distinct !{!7659, i1 true, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish"}
!7660 = distinct !{!7660, !7659, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish: argument 1"}
!7661 = distinct !{!7661, !7659, !"_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs8frGy5WneL6_4fish: argument 0"}
!7662 = distinct !{!7662, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish"}
!7663 = distinct !{!7663, !7662, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish: argument 0"}
!7664 = !{!7663, !7661, !7660, !7658, !7656}
!7665 = !{!7661, !7660, !7658, !7656}
!7666 = !{!7661, !7658, !7656}
end_hunk_5
