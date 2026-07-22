inline.NumInlined: 5211
inline.NumDeleted: 2104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBY_14SessionContext12set_variable00INtB7_5FnMutTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE8call_mutCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEE3newCs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #37
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !8536
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImplEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.y

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEE3newCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext12set_variable00Cs2VbMhdeEr66_16delta_benchmarks.exit

_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext12set_variable00Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEE3newCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.0.0.i = phi ptr [ %i.w, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEE3newCs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBY_14SessionContext14reset_variable00INtB7_5FnMutTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEE8call_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !align !139, !noundef !8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !8, !align !139, !noundef !8
  %.val1 = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !align !139, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !121, !invariant.load !8
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.i, -16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %.val, align 8, !nonnull !8, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !8, !nonnull !8
  %i.q = tail call { ptr, ptr } %i.p(ptr noundef nonnull %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.n) #43, !inline_history !8545 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext14reset_variable00Cs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.s, ptr %i.v, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !8546
  %i.w = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -15) 32, i64 noundef range(i64 1, 17) 8) #36, !noalias !8546 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEE3newCs2VbMhdeEr66_16delta_benchmarks.exit.i, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #37
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !8549
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr3udf13ScalarUDFImplEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.u) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.y

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEE3newCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext14reset_variable00Cs2VbMhdeEr66_16delta_benchmarks.exit

_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext14reset_variable00Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEE3newCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %.sroa.0.0.i = phi ptr [ %i.w, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEE3newCs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtBY_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtBY_16TypedValueParser9parse_refs_0s_0INtB7_5FnMutTRNtNtB10_14possible_value13PossibleValueEE8call_mutB2f_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val = load i8, ptr %i.a, align 8, !range !879, !noundef !8
  %i.b = trunc nuw i8 %.val to i1
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtBX_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_expr0INtB7_5FnMutTRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEE8call_mutCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8561)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8561, !noalias !8558, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !8561, !noalias !8558, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !8561, !noalias !8558, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !8561, !noalias !8558, !noundef !8 ; 2 uses
  %i.i = or i64 %i.d, %i.b
  %i.j = or i64 %i.i, %i.f
  %i.k = or i64 %i.j, %i.h
  %or.cond2.i = icmp eq i64 %i.k, 0
  br i1 %or.cond2.i, label %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_expr0Cs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.l, align 8, !alias.scope !8558, !noalias !8561
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8558, !noalias !8561
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8558, !noalias !8561
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !8558, !noalias !8561
  br label %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_expr0Cs2VbMhdeEr66_16delta_benchmarks.exit

_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_expr0Cs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b
  %storemerge.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !8558, !noalias !8561
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtBX_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins1_0INtB7_5FnMutTRRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8call_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !139, !noundef !8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !8, !align !139, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtB6_5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 13 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !align !139, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8563
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !8567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8563
  store ptr %i.d, ptr %i.b, align 8, !noalias !8563
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %.sroa.510.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx11.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !8563
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i, %bb.a
  %.pre.i.i = phi ptr [ %.pre.i.pre.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i ], [ null, %bb.a ] ; 3 uses
  %.pre.i = load i64, ptr %i.e, align 8, !noalias !8563 ; 2 uses
  %.not.i.i31 = icmp eq ptr %.pre.i.i, null       ; 2 uses
  %i.f = icmp eq i64 %.pre.i, 0
  %or.cond.i32 = select i1 %.not.i.i31, i1 true, i1 %i.f
  br i1 %or.cond.i32, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = load i16, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8568, !noalias !8573
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8573, !noundef !8 ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !8575, !noalias !8573, !nonnull !8, !align !139, !noundef !8 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val.i.i.peel = load i64, ptr %i.i, align 8, !noalias !8576, !noundef !8 ; 2 uses
  %i.j = icmp eq i64 %i.g, %.val.i.i.peel
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !8577)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !8577, !noalias !8576, !nonnull !8, !noundef !8
  %i.l = icmp ult i64 %i.g, %.val.i.i.peel
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %i.g ; 8 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8, !noalias !8580 ; 3 uses
  %i.o = icmp ugt i64 %i.n, -9
  br i1 %i.o, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.peel, !prof !118

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.peel: ; preds = %bb.c
  %i.p = add nuw i64 %i.n, 4
  %i.q = cmpxchg weak ptr %i.m, i64 %i.n, i64 %i.p acquire monotonic, align 8, !noalias !8580
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.noexc.i.peel, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel, !prof !119

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel: ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.peel, %bb.c
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.m)
          to label %.noexc.i.peel unwind label %.loopexit.i.loopexit.split-lp

