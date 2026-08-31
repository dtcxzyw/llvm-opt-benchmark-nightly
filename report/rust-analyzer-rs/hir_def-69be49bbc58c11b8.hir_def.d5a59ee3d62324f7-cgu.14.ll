Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.14?download=true
inline.NumInlined: 4030
inline.NumDeleted: 1869
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXs0_NvNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtBe_13VariantFields15with_source_map1__NtB5_31with_source_map__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration12values_equal:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3972, !noalias !3975, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3975, !noalias !3972, !noundef !10
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !3975, !noalias !3972, !nonnull !10, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !3972, !noalias !3975, !nonnull !10, !noundef !10
  %i.q = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB13_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB29_3ast9generated5nodes4TypeEEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.p, ptr noundef nonnull %i.n, i64 noundef %i.i), !noalias !3977
  br i1 %i.q, label %bb.g, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3972, !noalias !3975, !noundef !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3975, !noalias !3972, !noundef !10
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.h, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !3975, !noalias !3972, !nonnull !10, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3972, !noalias !3975, !nonnull !10, !noundef !10
  %i.aa = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB13_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB29_3ast9generated5nodes8LifetimeEEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.z, ptr noundef nonnull %i.x, i64 noundef %i.s), !noalias !3977
  br label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %.split.i, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.aa, %bb.h ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.g ], [ false, %.split.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs0_NvNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtBe_13VariantFields15with_source_map1__NtB5_31with_source_map__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias nofree noundef readnone sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %5) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @290, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtBe_13VariantFields15with_source_map1__NtB5_31with_source_map__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtB9_13VariantFields15with_source_mapBJ_NtB2_11InnerTrait_16with_source_map_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtBe_13VariantFields2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration11id_to_input(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB5_5Zalsa19lookup_page_type_id(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %1, i32 noundef %2) #44
  %.val = load i128, ptr %i.a, align 16, !noundef !10
  switch i128 %.val, label %_RNvXs0_NvCsileJQcQObtj_7hir_defsr_1__NtB7_9VariantIdNtNtCsd9Lm8bEdjjY_5salsa12salsa_struct15SalsaStructInDb4cast.exit [
    i128 79519546736350100141851160739474990204, label %bb.d
    i128 -97184270617010861658353207146752761079, label %bb.b
    i128 -62411650611649667411066111649662297105, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.ph = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ]
  store i32 %.sroa.0.0.ph, ptr %0, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %.sroa.11.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RNvXs0_NvCsileJQcQObtj_7hir_defsr_1__NtB7_9VariantIdNtNtCsd9Lm8bEdjjY_5salsa12salsa_struct15SalsaStructInDb4cast.exit: ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @302, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtBe_13VariantFields2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration12values_equal(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsileJQcQObtj_7hir_def10signatures13VariantFieldsENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  ret i1 %i.a
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs0_NvNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtBe_13VariantFields2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration13cycle_initial(ptr nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %4) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @290, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs0_NvNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtBe_13VariantFields2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3978
  store ptr %0, ptr %i.a, align 8, !noalias !3978
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !noalias !3978
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.c, align 8, !noalias !3978
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !3978
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !3978
  %i.d = call noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsileJQcQObtj_7hir_def10signatures13VariantFieldsENtNtB2z_10expr_store24ExpressionStoreSourceMapEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMs29_B2x_B2v_15with_source_map16with_source_map_0E0B1T_EB2z_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @184, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3978
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_RNvNvXs0_NvNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtBg_13VariantFields2of1__NtB7_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #45
  unreachable

_RNvNvXs0_NvNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtBg_13VariantFields2of1__NtB7_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !nonnull !10, !noundef !10
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNvMs2j_NtCsileJQcQObtj_7hir_def10signaturesNtBe_12EnumVariants2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration12values_equal(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  br i1 %i.a, label %bb.b, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3994)
  %i.d = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeE8data_rawBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !3994
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !3991, !noalias !3994, !nonnull !10, !noundef !10
  %i.f = load i64, ptr %i.e, align 8, !noalias !3994, !noundef !10 ; 3 uses
  %i.g = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeE8data_rawBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !3994, !noalias !3991, !nonnull !10, !noundef !10
  %i.i = load i64, ptr %i.h, align 8, !noundef !10
  %i.j = icmp eq i64 %i.f, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %_RNvYNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i
  %i.l = add nuw i64 %.sroa.01.019.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.l, %i.f
  br i1 %exitcond.not.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.019.i.i = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.sroa.01.019.i.i ; 4 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %.sroa.01.019.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4009)
  %i.o = load i64, ptr %i.m, align 8, !range !1714, !alias.scope !4011, !noalias !4012, !noundef !10 ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !range !1714, !alias.scope !4012, !noalias !4011, !noundef !10
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i, %tailrecurse.i.i.i.i.i
  %i.r = phi i64 [ %i.w, %tailrecurse.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i ]
  %.tr717.i.i.i.i.i = phi ptr [ %i.v, %tailrecurse.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i ] ; 7 uses
  %.tr16.i.i.i.i.i = phi ptr [ %i.t, %tailrecurse.i.i.i.i.i ], [ %i.m, %.lr.ph.i.i ] ; 7 uses
  switch i64 %i.r, label %default.unreachable [
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %tailrecurse.i.i.i.i.i
    i64 0, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i
  ]

default.unreachable:                              ; preds = %.lr.ph.i.i.i.i.i
  unreachable

tailrecurse.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !4012, !nonnull !10, !noundef !10 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !4011, !nonnull !10, !noundef !10 ; 2 uses
  %i.w = load i64, ptr %i.t, align 8, !range !1714, !noalias !4013, !noundef !10 ; 2 uses
  %i.x = load i64, ptr %i.v, align 8, !range !1714, !noalias !4013, !noundef !10
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.a = load ptr, ptr %i.z, align 8, !noalias !4012, !noundef !10 ; 2 uses
  %.val5.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !4011, !noundef !10 ; 3 uses
  %i.ab = icmp ne ptr %.val.i.i.i.i.i.a, null     ; 2 uses
  %i.ac = icmp eq ptr %.val5.i.i.i.i.i, null      ; 3 uses
  %not..i.i.i.i.i.i = xor i1 %i.ac, true
  %i.ad = xor i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

bb.f:                                             ; preds = %bb.e
  %2 = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i, i64 16
  %.val6.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !4011
  %3 = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i, i64 16
  %.val4.i.i.i.i.i = load ptr, ptr %3, align 8, !noalias !4012
  %4 = icmp eq ptr %.val4.i.i.i.i.i, %.val6.i.i.i.i.i ; 2 uses
  br i1 %i.ab, label %.split4.i.i.i.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i

.split4.i.i.i.i:                                  ; preds = %bb.f
  tail call void @llvm.assume(i1 %not..i.i.i.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i) ]
  %i.ae = icmp eq ptr %.val.i.i.i.i.i.a, %.val5.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.ae, i1 %4, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noalias !4012, !noundef !10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !4011, !noundef !10
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %.split5.i.i.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

