Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.06?download=true
inline.NumInlined: 4054
inline.NumDeleted: 1735
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXsQ_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_19CreateCatalogSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !27, !noundef !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5637)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !5637, !nonnull !27, !noundef !27 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !5638, !nonnull !27, !noundef !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i64, ptr %i.q, align 8, !noalias !5638, !noundef !27 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5639
  store i64 %i.r, ptr %i.b, align 8, !noalias !5639
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #42, !noalias !5637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5639
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.r, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !5637
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.u = load i64, ptr %i.t, align 8, !noalias !5637, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5640
  store i64 %i.u, ptr %i.a, align 8, !noalias !5640
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #42, !noalias !5637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5640
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvXsS_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_13ResetVariableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr nofree nonnull readonly captures(none) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #6 !guid !5647 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.8.val, i64 noundef %.16.val) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5648
  store i8 -1, ptr %i.a, align 1, !noalias !5648
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #42, !noalias !5649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5648
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsW_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_9DropTableNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #5 !guid !5661 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  tail call fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(72) %1) #42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i8, ptr %i.d, align 8, !range !89, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5662
  store i8 %i.e, ptr %i.c, align 1, !noalias !5662
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5662
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !27, !noundef !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5663)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5663, !nonnull !27, !noundef !27 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !5664, !nonnull !27, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noalias !5664, !noundef !27 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5665
  store i64 %i.m, ptr %i.b, align 8, !noalias !5665
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #42, !noalias !5663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5665
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.m, ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !noalias !5663
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.p = load i64, ptr %i.o, align 8, !noalias !5663, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5666
  store i64 %i.p, ptr %i.a, align 8, !noalias !5666
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #42, !noalias !5663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5666
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsZ_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB6_7PrepareNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #5 !guid !5677 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !27
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5678
  store i8 -1, ptr %i.b, align 1, !noalias !5678
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #42, !noalias !5679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5678
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5680
  store i64 %i.j, ptr %i.a, align 8, !noalias !5680
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5680
  tail call void @_RINvYINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !27, !noundef !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call fastcc void @_RINvXsN_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11LogicalPlanNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.m, ptr noalias noundef align 8 dereferenceable(72) %1) #42
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0EINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtB1I_4ExprEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB6J_8for_each4callB6w_NCINvMsj_B5N_INtB5N_3VecB6w_E14extend_trustedBO_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5688 {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noundef !27 ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5689
  store ptr %1, ptr %i.b, align 8, !noalias !5690
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB5p_8for_each4callNtB1p_4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6N_3VecB6t_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB6N_9into_iter8IntoIterB6t_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 7
  br label %bb.d

bb.d:                                             ; preds = %.noexc9, %bb.c
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.c ], [ %i.o, %.noexc9 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5691
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.n) #42
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  invoke void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2G_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtB3H_3map3MapINtNtNtBb_5slice4iter4IterNtB1Q_4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0EINtNtB2G_9into_iter8IntoIterB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a)
          to label %.noexc9 unwind label %bb.i

.noexc9:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5691
  %i.o = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB5p_8for_each4callNtB1p_4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6N_3VecB6t_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB6N_9into_iter8IntoIterB6t_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.d

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB5p_8for_each4callNtB1p_4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6N_3VecB6t_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB6N_9into_iter8IntoIterB6t_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.noexc9, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5689
  br label %bb.e

bb.e:                                             ; preds = %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB5p_8for_each4callNtB1p_4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6N_3VecB6t_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB6N_9into_iter8IntoIterB6t_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  %i.q = load ptr, ptr %0, align 8, !noundef !27
  %.not4 = icmp eq ptr %i.q, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB1H_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1N_8adapters5chain5ChainINtNtB3V_3map3MapINtNtNtB1P_5slice4iter4IterNtBZ_4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0EBI_EE0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.val7 = load ptr, ptr %1, align 8, !nonnull !27, !align !40, !noundef !27
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.r, align 8, !noundef !27
  store i64 %.val8, ptr %.val7, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void