.noexc.i.peel:                                    ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.peel
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !8576, !nonnull !8, !noundef !8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !8576, !noundef !8
  %i.w = getelementptr i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1        ; 2 uses
  %.val13.i.i.i.peel = load <16 x i8>, ptr %i.t, align 16, !noalias !8581
  %i.y = icmp sgt <16 x i8> %.val13.i.i.i.peel, splat (i8 -1) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !8576, !noundef !8 ; 4 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !8584
  %i.ac = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -15) 24, i64 noundef range(i64 1, 17) 8) #36, !noalias !8584 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit69, label %bb.d, !prof !7

bb.d:                                             ; preds = %.noexc.i.peel
  store i64 1, ptr %i.ac, align 8, !noalias !8576
  %.sroa.434.0..sroa_idx.i.i.peel = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %.sroa.434.0..sroa_idx.i.i.peel, align 8, !noalias !8576
  %.sroa.535.0..sroa_idx.i.i.peel = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.m, ptr %.sroa.535.0..sroa_idx.i.i.peel, align 8, !noalias !8576
  call void @llvm.experimental.noalias.scope.decl(metadata !8587)
  %i.ae = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8590, !noalias !8573, !noundef !8 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !8591
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel unwind label %.thread.i.i.loopexit.split-lp, !noalias !8576

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8573
  store ptr %i.t, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8575, !noalias !8573
  store ptr %i.z, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8575, !noalias !8573
  store ptr %i.x, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8575, !noalias !8573
  store <16 x i1> %i.y, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8575, !noalias !8573
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !8575, !noalias !8573
  %i.ai = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8573, !noundef !8
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8573
  %i.ak = icmp eq i64 %i.ab, 0
  br i1 %i.ak, label %.lr.ph.preheader191, label %._crit_edge.loopexit

.lr.ph.preheader191:                              ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !8575, !noalias !8573, !nonnull !8, !align !139, !noundef !8 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val.i.i285 = load i64, ptr %i.am, align 8, !noalias !8576, !noundef !8 ; 2 uses
  %i.an = icmp eq i64 %i.aj, %.val.i.i285
  br i1 %i.an, label %.loopexit.thread, label %.lr.ph287

.lr.ph:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.ao = load ptr, ptr %i.b, align 8, !alias.scope !8575, !noalias !8573, !nonnull !8, !align !139, !noundef !8 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i = load i64, ptr %i.ap, align 8, !noalias !8576, !noundef !8 ; 2 uses
  %i.aq = icmp eq i64 %i.cj, %.val.i.i
  br i1 %i.aq, label %.loopexit.thread, label %.lr.ph287, !llvm.loop !8598