.split5.i.i.i.i:                                  ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !4011, !nonnull !10, !noundef !10
  %i.am = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !4012, !nonnull !10, !noundef !10
  %i.ao = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.an, ptr noundef nonnull %i.al, i64 noundef %i.ag), !noalias !4013, !inline_history !4014
  br i1 %i.ao, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !4012, !noundef !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noalias !4011, !noundef !10
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %.split.i.i.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

.split.i.i.i.i:                                   ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !4011, !nonnull !10, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !4012, !nonnull !10, !noundef !10
  %i.ay = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.av, i64 noundef %i.aq), !noalias !4013, !inline_history !4014
  br i1 %i.ay, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.ac)
  br i1 %4, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i, %.split5.i.i.i.i, %.split4.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bb = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba)
  br i1 %i.bb, label %_RNvYNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

_RNvYNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i: ; preds = %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !alias.scope !4015, !noalias !4016, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.bf = load i32, ptr %i.be, align 8, !alias.scope !4016, !noalias !4015, !noundef !10
  %.not.i.i = icmp eq i32 %i.bd, %i.bf
  br i1 %.not.i.i, label %bb.d, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit

_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_.exit: ; preds = %_RNvYNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i, %bb.h, %.split5.i.i.i.i, %bb.g, %.split4.i.i.i.i, %bb.e, %.lr.ph.i.i, %bb.d, %tailrecurse.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %tailrecurse.i.i.i.i.i ], [ true, %bb.c ], [ true, %bb.d ], [ false, %_RNvYNtNtCsileJQcQObtj_7hir_def10signatures23InactiveEnumVariantCodeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i ], [ false, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i ], [ false, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread2.i.i.i.i ], [ false, %.split5.i.i.i.i ], [ false, %.split.i.i.i.i ], [ false, %.split4.i.i.i.i ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.g ], [ false, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs0_NvNvMs2j_NtCsileJQcQObtj_7hir_def10signaturesNtBe_12EnumVariants2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias nofree noundef readnone sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @290, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNvMs2j_NtCsileJQcQObtj_7hir_def10signaturesNtBe_12EnumVariants2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXNvMs2j_NtCsileJQcQObtj_7hir_def10signaturesNtB9_12EnumVariants2ofBJ_NtB2_11InnerTrait_3of_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtBd_14ConstSignature15with_source_map1__NtB5_31with_source_map__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration12values_equal(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsileJQcQObtj_7hir_def10signatures14ConstSignatureENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  br i1 %i.a, label %bb.b, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4020)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !4017, !noalias !4020, !align !11, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4020, !noalias !4017, !align !11, !noundef !10 ; 2 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %.split.i

bb.d:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.e, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.split.i:                                         ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_RNvXs_NtCsileJQcQObtj_7hir_def10expr_storeNtB4_23ExpressionOnlySourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.e), !noalias !4022
  br i1 %i.g, label %bb.e, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.split.i, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4017, !noalias !4020, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4020, !noalias !4017, !noundef !10
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !4020, !noalias !4017, !nonnull !10, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !4017, !noalias !4020, !nonnull !10, !noundef !10
  %i.q = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB13_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB29_3ast9generated5nodes4TypeEEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.p, ptr noundef nonnull %i.n, i64 noundef %i.i), !noalias !4022
  br i1 %i.q, label %bb.g, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4017, !noalias !4020, !noundef !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !4020, !noalias !4017, !noundef !10
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.h, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !4020, !noalias !4017, !nonnull !10, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !4017, !noalias !4020, !nonnull !10, !noundef !10
  %i.aa = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB13_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB29_3ast9generated5nodes8LifetimeEEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.z, ptr noundef nonnull %i.x, i64 noundef %i.s), !noalias !4022
  br label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %.split.i, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.aa, %bb.h ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.g ], [ false, %.split.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXs0_NvNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtBd_14ConstSignature15with_source_map1__NtB5_31with_source_map__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration13cycle_initial(ptr dead_on_unwind noalias nofree noundef readnone sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, i32 noundef range(i32 1, 0) %5, i32 noundef %6) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @290, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @308) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NvNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtBd_14ConstSignature15with_source_map1__NtB5_31with_source_map__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtB8_14ConstSignature15with_source_mapBI_NtB2_11InnerTrait_16with_source_map_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtBd_14ConstSignature2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration12values_equal(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsileJQcQObtj_7hir_def10signatures14ConstSignatureENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  ret i1 %i.a
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs0_NvNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtBd_14ConstSignature2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration13cycle_initial(ptr nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, i32 noundef range(i32 1, 0) %4, i32 noundef %5) unnamed_addr #12 {
bb.a:
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @290, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs0_NvNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtBd_14ConstSignature2of1__NtB5_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4023
  store i32 %2, ptr %i.b, align 4, !noalias !4030
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.c, align 4, !noalias !4030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4030
  store ptr %0, ptr %i.a, align 8, !noalias !4030
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8, !noalias !4030
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8, !noalias !4030
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4030
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !4030
  %i.f = call noundef nonnull align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachRTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCsileJQcQObtj_7hir_def10signatures14ConstSignatureENtNtB2z_10expr_store24ExpressionStoreSourceMapEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsJ_B2x_B2v_15with_source_map16with_source_map_0E0B1T_EB2z_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @184, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4023
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_RNvNvXs0_NvNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtBf_14ConstSignature2of1__NtB7_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit, !prof !29

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #45
  unreachable

_RNvNvXs0_NvNvMsJ_NtCsileJQcQObtj_7hir_def10signaturesNtBf_14ConstSignature2of1__NtB7_18of__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  ret ptr %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvNvMsW_NtCsileJQcQObtj_7hir_def10signaturesNtBd_15StaticSignature15with_source_map1__NtB5_31with_source_map__Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration12values_equal(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsileJQcQObtj_7hir_def10signatures15StaticSignatureENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  br i1 %i.a, label %bb.b, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4036)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !4033, !noalias !4036, !align !11, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4036, !noalias !4033, !align !11, !noundef !10 ; 2 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %.split.i

bb.d:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.e, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.split.i:                                         ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_RNvXs_NtCsileJQcQObtj_7hir_def10expr_storeNtB4_23ExpressionOnlySourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.e), !noalias !4038
  br i1 %i.g, label %bb.e, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.split.i, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4033, !noalias !4036, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4036, !noalias !4033, !noundef !10
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %_RNvXs0_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_24ExpressionStoreSourceMapNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !4036, !noalias !4033, !nonnull !10, !noundef !10
end_hunk_0
begin_hunk_1_@_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBK_:bb.a
  %i.cl = load i32, ptr %i.ck, align 8, !alias.scope !5256, !noalias !5255, !noundef !10
  %i.cm = icmp eq i32 %i.cj, %i.cl                ; 2 uses
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %i.cm, label %.split21.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.t:                                             ; preds = %bb.r
  br i1 %i.cm, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit8.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split21.i.i.i:                                   ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !range !24, !alias.scope !5255, !noalias !5256, !noundef !10
  %i.cq = load i32, ptr %i.cn, align 4, !range !24, !alias.scope !5256, !noalias !5255, !noundef !10
  %i.cr = icmp eq i32 %i.cp, %i.cq
  br i1 %i.cr, label %bb.aw, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit8.i.i.i: ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.cu = load i32, ptr %i.ct, align 4, !range !24, !alias.scope !5255, !noalias !5256, !noundef !10
  %i.cv = load i32, ptr %i.cs, align 4, !range !24, !alias.scope !5256, !noalias !5255, !noundef !10
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.aw, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.u:                                             ; preds = %bb.d
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5260)
  %i.cz = load i32, ptr %i.cx, align 8, !range !23, !alias.scope !5262, !noalias !5263, !noundef !10 ; 2 uses
  %i.da = load i32, ptr %i.cy, align 8, !range !23, !alias.scope !5263, !noalias !5262, !noundef !10
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.v, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.v:                                             ; preds = %bb.u
  %i.dc = trunc nuw i32 %i.cz to i1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !5262, !noalias !5263, !noundef !10
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !alias.scope !5263, !noalias !5262, !noundef !10
  %i.dh = icmp eq i32 %i.de, %i.dg                ; 2 uses
  br i1 %i.dc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %i.dh, label %.split23.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.x:                                             ; preds = %bb.v
  br i1 %i.dh, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit10.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split23.i.i.i:                                   ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !range !24, !alias.scope !5262, !noalias !5263, !noundef !10
  %i.dl = load i32, ptr %i.di, align 4, !range !24, !alias.scope !5263, !noalias !5262, !noundef !10
  %i.dm = icmp eq i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ba, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit10.i.i.i: ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !range !24, !alias.scope !5262, !noalias !5263, !noundef !10
  %i.dq = load i32, ptr %i.dn, align 4, !range !24, !alias.scope !5263, !noalias !5262, !noundef !10
  %i.dr = icmp eq i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ba, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.y:                                             ; preds = %bb.d
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5267)
  %i.du = load i32, ptr %i.ds, align 8, !range !23, !alias.scope !5269, !noalias !5270, !noundef !10 ; 2 uses
  %i.dv = load i32, ptr %i.dt, align 8, !range !23, !alias.scope !5270, !noalias !5269, !noundef !10
  %i.dw = icmp eq i32 %i.du, %i.dv
  br i1 %i.dw, label %bb.z, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.z:                                             ; preds = %bb.y
  %i.dx = trunc nuw i32 %i.du to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dz = load i32, ptr %i.dy, align 8, !alias.scope !5269, !noalias !5270, !noundef !10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !alias.scope !5270, !noalias !5269, !noundef !10
  %i.ec = icmp eq i32 %i.dz, %i.eb                ; 2 uses
  br i1 %i.dx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %i.ec, label %.split25.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ab:                                            ; preds = %bb.z
  br i1 %i.ec, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit12.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split25.i.i.i:                                   ; preds = %bb.aa
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !range !24, !alias.scope !5269, !noalias !5270, !noundef !10
  %i.eg = load i32, ptr %i.ed, align 4, !range !24, !alias.scope !5270, !noalias !5269, !noundef !10
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.bd, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit12.i.i.i: ; preds = %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !range !24, !alias.scope !5269, !noalias !5270, !noundef !10
  %i.el = load i32, ptr %i.ei, align 4, !range !24, !alias.scope !5270, !noalias !5269, !noundef !10
  %i.em = icmp eq i32 %i.ek, %i.el
  br i1 %i.em, label %bb.bd, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ac:                                            ; preds = %bb.d
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5274)
  %i.ep = load i32, ptr %i.en, align 8, !range !23, !alias.scope !5276, !noalias !5277, !noundef !10 ; 2 uses
  %i.eq = load i32, ptr %i.eo, align 8, !range !23, !alias.scope !5277, !noalias !5276, !noundef !10
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.ad, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.es = trunc nuw i32 %i.ep to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !alias.scope !5276, !noalias !5277, !noundef !10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !alias.scope !5277, !noalias !5276, !noundef !10
  %i.ex = icmp eq i32 %i.eu, %i.ew                ; 2 uses
  br i1 %i.es, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ex, label %.split27.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.ex, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit14.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split27.i.i.i:                                   ; preds = %bb.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !range !24, !alias.scope !5276, !noalias !5277, !noundef !10
  %i.fb = load i32, ptr %i.ey, align 4, !range !24, !alias.scope !5277, !noalias !5276, !noundef !10
  %i.fc = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.bf, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit14.i.i.i: ; preds = %bb.af
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !range !24, !alias.scope !5276, !noalias !5277, !noundef !10
  %i.fg = load i32, ptr %i.fd, align 4, !range !24, !alias.scope !5277, !noalias !5276, !noundef !10
  %i.fh = icmp eq i32 %i.ff, %i.fg
  br i1 %i.fh, label %bb.bf, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ag:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.fj = load i16, ptr %i.fi, align 4, !range !25, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.fl = load i16, ptr %i.fk, align 4, !range !25, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.fm = icmp eq i16 %i.fj, %i.fl
  br i1 %i.fm, label %bb.ah, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.fp = load i32, ptr %i.fo, align 4, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.fq = load i32, ptr %i.fn, align 4, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.fr = icmp eq i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ai, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fs = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ft = load i32, ptr %i.fs, align 8, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.fv = load i32, ptr %i.fu, align 8, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.fw = icmp eq i32 %i.ft, %i.fv
  %i.fx = icmp eq i64 %i.l, %i.n
  %or.cond = and i1 %i.fx, %i.fw
  br i1 %or.cond, label %.lr.ph.i2, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.lr.ph.i2:                                        ; preds = %bb.ai, %tailrecurse.i
  %i.fy = phi i64 [ %i.gd, %tailrecurse.i ], [ %i.l, %bb.ai ]
  %.tr717.i = phi ptr [ %i.gc, %tailrecurse.i ], [ %i.k, %bb.ai ] ; 7 uses
  %.tr16.i = phi ptr [ %i.ga, %tailrecurse.i ], [ %i.j, %bb.ai ] ; 7 uses
  switch i64 %i.fy, label %default.unreachable [
    i64 1, label %bb.aj
    i64 2, label %bb.al
    i64 3, label %bb.am
    i64 4, label %tailrecurse.i
    i64 0, label %.split.i
  ]