bb.i:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !27, !align !40, !noundef !27
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.s, align 8, !noundef !27
  store i64 %.val6, ptr %.val, align 8
  %i.t = load ptr, ptr %0, align 8, !noundef !27
  %.not20 = icmp eq ptr %i.t, null
  br i1 %.not20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.k, %bb.i
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callB1s_NCINvMsj_B2w_INtB2w_3VecB1s_E14extend_trustedBO_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(448) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5698 {
bb.a:
  %i.a = alloca [416 x i8], align 16              ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [416 x i8], align 16              ; 4 uses
  %i.f = load i64, ptr %0, align 16, !range !45, !noundef !27
  %.not = icmp eq i64 %i.f, 4
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.e, ptr noundef nonnull align 16 dereferenceable(416) %0, i64 416, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5699)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !5700
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5701)
  %.sroa.0.0.copyload25.i = load i64, ptr %i.e, align 16, !alias.scope !5702 ; 2 uses
  store i64 3, ptr %i.e, align 16, !alias.scope !5703
  %.not6.i = icmp eq i64 %.sroa.0.0.copyload25.i, 3
  br i1 %.not6.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(416) %i.e) #38
          to label %bb.i unwind label %bb.d

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5700
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(408) %i.h, i64 408, i1 false)
  store i64 %.sroa.0.0.copyload25.i, ptr %i.a, align 16, !noalias !5700
  invoke void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2V_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtNtB11_7sources4once4OnceB1O_EINtNtB2V_9into_iter8IntoIterB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(416) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks.exit.loopexit.i unwind label %bb.c, !noalias !5699

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks.exit.loopexit.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5700
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 16, !noundef !27
  %.not4 = icmp eq ptr %i.k, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 16 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB22_8adapters5chain5ChainINtNtNtB22_7sources4once4OnceBX_EBI_EE0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.val7 = load ptr, ptr %1, align 8, !nonnull !27, !align !40, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.l, align 8, !noundef !27
  store i64 %.val8, ptr %.val7, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !nonnull !27, !align !40, !noundef !27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.m, align 8, !noundef !27
  store i64 %.val6, ptr %.val, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !noundef !27
  %.not17 = icmp eq ptr %i.o, null
  br i1 %.not17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.k, %bb.i
  resume { ptr, i32 } %i.g

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources8repeat_n7RepeatNINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB1z_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3O_8for_each4callB1z_NCINvMsj_B2Z_INtB2Z_3VecB1z_E14extend_trustedBO_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5718 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [40 x i8], align 8                ; 13 uses
  %i.g = load i64, ptr %0, align 8, !range !56, !noundef !27
  %.not = icmp eq i64 %i.g, -9223372036854775806
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5719)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !noalias !5720
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5720
  %i.i = load i64, ptr %i.f, align 8, !range !38, !alias.scope !5719, !noundef !27 ; 2 uses
  %.not.i14.i = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not.i14.i, label %.thread12.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

.thread12.i:                                      ; preds = %bb.m, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5720
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.m, %.lr.ph.i
  %i.m = phi i64 [ %i.i, %.lr.ph.i ], [ %i.u, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5721)
  call void @llvm.experimental.noalias.scope.decl(metadata !5722)
  %i.n = load i64, ptr %i.j, align 8, !range !5723, !alias.scope !5724, !noundef !27
  %i.o = add i64 %i.n, -1                         ; 3 uses
  %.not11.i.i = icmp eq i64 %i.o, 0
  br i1 %.not11.i.i, label %.thread5.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i64 %i.m, -9223372036854775808
  br i1 %.not.i.i.i, label %.thread9.i, label %bb.e

.thread9.i:                                       ; preds = %bb.d
  store i64 %i.o, ptr %i.j, align 8, !alias.scope !5724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !5725
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.g unwind label %bb.f

.thread5.i:                                       ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !alias.scope !5726, !noalias !5727
  store i64 -9223372036854775807, ptr %i.f, align 8, !alias.scope !5724
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f) #38
          to label %.body.thread unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.k, align 8, !range !89, !alias.scope !5728, !noundef !27
  store i8 %i.q, ptr %i.l, align 8, !noalias !5729
  %.sroa.0.0.copyload13.i.i = load i64, ptr %i.a, align 8, !noalias !5729 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !alias.scope !5724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !5725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5720
  %.not.i = icmp eq i64 %.sroa.0.0.copyload13.i.i, -9223372036854775807
  br i1 %.not.i, label %bb.i, label %bb.h