._crit_edge.loopexit:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel
  %.in = phi <16 x i1> [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel ], [ %i.bu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.lcssa53 = phi i64 [ %i.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel ], [ %i.bx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.lcssa50 = phi ptr [ %i.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel ], [ %i.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %i.ar = bitcast <16 x i1> %.in to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.as = phi i16 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ar, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa9 = phi i64 [ %.pre.i, %.._crit_edge_crit_edge ], [ %.lcssa53, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %.pre.i.i, %.._crit_edge_crit_edge ], [ %.lcssa50, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8600)
  %.not11.i.i.i = icmp eq i16 %i.as, 0
  %.promoted.i.i.i = load ptr, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8568, !noalias !8573 ; 2 uses
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge
  %.promoted13.i.i.i = load ptr, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8568, !noalias !8573
  br label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.g
  store ptr %i.ax, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8568, !noalias !8573
  store ptr %i.aw, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8568, !noalias !8573
  br label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %i.at = phi ptr [ %.promoted13.i.i.i, %.lr.ph.i.i.i ], [ %i.ax, %bb.g ] ; 2 uses
  %i.au = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.aw, %bb.g ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.at, align 16, !noalias !8601
  %i.av = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -640 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.av to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %._crit_edge.i.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %._crit_edge, %._crit_edge.i.i.i
  %i.ay = phi ptr [ %i.aw, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %._crit_edge ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.as, %._crit_edge ] ; 3 uses
  %i.az = add i16 %.lcssa.i.i.i, -1
  %i.ba = and i16 %i.az, %.lcssa.i.i.i
  store i16 %i.ba, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8568, !noalias !8573
  %i.bb = add i64 %.lcssa9, -1
  store i64 %i.bb, ptr %i.e, align 8, !alias.scope !8575, !noalias !8573
  %i.bc = atomicrmw add ptr %.lcssa, i64 1 monotonic, align 8, !noalias !8576
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.trap()
  unreachable

.lr.ph287:                                        ; preds = %.lr.ph.preheader191, %.lr.ph
  %.val.i.i286 = phi i64 [ %.val.i.i, %.lr.ph ], [ %.val.i.i285, %.lr.ph.preheader191 ]
  %i.be = phi ptr [ %i.ao, %.lr.ph ], [ %i.al, %.lr.ph.preheader191 ]
  %i.bf = phi i64 [ %i.cj, %.lr.ph ], [ %i.aj, %.lr.ph.preheader191 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8602)
  %i.bg = load ptr, ptr %i.be, align 8, !alias.scope !8602, !noalias !8576, !nonnull !8, !noundef !8
  %i.bh = icmp ult i64 %i.bf, %.val.i.i286
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.bg, i64 %i.bf ; 8 uses
  %i.bj = load atomic i64, ptr %i.bi monotonic, align 8, !noalias !8604 ; 3 uses
  %i.bk = icmp ugt i64 %i.bj, -9
  br i1 %i.bk, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !118

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %.lr.ph287
  %i.bl = add nuw i64 %i.bj, 4
  %i.bm = cmpxchg weak ptr %i.bi, i64 %i.bj, i64 %i.bl acquire monotonic, align 8, !noalias !8604
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %.noexc.i, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !119

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %.lr.ph287
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.bi)
          to label %.noexc.i unwind label %.loopexit.i.loopexit

.noexc.i:                                         ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !8576, !nonnull !8, !noundef !8 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !8576, !noundef !8
  %i.bs = getelementptr i8, ptr %i.bp, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 1      ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.bp, align 16, !noalias !8581
  %i.bu = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1) ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !8576, !noundef !8 ; 4 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !8584
  %i.by = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -15) 24, i64 noundef range(i64 1, 17) 8) #36, !noalias !8584 ; 8 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.loopexit69, label %bb.l, !prof !7

.loopexit69:                                      ; preds = %.noexc.i.peel, %.noexc.i
  %.lcssa45 = phi ptr [ %i.bi, %.noexc.i ], [ %i.m, %.noexc.i.peel ] ; 2 uses
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc.i.i unwind label %bb.i, !noalias !8576

.noexc.i.i:                                       ; preds = %.loopexit69
  unreachable

bb.i:                                             ; preds = %.loopexit69
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %.lcssa45, i64 4 release, align 8, !noalias !8576
  %i.cc = icmp eq i64 %i.cb, 6
  br i1 %i.cc, label %bb.j, label %.body.i, !prof !19

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.lcssa45)
          to label %.body.i unwind label %bb.k, !noalias !8576

bb.k:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8576
  unreachable

bb.l:                                             ; preds = %.noexc.i
  store i64 1, ptr %i.by, align 8, !noalias !8576
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 1, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !8576
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bi, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !8576
  call void @llvm.experimental.noalias.scope.decl(metadata !8605)
  %i.ce = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8607, !noalias !8573, !noundef !8 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !8608
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %.thread.i.i.loopexit, !noalias !8576

.thread.i.i.loopexit:                             ; preds = %bb.n
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread.i.i.loopexit.split-lp:                    ; preds = %bb.f
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.loopexit.split-lp, %.thread.i.i.loopexit
  %.lcssa64 = phi ptr [ %i.bp, %.thread.i.i.loopexit ], [ %i.t, %.thread.i.i.loopexit.split-lp ]
  %.lcssa61 = phi ptr [ %i.bt, %.thread.i.i.loopexit ], [ %i.x, %.thread.i.i.loopexit.split-lp ]
  %.lcssa58 = phi <16 x i1> [ %i.bu, %.thread.i.i.loopexit ], [ %i.y, %.thread.i.i.loopexit.split-lp ]
  %.lcssa55 = phi ptr [ %i.bv, %.thread.i.i.loopexit ], [ %i.z, %.thread.i.i.loopexit.split-lp ]
  %.lcssa52 = phi i64 [ %i.bx, %.thread.i.i.loopexit ], [ %i.ab, %.thread.i.i.loopexit.split-lp ]
  %.lcssa49 = phi ptr [ %i.by, %.thread.i.i.loopexit ], [ %i.ac, %.thread.i.i.loopexit.split-lp ]
  %lpad.phi78 = phi { ptr, i32 } [ %lpad.loopexit76, %.thread.i.i.loopexit ], [ %lpad.loopexit.split-lp77, %.thread.i.i.loopexit.split-lp ]
  store ptr %.lcssa49, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8573
  store ptr %.lcssa64, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8575, !noalias !8573
  store ptr %.lcssa55, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8575, !noalias !8573
  store ptr %.lcssa61, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8575, !noalias !8573
  store <16 x i1> %.lcssa58, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8575, !noalias !8573
  store i64 %.lcssa52, ptr %i.e, align 8, !alias.scope !8575, !noalias !8573
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  store ptr %i.by, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8573
  store ptr %i.bp, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8575, !noalias !8573
  store ptr %i.bv, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8575, !noalias !8573
  store ptr %i.bt, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8575, !noalias !8573
  store <16 x i1> %i.bu, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8575, !noalias !8573
  store i64 %i.bx, ptr %i.e, align 8, !alias.scope !8575, !noalias !8573
  %i.ci = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8573, !noundef !8
  %i.cj = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8573
  %i.ck = icmp eq i64 %i.bx, 0
  br i1 %i.ck, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !8598