tailrecurse.i:                                    ; preds = %.lr.ph.i2
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !5278, !nonnull !10, !noundef !10 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !5281, !nonnull !10, !noundef !10 ; 2 uses
  %i.gd = load i64, ptr %i.ga, align 8, !range !1714, !noalias !5283, !noundef !10 ; 2 uses
  %i.ge = load i64, ptr %i.gc, align 8, !range !1714, !noalias !5283, !noundef !10
  %i.gf = icmp eq i64 %i.gd, %i.ge
  br i1 %i.gf, label %.lr.ph.i2, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.aj:                                            ; preds = %.lr.ph.i2
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %.val.i.a = load ptr, ptr %i.gg, align 8, !noalias !5278, !noundef !10 ; 2 uses
  %.val5.i = load ptr, ptr %i.gh, align 8, !noalias !5281, !noundef !10 ; 3 uses
  %i.gi = icmp ne ptr %.val.i.a, null             ; 2 uses
  %i.gj = icmp eq ptr %.val5.i, null              ; 3 uses
  %not..i.i = xor i1 %i.gj, true
  %i.gk = xor i1 %i.gi, %i.gj
  br i1 %i.gk, label %bb.ak, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ak:                                            ; preds = %bb.aj
  %2 = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %.val6.i = load ptr, ptr %2, align 8, !noalias !5281
  %3 = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %.val4.i = load ptr, ptr %3, align 8, !noalias !5278
  %4 = icmp eq ptr %.val4.i, %.val6.i             ; 2 uses
  br i1 %i.gi, label %.split6, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.split6:                                          ; preds = %bb.ak
  tail call void @llvm.assume(i1 %not..i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.gl = icmp eq ptr %.val.i.a, %.val5.i
  %spec.select.i.i = select i1 %i.gl, i1 %4, i1 false
  br i1 %spec.select.i.i, label %.split.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.al:                                            ; preds = %.lr.ph.i2
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !5278, !noundef !10 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !noalias !5281, !noundef !10
  %i.gq = icmp eq i64 %i.gn, %i.gp
  br i1 %i.gq, label %.split7, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split7:                                          ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !5281, !nonnull !10, !noundef !10
  %i.gt = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !5278, !nonnull !10, !noundef !10
  %i.gv = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.gu, ptr noundef nonnull %i.gs, i64 noundef %i.gn), !noalias !5283, !inline_history !4014
  br i1 %i.gv, label %.split.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.am:                                            ; preds = %.lr.ph.i2
  %i.gw = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !noalias !5278, !noundef !10 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !5281, !noundef !10
  %i.ha = icmp eq i64 %i.gx, %i.gz
  br i1 %i.ha, label %.split, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split:                                           ; preds = %bb.am
  %i.hb = getelementptr inbounds nuw i8, ptr %.tr717.i, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !5281, !nonnull !10, !noundef !10
  %i.hd = getelementptr inbounds nuw i8, ptr %.tr16.i, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !5278, !nonnull !10, !noundef !10
  %i.hf = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.he, ptr noundef nonnull %i.hc, i64 noundef %i.gx), !noalias !5283, !inline_history !4014
  br i1 %i.hf, label %.split.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ak
  tail call void @llvm.assume(i1 %i.gj)
  br i1 %4, label %.split.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split.i:                                         ; preds = %.lr.ph.i2, %.split7, %.split6, %.split, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.hi = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hh)
  br i1 %i.hi, label %bb.c, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.an:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i, %.split17.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.hk = load i16, ptr %i.hj, align 4, !range !25, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.hl = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.hm = load i16, ptr %i.hl, align 4, !range !25, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.hn = icmp eq i16 %i.hk, %i.hm
  br i1 %i.hn, label %bb.ao, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ao:                                            ; preds = %bb.an
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.hp = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.hq = load i32, ptr %i.hp, align 4, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.hr = load i32, ptr %i.ho, align 4, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.hs = icmp eq i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.ap, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ht = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.hv = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.hw = load i32, ptr %i.hv, align 8, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.hx = icmp eq i32 %i.hu, %i.hw
  br i1 %i.hx, label %bb.aq, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.hy = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.hz = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5287)
  %i.ia = load i8, ptr %i.hy, align 8, !range !1431, !alias.scope !5289, !noalias !5287, !noundef !10 ; 2 uses
  %i.ib = load i8, ptr %i.hz, align 8, !range !1431, !alias.scope !5290, !noalias !5284, !noundef !10
  %i.ic = icmp eq i8 %i.ia, %i.ib
  br i1 %i.ic, label %bb.ar, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ar:                                            ; preds = %bb.aq
  switch i8 %i.ia, label %.split125.i [
    i8 1, label %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
    i8 4, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.id = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ie = load i32, ptr %i.id, align 8, !alias.scope !5289, !noalias !5287, !noundef !10
  %i.if = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ig = load i32, ptr %i.if, align 8, !alias.scope !5290, !noalias !5284, !noundef !10
  %i.ih = icmp eq i32 %i.ie, %i.ig
  br i1 %i.ih, label %.split11, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split11:                                         ; preds = %bb.as
  %i.ii = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.ij = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.ik = load i32, ptr %i.ij, align 4, !range !24, !alias.scope !5289, !noalias !5287, !noundef !10
  %i.il = load i32, ptr %i.ii, align 4, !range !24, !alias.scope !5290, !noalias !5284, !noundef !10
  %i.im = icmp eq i32 %i.ik, %i.il
  br i1 %i.im, label %.split125.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ar
  %i.in = getelementptr inbounds nuw i8, ptr %i.j, i64 57
  %i.io = load i8, ptr %i.in, align 1, !alias.scope !5289, !noalias !5287, !noundef !10
  %i.ip = getelementptr inbounds nuw i8, ptr %i.k, i64 57
  %i.iq = load i8, ptr %i.ip, align 1, !alias.scope !5290, !noalias !5284, !noundef !10
  %i.ir = icmp eq i8 %i.io, %i.iq
  br i1 %i.ir, label %.split125.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split125.i:                                      ; preds = %bb.ar, %.split11, %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %i.is = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.iu = tail call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1v_5range9RangeFullE5indexCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.it, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @511), !noalias !5291 ; 2 uses
  %i.iv = extractvalue { ptr, i64 } %i.iu, 1      ; 2 uses
  %i.iw = tail call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1v_5range9RangeFullE5indexCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.is, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @512) ; 2 uses
  %i.ix = extractvalue { ptr, i64 } %i.iw, 1
  %i.iy = icmp eq i64 %i.iv, %i.ix
  br i1 %i.iy, label %_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def.exit, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def.exit: ; preds = %.split125.i
  %i.iz = extractvalue { ptr, i64 } %i.iw, 0
  %i.ja = extractvalue { ptr, i64 } %i.iu, 0
  %i.jb = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef %i.ja, ptr noundef %i.iz, i64 noundef %i.iv)
  br i1 %i.jb, label %bb.c, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.at:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit6.i.i.i, %.split19.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.jd = load i16, ptr %i.jc, align 4, !range !25, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.je = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.jf = load i16, ptr %i.je, align 4, !range !25, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.jg = icmp eq i16 %i.jd, %i.jf
  br i1 %i.jg, label %bb.au, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.au:                                            ; preds = %bb.at
  %i.jh = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.ji = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.jj = load i32, ptr %i.ji, align 4, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.jk = load i32, ptr %i.jh, align 4, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.jl = icmp eq i32 %i.jj, %i.jk
  br i1 %i.jl, label %bb.av, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.av:                                            ; preds = %bb.au
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.jn = load i32, ptr %i.jm, align 8, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.jo = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.jp = load i32, ptr %i.jo, align 8, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.jq = icmp eq i32 %i.jn, %i.jp
  br i1 %i.jq, label %.split122.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split122.i:                                      ; preds = %bb.av
  %i.jr = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !alias.scope !5227, !noalias !5228, !nonnull !10, !noundef !10
  %i.jt = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ju = load ptr, ptr %i.jt, align 8, !alias.scope !5228, !noalias !5227, !nonnull !10, !noundef !10
  %i.jv = icmp eq ptr %i.js, %i.ju
  br i1 %i.jv, label %bb.c, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.aw:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit8.i.i.i, %.split21.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.jx = load i16, ptr %i.jw, align 4, !range !25, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.jy = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.jz = load i16, ptr %i.jy, align 4, !range !25, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.ka = icmp eq i16 %i.jx, %i.jz
  br i1 %i.ka, label %bb.ax, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ax:                                            ; preds = %bb.aw
  %i.kb = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.kc = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.kd = load i32, ptr %i.kc, align 4, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.ke = load i32, ptr %i.kb, align 4, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.kf = icmp eq i32 %i.kd, %i.ke
  br i1 %i.kf, label %bb.ay, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ay:                                            ; preds = %bb.ax
  %i.kg = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.kh = load i32, ptr %i.kg, align 8, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.ki = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.kj = load i32, ptr %i.ki, align 8, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.kk = icmp eq i32 %i.kh, %i.kj
  br i1 %i.kk, label %bb.az, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.az:                                            ; preds = %bb.ay
  %i.kl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.km = load i64, ptr %i.kl, align 8, !alias.scope !5227, !noalias !5228, !noundef !10 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ko = load i64, ptr %i.kn, align 8, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.kp = icmp eq i64 %i.km, %i.ko
  br i1 %i.kp, label %_RNvYNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.ba:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit10.i.i.i, %.split23.i.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.kr = load i16, ptr %i.kq, align 4, !range !25, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.ks = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.kt = load i16, ptr %i.ks, align 4, !range !25, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.ku = icmp eq i16 %i.kr, %i.kt
  br i1 %i.ku, label %bb.bb, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.kv = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.kw = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.kx = load i32, ptr %i.kw, align 4, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.ky = load i32, ptr %i.kv, align 4, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.kz = icmp eq i32 %i.kx, %i.ky
  br i1 %i.kz, label %bb.bc, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.bc:                                            ; preds = %bb.bb
  %i.la = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.lb = load i32, ptr %i.la, align 8, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.lc = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ld = load i32, ptr %i.lc, align 8, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.le = icmp eq i32 %i.lb, %i.ld
  br i1 %i.le, label %.split121.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split121.i:                                      ; preds = %bb.bc
  %i.lf = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !alias.scope !5227, !noalias !5228, !nonnull !10, !noundef !10
  %i.lh = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.li = load ptr, ptr %i.lh, align 8, !alias.scope !5228, !noalias !5227, !nonnull !10, !noundef !10
  %i.lj = icmp eq ptr %i.lg, %i.li
  br i1 %i.lj, label %bb.c, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.bd:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit12.i.i.i, %.split25.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ll = load i16, ptr %i.lk, align 4, !range !25, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.lm = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ln = load i16, ptr %i.lm, align 4, !range !25, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.lo = icmp eq i16 %i.ll, %i.ln
  br i1 %i.lo, label %bb.be, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.be:                                            ; preds = %bb.bd
  %i.lp = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.lq = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.lr = load i32, ptr %i.lq, align 4, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.ls = load i32, ptr %i.lp, align 4, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.lt = icmp eq i32 %i.lr, %i.ls
  br i1 %i.lt, label %.split123.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split123.i:                                      ; preds = %bb.be
  %i.lu = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.lv = load i32, ptr %i.lu, align 8, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.lw = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.lx = load i32, ptr %i.lw, align 8, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.ly = icmp eq i32 %i.lv, %i.lx
  br i1 %i.ly, label %bb.c, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.bf:                                            ; preds = %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit14.i.i.i, %.split27.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ma = load i16, ptr %i.lz, align 4, !range !25, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.mb = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.mc = load i16, ptr %i.mb, align 4, !range !25, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.md = icmp eq i16 %i.ma, %i.mc
  br i1 %i.md, label %bb.bg, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.bg:                                            ; preds = %bb.bf
  %i.me = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.mf = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.mg = load i32, ptr %i.mf, align 4, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.mh = load i32, ptr %i.me, align 4, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.mi = icmp eq i32 %i.mg, %i.mh
  br i1 %i.mi, label %.split124.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split124.i:                                      ; preds = %bb.bg
  %i.mj = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.mk = load i32, ptr %i.mj, align 8, !alias.scope !5227, !noalias !5228, !noundef !10
  %i.ml = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.mm = load i32, ptr %i.ml, align 8, !alias.scope !5228, !noalias !5227, !noundef !10
  %i.mn = icmp eq i32 %i.mk, %i.mm
  br i1 %i.mn, label %bb.c, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvYNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i: ; preds = %bb.az
  %i.mo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !alias.scope !5228, !noalias !5227, !nonnull !10, !noundef !10
  %i.mq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !alias.scope !5227, !noalias !5228, !nonnull !10, !noundef !10
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.mr, ptr nonnull %i.mp, i64 %i.km)
  %i.ms = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ms, label %bb.c, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %.split125.i, %bb.as, %bb.aq, %bb.al, %bb.aj, %bb.am, %_RNvYNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i, %.split124.i, %bb.bg, %bb.bf, %.split123.i, %bb.be, %bb.bd, %.split121.i, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %.split122.i, %bb.av, %bb.au, %bb.at, %_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def.exit, %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.ap, %bb.ao, %bb.an, %.split.i, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.ai, %bb.ah, %bb.ag, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit14.i.i.i, %.split27.i.i.i, %bb.af, %bb.ae, %bb.ac, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit12.i.i.i, %.split25.i.i.i, %bb.ab, %bb.aa, %bb.y, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit10.i.i.i, %.split23.i.i.i, %bb.x, %bb.w, %bb.u, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit8.i.i.i, %.split21.i.i.i, %bb.t, %bb.s, %bb.q, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit6.i.i.i, %.split19.i.i.i, %bb.p, %bb.o, %bb.m, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i, %.split17.i.i.i, %bb.l, %bb.k, %bb.i, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i, %bb.h, %bb.g, %bb.e, %.lr.ph.i, %bb.c, %.split, %.split6, %.split7, %.split11, %tailrecurse.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %tailrecurse.i ], [ false, %.split125.i ], [ false, %bb.al ], [ false, %bb.aj ], [ false, %bb.am ], [ false, %.split11 ], [ false, %bb.aq ], [ false, %.split7 ], [ false, %.split6 ], [ false, %.split ], [ false, %bb.as ], [ true, %bb.c ], [ false, %_RNvYNtNtCsileJQcQObtj_7hir_def10expr_store26ExpressionStoreDiagnosticsNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i ], [ false, %.lr.ph.i ], [ false, %bb.ap ], [ false, %bb.ai ], [ false, %_RNvXsh_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ false, %bb.ay ], [ false, %bb.av ], [ false, %bb.az ], [ false, %bb.bd ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit12.i.i.i ], [ false, %bb.bc ], [ false, %bb.bf ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit14.i.i.i ], [ false, %bb.be ], [ false, %bb.ah ], [ false, %bb.ag ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i ], [ false, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ false, %bb.ao ], [ false, %bb.an ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit4.i.i.i ], [ false, %bb.au ], [ false, %bb.at ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit6.i.i.i ], [ false, %bb.ax ], [ false, %bb.aw ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit8.i.i.i ], [ false, %bb.bb ], [ false, %bb.ba ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit10.i.i.i ], [ false, %bb.bg ], [ false, %.split27.i.i.i ], [ false, %.split.i.i.i ], [ false, %bb.g ], [ false, %.split17.i.i.i ], [ false, %bb.k ], [ false, %.split19.i.i.i ], [ false, %bb.o ], [ false, %.split21.i.i.i ], [ false, %bb.s ], [ false, %.split23.i.i.i ], [ false, %bb.w ], [ false, %.split25.i.i.i ], [ false, %bb.aa ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %.split.i ], [ false, %.split121.i ], [ false, %.split122.i ], [ false, %.split123.i ], [ false, %.split124.i ], [ false, %_RNvXsy_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi_NtCsileJQcQObtj_7hir_def9item_treeNtB5_8ItemTreeNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.g = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = add nuw i64 %.sroa.01.08.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.01.08.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.sroa.01.08.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.01.08.i
  %i.l = load <2 x i32>, ptr %i.j, align 4
  %i.m = load <2 x i32>, ptr %i.k, align 4
  %i.n = icmp eq <2 x i32> %i.l, %i.m             ; 2 uses
  %i.o = extractelement <2 x i1> %i.n, i64 0
  %i.p = extractelement <2 x i1> %i.n, i64 1
  %spec.select.i.not.i.not.i = select i1 %i.o, i1 %i.p, i1 false
  br i1 %spec.select.i.not.i.not.i, label %bb.c, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5297)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !5294, !noalias !5297, !noundef !10 ; 2 uses
  %i.t = icmp eq ptr %i.s, null                   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !5297, !noalias !5294, !noundef !10 ; 3 uses
  %i.v = icmp eq ptr %i.u, null                   ; 3 uses
  %i.w = xor i1 %i.t, %i.v
  br i1 %i.w, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  br i1 %i.t, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !5294, !noalias !5297, !nonnull !10, !noundef !10 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !5297, !noalias !5294, !nonnull !10, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5302)
  %i.ab = load i64, ptr %i.y, align 8, !range !1714, !alias.scope !5299, !noalias !5304, !noundef !10 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !range !1714, !alias.scope !5302, !noalias !5305, !noundef !10
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %tailrecurse.i.i
  %i.ae = phi i64 [ %i.aj, %tailrecurse.i.i ], [ %i.ab, %bb.e ]
  %.tr717.i.i = phi ptr [ %i.ai, %tailrecurse.i.i ], [ %i.aa, %bb.e ] ; 7 uses
  %.tr16.i.i = phi ptr [ %i.ag, %tailrecurse.i.i ], [ %i.y, %bb.e ] ; 7 uses
  switch i64 %i.ae, label %default.unreachable [
    i64 1, label %bb.f
    i64 2, label %bb.h
    i64 3, label %bb.i
    i64 4, label %tailrecurse.i.i
    i64 0, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i
  ]

