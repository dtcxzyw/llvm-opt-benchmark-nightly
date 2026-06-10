inline.NumInlined: 8493
inline.NumDeleted: 3149
begin_hunk_0_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate:bb.a
  br i1 %.not.not.i43, label %.loopexit55, label %.lr.ph.i41

.loopexit55:                                      ; preds = %.noexc45, %.noexc44
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.be = call noundef zeroext i1 @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel19table_configurationNtB2_18TableConfiguration18is_feature_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel18to_delta_predicate(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1)
  %i.bf = load i64, ptr %i.d, align 16, !range !16420, !noundef !27
  %i.bg = icmp eq i64 %i.bf, 16
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit47, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.bh, align 8
  store i64 16, ptr %0, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.bi, align 16
  br label %bb.r

bb.o:                                             ; preds = %.loopexit55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false)
  %i.bj = xor i1 %5, true
  %i.bk = or i1 %.sroa.0.0, %i.bj
  %.sroa.09.0 = select i1 %i.ar, i8 2, i8 1
  %i.bl = or i1 %i.ar, %i.bk
  %.sroa.03.1 = select i1 %i.bl, ptr null, ptr %1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.sroa.09.0, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.03.1, ptr %i.bn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit47: ; preds = %.loopexit55
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.sroa.0.0, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit47
  %.12 = select i1 %5, ptr %1, ptr null
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.bp, align 8
  store i64 16, ptr %0, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.12, ptr %i.bq, align 16
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit47
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.br, align 8
  store i64 16, ptr %0, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.bs, align 16
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.o, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = load i64, ptr %4, align 8, !range !66, !noundef !27
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !27
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 33
  %i.i = load i8, ptr %i.h, align 1, !range !1769, !noundef !27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel19table_configurationNtB2_18TableConfiguration18is_feature_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258)
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef zeroext i1 @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel19table_configurationNtB2_18TableConfiguration18is_feature_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259)
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %storemerge = phi i8 [ %i.n, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.not = icmp eq i64 %i.c, -9223372036854775808  ; 2 uses
  %.sroa.0.0 = select i1 %.not, ptr @257, ptr %i.e
  %.sroa.3.0 = select i1 %.not, i64 20, i64 %i.g
  store i8 %storemerge, ptr %i.b, align 1
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.q, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.0.0, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.3.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2X_5slice4iter4IterRNtNtB17_4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0EE9from_iterB4B_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !27
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !27, !noundef !27
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentRBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #17 {
bb.a:
  %.val4 = load ptr, ptr %1, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.b = getelementptr i8, ptr %.val4, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !27
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val4, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !27, !noundef !27
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.a = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.b = getelementptr i8, ptr %.val1, i64 16
  %.val3.i = load i64, ptr %i.b, align 8, !noundef !27
  %i.c = icmp eq i64 %.val1.i, %.val3.i
  br i1 %i.c, label %bb.b, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val1, i64 8
  %.val2.i = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val2.i, i64 %.val1.i)
  %i.f = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownReINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !27
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %.val2.a = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27
  %.val = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.a, ptr nonnull readonly %.val, i64 %.val1), !alias.scope !16852
  %i.d = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !16856
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrowneINtB2_10EquivalentReE10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !27
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !nonnull !27, !noundef !27
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !16860
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [72 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = load i64, ptr %1, align 16, !range !3591, !noundef !27
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 -9223372036854775744)
  switch i64 %i.f, label %bb.b [
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 14, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %1, i64 96, i1 false)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !16864
  %i.g = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 96, i64 noundef range(i64 8, 17) 16) #61, !noalias !16864 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.m, !prof !67

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #57
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #60
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false)
  invoke void @_RNvXs6_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtCsjyY8HP3IvQ6_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c)
          to label %bb.j unwind label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  invoke void @_RNvXs5_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.j unwind label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  invoke void @_RNvXs2_NtCsjhHCjzi9uUI_17datafusion_common5errorNtB5_15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.j unwind label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !27, !noundef !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 3, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.i
  %i.q = load i64, ptr %1, align 16, !range !3591, !noundef !27
  %i.r = call i64 @llvm.usub.sat.i64(i64 %i.q, i64 -9223372036854775744)
  switch i64 %i.r, label %bb.k [
    i64 1, label %bb.l
    i64 2, label %bb.l
    i64 3, label %bb.l
    i64 14, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.j, %bb.j, %bb.j
  ret void

bb.m:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.g, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @108, ptr %i.t, align 8
  store i64 13, ptr %0, align 8
  br label %bb.l

.body:                                            ; preds = %bb.d, %bb.o, %bb.n, %bb.n, %bb.n, %bb.n
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.u, %bb.o ], [ %i.u, %bb.n ], [ %i.u, %bb.n ], [ %i.u, %bb.n ], [ %i.u, %bb.n ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %eh.lpad-body4

bb.n:                                             ; preds = %bb.f, %bb.g, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.v = load i64, ptr %1, align 16, !range !3591, !noundef !27
  %i.w = call i64 @llvm.usub.sat.i64(i64 %i.v, i64 -9223372036854775744)
  switch i64 %i.w, label %bb.o [
    i64 1, label %.body
    i64 2, label %.body
    i64 3, label %.body
    i64 14, label %.body
  ]

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %1) #60
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #59
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtB4_6string6StringNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16870)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16872
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %1), !noalias !16867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16872
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !16867

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.e, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #60
          to label %bb.g unwind label %bb.f, !noalias !16867

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.at, ptr %i.f, align 8
  %i.au = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @674, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @476, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @673)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.e, align 8
  %i.aw = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @675, i64 noundef 8, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.d, align 8
  %i.ay = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @676, i64 noundef 20, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.c, align 8
  %i.ba = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @677, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.b, align 8
  %i.bc = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @486)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.t:                                             ; preds = %bb.a
  %i.bd = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @679, i64 noundef 26)
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  %i.be = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @680, i64 noundef 24)
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.a, align 8
  %i.bg = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @681, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @501)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ %i.ab, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ], [ %i.ah, %bb.h ], [ %i.aj, %bb.i ], [ %i.ak, %bb.j ], [ %i.am, %bb.k ], [ %i.ao, %bb.l ], [ %i.aq, %bb.m ], [ %i.as, %bb.n ], [ %i.au, %bb.o ], [ %i.aw, %bb.p ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bc, %bb.s ], [ %i.bd, %bb.t ], [ %i.be, %bb.u ], [ %i.bg, %bb.v ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4182, !noundef !27 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !4182, !noundef !27
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %bb.p, %bb.w, %bb.a, %bb.o, %bb.n, %bb.m, %bb.an, %bb.am, %bb.ak, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.l, %bb.k, %bb.ab, %bb.j, %bb.i, %bb.h, %bb.x, %bb.b, %bb.ao, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.ak ], [ %i.ds, %bb.y ], [ %.mux, %bb.w ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bo, %bb.n ], [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ah, %bb.g ], [ false, %bb.x ], [ %i.dv, %bb.z ], [ true, %bb.h ], [ %i.dy, %bb.aa ], [ false, %bb.j ], [ %i.eg, %bb.ac ], [ true, %bb.i ], [ true, %bb.ab ], [ %i.ej, %bb.ad ], [ true, %bb.k ], [ %i.em, %bb.ae ], [ true, %bb.an ], [ %i.er, %bb.af ], [ true, %bb.l ], [ false, %bb.o ], [ false, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %i.fd, %bb.ag ], [ false, %bb.m ], [ %i.fi, %bb.ah ], [ false, %bb.q ], [ %i.fn, %bb.ai ], [ false, %bb.r ], [ %i.fs, %bb.aj ], [ false, %bb.s ], [ false, %bb.u ], [ %i.ga, %bb.al ], [ false, %bb.t ], [ false, %bb.am ], [ %i.gl, %bb.ao ], [ false, %bb.p ], [ true, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.ew, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr2969 = phi ptr [ %i.ev, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr68 = phi ptr [ %i.et, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.o
    i8 34, label %bb.p
    i8 35, label %bb.q
    i8 36, label %bb.r
    i8 37, label %bb.s
    i8 38, label %bb.t
    i8 39, label %bb.u
    i8 40, label %bb.v
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !6714, !noundef !27
  %i.g = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !6714, !noundef !27
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.w, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !6714, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !6714, !noundef !27
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !6714, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !6714, !noundef !27
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !6714, !noundef !27
  %i.v = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !6714, !noundef !27
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !2073, !noundef !27
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !2073, !noundef !27
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !27
  %i.af = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !27
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.z

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.aa

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !27
  %i.au = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !27
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.ab, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val20 = load i64, ptr %i.bh, align 8, !noundef !27 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val22 = load i64, ptr %i.bi, align 8, !noundef !27
  %i.bj = icmp eq i64 %.val20, %.val22
  br i1 %i.bj, label %bb.n, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val21.a = load ptr, ptr %i.bk, align 8, !nonnull !27, !noundef !27
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val = load ptr, ptr %i.bl, align 8, !nonnull !27, !noundef !27
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.val21.a, i64 16
  %i.bo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 %i.bn, ptr noundef nonnull readonly align 8 %i.bm, i64 noundef range(i64 0, 1152921504606846976) %.val20)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val24 = load i64, ptr %i.bp, align 8, !noundef !27 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val26 = load i64, ptr %i.bq, align 8, !noundef !27
  %i.br = icmp eq i64 %.val24, %.val26
  br i1 %i.br, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val25.a = load ptr, ptr %i.bs, align 8, !nonnull !27, !noundef !27
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val23 = load ptr, ptr %i.bt, align 8, !nonnull !27, !noundef !27
  %i.bu = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val25.a, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 %i.bv, ptr noundef nonnull readonly align 8 %i.bu, i64 noundef range(i64 0, 576460752303423488) %.val24)
  br i1 %i.bw, label %bb.af, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !27, !noundef !27
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !27, !noundef !27
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #63
  br i1 %i.cb, label %tailrecurse, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !27
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !27
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.ag, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !27
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !27
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.ah, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !27
  %i.co = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !noundef !27
  %i.cq = icmp eq i8 %i.cn, %i.cp
  br i1 %i.cq, label %bb.ai, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !27
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !27
  %i.cv = icmp eq i8 %i.cs, %i.cu
  br i1 %i.cv, label %bb.aj, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !range !1769, !noundef !27
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !1769, !noundef !27
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.ak, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %bb.an, label %bb.am

bb.w:                                             ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noundef !27 ; 2 uses
  %.not = icmp eq ptr %i.dh, null                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noundef !27 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null                 ; 2 uses
  %brmerge = or i1 %.not, %i.dk
  %.mux = and i1 %.not, %i.dk
  br i1 %brmerge, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.dn = load i64, ptr %i.dl, align 8, !noundef !27 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !noundef !27
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.y, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.dr, ptr nonnull %i.dq, i64 %i.dn)
  %i.ds = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dv = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.du)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.dy = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dx)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ef)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ej = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ei)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.em = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.el)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !range !1769, !noundef !27
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !1769, !noundef !27
  %i.er = icmp eq i8 %i.eo, %i.eq
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ew = load i8, ptr %i.et, align 8, !range !4182, !noundef !27 ; 2 uses
  %i.ex = load i8, ptr %i.ev, align 8, !range !4182, !noundef !27
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !noundef !27
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fc = load i8, ptr %i.fb, align 2, !noundef !27
  %i.fd = icmp eq i8 %i.fa, %i.fc
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.ff = load i8, ptr %i.fe, align 2, !noundef !27
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fh = load i8, ptr %i.fg, align 2, !noundef !27
  %i.fi = icmp eq i8 %i.ff, %i.fh
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !noundef !27
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fm = load i8, ptr %i.fl, align 2, !noundef !27
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fp = load i8, ptr %i.fo, align 2, !noundef !27
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fr = load i8, ptr %i.fq, align 2, !noundef !27
  %i.fs = icmp eq i8 %i.fp, %i.fr
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fz)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.gd = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gc)
  br i1 %i.gd, label %bb.an, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.v, %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.gi = icmp eq ptr %i.gf, %i.gh
  br i1 %i.gi, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ao
end_hunk_1