.body.i:                                          ; preds = %.loopexit.i.loopexit, %.loopexit.i.loopexit.split-lp, %bb.t, %bb.s, %.loopexit.split-lp.i, %.thread.i.i, %bb.j, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.ca, %bb.i ], [ %i.cy, %bb.s ], [ %lpad.phi78, %.thread.i.i ], [ %i.ca, %bb.j ], [ %i.cy, %bb.t ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.i.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8609)
  call void @llvm.experimental.noalias.scope.decl(metadata !8612)
  %i.cl = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8615, !noalias !8563, !noundef !8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1l_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.o

bb.o:                                             ; preds = %.body.i
  %i.cn = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !8616
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1l_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1l_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.w

.loopexit.i.loopexit:                             ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.i.loopexit.split-lp:                    ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.v
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.q:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.cp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [40 x i8], ptr %i.ay, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -40 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8563
  store ptr %.lcssa, ptr %i.a, align 8, !noalias !8563
  store ptr %i.ct, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !8563
  store ptr %i.cu, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8563
  %i.cv = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177, ptr noundef nonnull %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223)
          to label %bb.u unwind label %bb.s       ; 0 uses

.loopexit:                                        ; preds = %.lr.ph.preheader
  br i1 %.not.i.i31, label %_RNvXs3_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph.preheader191, %.lr.ph, %.loopexit
  %.lcssa3597 = phi ptr [ %.pre.i.i, %.loopexit ], [ %i.by, %.lr.ph ], [ %i.ac, %.lr.ph.preheader191 ]
  %i.cw = atomicrmw sub ptr %.lcssa3597, i64 1 release, align 8, !noalias !8623
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.r, label %_RNvXs3_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks.exit

bb.r:                                             ; preds = %.loopexit.thread
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i) #41
  br label %_RNvXs3_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8634)
  call void @llvm.experimental.noalias.scope.decl(metadata !8637)
  call void @llvm.experimental.noalias.scope.decl(metadata !8640)
  %i.cz = load ptr, ptr %i.a, align 8, !alias.scope !8643, !noalias !8563, !nonnull !8, !noundef !8
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !8643
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.t, label %.body.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #41
          to label %.body.i unwind label %bb.w

bb.u:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !8644)
  call void @llvm.experimental.noalias.scope.decl(metadata !8647)
  call void @llvm.experimental.noalias.scope.decl(metadata !8650)
  %i.dc = load ptr, ptr %i.a, align 8, !alias.scope !8653, !noalias !8563, !nonnull !8, !noundef !8
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !8653
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i unwind label %.loopexit.split-lp.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8563
  %.pre.i.pre.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8575, !noalias !8573
  br label %bb.b

bb.w:                                             ; preds = %bb.t, %bb.p
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1l_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.p, %bb.o, %.body.i
  resume { ptr, i32 } %.pn.i