default.unreachable:                              ; preds = %.lr.ph.i.i
  unreachable

tailrecurse.i.i:                                  ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.tr16.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !5304, !nonnull !10, !noundef !10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr717.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !5305, !nonnull !10, !noundef !10 ; 2 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !1714, !noalias !5306, !noundef !10 ; 2 uses
  %i.ak = load i64, ptr %i.ai, align 8, !range !1714, !noalias !5306, !noundef !10
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.tr16.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.tr717.i.i, i64 8
  %.val.i.i.a = load ptr, ptr %i.am, align 8, !noalias !5304, !noundef !10 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.an, align 8, !noalias !5305, !noundef !10 ; 3 uses
  %i.ao = icmp ne ptr %.val.i.i.a, null           ; 2 uses
  %i.ap = icmp eq ptr %.val5.i.i, null            ; 3 uses
  %not..i.i.i = xor i1 %i.ap, true
  %i.aq = xor i1 %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.g:                                             ; preds = %bb.f
  %2 = getelementptr inbounds nuw i8, ptr %.tr717.i.i, i64 16
  %.val6.i.i = load ptr, ptr %2, align 8, !noalias !5305
  %3 = getelementptr inbounds nuw i8, ptr %.tr16.i.i, i64 16
  %.val4.i.i = load ptr, ptr %3, align 8, !noalias !5304
  %4 = icmp eq ptr %.val4.i.i, %.val6.i.i         ; 2 uses
  br i1 %i.ao, label %.split7.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i