.sink.split.i:                                    ; preds = %.thread5.i, %.thread9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5720
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.g
  %.sroa.0.08.i = phi i64 [ %.sroa.0.0.copyload13.i.i, %bb.g ], [ %i.m, %.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !5720
  store i64 %.sroa.0.08.i, ptr %i.b, align 8, !noalias !5720
  invoke void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameENCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3h_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtNtB11_7sources8repeat_n7RepeatNB1O_EINtNtB3h_9into_iter8IntoIterB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.m unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %.pr.i = load i64, ptr %i.f, align 8, !alias.scope !5730
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %switch.i.i.i = icmp slt i64 %.pr.i, -9223372036854775806
  br i1 %switch.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body.thread unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %.body.thread14

.body.thread14:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5720
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5720
  %i.u = load i64, ptr %i.f, align 8, !range !38, !alias.scope !5719, !noundef !27 ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, -9223372036854775807
  br i1 %.not.i.i, label %.thread12.i, label %bb.c

bb.n:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #35
  unreachable

end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!5496 = !{!5152, !5145, !5146, !5133}
!5497 = !{!5154}
!5498 = !{!5158, !5156, !5154}
!5499 = !{!5163, !5161}
!5500 = !{!5165, !5154}
!5501 = !{!5167, !5154}
!5502 = !{!5172, !5170, !5154}
!5503 = !{!5174, !5154}
!5504 = !{!5176}
!5505 = !{!5181, !5179, !5176}
!5506 = !{!5186, !5184, !5176}
!5507 = !{!5190, !5188}
!5508 = !{!5194, !5192}
!5509 = !{!5196}
!5510 = !{!5196, !5197}
!5511 = !{!5201, !5199, !5196, !5197}
!5512 = !{!5203, !5196, !5197}
!5513 = !{!5207, !5205}
!5514 = !{!5209}
!5515 = !{!5212}
!5516 = !{!5217, !5215, !5212, !5213}
!5517 = !{!5220, !5212, !5213}
!5518 = !{!5224, !5222, !5212, !5213}
!5519 = !{!5227, !5212, !5213}
!5520 = !{!5231, !5229, !5212, !5213}
!5521 = !{!5233}
!5522 = !{!5238, !5236, !5233, !5234}
!5523 = !{!5240}
!5524 = !{!5240, !5241, !5233}
!5525 = !{!5245, !5243, !5240, !5241, !5233, !5234}
!5526 = !{!5240, !5233}
!5527 = !{!5247, !5240, !5241, !5233, !5234}
!5528 = !{!5251, !5249}
!5529 = !{!5253}
!5530 = !{!5249}
!5531 = !{!5253, !5254, !5249}
!5532 = !{!5258, !5256, !5253, !5254, !5249}
!5533 = !{!5260, !5253, !5254, !5249}
!5534 = !{!5262}
!5535 = !{!5266, !5264, !5262}
!5536 = !{!5268}
!5537 = !{!5271}
!5538 = !{!5271, !5272, !5268}
!5539 = !{!5276, !5274, !5271, !5272, !5268}
!5540 = !{!5271, !5268}
!5541 = !{!5278, !5271, !5272, !5268}
!5542 = !{!5280}
!5543 = !{!5284, !5282, !5280}
!5544 = !{!5289, !5287, !5280}
!5545 = !{!5291}
!5546 = !{!5295, !5293, !5291}
!5547 = !{!5298}
!5548 = !{!5300}
!5549 = !{!5298, !5301}
!5550 = !{!5300, !5302, !5298, !5301}
!5551 = !{!5306, !5304, !5300, !5302, !5298, !5301}
!5552 = !{!5300, !5298}
!5553 = !{!5308, !5300, !5302, !5298, !5301}
!5554 = !{!5312, !5310, !5298, !5301}
!5555 = !{!5314}
!5556 = !{!5316, !5314}
!5557 = !{!5320, !5318, !5314}
!5558 = !{!5325, !5323, !5314}
!5559 = !{!5327}
!5560 = !{!5327, !5328, !5314}
!5561 = !{!5332, !5330, !5327, !5328, !5314}
!5562 = !{!5327, !5314}
!5563 = !{!5334, !5327, !5328, !5314}
!5564 = !{!5336, !5314}
!5565 = !{!5338}
!5566 = !{!5340, !5338}
!5567 = !{!5343}
!5568 = !{!5343, !5344, !5338}
!5569 = !{!5348, !5346, !5343, !5344, !5338}
!5570 = !{!5343, !5338}
!5571 = !{!5350, !5343, !5344, !5338}
!5572 = !{!5352}
!5573 = !{!5355}
!5574 = !{!5359, !5357, !5355}
!5575 = !{!5361}
!5576 = !{!5366, !5364, !5361, !5362}
!5577 = !{!5372, !5370, !5361, !5362}
!5578 = !{!5376, !5374, !5361, !5362}
!5579 = !{!5380, !5378, !5361, !5362}
!5580 = !{!5382}
!5581 = !{!5386, !5382, !5384, !5361, !5362}
!5582 = !{!5388, !5382, !5384, !5361, !5362}
!5583 = !{!5390}
!5584 = !{!5390, !5391, !5361}
!5585 = !{!5395, !5393, !5390, !5391, !5361, !5362}
!5586 = !{!5390, !5361}
!5587 = !{!5397, !5390, !5391, !5361, !5362}
!5588 = !{!5403, !5401, !5399}
!5589 = !{!5399}
!5590 = !{!5406}
!5591 = !{ptr @_RINvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3dmlNtB6_6CopyToNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks}
!5592 = !{!5413, !5412, !5410, !5409, !5406, !5407}
!5593 = !{!5412, !5409, !5406}
!5594 = !{!5415}
!5595 = !{!5417}
!5596 = !{!5415, !5418}
!5597 = !{!5422, !5420, !5415, !5418, !5417}
!5598 = !{!5424, !5415, !5418, !5417}
!5599 = !{!5426}
!5600 = !{!5431, !5429, !5426}
!5601 = !{!5435, !5433, !5426}
!5602 = !{!5439, !5437, !5426}
!5603 = !{!5443, !5441, !5426}
!5604 = !{!5445}
!5605 = !{!5445, !5446, !5426}
!5606 = !{!5450, !5448, !5445, !5446, !5426}
!5607 = !{!5445, !5426}
!5608 = !{!5452, !5445, !5446, !5426}
!5609 = !{!5454}
!5610 = !{!5457, !5454, !5455}
!5611 = !{!5461, !5459, !5454, !5455}
!5612 = !{!5463}
!5613 = !{!5469, !5468, !5466, !5465, !5463}
!5614 = !{!5468, !5465, !5463}
!5615 = !{!5472, !5463}
!5616 = distinct !{!5616, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5617 = distinct !{!5617, !5616, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5618 = distinct !{!5618, !5616, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5619 = distinct !{!5619, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5620 = distinct !{!5620, !5619, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5621 = distinct !{!5621, !5619, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5622 = distinct !{!5622, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks"}
!5623 = distinct !{!5623, !5622, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5624 = distinct !{!5624, i1 true, !"_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks"}
!5625 = distinct !{!5625, !5624, !"_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5626 = distinct !{!5626, !5624, !"_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5627 = distinct !{!5627, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks"}
!5628 = distinct !{!5628, !5627, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5629 = distinct !{!5629, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5630 = distinct !{!5630, !5629, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5631 = distinct !{!5631, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5632 = distinct !{!5632, !5631, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5633 = !{i64 5185010613132062527}
!5634 = !{!5621, !5620, !5618, !5617}
!5635 = !{!5620, !5617}
!5636 = !{!5623}
!5637 = !{!5625}
!5638 = !{!5625, !5626}
!5639 = !{!5630, !5628, !5625, !5626}
!5640 = !{!5632, !5625, !5626}
!5641 = distinct !{!5641, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5642 = distinct !{!5642, !5641, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5643 = distinct !{!5643, !5641, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5644 = distinct !{!5644, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5645 = distinct !{!5645, !5644, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5646 = distinct !{!5646, !5644, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5647 = !{i64 2805528247226652272}
!5648 = !{!5646, !5645, !5643, !5642}
!5649 = !{!5645, !5642}
!5650 = distinct !{!5650, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks"}
!5651 = distinct !{!5651, !5650, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5652 = distinct !{!5652, i1 true, !"_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks"}
!5653 = distinct !{!5653, !5652, !"_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5654 = distinct !{!5654, !5652, !"_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5655 = distinct !{!5655, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks"}
!5656 = distinct !{!5656, !5655, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5657 = distinct !{!5657, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5658 = distinct !{!5658, !5657, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5659 = distinct !{!5659, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5660 = distinct !{!5660, !5659, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5661 = !{i64 3015240185820381877}
!5662 = !{!5651}
!5663 = !{!5653}
!5664 = !{!5653, !5654}
!5665 = !{!5658, !5656, !5653, !5654}
!5666 = !{!5660, !5653, !5654}
!5667 = distinct !{!5667, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5668 = distinct !{!5668, !5667, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5669 = distinct !{!5669, !5667, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5670 = distinct !{!5670, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5671 = distinct !{!5671, !5670, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5672 = distinct !{!5672, !5670, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5673 = distinct !{!5673, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks"}
!5674 = distinct !{!5674, !5673, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5675 = distinct !{!5675, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5676 = distinct !{!5676, !5675, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5677 = !{i64 437175067705374775}
!5678 = !{!5672, !5671, !5669, !5668}
!5679 = !{!5671, !5668}
!5680 = !{!5676, !5674}
!5681 = distinct !{!5681, i1 true, !"_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB5p_8for_each4callNtB1p_4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6N_3VecB6t_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB6N_9into_iter8IntoIterB6t_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks"}
!5682 = distinct !{!5682, !5681, !"_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB5p_8for_each4callNtB1p_4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6N_3VecB6t_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB6N_9into_iter8IntoIterB6t_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5683 = distinct !{!5683, i1 true, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtBS_4ExpruNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3k_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0QNCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB73_3VecB2Y_E14extend_trustedINtNtB2s_5chain5ChainINtB2q_3MapBF_B39_EINtNtB73_9into_iter8IntoIterB2Y_EEE0E0E0ECs2VbMhdeEr66_16delta_benchmarks"}
!5684 = distinct !{!5684, !5683, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_NtBS_4ExpruNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB3k_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0QNCINvNvB1A_8for_each4callB2Y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB73_3VecB2Y_E14extend_trustedINtNtB2s_5chain5ChainINtB2q_3MapBF_B39_EINtNtB73_9into_iter8IntoIterB2Y_EEE0E0E0ECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5685 = distinct !{!5685, i1 true, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtBX_4ExpruNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB20_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB1E_E14extend_trustedINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1P_EINtNtB6d_9into_iter8IntoIterB1E_EEE0E0E0Cs2VbMhdeEr66_16delta_benchmarks"}
!5686 = distinct !{!5686, !5685, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtBX_4ExpruNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB20_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB1E_E14extend_trustedINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1P_EINtNtB6d_9into_iter8IntoIterB1E_EEE0E0E0Cs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5687 = distinct !{!5687, !5685, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortNtBX_4ExpruNCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB20_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1E_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB1E_E14extend_trustedINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1P_EINtNtB6d_9into_iter8IntoIterB1E_EEE0E0E0Cs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5688 = !{i64 3352072977172165616}
!5689 = !{!5682}
!5690 = !{!5684, !5682}
!5691 = !{!5687, !5686, !5684, !5682}
!5692 = distinct !{!5692, i1 true, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks"}
!5693 = distinct !{!5693, !5692, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5694 = distinct !{!5694, !5692, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5695 = distinct !{!5695, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources4onceINtB2_4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtB6_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks"}
!5696 = distinct !{!5696, !5695, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources4onceINtB2_4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtB6_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks: argument 0:pre.rot"}
!5697 = distinct !{!5697, !5695, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources4onceINtB2_4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtB6_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks: argument 1:pre.rot"}
!5698 = !{i64 5980700470555367017}
!5699 = !{!5693}
!5700 = !{!5693, !5694}
!5701 = !{!5696}
!5702 = !{!5696, !5697, !5693}
!5703 = !{!5697, !5693}
!5704 = distinct !{!5704, i1 true, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks"}
!5705 = distinct !{!5705, !5704, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5706 = distinct !{!5706, !5704, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5707 = distinct !{!5707, i1 true, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks"}
!5708 = distinct !{!5708, !5707, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5709 = distinct !{!5709, !5707, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtB9_6traits8iterator8Iterator4nextCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5710 = distinct !{!5710, i1 true, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameENtNtB7_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks"}
!5711 = distinct !{!5711, !5710, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameENtNtB7_5clone5Clone5cloneCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5712 = distinct !{!5712, i1 true, !"_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr9argumentsNtB4_12ArgumentNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!5713 = distinct !{!5713, !5712, !"_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr9argumentsNtB4_12ArgumentNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!5714 = distinct !{!5714, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEECs2VbMhdeEr66_16delta_benchmarks"}
!5715 = distinct !{!5715, !5714, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5716 = distinct !{!5716, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources8repeat_n12RepeatNInnerIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEEECs2VbMhdeEr66_16delta_benchmarks"}
!5717 = distinct !{!5717, !5716, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources8repeat_n12RepeatNInnerIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEEECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5718 = !{i64 -2294150150096439739}
!5719 = !{!5705}
!5720 = !{!5705, !5706}
!5721 = !{!5708}
!5722 = !{!5709}
!5723 = !{i64 1, i64 0}
!5724 = !{!5709, !5705}
!5725 = !{!5709, !5705, !5706}
!5726 = !{!5708, !5709}
!5727 = !{!5706}
!5728 = !{!5713, !5711, !5709, !5705}
!5729 = !{!5708, !5709, !5705, !5706}
!5730 = !{!5717, !5715, !5705}
!5731 = distinct !{!5731, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks"}
!5732 = distinct !{!5732, !5731, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5733 = distinct !{!5733, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5734 = distinct !{!5734, !5733, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5735 = distinct !{!5735, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5736 = distinct !{!5736, !5735, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5737 = distinct !{!5737, !5735, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5738 = distinct !{!5738, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5739 = distinct !{!5739, !5738, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5740 = distinct !{!5740, !5738, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5741 = distinct !{!5741, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5742 = distinct !{!5742, !5741, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5743 = distinct !{!5743, !5741, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5744 = distinct !{!5744, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5745 = distinct !{!5745, !5744, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5746 = distinct !{!5746, !5744, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5747 = distinct !{!5747, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5748 = distinct !{!5748, !5747, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5749 = distinct !{!5749, !5747, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5750 = distinct !{!5750, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5751 = distinct !{!5751, !5750, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5752 = distinct !{!5752, !5750, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5753 = distinct !{!5753, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5754 = distinct !{!5754, !5753, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5755 = distinct !{!5755, !5753, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5756 = distinct !{!5756, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5757 = distinct !{!5757, !5756, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5758 = distinct !{!5758, !5756, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5759 = distinct !{!5759, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5760 = distinct !{!5760, !5759, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5761 = distinct !{!5761, !5759, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5762 = distinct !{!5762, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5763 = distinct !{!5763, !5762, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5764 = distinct !{!5764, !5762, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5765 = distinct !{!5765, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5766 = distinct !{!5766, !5765, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5767 = distinct !{!5767, !5765, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5768 = distinct !{!5768, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5769 = distinct !{!5769, !5768, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5770 = distinct !{!5770, !5768, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5771 = !{i64 3533612305321317038}
!5772 = !{!5734, !5732}
!5773 = !{!5740, !5739, !5737, !5736}
!5774 = !{!5739, !5736}
!5775 = !{!5746, !5745, !5743, !5742}
!5776 = !{!5745, !5742}
!5777 = !{!5752, !5751, !5749, !5748}
!5778 = !{!5751, !5748}
!5779 = !{!5758, !5757, !5755, !5754}
!5780 = !{!5757, !5754}
!5781 = !{!5764, !5763, !5761, !5760}
!5782 = !{!5763, !5760}
!5783 = !{!5770, !5769, !5767, !5766}
!5784 = !{!5769, !5766}
!5785 = distinct !{!5785, i1 true, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4e_5slice4iter4IterBI_EINtNtB4e_6option4IterBI_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks"}
!5786 = distinct !{!5786, !5785, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4e_5slice4iter4IterBI_EINtNtB4e_6option4IterBI_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 2"}
!5787 = distinct !{!5787, !5785, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4e_5slice4iter4IterBI_EINtNtB4e_6option4IterBI_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5788 = distinct !{!5788, !5785, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4e_5slice4iter4IterBI_EINtNtB4e_6option4IterBI_EEE0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5789 = !{i64 6172994881857905729}
!5790 = !{!5788, !5787, !5786}
!5791 = distinct !{!5791, i1 true, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4h_5slice4iter4IterNtB6_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs2VbMhdeEr66_16delta_benchmarks"}
!5792 = distinct !{!5792, !5791, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4h_5slice4iter4IterNtB6_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 2"}
!5793 = distinct !{!5793, !5791, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4h_5slice4iter4IterNtB6_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5794 = distinct !{!5794, !5791, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4h_5slice4iter4IterNtB6_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans2_0EE0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5795 = !{i64 -1196343490371722648}
!5796 = !{!5794, !5793, !5792}
!5797 = distinct !{!5797, i1 true, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB49_INtNtNtB4h_5slice4iter4IterBI_EINtNtB4h_6option4IterBI_EEB5A_EE0E0E000ECs2VbMhdeEr66_16delta_benchmarks"}
!5798 = distinct !{!5798, !5797, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB49_INtNtNtB4h_5slice4iter4IterBI_EINtNtB4h_6option4IterBI_EEB5A_EE0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 2"}
!5799 = distinct !{!5799, !5797, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB49_INtNtNtB4h_5slice4iter4IterBI_EINtNtB4h_6option4IterBI_EEB5A_EE0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5800 = distinct !{!5800, !5797, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB49_INtNtNtB4h_5slice4iter4IterBI_EINtNtB4h_6option4IterBI_EEB5A_EE0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5801 = !{i64 -4926195742868182121}
!5802 = !{!5800, !5799, !5798}
!5803 = distinct !{!5803, i1 true, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsRSBI_E0E0E000ECs2VbMhdeEr66_16delta_benchmarks"}
!5804 = distinct !{!5804, !5803, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsRSBI_E0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 2"}
!5805 = distinct !{!5805, !5803, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsRSBI_E0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5806 = distinct !{!5806, !5803, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCINvNtB8_5utils18find_exprs_in_exprNCINvB38_20find_aggregate_exprsRSBI_E0E0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5807 = !{i64 -9178137363644303541}
!5808 = !{!5806, !5805, !5804}
!5809 = distinct !{!5809, i1 true, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks"}
!5810 = distinct !{!5810, !5809, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 2"}
!5811 = distinct !{!5811, !5809, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5812 = distinct !{!5812, !5809, !"_RINvXs6_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4ExprINtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeContainerBI_E14apply_elementsQQNCNCNCINvNvNtBV_8TreeNode5apply10apply_implBI_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3a_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE27try_process_group_by_unnest0E000ECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5813 = !{i64 5287579087701159709}
!5814 = !{!5812, !5811, !5810}
!5815 = distinct !{!5815, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks"}
!5816 = distinct !{!5816, !5815, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5817 = distinct !{!5817, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5818 = distinct !{!5818, !5817, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5819 = distinct !{!5819, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks"}
!5820 = distinct !{!5820, !5819, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5821 = distinct !{!5821, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks"}
!5822 = distinct !{!5822, !5821, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5823 = distinct !{!5823, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks"}
!5824 = distinct !{!5824, !5823, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5825 = distinct !{!5825, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5826 = distinct !{!5826, !5825, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5827 = distinct !{!5827, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks"}
!5828 = distinct !{!5828, !5827, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5829 = !{i64 -1055145322213591513}
!5830 = !{!5818, !5816}
!5831 = !{!5820}
!5832 = !{!5822}
!5833 = !{!5826, !5824}
!5834 = !{!5828}
!5835 = distinct !{!5835, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks"}
!5836 = distinct !{!5836, !5835, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5837 = distinct !{!5837, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5838 = distinct !{!5838, !5837, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5839 = distinct !{!5839, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks"}
!5840 = distinct !{!5840, !5839, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5841 = distinct !{!5841, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5842 = distinct !{!5842, !5841, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5843 = !{i64 876778906699418473}
!5844 = !{!5838, !5836}
!5845 = !{!5842, !5840}
!5846 = distinct !{!5846, i1 true, !"_RNvXse_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB7_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1u_5error15DataFusionErrorEEBx_ENtNtB7_7default7Default7defaultCs2VbMhdeEr66_16delta_benchmarks"}
!5847 = distinct !{!5847, !5846, !"_RNvXse_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB7_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1u_5error15DataFusionErrorEEBx_ENtNtB7_7default7Default7defaultCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5848 = !{i64 5718908372920713651}
!5849 = !{!5847}
!5850 = !{i64 6914260030606579236}
!5851 = !{i64 -6548395998685291408}
!5852 = !{i64 8111536429532233557}
!5853 = !{i64 7426208895094873775}
!5854 = !{i64 4559995616957092758}
!5855 = !{i64 1001129873929440032}
!5856 = !{i64 -7015002230276545476}
!5857 = distinct !{null}
!5858 = distinct !{!5858, i1 true, !"_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks"}
!5859 = distinct !{!5859, !5858, !"_RINvXs2c_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4SortNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5860 = distinct !{!5860, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks"}
!5861 = distinct !{!5861, !5860, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5862 = distinct !{!5862, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks"}
!5863 = distinct !{!5863, !5862, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5864 = !{i64 8856268179634575388}
!5865 = !{!5859}
!5866 = !{!5861}
!5867 = !{!5863}
!5868 = distinct !{!5868, i1 true, !"_RINvXsc_NtCsjhHCjzi9uUI_17datafusion_common6unnestNtB6_21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks"}
!5869 = distinct !{!5869, !5868, !"_RINvXsc_NtCsjhHCjzi9uUI_17datafusion_common6unnestNtB6_21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5870 = distinct !{!5870, i1 true, !"_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks"}
!5871 = distinct !{!5871, !5870, !"_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5872 = distinct !{!5872, !5868, !"_RINvXsc_NtCsjhHCjzi9uUI_17datafusion_common6unnestNtB6_21RecursionUnnestOptionNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5873 = distinct !{!5873, !5870, !"_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5874 = distinct !{!5874, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks"}
!5875 = distinct !{!5875, !5874, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5876 = distinct !{!5876, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5877 = distinct !{!5877, !5876, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5878 = distinct !{!5878, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5879 = distinct !{!5879, !5878, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5880 = distinct !{!5880, !5878, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5881 = distinct !{!5881, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5882 = distinct !{!5882, !5881, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5883 = distinct !{!5883, !5881, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5884 = distinct !{!5884, i1 true, !"_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks"}
!5885 = distinct !{!5885, !5884, !"_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5886 = distinct !{!5886, !5884, !"_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5887 = distinct !{!5887, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks"}
!5888 = distinct !{!5888, !5887, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5889 = distinct !{!5889, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5890 = distinct !{!5890, !5889, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5891 = distinct !{!5891, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!5892 = distinct !{!5892, !5891, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!5893 = distinct !{!5893, !5891, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!5894 = distinct !{!5894, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks"}
!5895 = distinct !{!5895, !5894, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!5896 = distinct !{!5896, !5894, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5897 = distinct !{!5897, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks"}
!5898 = distinct !{!5898, !5897, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!5899 = !{i64 1891828287584124970}
!5900 = !{!5869}
!5901 = !{!5871}
!5902 = !{!5871, !5869}
!5903 = !{!5877, !5875, !5871, !5873, !5869, !5872}
end_hunk_1