_RNvXs3_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.loopexit, %.loopexit.thread, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8563
  %i.dg = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8563
  ret i1 %i.dg
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EENtB6_5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 13 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !8, !align !139, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8654
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !8658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8654
  store ptr %i.d, ptr %i.b, align 8, !noalias !8654
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 5 uses
  %.sroa.510.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx11.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !8654
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i, %bb.a
  %.pre.i.i = phi ptr [ %.pre.i.pre.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i ], [ null, %bb.a ] ; 3 uses
  %.pre.i = load i64, ptr %i.e, align 8, !noalias !8654 ; 2 uses
  %.not.i.i31 = icmp eq ptr %.pre.i.i, null       ; 2 uses
  %i.f = icmp eq i64 %.pre.i, 0
  %or.cond.i32 = select i1 %.not.i.i31, i1 true, i1 %i.f
  br i1 %or.cond.i32, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = load i16, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8659, !noalias !8664
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8666, !noalias !8664, !noundef !8 ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !8666, !noalias !8664, !nonnull !8, !align !139, !noundef !8 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val.i.i.peel = load i64, ptr %i.i, align 8, !noalias !8667, !noundef !8 ; 2 uses
  %i.j = icmp eq i64 %i.g, %.val.i.i.peel
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !8668)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !8668, !noalias !8667, !nonnull !8, !noundef !8
  %i.l = icmp ult i64 %i.g, %.val.i.i.peel
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.k, i64 %i.g ; 8 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8, !noalias !8671 ; 3 uses
  %i.o = icmp ugt i64 %i.n, -9
  br i1 %i.o, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.peel, !prof !118

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.peel: ; preds = %bb.c
  %i.p = add nuw i64 %i.n, 4
  %i.q = cmpxchg weak ptr %i.m, i64 %i.n, i64 %i.p acquire monotonic, align 8, !noalias !8671
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.noexc.i.peel, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel, !prof !119

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel: ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.peel, %bb.c
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.m)
          to label %.noexc.i.peel unwind label %.loopexit.i.loopexit.split-lp

.noexc.i.peel:                                    ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i.peel
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !8667, !nonnull !8, !noundef !8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !8667, !noundef !8
  %i.w = getelementptr i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1        ; 2 uses
  %.val13.i.i.i.peel = load <16 x i8>, ptr %i.t, align 16, !noalias !8672
  %i.y = icmp sgt <16 x i8> %.val13.i.i.i.peel, splat (i8 -1) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !8667, !noundef !8 ; 4 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !8675
  %i.ac = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -15) 24, i64 noundef range(i64 1, 17) 8) #36, !noalias !8675 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit69, label %bb.d, !prof !7

bb.d:                                             ; preds = %.noexc.i.peel
  store i64 1, ptr %i.ac, align 8, !noalias !8667
  %.sroa.434.0..sroa_idx.i.i.peel = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 1, ptr %.sroa.434.0..sroa_idx.i.i.peel, align 8, !noalias !8667
  %.sroa.535.0..sroa_idx.i.i.peel = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.m, ptr %.sroa.535.0..sroa_idx.i.i.peel, align 8, !noalias !8667
  call void @llvm.experimental.noalias.scope.decl(metadata !8678)
  %i.ae = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8681, !noalias !8664, !noundef !8 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !8682
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel unwind label %.thread.i.i.loopexit.split-lp, !noalias !8667

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8666, !noalias !8664
  store ptr %i.t, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8666, !noalias !8664
  store ptr %i.z, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8666, !noalias !8664
  store ptr %i.x, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8666, !noalias !8664
  store <16 x i1> %i.y, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8666, !noalias !8664
  store i64 %i.ab, ptr %i.e, align 8, !alias.scope !8666, !noalias !8664
  %i.ai = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8666, !noalias !8664, !noundef !8
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8666, !noalias !8664
  %i.ak = icmp eq i64 %i.ab, 0
  br i1 %i.ak, label %.lr.ph.preheader191, label %._crit_edge.loopexit

.lr.ph.preheader191:                              ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !8666, !noalias !8664, !nonnull !8, !align !139, !noundef !8 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val.i.i285 = load i64, ptr %i.am, align 8, !noalias !8667, !noundef !8 ; 2 uses
  %i.an = icmp eq i64 %i.aj, %.val.i.i285
  br i1 %i.an, label %.loopexit.thread, label %.lr.ph287

.lr.ph:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.ao = load ptr, ptr %i.b, align 8, !alias.scope !8666, !noalias !8664, !nonnull !8, !align !139, !noundef !8 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i = load i64, ptr %i.ap, align 8, !noalias !8667, !noundef !8 ; 2 uses
  %i.aq = icmp eq i64 %i.cj, %.val.i.i
  br i1 %i.aq, label %.loopexit.thread, label %.lr.ph287, !llvm.loop !8689