.split7.i:                                        ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i) ]
  %i.ar = icmp eq ptr %.val.i.i.a, %.val5.i.i
  %spec.select.i.i.i = select i1 %i.ar, i1 %4, i1 false
  br i1 %spec.select.i.i.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.tr16.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noalias !5304, !noundef !10 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.tr717.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !5305, !noundef !10
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %.split8.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split8.i:                                        ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr717.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !5305, !nonnull !10, !noundef !10
  %i.az = getelementptr inbounds nuw i8, ptr %.tr16.i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !5304, !nonnull !10, !noundef !10
  %i.bb = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay, i64 noundef %i.at), !noalias !5306, !inline_history !4014
  br i1 %i.bb, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr16.i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !5304, !noundef !10 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr717.i.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noalias !5305, !noundef !10
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %.split.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split.i:                                         ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr717.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !5305, !nonnull !10, !noundef !10
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr16.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !5304, !nonnull !10, !noundef !10
  %i.bl = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bi, i64 noundef %i.bd), !noalias !5306, !inline_history !4014
  br i1 %i.bl, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.ap)
  br i1 %4, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.j:                                             ; preds = %bb.d
  %i.bm = xor i1 %i.v, true
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !5294, !noalias !5297, !noundef !10 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !5297, !noalias !5294, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %_RNvXs8_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_10AttrsOrCfgNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i: ; preds = %.lr.ph.i.i, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i, %.split.i, %.split8.i, %.split7.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !5307, !noundef !10 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !5307, !noundef !10
  %i.bw = icmp eq i64 %i.bt, %i.bv
  br i1 %i.bw, label %.split, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split:                                           ; preds = %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !5307, !nonnull !10, !noundef !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !5307, !nonnull !10, !noundef !10
  %i.cb = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.by, i64 noundef %i.bt), !noalias !5307
  br i1 %i.cb, label %bb.k, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs8_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_10AttrsOrCfgNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.j
  %i.cc = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.s, ptr noundef nonnull %i.u, i64 noundef %i.bo), !noalias !5307
  br i1 %i.cc, label %bb.k, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.k:                                             ; preds = %.split, %_RNvXs8_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_10AttrsOrCfgNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2H_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ce)
  br i1 %i.cf, label %bb.l, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5316)
  %i.ci = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityE8data_rawBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg), !noalias !5318
  %i.cj = load ptr, ptr %i.cg, align 8, !alias.scope !5319, !noalias !5318, !nonnull !10, !noundef !10
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !5318, !noundef !10 ; 3 uses
  %i.cl = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityE8data_rawBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ch)
  %i.cm = load ptr, ptr %i.ch, align 8, !alias.scope !5318, !noalias !5319, !nonnull !10, !noundef !10
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !10
  %i.co = icmp eq i64 %i.ck, %i.cn
  br i1 %i.co, label %bb.m, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.m:                                             ; preds = %bb.l
  %i.cp = icmp eq i64 %i.ck, 0
  br i1 %i.cp, label %_RNvXsn_NtCsileJQcQObtj_7hir_def9item_treeNtB5_16ItemVisibilitiesNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6.i.i.i
  %.sroa.01.08.i.i.i = phi i64 [ %i.dk, %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6.i.i.i ], [ 0, %bb.m ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.sroa.01.08.i.i.i ; 4 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %.sroa.01.08.i.i.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5328)
  %i.cs = load i8, ptr %i.cq, align 8, !range !1286, !alias.scope !5330, !noalias !5331, !noundef !10 ; 2 uses
  %i.ct = load i8, ptr %i.cr, align 8, !range !1286, !alias.scope !5331, !noalias !5330, !noundef !10
  %i.cu = icmp eq i8 %i.cs, %i.ct
  br i1 %i.cu, label %bb.n, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.n:                                             ; preds = %.lr.ph.i.i.i
  switch i8 %i.cs, label %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6.i.i.i [
    i8 0, label %bb.o
    i8 1, label %.split.i.i.i
  ]

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !5330, !noalias !5331, !nonnull !10, !noundef !10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !5331, !noalias !5330, !nonnull !10, !noundef !10
  %i.cz = icmp eq ptr %i.cw, %i.cy
  br i1 %i.cz, label %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