._crit_edge.loopexit:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel
  %.in = phi <16 x i1> [ %i.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel ], [ %i.bu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.lcssa53 = phi i64 [ %i.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel ], [ %i.bx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.lcssa50 = phi ptr [ %i.ac, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.peel ], [ %i.by, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %i.ar = bitcast <16 x i1> %.in to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.as = phi i16 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ar, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa9 = phi i64 [ %.pre.i, %.._crit_edge_crit_edge ], [ %.lcssa53, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %.pre.i.i, %.._crit_edge_crit_edge ], [ %.lcssa50, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8690)
  %.not11.i.i.i = icmp eq i16 %i.as, 0
  %.promoted.i.i.i = load ptr, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8659, !noalias !8664 ; 2 uses
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge
  %.promoted13.i.i.i = load ptr, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8659, !noalias !8664
  br label %bb.g

._crit_edge.i.i.i:                                ; preds = %bb.g
  store ptr %i.ax, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8659, !noalias !8664
  store ptr %i.aw, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8659, !noalias !8664
  br label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %i.at = phi ptr [ %.promoted13.i.i.i, %.lr.ph.i.i.i ], [ %i.ax, %bb.g ] ; 2 uses
  %i.au = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.aw, %bb.g ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.at, align 16, !noalias !8691
  %i.av = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -640 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.av to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.g, label %._crit_edge.i.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %._crit_edge, %._crit_edge.i.i.i
  %i.ay = phi ptr [ %i.aw, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %._crit_edge ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.as, %._crit_edge ] ; 3 uses
  %i.az = add i16 %.lcssa.i.i.i, -1
  %i.ba = and i16 %i.az, %.lcssa.i.i.i
  store i16 %i.ba, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8659, !noalias !8664
  %i.bb = add i64 %.lcssa9, -1
  store i64 %i.bb, ptr %i.e, align 8, !alias.scope !8666, !noalias !8664
  %i.bc = atomicrmw add ptr %.lcssa, i64 1 monotonic, align 8, !noalias !8667
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  call void @llvm.trap()
  unreachable

.lr.ph287:                                        ; preds = %.lr.ph.preheader191, %.lr.ph
  %.val.i.i286 = phi i64 [ %.val.i.i, %.lr.ph ], [ %.val.i.i285, %.lr.ph.preheader191 ]
  %i.be = phi ptr [ %i.ao, %.lr.ph ], [ %i.al, %.lr.ph.preheader191 ]
  %i.bf = phi i64 [ %i.cj, %.lr.ph ], [ %i.aj, %.lr.ph.preheader191 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8692)
  %i.bg = load ptr, ptr %i.be, align 8, !alias.scope !8692, !noalias !8667, !nonnull !8, !noundef !8
  %i.bh = icmp ult i64 %i.bf, %.val.i.i286
  call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr %i.bg, i64 %i.bf ; 8 uses
  %i.bj = load atomic i64, ptr %i.bi monotonic, align 8, !noalias !8694 ; 3 uses
  %i.bk = icmp ugt i64 %i.bj, -9
  br i1 %i.bk, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !118

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %.lr.ph287
  %i.bl = add nuw i64 %i.bj, 4
  %i.bm = cmpxchg weak ptr %i.bi, i64 %i.bj, i64 %i.bl acquire monotonic, align 8, !noalias !8694
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %.noexc.i, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !119

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %.lr.ph287
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.bi)
          to label %.noexc.i unwind label %.loopexit.i.loopexit

.noexc.i:                                         ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !8667, !nonnull !8, !noundef !8 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !8667, !noundef !8
  %i.bs = getelementptr i8, ptr %i.bp, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 1      ; 2 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.bp, align 16, !noalias !8672
  %i.bu = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1) ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !8667, !noundef !8 ; 4 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !8675
  %i.by = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, -15) 24, i64 noundef range(i64 1, 17) 8) #36, !noalias !8675 ; 8 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.loopexit69, label %bb.l, !prof !7

.loopexit69:                                      ; preds = %.noexc.i.peel, %.noexc.i
  %.lcssa45 = phi ptr [ %i.bi, %.noexc.i ], [ %i.m, %.noexc.i.peel ] ; 2 uses
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37
          to label %.noexc.i.i unwind label %bb.i, !noalias !8667

.noexc.i.i:                                       ; preds = %.loopexit69
  unreachable

bb.i:                                             ; preds = %.loopexit69
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %.lcssa45, i64 4 release, align 8, !noalias !8667
  %i.cc = icmp eq i64 %i.cb, 6
  br i1 %i.cc, label %bb.j, label %.body.i, !prof !19

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.lcssa45)
          to label %.body.i unwind label %bb.k, !noalias !8667

bb.k:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8667
  unreachable

bb.l:                                             ; preds = %.noexc.i
  store i64 1, ptr %i.by, align 8, !noalias !8667
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 1, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !8667
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bi, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !8667
  call void @llvm.experimental.noalias.scope.decl(metadata !8695)
  %i.ce = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8697, !noalias !8664, !noundef !8 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !8698
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i unwind label %.thread.i.i.loopexit, !noalias !8667