.split.i.i.i:                                     ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.db = load i8, ptr %i.da, align 1, !range !1916, !alias.scope !5330, !noalias !5331, !noundef !10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !range !1916, !alias.scope !5331, !noalias !5330, !noundef !10
  %i.de = icmp eq i8 %i.db, %i.dd
  br i1 %i.de, label %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i: ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !range !1916, !alias.scope !5330, !noalias !5331, !noundef !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !range !1916, !alias.scope !5331, !noalias !5330, !noundef !10
  %i.dj = icmp eq i8 %i.dg, %i.di
  br i1 %i.dj, label %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6.i.i.i, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6.i.i.i: ; preds = %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i, %.split.i.i.i, %bb.n
  %i.dk = add nuw i64 %.sroa.01.08.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.dk, %i.ck
  br i1 %exitcond.not.i.i.i, label %_RNvXsn_NtCsileJQcQObtj_7hir_def9item_treeNtB5_16ItemVisibilitiesNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i

_RNvXsn_NtCsileJQcQObtj_7hir_def9item_treeNtB5_16ItemVisibilitiesNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread6.i.i.i, %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dn = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2F_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dm)
  br i1 %i.dn, label %bb.p, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

bb.p:                                             ; preds = %_RNvXsn_NtCsileJQcQObtj_7hir_def9item_treeNtB5_16ItemVisibilitiesNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dq = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2F_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.do, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dp)
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit

_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_.exit: ; preds = %.lr.ph.i, %tailrecurse.i.i, %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i, %.lr.ph.i.i.i, %bb.o, %.split.i.i.i, %bb.l, %bb.e, %bb.h, %bb.f, %bb.i, %.split7.i, %.split.i, %.split8.i, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i, %.loopexit, %bb.j, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i, %.split, %bb.a, %_RNvXs8_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_10AttrsOrCfgNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.k, %_RNvXsn_NtCsileJQcQObtj_7hir_def9item_treeNtB5_16ItemVisibilitiesNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.p
  %.sroa.0.0 = phi i1 [ %i.dq, %bb.p ], [ false, %_RNvXsn_NtCsileJQcQObtj_7hir_def9item_treeNtB5_16ItemVisibilitiesNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ false, %tailrecurse.i.i ], [ false, %bb.k ], [ false, %_RNvXs8_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB5_10AttrsOrCfgNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ false, %bb.a ], [ false, %_RNvYNtNtCsileJQcQObtj_7hir_def9item_tree13RawVisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i ], [ false, %.split ], [ false, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.j ], [ false, %.loopexit ], [ false, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i ], [ false, %.split8.i ], [ false, %.split.i ], [ false, %.split7.i ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.l ], [ false, %.split.i.i.i ], [ false, %bb.o ], [ false, %.lr.ph.i.i.i ], [ false, %.lr.ph.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsi_NtNtCscAsMj0W7j8b_3std4sync4mpscINtB5_9SendErrorNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @483, i64 noundef 9)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCsileJQcQObtj_7hir_def10signatures1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !10
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCsileJQcQObtj_7hir_def10signaturess0_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !10
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCsileJQcQObtj_7hir_def10signaturess1_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !10
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCsileJQcQObtj_7hir_def10signaturess2_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i8, ptr %0, align 1, !noundef !10
  store i8 %i.b, ptr %i.a, align 1
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCshzWfHUSfYae_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCsileJQcQObtj_7hir_def10signaturess3_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !10
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @_RNvXsi_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCsileJQcQObtj_7hir_def10signaturess4_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i16, ptr %0, align 2, !noundef !10
  store i16 %i.b, ptr %i.a, align 2
  %i.c = call noundef zeroext i1 @_RNvXsi_NtNtCshzWfHUSfYae_4core3fmt3numtNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCsileJQcQObtj_7hir_def10signaturess5_1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
end_hunk_1