.thread.i.i.loopexit:                             ; preds = %bb.n
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread.i.i.loopexit.split-lp:                    ; preds = %bb.f
  %lpad.loopexit.split-lp77 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.i.i.loopexit.split-lp, %.thread.i.i.loopexit
  %.lcssa64 = phi ptr [ %i.bp, %.thread.i.i.loopexit ], [ %i.t, %.thread.i.i.loopexit.split-lp ]
  %.lcssa61 = phi ptr [ %i.bt, %.thread.i.i.loopexit ], [ %i.x, %.thread.i.i.loopexit.split-lp ]
  %.lcssa58 = phi <16 x i1> [ %i.bu, %.thread.i.i.loopexit ], [ %i.y, %.thread.i.i.loopexit.split-lp ]
  %.lcssa55 = phi ptr [ %i.bv, %.thread.i.i.loopexit ], [ %i.z, %.thread.i.i.loopexit.split-lp ]
  %.lcssa52 = phi i64 [ %i.bx, %.thread.i.i.loopexit ], [ %i.ab, %.thread.i.i.loopexit.split-lp ]
  %.lcssa49 = phi ptr [ %i.by, %.thread.i.i.loopexit ], [ %i.ac, %.thread.i.i.loopexit.split-lp ]
  %lpad.phi78 = phi { ptr, i32 } [ %lpad.loopexit76, %.thread.i.i.loopexit ], [ %lpad.loopexit.split-lp77, %.thread.i.i.loopexit.split-lp ]
  store ptr %.lcssa49, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8666, !noalias !8664
  store ptr %.lcssa64, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8666, !noalias !8664
  store ptr %.lcssa55, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8666, !noalias !8664
  store ptr %.lcssa61, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8666, !noalias !8664
  store <16 x i1> %.lcssa58, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8666, !noalias !8664
  store i64 %.lcssa52, ptr %i.e, align 8, !alias.scope !8666, !noalias !8664
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB18_6string6StringINtNtB2v_4util11SharedValueIB14_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEINtB39_7RawIterB3U_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  store ptr %i.by, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8666, !noalias !8664
  store ptr %i.bp, ptr %.sroa.510.0..sroa_idx11.i.i, align 8, !alias.scope !8666, !noalias !8664
  store ptr %i.bv, ptr %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8666, !noalias !8664
  store ptr %i.bt, ptr %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8666, !noalias !8664
  store <16 x i1> %i.bu, ptr %.sroa.510.sroa.7.0..sroa.510.0..sroa_idx11.sroa_idx.i.i, align 8, !alias.scope !8666, !noalias !8664
  store i64 %i.bx, ptr %i.e, align 8, !alias.scope !8666, !noalias !8664
  %i.ci = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8666, !noalias !8664, !noundef !8
  %i.cj = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8666, !noalias !8664
  %i.ck = icmp eq i64 %i.bx, 0
  br i1 %i.ck, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !8689

.body.i:                                          ; preds = %.loopexit.i.loopexit, %.loopexit.i.loopexit.split-lp, %bb.t, %bb.s, %.loopexit.split-lp.i, %.thread.i.i, %bb.j, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.ca, %bb.i ], [ %i.cy, %bb.s ], [ %lpad.phi78, %.thread.i.i ], [ %i.ca, %bb.j ], [ %i.cy, %bb.t ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.i.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8699)
  call void @llvm.experimental.noalias.scope.decl(metadata !8702)
  %i.cl = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8705, !noalias !8654, !noundef !8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1l_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.o

bb.o:                                             ; preds = %.body.i
  %i.cn = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !8706
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1l_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1l_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.w

.loopexit.i.loopexit:                             ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.i.loopexit.split-lp:                    ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.v
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.q:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECs2VbMhdeEr66_16delta_benchmarks.exit.i.i
  %i.cp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [40 x i8], ptr %i.ay, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -40 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8654
  store ptr %.lcssa, ptr %i.a, align 8, !noalias !8654
  store ptr %i.ct, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !8654
  store ptr %i.cu, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8654
  %i.cv = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @177, ptr noundef nonnull %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @224)
          to label %bb.u unwind label %bb.s       ; 0 uses

.loopexit:                                        ; preds = %.lr.ph.preheader
  br i1 %.not.i.i31, label %_RNvXs3_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph.preheader191, %.lr.ph, %.loopexit
  %.lcssa3597 = phi ptr [ %.pre.i.i, %.loopexit ], [ %i.by, %.lr.ph ], [ %i.ac, %.lr.ph.preheader191 ]
  %i.cw = atomicrmw sub ptr %.lcssa3597, i64 1 release, align 8, !noalias !8713
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.r, label %_RNvXs3_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks.exit

bb.r:                                             ; preds = %.loopexit.thread
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i) #41
  br label %_RNvXs3_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks.exit

bb.s:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8724)
  call void @llvm.experimental.noalias.scope.decl(metadata !8727)
  call void @llvm.experimental.noalias.scope.decl(metadata !8730)
  %i.cz = load ptr, ptr %i.a, align 8, !alias.scope !8733, !noalias !8654, !nonnull !8, !noundef !8
  %i.da = atomicrmw sub ptr %i.cz, i64 1 release, align 8, !noalias !8733
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.t, label %.body.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #41
          to label %.body.i unwind label %bb.w

bb.u:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !8734)
  call void @llvm.experimental.noalias.scope.decl(metadata !8737)
  call void @llvm.experimental.noalias.scope.decl(metadata !8740)
  %i.dc = load ptr, ptr %i.a, align 8, !alias.scope !8743, !noalias !8654, !nonnull !8, !noundef !8
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !8743
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtB7_6string6StringINtNtB1A_4util11SharedValueIBx_DNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEE9drop_slowB3V_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #41
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i unwind label %.loopexit.split-lp.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1C_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit11.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8654
  %.pre.i.pre.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !8666, !noalias !8664
  br label %bb.b

bb.w:                                             ; preds = %bb.t, %bb.p
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3JXekYNd0JR_7dashmap4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1l_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.p, %bb.o, %.body.i
  resume { ptr, i32 } %.pn.i

_RNvXs3_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.loopexit, %.loopexit.thread, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8654
  %i.dg = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8654
  ret i1 %i.dg
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs2pqxYH9ZEk8_3std4path7PathBufNtB6_5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !139, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXsG_NtCs2pqxYH9ZEk8_3std4pathNtB5_7PathBufNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtB6_5Debug3fmtCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = load ptr, ptr %0, align 8, !nonnull !8, !align !252, !noundef !8 ; 45 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8744)
  %i.ap = load i64, ptr %i.ao, align 16, !range !2112, !alias.scope !8744, !noalias !8747, !noundef !8 ; 3 uses
  %i.aq = icmp ne i64 %i.ap, -9223372036854775745
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nsw i64 %i.ap, 9223372036854775787
  %i.as = icmp ugt i64 %i.ap, -9223372036854775788
  %i.at = select i1 %i.as, i64 %i.ar, i64 42
  switch i64 %i.at, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
    i64 35, label %bb.al
    i64 36, label %bb.am
    i64 37, label %bb.an
    i64 38, label %bb.ao
    i64 39, label %bb.ap
    i64 40, label %bb.aq
    i64 41, label %bb.ar
    i64 42, label %bb.as
    i64 43, label %bb.at
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8749
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.av, ptr %i.an, align 8, !noalias !8749
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @269, i64 noundef 6, ptr noundef nonnull readonly %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @266, ptr noalias noundef nonnull readonly captures(address, read_provenance) @270, i64 noundef 9, ptr noundef nonnull %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @267)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !8749
  br label %_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8749
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ax, ptr %i.am, align 8, !noalias !8749
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 5, ptr noundef nonnull %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @271)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !8749
  br label %_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8749
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.az, ptr %i.al, align 8, !noalias !8749
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 15, ptr noundef nonnull %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @232)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !8749
  br label %_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !8749
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.bb, ptr %i.ak, align 8, !noalias !8749
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 14, ptr noundef nonnull %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @232)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8749
  br label %_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !8749
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.be, ptr %i.aj, align 8, !noalias !8749
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @277, i64 noundef 7, ptr noundef nonnull readonly %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @275, ptr noundef nonnull %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @276)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8749
  br label %_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !8749
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.bg, ptr %i.ai, align 8, !noalias !8749
  %i.bh = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @278, i64 noundef 7, ptr noundef nonnull %i.ai, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @232)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !8749
  br label %_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !8749
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.bi, ptr %i.ah, align 8, !noalias !8749
  %i.bj = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 12, ptr noalias noundef nonnull readonly captures(address, read_provenance) @269, i64 noundef 6, ptr noundef nonnull %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @234)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !8749
  br label %_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !8749
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.bk, ptr %i.ag, align 8, !noalias !8749
  %i.bl = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 7, ptr noundef nonnull %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @246)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !8749
  br label %_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !8749
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.bm, ptr %i.af, align 8, !noalias !8749
  %i.bn = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @281, i64 noundef 13, ptr noundef nonnull %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @232)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !8749
  br label %_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit
end_hunk_0
