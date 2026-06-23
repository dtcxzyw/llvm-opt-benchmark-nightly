inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB15_5types17GenericStringTypelEENCINvB2_10max_stringlE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.i = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef 0), !noalias !3334 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %.not13 = icmp eq i64 %i.h, 1
  br i1 %.not13, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.019.i.i.i = phi ptr [ %.sroa.0.0.i.i11.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.6.018.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.sroa.0.01317.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ 1, %bb.d ] ; 2 uses
  %i.l = add i64 %.sroa.0.01317.i.i.i, 1          ; 2 uses
  %i.m = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.01317.i.i.i), !noalias !3339 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i.i, i64 %i.o)
  %i.p = call i32 @memcmp(ptr nonnull readonly %.sroa.0.019.i.i.i, ptr nonnull readonly %i.n, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !3347, !noalias !3351 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %.sroa.6.018.i.i.i, %i.o
  %spec.select.i.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = icmp slt i64 %spec.select.i.i.i.i.i.i, 0 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = select i1 %i.t, i64 %i.o, i64 %.sroa.6.018.i.i.i ; 2 uses
  %.sroa.0.0.i.i11.i.i.i = select i1 %i.t, ptr %i.n, ptr %.sroa.0.019.i.i.i ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.u = call noundef align 8 ptr @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array5nullsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.i, label %bb.f, !prof !1168

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13valid_indices(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !3352)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3355, !noalias !3358, !noundef !4 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %.._crit_edge_crit_edge.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3355, !noalias !3358
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %.lr.ph.i.i
  %i.ad = load i64, ptr %i.y, align 8, !range !74, !alias.scope !3360, !noalias !3358, !noundef !4 ; 2 uses
  switch i64 %i.ad, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i [
    i64 3, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
    i64 2, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.z, align 8, !alias.scope !3363, !noalias !3358
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.ad, 1       ; 2 uses
  %spec.store.select.i.i.i.i.i.i9 = select i1 %.not3.i.i.i.i.i.i, i64 0, i64 2
  store i64 %spec.store.select.i.i.i.i.i.i9, ptr %i.y, align 8, !alias.scope !3374, !noalias !3358
  br i1 %.not3.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.g
  %i.af = load ptr, ptr %i.aa, align 8, !alias.scope !3375, !noalias !3358, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  %i.ag = call { i64, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa), !noalias !3358 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %.not4.i.i.i = icmp eq i64 %i.ah, 1
  br i1 %.not4.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  store i64 3, ptr %i.y, align 8, !alias.scope !3360, !noalias !3358
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i, %bb.g
  %i.aj = load i64, ptr %i.b, align 8, !range !53, !alias.scope !3380, !noalias !3358, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aj, 2
  br i1 %.not.i.i.i.i, label %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
  %i.ak = load i64, ptr %i.ab, align 8, !alias.scope !3385, !noalias !3358
  store i64 0, ptr %i.b, align 8, !alias.scope !3385, !noalias !3358
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %.pn3.i17.i.i = phi i64 [ %i.ak, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ae, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 3 uses
  store i64 %.pn3.i17.i.i, ptr %i.v, align 8, !alias.scope !3355, !noalias !3358
  %i.am = load i64, ptr %i.ac, align 8, !alias.scope !3355, !noalias !3358, !noundef !4
  %i.an = add i64 %i.am, 64                       ; 2 uses
  store i64 %i.an, ptr %i.ac, align 8, !alias.scope !3355, !noalias !3358
  %i.ao = icmp eq i64 %.pn3.i17.i.i, 0
  br i1 %i.ao, label %bb.g, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %.._crit_edge_crit_edge.i.i
  %i.ap = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.an, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.lcssa.i.i = phi i64 [ %i.w, %.._crit_edge_crit_edge.i.i ], [ %.pn3.i17.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ] ; 2 uses
  %i.aq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i, i1 true) ; 2 uses
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = xor i64 %i.ar, %.lcssa.i.i
  store i64 %i.as, ptr %i.v, align 8, !alias.scope !3355, !noalias !3358
  %i.at = add i64 %i.aq, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !3358
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.loopexit.i
  %.sroa.0.0.i8.i = phi i64 [ %i.at, %.loopexit.i ], [ %.sroa.0.0.i6.i.i, %.loopexit.i.i ] ; 3 uses
  %i.az = load i64, ptr %i.au, align 8, !alias.scope !3389, !noalias !3394, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i6, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3389, !noalias !3394
  br label %.loopexit.i.i

.lr.ph.i.i.i6:                                    ; preds = %bb.h, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  %i.bb = load i64, ptr %i.av, align 8, !range !74, !alias.scope !3396, !noalias !3394, !noundef !4 ; 2 uses
  switch i64 %i.bb, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i [
    i64 3, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
    i64 2, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  ]

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i6
  %i.bc = load i64, ptr %i.aw, align 8, !alias.scope !3399, !noalias !3394
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 1     ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = select i1 %.not3.i.i.i.i.i.i.i, i64 0, i64 2
  store i64 %spec.store.select.i.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !3410, !noalias !3394
  br i1 %.not3.i.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %.lr.ph.i.i.i6
  %i.bd = load ptr, ptr %i.ax, align 8, !alias.scope !3411, !noalias !3394, !noundef !4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  %i.be = call { i64, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1
  %.not4.i.i.i.i = icmp eq i64 %i.bf, 1
  br i1 %.not4.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  store i64 3, ptr %i.av, align 8, !alias.scope !3396, !noalias !3394
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, %.lr.ph.i.i.i6
  %i.bh = load i64, ptr %i.a, align 8, !range !53, !alias.scope !3416, !noalias !3394, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bh, 2
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
  %i.bi = load i64, ptr %i.ay, align 8, !alias.scope !3421, !noalias !3394
  store i64 0, ptr %i.a, align 8, !alias.scope !3421, !noalias !3394
  %i.bj = trunc nuw i64 %i.bh to i1
  br i1 %i.bj, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %bb.j

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %.pn3.i17.i.i.i = phi i64 [ %i.bi, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bg, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.bc, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ] ; 3 uses
  store i64 %.pn3.i17.i.i.i, ptr %i.au, align 8, !alias.scope !3389, !noalias !3394
  %i.bk = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3389, !noalias !3394, !noundef !4
  %i.bl = add i64 %i.bk, 64                       ; 2 uses
  store i64 %i.bl, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3389, !noalias !3394
  %i.bm = icmp eq i64 %.pn3.i17.i.i.i, 0
  br i1 %i.bm, label %.lr.ph.i.i.i6, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %i.bn = phi i64 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.bl, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.az, %.._crit_edge_crit_edge.i.i.i ], [ %.pn3.i17.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ] ; 2 uses
  %i.bo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i, i1 true) ; 2 uses
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = xor i64 %i.bp, %.lcssa.i.i.i
  store i64 %i.bq, ptr %i.au, align 8, !alias.scope !3389, !noalias !3394
  %i.br = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bs = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.0.i8.i) ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  %i.bv = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %i.br) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt), "nonnull"(ptr %i.bw) ]
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bx)
  %i.by = call i32 @memcmp(ptr nonnull readonly %i.bt, ptr nonnull readonly %i.bw, i64 %spec.store.select.i.i.i.i) ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp eq i32 %i.by, 0
  %i.cb = sub i64 %i.bu, %i.bx
  %spec.select.i.i.i.i = select i1 %i.ca, i64 %i.cb, i64 %i.bz
  %i.cc = icmp slt i64 %spec.select.i.i.i.i, 0
  %.sroa.0.0.i6.i.i = select i1 %i.cc, i64 %i.br, i64 %.sroa.0.0.i8.i
  br label %bb.h

_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.e
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #47
  unreachable

bb.j:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cd = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.0.i8.i) ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cd, 0
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10max_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.c, %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.a, %bb.j
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ undef, %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cf, %bb.j ], [ undef, %bb.c ], [ undef, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.k, %bb.d ], [ %.sroa.3.0.i.i.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10max_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ce, %bb.j ], [ null, %bb.c ], [ null, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10max_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.j, %bb.d ], [ %.sroa.0.0.i.i11.i.i.i, %.lr.ph.i.i.i ]
  %i.cg = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ch = insertvalue { ptr, i64 } %i.cg, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.ch
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB15_5types17GenericStringTypelEENCINvB2_10min_stringlE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [64 x i8], align 8                ; 14 uses
  %i.c = alloca [8 x i8], align 8                 ; 10 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array10null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %i.e = call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef i64 @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 3 uses
  %.not12 = icmp eq i64 %i.h, 0
  br i1 %.not12, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10min_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10min_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  %i.i = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef 0), !noalias !3424 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10min_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 2 uses
  %.not13 = icmp eq i64 %i.h, 1
  br i1 %.not13, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.0.019.i.i.i = phi ptr [ %.sroa.0.0.i.i11.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.6.018.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.sroa.0.01317.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ 1, %bb.d ] ; 2 uses
  %i.l = add i64 %.sroa.0.01317.i.i.i, 1          ; 2 uses
  %i.m = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.01317.i.i.i), !noalias !3429 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 3 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.6.018.i.i.i, i64 %i.o)
  %i.p = call i32 @memcmp(ptr nonnull readonly %.sroa.0.019.i.i.i, ptr nonnull readonly %i.n, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !3437, !noalias !3441 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %.sroa.6.018.i.i.i, %i.o
  %spec.select.i.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q
  %i.t = icmp sgt i64 %spec.select.i.i.i.i.i.i, 0 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = select i1 %i.t, i64 %i.o, i64 %.sroa.6.018.i.i.i ; 2 uses
  %.sroa.0.0.i.i11.i.i.i = select i1 %i.t, ptr %i.n, ptr %.sroa.0.019.i.i.i ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.b
  %i.u = call noundef align 8 ptr @_RNvXs_NtCs1N9T06jgEdt_11arrow_array5arrayRINtNtB4_10byte_array16GenericByteArrayINtNtB6_5types17GenericStringTypelEENtB4_5Array5nullsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.i, label %bb.f, !prof !1168

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13valid_indices(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3445, !noalias !3448, !noundef !4 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %.._crit_edge_crit_edge.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.f
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3445, !noalias !3448
  br label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %.lr.ph.i.i
  %i.ad = load i64, ptr %i.y, align 8, !range !74, !alias.scope !3450, !noalias !3448, !noundef !4 ; 2 uses
  switch i64 %i.ad, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i [
    i64 3, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
    i64 2, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  ]

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.z, align 8, !alias.scope !3453, !noalias !3448
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.ad, 1       ; 2 uses
  %spec.store.select.i.i.i.i.i.i9 = select i1 %.not3.i.i.i.i.i.i, i64 0, i64 2
  store i64 %spec.store.select.i.i.i.i.i.i9, ptr %i.y, align 8, !alias.scope !3464, !noalias !3448
  br i1 %.not3.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.g
  %i.af = load ptr, ptr %i.aa, align 8, !alias.scope !3465, !noalias !3448, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  %i.ag = call { i64, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa), !noalias !3448 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %.not4.i.i.i = icmp eq i64 %i.ah, 1
  br i1 %.not4.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i
  store i64 3, ptr %i.y, align 8, !alias.scope !3450, !noalias !3448
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i, %bb.g
  %i.aj = load i64, ptr %i.b, align 8, !range !53, !alias.scope !3470, !noalias !3448, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aj, 2
  br i1 %.not.i.i.i.i, label %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10min_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
  %i.ak = load i64, ptr %i.ab, align 8, !alias.scope !3475, !noalias !3448
  store i64 0, ptr %i.b, align 8, !alias.scope !3475, !noalias !3448
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10min_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %.pn3.i17.i.i = phi i64 [ %i.ak, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ai, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ae, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 3 uses
  store i64 %.pn3.i17.i.i, ptr %i.v, align 8, !alias.scope !3445, !noalias !3448
  %i.am = load i64, ptr %i.ac, align 8, !alias.scope !3445, !noalias !3448, !noundef !4
  %i.an = add i64 %i.am, 64                       ; 2 uses
  store i64 %i.an, ptr %i.ac, align 8, !alias.scope !3445, !noalias !3448
  %i.ao = icmp eq i64 %.pn3.i17.i.i, 0
  br i1 %i.ao, label %bb.g, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %.._crit_edge_crit_edge.i.i
  %i.ap = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.an, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ]
  %.lcssa.i.i = phi i64 [ %i.w, %.._crit_edge_crit_edge.i.i ], [ %.pn3.i17.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ] ; 2 uses
  %i.aq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i, i1 true) ; 2 uses
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = xor i64 %i.ar, %.lcssa.i.i
  store i64 %i.as, ptr %i.v, align 8, !alias.scope !3445, !noalias !3448
  %i.at = add i64 %i.aq, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !3448
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.loopexit.i
  %.sroa.0.0.i8.i = phi i64 [ %i.at, %.loopexit.i ], [ %.sroa.0.0.i6.i.i, %.loopexit.i.i ] ; 3 uses
  %i.az = load i64, ptr %i.au, align 8, !alias.scope !3479, !noalias !3484, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i6, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3479, !noalias !3484
  br label %.loopexit.i.i

.lr.ph.i.i.i6:                                    ; preds = %bb.h, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  %i.bb = load i64, ptr %i.av, align 8, !range !74, !alias.scope !3486, !noalias !3484, !noundef !4 ; 2 uses
  switch i64 %i.bb, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i [
    i64 3, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
    i64 2, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  ]

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i6
  %i.bc = load i64, ptr %i.aw, align 8, !alias.scope !3489, !noalias !3484
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 1     ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = select i1 %.not3.i.i.i.i.i.i.i, i64 0, i64 2
  store i64 %spec.store.select.i.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !3500, !noalias !3484
  br i1 %.not3.i.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %.lr.ph.i.i.i6
  %i.bd = load ptr, ptr %i.ax, align 8, !alias.scope !3501, !noalias !3484, !noundef !4
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  %i.be = call { i64, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1
  %.not4.i.i.i.i = icmp eq i64 %i.bf, 1
  br i1 %.not4.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  store i64 3, ptr %i.av, align 8, !alias.scope !3486, !noalias !3484
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, %.lr.ph.i.i.i6
  %i.bh = load i64, ptr %i.a, align 8, !range !53, !alias.scope !3506, !noalias !3484, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bh, 2
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
  %i.bi = load i64, ptr %i.ay, align 8, !alias.scope !3511, !noalias !3484
  store i64 0, ptr %i.a, align 8, !alias.scope !3511, !noalias !3484
  %i.bj = trunc nuw i64 %i.bh to i1
  br i1 %i.bj, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %bb.j

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %.pn3.i17.i.i.i = phi i64 [ %i.bi, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bg, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.bc, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ] ; 3 uses
  store i64 %.pn3.i17.i.i.i, ptr %i.au, align 8, !alias.scope !3479, !noalias !3484
  %i.bk = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3479, !noalias !3484, !noundef !4
  %i.bl = add i64 %i.bk, 64                       ; 2 uses
  store i64 %i.bl, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3479, !noalias !3484
  %i.bm = icmp eq i64 %.pn3.i17.i.i.i, 0
  br i1 %i.bm, label %.lr.ph.i.i.i6, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %i.bn = phi i64 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.bl, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.az, %.._crit_edge_crit_edge.i.i.i ], [ %.pn3.i17.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ] ; 2 uses
  %i.bo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i, i1 true) ; 2 uses
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = xor i64 %i.bp, %.lcssa.i.i.i
  store i64 %i.bq, ptr %i.au, align 8, !alias.scope !3479, !noalias !3484
  %i.br = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bs = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.0.i8.i) ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  %i.bv = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %i.br) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt), "nonnull"(ptr %i.bw) ]
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bx)
  %i.by = call i32 @memcmp(ptr nonnull readonly %i.bt, ptr nonnull readonly %i.bw, i64 %spec.store.select.i.i.i.i) ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp eq i32 %i.by, 0
  %i.cb = sub i64 %i.bu, %i.bx
  %spec.select.i.i.i.i = select i1 %i.ca, i64 %i.cb, i64 %i.bz
  %i.cc = icmp sgt i64 %spec.select.i.i.i.i, 0
  %.sroa.0.0.i6.i.i = select i1 %i.cc, i64 %i.br, i64 %.sroa.0.0.i8.i
  br label %bb.h

_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10min_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.e
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #47
  unreachable

bb.j:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cd = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.0.i8.i) ; 2 uses
  %i.ce = extractvalue { ptr, i64 } %i.cd, 0
  %i.cf = extractvalue { ptr, i64 } %i.cd, 1
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2r_5types17GenericStringTypelEENCINvB1o_10min_stringlE0E0ENtNtNtBa_6traits8iterator8Iterator6reduceNCB1l_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10min_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.c, %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10min_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.a, %bb.j
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ undef, %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10min_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cf, %bb.j ], [ undef, %bb.c ], [ undef, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10min_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.k, %bb.d ], [ %.sroa.3.0.i.i.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %_RINvYNtNtNtCs7xHNgVo2C7m_12arrow_buffer4util12bit_iterator16BitIndexIteratorNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB3m_5types17GenericStringTypelEENCINvB2j_10min_stringlE0Es0_0ECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ce, %bb.j ], [ null, %bb.c ], [ null, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB2w_5types17GenericStringTypelEENCINvB1t_10min_stringlE0E0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.j, %bb.d ], [ %.sroa.0.0.i.i11.i.i.i, %.lr.ph.i.i.i ]
  %i.cg = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ch = insertvalue { ptr, i64 } %i.cg, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %i.ch
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregateaNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 12 uses
  %i.g = icmp ne i64 %.sroa.04.0, %i.f            ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4 ; 5 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %0, align 8, !range !2326, !noundef !4
  %.off = add nsw i8 %i.j, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef i8 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanesaINtB2_14MaxAccumulatoraEKj10_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp samesign eq i64 %i.f, 0
  br i1 %i.l, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.f, 24
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ splat (i8 -128), %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi8 = phi <16 x i8> [ splat (i8 -128), %vector.ph ], [ %i.p, %vector.body ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !alias.scope !3514
  %wide.load9 = load <16 x i8>, ptr %i.n, align 1, !alias.scope !3514
  %i.o = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.p = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load9, <16 x i8> %vec.phi8) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !3517

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.o, <16 x i8> %i.p)
  %i.r = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !3520

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.r, %vec.epilog.iter.check ], [ -128, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.f, -8                     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi13 = phi <8 x i8> [ %broadcast.splat, %vec.epilog.ph ], [ %i.t, %vec.epilog.vector.body ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %index12
  %wide.load14 = load <8 x i8>, ptr %i.s, align 1, !alias.scope !3514
  %i.t = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load14, <8 x i8> %vec.phi13) ; 2 uses
  %index.next15 = add nuw i64 %index12, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3521

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.v = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.t) ; 2 uses
  %cmp.n16 = icmp eq i64 %i.f, %n.vec11
  br i1 %cmp.n16, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.ph = phi i8 [ -128, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.x, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.sroa.02.0.i.i = phi i8 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.w, align 1, !alias.scope !3514, !noundef !4
  %spec.select.i.i.i.i.i = tail call noundef i8 @llvm.smax.i8(i8 %.val.i.i, i8 %.sroa.02.0.i.i) ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.f
  br i1 %i.y, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3522

bb.f:                                             ; preds = %bb.c
  %i.z = tail call noundef i8 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanesaINtB2_14MaxAccumulatoraEKj20_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.f) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i8 [ undef, %bb.a ], [ %i.k, %bb.d ], [ %i.z, %bb.f ], [ -128, %bb.e ], [ %i.v, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %i.aa = insertvalue { i1, i8 } poison, i1 %i.g, 0
  %i.ab = insertvalue { i1, i8 } %i.aa, i8 %.sroa.5.2, 1
  ret { i1, i8 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregateaNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 12 uses
  %i.g = icmp ne i64 %.sroa.04.0, %i.f            ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4 ; 5 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %0, align 8, !range !2326, !noundef !4
  %.off = add nsw i8 %i.j, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef i8 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanesaINtB2_14MinAccumulatoraEKj10_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp samesign eq i64 %i.f, 0
  br i1 %i.l, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.f, 24
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  br label %vector.body
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess2_0ENCB2L_s3_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB23_5error10ArrowErrorEEB4o_8try_folduNCINvNvB4o_12try_for_each4callIB1s_DNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB7z_ENcNtB8q_5Break0E0B8q_E0IB8r_B8q_EEB2R_:bb.a
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.b
  %.sroa.69.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.8.16.copyload.i.i.i = load ptr, ptr %.sroa.69.0..sroa_idx.i.i.i.i, align 8, !noalias !4282
  %.sroa.11.16..sroa.69.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.11.16.copyload.i.i.i = load i64, ptr %.sroa.11.16..sroa.69.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !4282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4279
  %i.af = inttoptr i64 %i.t to ptr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4283)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4286
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4291
  store i64 %i.r, ptr %i.b, align 8, !alias.scope !4288, !noalias !4294
  %.sroa.216.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.af, ptr %.sroa.216.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !4288, !noalias !4294
  %.sroa.317.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.8.16.copyload.i.i.i, ptr %.sroa.317.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !4288, !noalias !4294
  %.sroa.418.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.11.16.copyload.i.i.i, ptr %.sroa.418.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !4288, !noalias !4294
  br label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess3_0B7_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4298
  store ptr %i.aa, ptr %i.a, align 8, !noalias !4291
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %i.ag, align 8, !noalias !4291
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !58, !invariant.load !4, !noalias !4291
  %i.aj = add nsw i64 %i.ai, -1
  %i.ak = and i64 %i.aj, -16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  invoke void @_RNvNtCsa7Blp2W9WhU_12arrow_select4take4take(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ac, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) @275, i8 noundef 2)
          to label %bb.k unwind label %bb.i, !noalias !4300

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !4301
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.j, label %common.resume.i.i.i.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45
          to label %common.resume.i.i.i.i unwind label %bb.m, !noalias !4306

bb.k:                                             ; preds = %bb.h
  %i.aq = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !4307
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.l, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess3_0B7_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45, !noalias !4306
  br label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess3_0B7_.exit.i.i.i.i

bb.m:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !4306
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.q, %bb.j, %bb.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.aw, %bb.q ], [ %i.an, %bb.j ], [ %i.an, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess3_0B7_.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4291
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !4286 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4286 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !4286 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !4286 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4312)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -9223372036854775788
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess3_0B7_.exit.i.i.i.i
  %i.at = load i64, ptr %3, align 8, !range !3175, !alias.scope !4315, !noalias !4318, !noundef !4
  %i.au = icmp eq i64 %i.at, -9223372036854775788
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i unwind label %bb.q, !noalias !4318

bb.p:                                             ; preds = %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess3_0B7_.exit.i.i.i.i
  %i.av = ptrtoint ptr %.sroa.4.0.copyload.i.i.i.i to i64
  store i64 %i.av, ptr %.sroa.4.i.i, align 8, !alias.scope !4320, !noalias !4321
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8, !noalias !4318
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i.i, align 8, !noalias !4318
  %.sroa.613.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.613.0..8.val.sroa_idx.i.i.i.i.i, align 8, !noalias !4318
  %.sroa.7.0..8.val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.7.0..8.val.sroa_idx.i.i.i.i.i, align 8, !noalias !4318
  br label %common.resume.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8, !noalias !4318
  %.sroa.5.0..8.val.sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i, ptr %.sroa.5.0..8.val.sroa_idx11.i.i.i.i.i, align 8, !noalias !4318
  %.sroa.613.0..8.val.sroa_idx14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.613.0..8.val.sroa_idx14.i.i.i.i.i, align 8, !noalias !4318
  %.sroa.7.0..8.val.sroa_idx16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.7.0..8.val.sroa_idx16.i.i.i.i.i, align 8, !noalias !4318
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.p
  %.sink26.i.i.i.sroa.phi.i.i = phi ptr [ %.sroa.76.i.i, %bb.p ], [ %.sroa.4.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ]
  %.sink.i.i.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i, %bb.p ], [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ]
  store ptr %.sink.i.i.i.i.i, ptr %.sink26.i.i.i.sroa.phi.i.i, align 8, !alias.scope !4320, !noalias !4321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4286
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i = load i64, ptr %.sroa.4.i.i, align 8, !alias.scope !4322, !noalias !4325, !noundef !4
  %i.ax = inttoptr i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i.i to ptr
  %.sroa.76.i.i.0..sroa.76.i.i.0..sroa.76.i.i.0..sroa.76.i.0..sroa.76.i.0..sroa.76.0..sroa.76.0..sroa.76.16..i.i = load i64, ptr %.sroa.76.i.i, align 8, !alias.scope !4322, !noalias !4325
  %i.ay = inttoptr i64 %.sroa.76.i.i.0..sroa.76.i.i.0..sroa.76.i.i.0..sroa.76.i.0..sroa.76.i.0..sroa.76.0..sroa.76.0..sroa.76.16..i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !alias.scope !4327, !noalias !4330
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ay, ptr %i.ba, align 8, !alias.scope !4327, !noalias !4330
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultIB1o_DNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtB1Z_5error10ArrowErrorEB5d_uINtNtNtBc_3ops12control_flow11ControlFlowIB6X_B5z_EENCB2H_s3_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7M_EIB5e_NtNtBc_7convert10InfallibleB6q_EEB49_8try_folduNCINvNvB49_12try_for_each4callB5z_B7B_NcNtB7B_5Break0E0B7B_E0E0B6W_EB2N_.exit

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batch26divide_by_partition_valuess2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldINtNtBc_6result6ResultIB1o_DNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtB1Z_5error10ArrowErrorEB5d_uINtNtNtBc_3ops12control_flow11ControlFlowIB6X_B5z_EENCB2H_s3_0NCINvXB8_INtB8_12GenericShuntIBO_BN_B7M_EIB5e_NtNtBc_7convert10InfallibleB6q_EEB49_8try_folduNCINvNvB49_12try_for_each4callB5z_B7B_NcNtB7B_5Break0E0B7B_E0E0B6W_EB2N_.exit: ; preds = %bb.a, %bb.r
  %storemerge.i.i = phi i64 [ 1, %bb.r ], [ 0, %bb.a ]
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !4331, !noalias !4330
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB2R_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6o_7HashSetNtNtB1w_6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB77_E6extendBX_E0ENtNtB8m_8iterator8Iterator4folduNCINvNvB95_8for_each4callTB77_uENCINvXs1i_NtB6q_3mapINtBah_7HashMapB77_uB7t_EIB8i_Ba0_E6extendBN_E0E0EB2V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB2N_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtB1s_6string6StringTB76_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7J_7HashSetB76_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB6f_7collect6ExtendB76_E6extendBN_E0NCINvNvB6b_8for_each4callB7s_NCINvXs1i_NtB7L_3mapINtBaC_7HashMapB76_uB8w_EIB9l_B7s_E6extendIBO_BN_B7A_EE0E0E0EB2R_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.i
  %.val10.i.i = load ptr, ptr %i.g, align 8, !noalias !4332, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4337
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  %i.i = call noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !4342 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4337
  %i.j = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB2N_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtB1s_6string6StringTB76_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7J_7HashSetB76_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB6f_7collect6ExtendB76_E6extendBN_E0NCINvNvB6b_8for_each4callB7s_NCINvXs1i_NtB7L_3mapINtBaC_7HashMapB76_uB8w_EIB9l_B7s_E6extendIBO_BN_B7A_EE0E0E0EB2R_.exit, label %bb.c

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtB2N_14MetricObserverNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore35prevent_predicate_push_down_columns0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtB1s_6string6StringTB76_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7J_7HashSetB76_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB6f_7collect6ExtendB76_E6extendBN_E0NCINvNvB6b_8for_each4callB7s_NCINvXs1i_NtB7L_3mapINtBaC_7HashMapB76_uB8w_EIB9l_B7s_E6extendIBO_BN_B7A_EE0E0E0EB2R_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters0ENCB2d_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB49_8for_each4callTINtNtBc_6option6OptionRB1r_EIB5e_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEENCINvNvNtB4d_7collect14default_extend18unchecked_extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5d_EIB7C_B5F_EEB5c_E0E0EB2p_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %.sroa.4.i.i.i.i = alloca [120 x i8], align 8   ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4345)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !4345, !noalias !4348, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4345, !noalias !4348, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.f, align 8, !alias.scope !4345, !noalias !4348 ; 2 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !4345, !noalias !4348 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4345, !noalias !4348
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.63.0.copyload.i = load ptr, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !4345, !noalias !4348 ; 2 uses
  %i.g = icmp eq ptr %i.c, %i.e
  br i1 %i.g, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB2b_18ProcessedPredicateTINtNtBc_6option6OptionRB1n_EIB5i_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEuNCB29_s_0NCINvNvB3V_8for_each4callB5g_NCINvNvNtB3Z_7collect14default_extend18unchecked_extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5h_EIB8j_B5J_EEB5g_E0E0E0EB2l_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i), "nonnull"(ptr %.sroa.42.0.copyload.i), "nonnull"(ptr %.sroa.63.0.copyload.i) ]
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.4.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4350
  %i.m = load i8, ptr %.sroa.63.0.copyload.i, align 1, !range !3, !noalias !4353, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  call void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %.sroa.01.0.copyload.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.42.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i, i1 noundef zeroext %i.n), !noalias !4361
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !noalias !4362
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.16..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !4362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4363
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %i.a, align 16, !noalias !4368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.42.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.i.i.i.i, i64 120, i1 false), !noalias !4368
  call void @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEIBQ_IB1n_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEEINtB5_6ExtendTB1m_B2y_EE20extend_one_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.a), !noalias !4369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4363
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4350
  %i.o = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k
  br i1 %i.p, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB2b_18ProcessedPredicateTINtNtBc_6option6OptionRB1n_EIB5i_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEuNCB29_s_0NCINvNvB3V_8for_each4callB5g_NCINvNvNtB3Z_7collect14default_extend18unchecked_extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5h_EIB8j_B5J_EEB5g_E0E0E0EB2l_.exit, label %bb.c

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB2b_18ProcessedPredicateTINtNtBc_6option6OptionRB1n_EIB5i_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEuNCB29_s_0NCINvNvB3V_8for_each4callB5g_NCINvNvNtB3Z_7collect14default_extend18unchecked_extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5h_EIB8j_B5J_EEB5g_E0E0E0EB2l_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters0ENCB2d_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB49_8for_each4callTINtNtBc_6option6OptionRB1r_EIB5e_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEENCINvNvNtB4d_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5d_EIB7r_B5F_EEB5c_E0E0EB2p_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %.sroa.4.i.i.i.i = alloca [120 x i8], align 8   ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4370)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !4370, !noalias !4373, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4370, !noalias !4373, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.f, align 8, !alias.scope !4370, !noalias !4373 ; 2 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !4370, !noalias !4373 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4370, !noalias !4373
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.63.0.copyload.i = load ptr, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !4370, !noalias !4373 ; 2 uses
  %i.g = icmp eq ptr %i.c, %i.e
  br i1 %i.g, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB2b_18ProcessedPredicateTINtNtBc_6option6OptionRB1n_EIB5i_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEuNCB29_s_0NCINvNvB3V_8for_each4callB5g_NCINvNvNtB3Z_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5h_EIB88_B5J_EEB5g_E0E0E0EB2l_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i), "nonnull"(ptr %.sroa.42.0.copyload.i), "nonnull"(ptr %.sroa.63.0.copyload.i) ]
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.4.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4375
  %i.m = load i8, ptr %.sroa.63.0.copyload.i, align 1, !range !3, !noalias !4378, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  call void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %.sroa.01.0.copyload.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.42.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i, i1 noundef zeroext %i.n), !noalias !4386
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !noalias !4387
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.16..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !noalias !4387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4388
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %i.a, align 16, !noalias !4393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.42.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.i.i.i.i, i64 120, i1 false), !noalias !4393
  call void @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEIBQ_IB1n_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEEINtB5_6ExtendTB1m_B2y_EE10extend_oneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.a), !noalias !4394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4388
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4375
  %i.o = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.k
  br i1 %i.p, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB2b_18ProcessedPredicateTINtNtBc_6option6OptionRB1n_EIB5i_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEuNCB29_s_0NCINvNvB3V_8for_each4callB5g_NCINvNvNtB3Z_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5h_EIB88_B5J_EEB5g_E0E0E0EB2l_.exit, label %bb.c

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtB2b_18ProcessedPredicateTINtNtBc_6option6OptionRB1n_EIB5i_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEuNCB29_s_0NCINvNvB3V_8for_each4callB5g_NCINvNvNtB3Z_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5h_EIB88_B5J_EEB5g_E0E0E0EB2l_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0ENCINvNtB1v_5utils19find_exprs_in_exprsNCINvB53_20find_aggregate_exprsBX_E0BX_E0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1t_4ExprENCINvNvMsg_NtB8_7flattenINtB7N_13FlattenCompatppE9iter_fold7flattenB6T_B6T_NCINvNvXsi_B7N_B80_B6g_4fold7flattenINtNtB6W_9into_iter8IntoIterB7q_EB6T_NCB50_s_0E0E0EB3p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4405
  %i.j = icmp eq ptr %i.e, %i.g
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !4408
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 7
  %.sroa.6.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !4411, !noalias !4412
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1p_4ExprENCINvB6_8map_foldRB64_B5x_B5x_NCINvNtB1r_5utils19find_exprs_in_exprsNCINvB6P_20find_aggregate_exprsBN_E0BN_E0NCINvNvMsg_NtB8_7flattenINtB8c_13FlattenCompatppE9iter_fold7flattenB5x_B5x_NCINvNvXsi_B8c_B8p_B4U_4fold7flattenINtNtB5A_9into_iter8IntoIterB64_EB5x_NCB6M_s_0E0E0E0EB3l_.exit

bb.d:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0B3F_.exit.i.i, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0B3F_.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !4422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4413
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1C_5slice4iter4IterNtNtB4_4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB37_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0EB4e_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0B3F_.exit.i.i unwind label %bb.e, !noalias !4423

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #43
          to label %.body.i.i.i unwind label %bb.f, !noalias !4423

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !4423
  unreachable

.body.i.i.i:                                      ; preds = %bb.e
  resume { ptr, i32 } %i.q

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0B3F_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !4422
  %.sroa.4.24.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !4413
  %.sroa.6.24.copyload.i.i.i.i = load ptr, ptr %.sroa.6.24..sroa_idx.i.i.i.i, align 8, !noalias !4413, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.7.24.copyload.i.i.i.i = load i64, ptr %.sroa.7.24..sroa_idx.i.i.i.i, align 8, !noalias !4413 ; 2 uses
  %i.s = icmp ult i64 %.sroa.7.24.copyload.i.i.i.i, 82351536043346213
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %.sroa.6.24.copyload.i.i.i.i, i64 %.sroa.7.24.copyload.i.i.i.i
  store ptr %.sroa.6.24.copyload.i.i.i.i, ptr %i.o, align 8, !noalias !4424
  store ptr %.sroa.6.24.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4424
  store i64 %.sroa.4.24.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4424
  store ptr %i.t, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4424
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBX_EQNCINvNtB11_5utils19find_exprs_in_exprsNCINvB31_20find_aggregate_exprsINtNtNtB1N_8adapters3map3MapINtNtNtB1P_5slice4iter4IterNtBZ_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5e_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0B43_Es_0EB6l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull %3), !noalias !4411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4413
  %i.u = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.n
  br i1 %i.v, label %bb.g, label %bb.d

bb.g:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortRNtBX_4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1F_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0NCIB2_B1E_B1P_B1P_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB5A_20find_aggregate_exprsINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2r_EE0B6B_E0NCINvNvMsg_NtB6_7flattenINtB7D_13FlattenCompatppE9iter_fold7flattenB1P_B1P_NCINvNvXsi_B7D_B7Q_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1S_9into_iter8IntoIterB1F_EB1P_NCB5x_s_0E0E0E0E0B3F_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !4429
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1p_4ExprENCINvB6_8map_foldRB64_B5x_B5x_NCINvNtB1r_5utils19find_exprs_in_exprsNCINvB6P_20find_aggregate_exprsBN_E0BN_E0NCINvNvMsg_NtB8_7flattenINtB8c_13FlattenCompatppE9iter_fold7flattenB5x_B5x_NCINvNvXsi_B8c_B8p_B4U_4fold7flattenINtNtB5A_9into_iter8IntoIterB64_EB5x_NCB6M_s_0E0E0E0EB3l_.exit

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB1p_4ExprENCINvB6_8map_foldRB64_B5x_B5x_NCINvNtB1r_5utils19find_exprs_in_exprsNCINvB6P_20find_aggregate_exprsBN_E0BN_E0NCINvNvMsg_NtB8_7flattenINtB8c_13FlattenCompatppE9iter_fold7flattenB5x_B5x_NCINvNvXsi_B8c_B8p_B4U_4fold7flattenINtNtB5A_9into_iter8IntoIterB64_EB5x_NCB6M_s_0E0E0E0EB3l_.exit: ; preds = %bb.c, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4405
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullable0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB4p_7HashSetINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB5d_6string6StringENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB58_E6extendBX_E0ENtNtB6V_8iterator8Iterator4folduNCINvNvB7E_8for_each4callTB58_uENCINvXs1i_NtB4r_3mapINtB8Q_7HashMapB58_uB62_EIB6R_B8z_E6extendBN_E0E0EB2L_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullable0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB5c_6string6StringETB57_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6i_7HashSetB57_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4g_7collect6ExtendB57_E6extendBN_E0NCINvNvB4c_8for_each4callB61_NCINvXs1i_NtB6k_3mapINtB9b_7HashMapB57_uB75_EIB7U_B61_E6extendIBO_BN_B69_EE0E0E0EB2H_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB2b_6string6StringEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullable0NCIB2_B26_TB26_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB54_7HashSetB26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB26_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB31_EE0NCINvNvNtNtB6K_8iterator8Iterator8for_each4callB4N_NCINvXs1i_NtB56_3mapINtB97_7HashMapB26_uB5R_EIB6G_B4N_E6extendIB7o_B7n_B4V_EE0E0E0E0B39_.exit.i.i, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB2b_6string6StringEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullable0NCIB2_B26_TB26_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB54_7HashSetB26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB26_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB31_EE0NCINvNvNtNtB6K_8iterator8Iterator8for_each4callB4N_NCINvXs1i_NtB56_3mapINtB97_7HashMapB26_uB5R_EIB6G_B4N_E6extendIB7o_B7n_B4V_EE0E0E0E0B39_.exit.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.i ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val10.i.i = load ptr, ptr %i.o, align 8, !noalias !4430, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val11.i.i = load i64, ptr %i.p, align 8, !noalias !4430, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4438
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 384307168202282326) %.val11.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !noalias !4442
  %i.q = load i64, ptr %i.b, align 8, !range !18, !noalias !4438, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = load i64, ptr %i.j, align 8, !range !56, !noalias !4438, !noundef !4 ; 5 uses
  br i1 %i.r, label %bb.d, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, !prof !1168

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.k, align 8, !noalias !4438
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.t) #47, !noalias !4442
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !noalias !4438, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp samesign ule i64 %.val11.i.i, %i.s
  call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4438
  store i64 %i.s, ptr %i.d, align 8, !noalias !4438
  store ptr %i.u, ptr %i.l, align 8, !noalias !4438
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val10.i.i, i64 %.val11.i.i
  %i.x = icmp eq i64 %i.s, 0
  br i1 %i.x, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB2b_6string6StringEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullable0NCIB2_B26_TB26_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB54_7HashSetB26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB26_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB31_EE0NCINvNvNtNtB6K_8iterator8Iterator8for_each4callB4N_NCINvXs1i_NtB56_3mapINtB97_7HashMapB26_uB5R_EIB6G_B4N_E6extendIB7o_B7n_B4V_EE0E0E0E0B39_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.f
  %.sroa.10.023.i.i.i.i.i = phi i64 [ %i.y, %bb.f ], [ %i.s, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ]
  %.sroa.012.022.i.i.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %.val10.i.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.7.021.i.i.i.i.i = phi i64 [ %i.aa, %bb.f ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 3 uses
  %i.y = add i64 %.sroa.10.023.i.i.i.i.i, -1      ; 2 uses
  %i.z = icmp eq ptr %.sroa.012.022.i.i.i.i.i, %i.w
  br i1 %i.z, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB2b_6string6StringEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullable0NCIB2_B26_TB26_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB54_7HashSetB26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB26_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB31_EE0NCINvNvNtNtB6K_8iterator8Iterator8for_each4callB4N_NCINvXs1i_NtB56_3mapINtB97_7HashMapB26_uB5R_EIB6G_B4N_E6extendIB7o_B7n_B4V_EE0E0E0E0B39_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.022.i.i.i.i.i)
          to label %bb.f unwind label %bb.h, !noalias !4443

bb.f:                                             ; preds = %bb.e
  %i.aa = add nuw nsw i64 %.sroa.7.021.i.i.i.i.i, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i.i.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.sroa.7.021.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4443
  %i.ad = icmp eq i64 %i.y, 0
  br i1 %i.ad, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB2b_6string6StringEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullable0NCIB2_B26_TB26_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB54_7HashSetB26_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB26_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB31_EE0NCINvNvNtNtB6K_8iterator8Iterator8for_each4callB4N_NCINvXs1i_NtB56_3mapINtB97_7HashMapB26_uB5R_EIB6G_B4N_E6extendIB7o_B7n_B4V_EE0E0E0E0B39_.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !4443
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1M_5array10byte_array16GenericByteArrayINtNtB1M_5types17GenericStringTypelEEEB1H_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENCNvB43_16parse_partitionss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB4b_6errors15DeltaTableErrorEEB5X_8try_folduNCINvMs0_NtNtBc_3ops9try_traitINtB8T_17NeverShortCircuituE10wrap_mut_2uTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCINvNvB5X_8for_each4callB9T_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBca_7HashMapB9U_Baw_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB61_7collect6ExtendB9T_E6extendB6O_E0E0E0B9e_E0INtNtB8V_12control_flow11ControlFlowB9e_EEB4b_:bb.a
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1w_5array10byte_array16GenericByteArrayINtNtB1w_5types17GenericStringTypelEEEB1r_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBc_6option6OptionB6o_EEINtNtBc_6result6ResultTB6o_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtB3V_6errors15DeltaTableErrorEuINtNtNtBc_3ops12control_flow11ControlFlowINtNtB9x_9try_trait17NeverShortCircuituEENCNvB3N_16parse_partitionss_0NCINvXB8_INtB8_12GenericShuntINtB60_3MapBV_BaM_EIB7t_NtNtBc_7convert10InfallibleB8U_EEB5d_8try_folduNCINvMs0_Baa_Ba7_10wrap_mut_2uB7O_NCINvNvB5d_8for_each4callB7O_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBe2_7HashMapB6o_B7T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5h_7collect6ExtendB7O_E6extendBbo_E0E0E0Ba

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldTINtNtBa_6option6OptionReEB1f_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringIB1g_B1K_EEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2D_9try_trait17NeverShortCircuituEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0NCINvNtB6_3map12map_try_foldB1J_INtNtBa_6result6ResultTB1K_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtB44_6errors15DeltaTableErrorEuB2y_NCNvB3W_16parse_partitionss_0NCINvXB6_INtB6_12GenericShuntINtB5q_3MapINtB4_9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB9D_5array10byte_array16GenericByteArrayINtNtB9D_5types17GenericStringTypelEEEB9y_EB3S_EB7V_EIB5S_NtNtBa_7convert10InfallibleB7j_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B3g_B3d_10wrap_mut_2uB6d_NCINvNvBcC_8for_each4callB6d_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBev_7HashMapB1K_B6i_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBcG_7collect25: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldTINtNtBa_6option6OptionReEB1f_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringIB1g_B1K_EEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2D_9try_trait17NeverShortCircuituEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0NCINvNtB6_3map12map_try_foldB1J_INtNtBa_6result6ResultTB1K_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtB44_6errors15DeltaTableErrorEuB2y_NCNvB3W_16parse_partitionss_0NCINvXB6_INtB6_12GenericShuntINtB5q_3MapINtB4_9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB9D_5array10byte_array16GenericByteArrayINtNtB9D_5types17GenericStringTypelEEEB9y_EB3S_EB7V_EIB5S_NtNtBa_7convert10InfallibleB7j_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B3g_B3d_10wrap_mut_2uB6d_NCINvNvBcC_8for_each4callB6d_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBev_7HashMapB1K_B6i_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBcG_7collect6E, %_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0Bb_.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %i.ev = load i64, ptr %i.t, align 8, !alias.scope !5035, !noalias !4934, !noundef !4 ; 2 uses
  %i.ew = load i64, ptr %i.u, align 8, !alias.scope !5035, !noalias !4934, !noundef !4
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1w_5array10byte_array16GenericByteArrayINtNtB1w_5types17GenericStringTypelEEEB1r_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBc_6option6OptionB6o_EEINtNtBc_6result6ResultTB6o_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtB3V_6errors15DeltaTableErrorEuINtNtNtBc_3ops12control_flow11ControlFlowINtNtB9x_9try_trait17NeverShortCircuituEENCNvB3N_16parse_partitionss_0NCINvXB8_INtB8_12GenericShuntINtB60_3MapBV_BaM_EIB7t_NtNtBc_7convert10InfallibleB8U_EEB5d_8try_folduNCINvMs0_Baa_Ba7_10wrap_mut_2uB7O_NCINvNvB5d_8for_each4callB7O_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBe2_7HashMapB6o_B7T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5h_7collect6ExtendB7O_E6extendBbo_E0E0E0Ba, label %bb.b

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1w_5array10byte_array16GenericByteArrayINtNtB1w_5types17GenericStringTypelEEEB1r_ENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBc_6option6OptionB6o_EEINtNtBc_6result6ResultTB6o_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtB3V_6errors15DeltaTableErrorEuINtNtNtBc_3ops12control_flow11ControlFlowINtNtB9x_9try_trait17NeverShortCircuituEENCNvB3N_16parse_partitionss_0NCINvXB8_INtB8_12GenericShuntINtB60_3MapBV_BaM_EIB7t_NtNtBc_7convert10InfallibleB8U_EEB5d_8try_folduNCINvMs0_Baa_Ba7_10wrap_mut_2uB7O_NCINvNvB5d_8for_each4callB7O_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBe2_7HashMapB6o_B7T_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5h_7collect6ExtendB7O_E6extendBbo_E0E0E0Ba: ; preds = %bb.f, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldTINtNtBa_6option6OptionReEB1f_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringIB1g_B1K_EEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2D_9try_trait17NeverShortCircuituEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0NCINvNtB6_3map12map_try_foldB1J_INtNtBa_6result6ResultTB1K_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtB44_6errors15DeltaTableErrorEuB2y_NCNvB3W_16parse_partitionss_0NCINvXB6_INtB6_12GenericShuntINtB5q_3MapINtB4_9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB9D_5array10byte_array16GenericByteArrayINtNtB9D_5types17GenericStringTypelEEEB9y_EB3S_EB7V_EIB5S_NtNtBa_7convert10InfallibleB7j_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B3g_B3d_10wrap_mut_2uB6d_NCINvNvBcC_8for_each4callB6d_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBev_7HashMapB1K_B6i_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBcG_7collect25, %bb.a, %bb.bi
  %i.ey = phi i1 [ true, %bb.bi ], [ false, %bb.a ], [ false, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldTINtNtBa_6option6OptionReEB1f_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringIB1g_B1K_EEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2D_9try_trait17NeverShortCircuituEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row11collect_map0NCINvNtB6_3map12map_try_foldB1J_INtNtBa_6result6ResultTB1K_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtB44_6errors15DeltaTableErrorEuB2y_NCNvB3W_16parse_partitionss_0NCINvXB6_INtB6_12GenericShuntINtB5q_3MapINtB4_9FilterMapINtNtB6_3zip3ZipINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB9D_5array10byte_array16GenericByteArrayINtNtB9D_5types17GenericStringTypelEEEB9y_EB3S_EB7V_EIB5S_NtNtBa_7convert10InfallibleB7j_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B3g_B3d_10wrap_mut_2uB6d_NCINvNvBcC_8for_each4callB6d_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtBev_7HashMapB1K_B6i_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtBcG_7collect25 ], [ false, %bb.f ]
  ret i1 %i.ey
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENCNvMs0_NtNtB2h_11transaction16conflict_checkerNtB3i_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_files0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5q_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB69_E6extendBX_E0ENtNtB7E_8iterator8Iterator4folduNCINvNvB8n_8for_each4callTB69_uENCINvXs1i_NtB5s_3mapINtB9z_7HashMapB69_uB6L_EIB7A_B9i_E6extendBN_E0E0EB2j_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_10filter_map15filter_map_foldB1s_NtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvMs0_NtNtB1w_11transaction16conflict_checkerNtB4v_15ConflictChecker57check_for_deleted_files_against_current_txn_deleted_files0NCINvNtB7_3map8map_foldB3K_TB3K_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7b_7HashSetB3K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2t_7collect6ExtendB3K_E6extendINtB38_9FilterMapBP_B4n_EE0NCINvNvB2p_8for_each4callB6U_NCINvXs1i_NtB7d_3mapINtBaq_7HashMapB3K_uB7Y_EIB8N_B6U_E6extendINtB6y_3MapB9m_B72_EE0E0E0E0EB1y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENCNvMs_NtNtB2h_11transaction16conflict_checkerNtB3h_20WinningCommitSummary22app_level_transactions0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB4V_7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB5E_E6extendBX_E0ENtNtB79_8iterator8Iterator4folduNCINvNvB7S_8for_each4callTB5E_uENCINvXs1i_NtB4X_3mapINtB94_7HashMapB5E_uB6g_EIB75_B8N_E6extendBN_E0E0EB2j_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_10filter_map15filter_map_foldB1s_NtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvMs_NtNtB1w_11transaction16conflict_checkerNtB4u_20WinningCommitSummary22app_level_transactions0NCINvNtB7_3map8map_foldB3K_TB3K_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6G_7HashSetB3K_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2t_7collect6ExtendB3K_E6extendINtB38_9FilterMapBP_B4n_EE0NCINvNvB2p_8for_each4callB6p_NCINvXs1i_NtB6I_3mapINtB9V_7HashMapB3K_uB7t_EIB8i_B6p_E6extendINtB63_3MapB8R_B6x_EE0E0E0E0EB1y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2F_ENCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB3u_13ProtocolInner35move_table_properties_into_features0ENCB3o_s_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5H_7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtNtNtB1W_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB6q_E6extendBX_E0ENtNtB85_8iterator8Iterator4folduNCINvNvB8O_8for_each4callTB6q_uENCINvXs1i_NtB5J_3mapINtBa0_7HashMapB6q_uB7q_EIB81_B9J_E6extendBN_E0E0EB3A_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBL_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters6filter11filter_foldTRBL_B39_EuNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB3r_13ProtocolInner35move_table_properties_into_features0NCINvNtB2z_10filter_map15filter_map_foldB38_NtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuNCB3l_s_0NCINvNtB2z_3map8map_foldB62_TB62_uEuNCINvXs8_NtB8_3setINtB7V_7HashSetB62_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1v_7collect6ExtendB62_E6extendINtB5p_9FilterMapINtB2x_6FilterINtNtNtNtB8t_11collections4hash3map4IterBL_BL_EB3j_EB73_EE0NCINvNvB1r_8for_each4callB7E_NCINvXs1i_B6_INtB6_7HashMapB62_uB8n_EIB9c_B7E_E6extendINtB7h_3MapB9L_B7M_EE0E0E0E0E0EB3x_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB2O_5types10UInt64TypeEEENCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB4z_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0ENCB4t_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1Y_13in_place_drop11InPlaceDropINtNtBc_6result6ResultTjNtNtB2O_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCINvNtB1Y_16in_place_collect24write_in_place_with_dropB8n_E0IB8o_B7M_zEEB4F_(ptr noalias noundef align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5039
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.c, ptr %i.a, align 8, !noalias !5046
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5046
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !5046
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8, !noalias !5039
  %i.f = call { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB14_5types10UInt64TypeEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtB2O_6result6ResultTjNtNtB14_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCINvNvXs_NtNtB2M_8adapters9enumerateINtB6t_9EnumeratepEB2G_8try_fold9enumerateBX_B3K_IB4l_B3K_zENCINvNtB6v_10filter_map19filter_map_try_foldTjBX_ETjINtNtNtB14_5array15primitive_array14PrimitiveArrayB2e_EEB3K_B7H_NCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB9S_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0NCINvNtB6v_3map12map_try_foldB8G_B4k_B3K_B7H_NCB9M_s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB4k_E0E0E0E0B7H_EB9Y_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !5047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5039
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB2Z_9DataFrame6selectNtNtB1V_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3Y_EEs_0ENCINvNtB1V_5utils19find_exprs_in_exprsNCINvB52_17find_window_exprsBX_E0BX_E0ENtNtNtBa_6traits8iterator8Iterator4foldB4g_NCINvNvMsg_NtB8_7flattenINtB74_13FlattenCompatppE9iter_fold7flattenB4g_B4g_NCINvNvXsi_B74_B7h_B6c_4fold7flattenINtNtB4j_9into_iter8IntoIterB3Y_EB4g_NCB4Z_s_0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5056)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = icmp eq ptr %i.f, %i.h
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !5058
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 416
  %.sroa.6.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !5063, !noalias !5064
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB2J_9DataFrame6selectNtNtB1F_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3I_EEs_0ENtNtNtBa_6traits8iterator8Iterator4foldB40_NCINvNtB8_3map8map_foldRB3I_B40_B40_NCINvNtB1F_5utils19find_exprs_in_exprsNCINvB63_17find_window_exprsBV_E0BV_E0NCINvNvMsg_NtB8_7flattenINtB7n_13FlattenCompatppE9iter_fold7flattenB40_B40_NCINvNvXsi_B7n_B7A_B4H_4fold7flattenINtNtB43_9into_iter8IntoIterB3I_EB40_NCB60_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprRNtNtB1f_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB2a_ENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3d_9DataFrame6selectB2a_B2s_Es_0NCINvNtB6_3map8map_foldB29_B2s_B2s_NCINvNtB1f_5utils19find_exprs_in_exprsNCINvB52_17find_window_exprsINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB34_EE0B61_E0NCINvNvMsg_NtB6_7flattenINtB7a_13FlattenCompatppE9iter_fold7flattenB2s_B2s_NCINvNvXsi_B7a_B7n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2v_9into_iter8IntoIterB2a_EB2s_NCB4Z_s_0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.x, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprRNtNtB1f_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB2a_ENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3d_9DataFrame6selectB2a_B2s_Es_0NCINvNtB6_3map8map_foldB29_B2s_B2s_NCINvNtB1f_5utils19find_exprs_in_exprsNCINvB52_17find_window_exprsINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB34_EE0B61_E0NCINvNvMsg_NtB6_7flattenINtB7a_13FlattenCompatppE9iter_fold7flattenB2s_B2s_NCINvNvXsi_B7a_B7n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2v_9into_iter8IntoIterB2a_EB2s_NCB4Z_s_0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5065
  %i.q = getelementptr inbounds nuw [416 x i8], ptr %i.f, i64 %.sroa.01.0.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5066)
  %i.r = load i64, ptr %i.q, align 16, !range !53, !alias.scope !5069, !noalias !5072, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.r, 2
  br i1 %.not.i.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5075
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB1z_5slice4iter4IterNtNtB4_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3z_9DataFrame6selectNtNtB4_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB4y_EEs_0EE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j)
          to label %_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB1C_5slice4iter4IterNtNtB6_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3C_9DataFrame6selectNtNtB6_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB4B_EEs_0EE0B1t_E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.f, !noalias !5080

_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB1C_5slice4iter4IterNtNtB6_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3C_9DataFrame6selectNtNtB6_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB4B_EEs_0EE0B1t_E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5065
  %.sroa.4.24.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !5075
  %.sroa.6.24.copyload.i.i.i.i = load ptr, ptr %.sroa.6.24..sroa_idx.i.i.i.i, align 8, !noalias !5075, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.7.24.copyload.i.i.i.i = load i64, ptr %.sroa.7.24..sroa_idx.i.i.i.i, align 8, !noalias !5075 ; 2 uses
  %i.t = icmp ult i64 %.sroa.7.24.copyload.i.i.i.i, 82351536043346213
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %.sroa.6.24.copyload.i.i.i.i, i64 %.sroa.7.24.copyload.i.i.i.i
  store ptr %.sroa.6.24.copyload.i.i.i.i, ptr %i.p, align 8, !noalias !5081
  store ptr %.sroa.6.24.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5081
  store i64 %.sroa.4.24.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5081
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5081
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBX_EQNCINvNtB11_5utils19find_exprs_in_exprsNCINvB31_17find_window_exprsINtNtNtB1N_8adapters10filter_map9FilterMapINtNtNtB1P_5slice4iter4IterNtNtB11_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5O_9DataFrame6selectBX_B2H_Es_0EE0B40_Es_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull %3), !noalias !5086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5075
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprRNtNtB1f_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB2a_ENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3d_9DataFrame6selectB2a_B2s_Es_0NCINvNtB6_3map8map_foldB29_B2s_B2s_NCINvNtB1f_5utils19find_exprs_in_exprsNCINvB52_17find_window_exprsINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB34_EE0B61_E0NCINvNvMsg_NtB6_7flattenINtB7a_13FlattenCompatppE9iter_fold7flattenB2s_B2s_NCINvNvXsi_B7a_B7n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2v_9into_iter8IntoIterB2a_EB2s_NCB4Z_s_0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #43
          to label %.body.i.i.i unwind label %bb.g, !noalias !5080

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5080
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5065
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprRNtNtB1f_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB2a_ENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3d_9DataFrame6selectB2a_B2s_Es_0NCINvNtB6_3map8map_foldB29_B2s_B2s_NCINvNtB1f_5utils19find_exprs_in_exprsNCINvB52_17find_window_exprsINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB34_EE0B61_E0NCINvNvMsg_NtB6_7flattenINtB7a_13FlattenCompatppE9iter_fold7flattenB2s_B2s_NCINvNvXsi_B7a_B7n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2v_9into_iter8IntoIterB2a_EB2s_NCB4Z_s_0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

.body.i.i.i:                                      ; preds = %bb.f
  resume { ptr, i32 } %i.v

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprRNtNtB1f_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB2a_ENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3d_9DataFrame6selectB2a_B2s_Es_0NCINvNtB6_3map8map_foldB29_B2s_B2s_NCINvNtB1f_5utils19find_exprs_in_exprsNCINvB52_17find_window_exprsINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB34_EE0B61_E0NCINvNvMsg_NtB6_7flattenINtB7a_13FlattenCompatppE9iter_fold7flattenB2s_B2s_NCINvNvXsi_B7a_B7n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2v_9into_iter8IntoIterB2a_EB2s_NCB4Z_s_0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.h, %_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB1C_5slice4iter4IterNtNtB6_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3C_9DataFrame6selectNtNtB6_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB4B_EEs_0EE0B1t_E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5065
  %i.x = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.o
  br i1 %i.y, label %bb.i, label %bb.d

bb.i:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprRNtNtB1f_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB2a_ENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB3d_9DataFrame6selectB2a_B2s_Es_0NCINvNtB6_3map8map_foldB29_B2s_B2s_NCINvNtB1f_5utils19find_exprs_in_exprsNCINvB52_17find_window_exprsINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB34_EE0B61_E0NCINvNvMsg_NtB6_7flattenINtB7a_13FlattenCompatppE9iter_fold7flattenB2s_B2s_NCINvNvXsi_B7a_B7n_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB2v_9into_iter8IntoIterB2a_EB2s_NCB4Z_s_0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !5087
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB2J_9DataFrame6selectNtNtB1F_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3I_EEs_0ENtNtNtBa_6traits8iterator8Iterator4foldB40_NCINvNtB8_3map8map_foldRB3I_B40_B40_NCINvNtB1F_5utils19find_exprs_in_exprsNCINvB63_17find_window_exprsBV_E0BV_E0NCINvNvMsg_NtB8_7flattenINtB7n_13FlattenCompatppE9iter_fold7flattenB40_B40_NCINvNvXsi_B7n_B7A_B4H_4fold7flattenINtNtB43_9into_iter8IntoIterB3I_EB40_NCB60_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB2J_9DataFrame6selectNtNtB1F_4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3I_EEs_0ENtNtNtBa_6traits8iterator8Iterator4foldB40_NCINvNtB8_3map8map_foldRB3I_B40_B40_NCINvNtB1F_5utils19find_exprs_in_exprsNCINvB63_17find_window_exprsBV_E0BV_E0NCINvNvMsg_NtB8_7flattenINtB7n_13FlattenCompatppE9iter_fold7flattenB40_B40_NCINvNvXsi_B7n_B7A_B4H_4fold7flattenINtNtB43_9into_iter8IntoIterB3I_EB40_NCB60_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2j_ENCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB38_13ProtocolInner35move_table_properties_into_featuress1_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB5e_7HashSetNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtNtNtB1A_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB5X_E6extendBX_E0ENtNtB7C_8iterator8Iterator4folduNCINvNvB8l_8for_each4callTB5X_uENCINvXs1i_NtB5g_3mapINtB9x_7HashMapB5X_uB6X_EIB7y_B9g_E6extendBN_E0E0EB3e_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBL_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1x_8adapters10filter_map15filter_map_foldTRBL_B3i_ENtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureuNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB4A_13ProtocolInner35move_table_properties_into_featuress1_0NCINvNtB2z_3map8map_foldB3r_TB3r_uEuNCINvXs8_NtB8_3setINtB7f_7HashSetB3r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB1v_7collect6ExtendB3r_E6extendINtB2x_9FilterMapINtNtNtNtB7N_11collections4hash3map4IterBL_BL_EB4s_EE0NCINvNvB1r_8for_each4callB6Y_NCINvXs1i_B6_INtB6_7HashMapB3r_uB7H_EIB8w_B6Y_E6extendINtB6B_3MapB95_B76_EE0E0E0E0EB4G_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEIBO_IBY_IB1e_IB1E_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtB23_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2Z_8dfschemaNtB5i_8DFSchema4iter0EENCINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB63_13SubqueryAlias7try_newB2V_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callNtNtB67_4expr4ExprNCINvMsj_NtB23_3vecINtB8Z_3VecB8y_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 2 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8 ; 2 uses
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.77.0.copyload = load ptr, ptr %.sroa.77.0..sroa_idx, align 8
  %i.e = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2p_8map_foldTRB1m_TIB1n_RB2P_ERB43_EENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs8_NtNtB7c_12logical_plan4planNtB81_13SubqueryAlias7try_newB2P_E0NCINvNvB5N_8for_each4callB78_NCINvMsj_NtB1M_3vecINtB9D_3VecB78_E14extend_trustedIB2n_BM_B7S_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload), "nonnull"(ptr %.sroa.52.0.copyload) ]
  %.sink18.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink18.i.sroa.gep1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink15.i.sroa.gep2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sink18.i7.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink18.i7.sroa.gep3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sink15.i9.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink15.i9.sroa.gep4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.ah, %bb.r
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !5088
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %bb.aj, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.56.0.copyload, %.lr.ph.i.i ], [ %i.bt, %bb.aj ] ; 3 uses
  %.sroa.0.020.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.h, %bb.aj ] ; 2 uses
  %i.h = add nuw i64 %.sroa.0.020.i.i, 1          ; 2 uses
  %i.i = add i64 %.sroa.0.020.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %i.i ; 2 uses
  %i.k = add i64 %i.i, %.sroa.63.0.copyload       ; 2 uses
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %.sroa.41.0.copyload, i64 %i.k ; 18 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.k
  %i.n = load i64, ptr %i.l, align 8, !range !74, !alias.scope !5095, !noalias !5098, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 3           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5105
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !5109)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !5109, !noalias !5112, !nonnull !4, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !5109, !noalias !5112, !noundef !4 ; 3 uses
  %i.s = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !5117
  %i.t = icmp slt i64 %i.s, 0                     ; 3 uses
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.t, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

.sink.split.i.i.i.i.i:                            ; preds = %bb.p, %bb.i
  %.sink18.i.sroa.phi.i.i.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i.i.i, %bb.p ], [ %.sink18.i.sroa.gep1.i.i.i.i, %bb.i ]
  %.sink16.i.i.i.i.i = phi ptr [ %i.ab, %bb.p ], [ %i.p, %bb.i ]
  %.sink15.i.sroa.phi.i.i.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i.i.i, %bb.p ], [ %.sink15.i.sroa.gep2.i.i.i.i, %bb.i ]
  %.sink13.i.i.i.i.i = phi i64 [ %i.ad, %bb.p ], [ %i.r, %bb.i ]
  %.sink12.ph.i.i.i.i.i = phi i64 [ 40, %bb.p ], [ 24, %bb.i ]
  %.sink10.ph.i.i.i.i.i = phi ptr [ %i.ah, %bb.p ], [ %i.v, %bb.i ]
  %.sink9.ph.i.i.i.i.i = phi i64 [ 48, %bb.p ], [ 32, %bb.i ]
  %.sink7.ph.i.i.i.i.i = phi i64 [ %i.aj, %bb.p ], [ %i.x, %bb.i ]
  store ptr %.sink16.i.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i.i, align 8, !noalias !5118
  store i64 %.sink13.i.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i.i, align 8, !noalias !5118
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !5109, !noalias !5112, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5109, !noalias !5112, !noundef !4
  %i.y = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !5117
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %.sink.split.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !5109, !noalias !5112, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !5109, !noalias !5112, !noundef !4
  %i.ae = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !5117
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !5109, !noalias !5112, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !5109, !noalias !5112, !noundef !4
  %i.ak = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8, !noalias !5117
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.n
  store ptr %i.p, ptr %.sink18.i.sroa.gep1.i.i.i.i, align 8, !noalias !5118
  store i64 %i.r, ptr %.sink15.i.sroa.gep2.i.i.i.i, align 8, !noalias !5118
  br label %.sink.split.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %bb.e
  %.sink12.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ %.sink12.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %.sink10.i.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %.sink10.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %.sink9.i.i.i.i.i = phi i64 [ 16, %bb.e ], [ %.sink9.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %.sink7.i.i.i.i.i = phi i64 [ %i.r, %bb.e ], [ %.sink7.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink12.i.i.i.i.i
  store ptr %.sink10.i.i.i.i.i, ptr %i.am, align 8, !noalias !5118
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink9.i.i.i.i.i
  store i64 %.sink7.i.i.i.i.i, ptr %i.an, align 8, !noalias !5118
  br label %bb.r

bb.r:                                             ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.c
  store i64 %i.n, ptr %i.b, align 8, !noalias !5118
  %i.ao = load ptr, ptr %i.m, align 8, !noalias !5118, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  invoke void @_RINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc.i.i unwind label %bb.b, !noalias !5088

.noexc.i.i:                                       ; preds = %bb.r
  store i64 5, ptr %i.d, align 16, !noalias !5105
  %i.aq = load i64, ptr %i.j, align 8, !range !56, !noalias !5118, !noundef !4
  %.not5.i.i.i.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not5.i.i.i.i, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !5105
  br i1 %.not.i.i.i.i.i, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !5119)
  %i.ar = load i64, ptr %i.l, align 8, !range !53, !alias.scope !5119, !noalias !5122, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !5119, !noalias !5122, !nonnull !4, !noundef !4 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !5119, !noalias !5122, !noundef !4 ; 3 uses
  %i.aw = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !5124
  %i.ax = icmp slt i64 %i.aw, 0                   ; 3 uses
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %i.ax, label %bb.x, label %bb.ai

bb.v:                                             ; preds = %bb.t
  br i1 %i.ax, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.ax, label %bb.ac, label %bb.ab

bb.x:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

.sink.split.i6.i.i.i.i:                           ; preds = %bb.af, %bb.y
  %.sink18.i7.sroa.phi.i.i.i.i = phi ptr [ %.sink18.i7.sroa.gep.i.i.i.i, %bb.af ], [ %.sink18.i7.sroa.gep3.i.i.i.i, %bb.y ]
  %.sink16.i8.i.i.i.i = phi ptr [ %i.bf, %bb.af ], [ %i.at, %bb.y ]
  %.sink15.i9.sroa.phi.i.i.i.i = phi ptr [ %.sink15.i9.sroa.gep.i.i.i.i, %bb.af ], [ %.sink15.i9.sroa.gep4.i.i.i.i, %bb.y ]
  %.sink13.i10.i.i.i.i = phi i64 [ %i.bh, %bb.af ], [ %i.av, %bb.y ]
  %.sink12.ph.i11.i.i.i.i = phi i64 [ 40, %bb.af ], [ 24, %bb.y ]
  %.sink10.ph.i12.i.i.i.i = phi ptr [ %i.bl, %bb.af ], [ %i.az, %bb.y ]
  %.sink9.ph.i13.i.i.i.i = phi i64 [ 48, %bb.af ], [ 32, %bb.y ]
  %.sink7.ph.i14.i.i.i.i = phi i64 [ %i.bn, %bb.af ], [ %i.bb, %bb.y ]
  store ptr %.sink16.i8.i.i.i.i, ptr %.sink18.i7.sroa.phi.i.i.i.i, align 8, !noalias !5118
  store i64 %.sink13.i10.i.i.i.i, ptr %.sink15.i9.sroa.phi.i.i.i.i, align 8, !noalias !5118
  br label %bb.ai

bb.y:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !5119, !noalias !5122, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !5119, !noalias !5122, !noundef !4
  %i.bc = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !5124
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.aa, label %.sink.split.i6.i.i.i.i

bb.z:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !5119, !noalias !5122, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !5119, !noalias !5122, !noundef !4
  %i.bi = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8, !noalias !5124
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.w
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !5119, !noalias !5122, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !5119, !noalias !5122, !noundef !4
  %i.bo = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8, !noalias !5124
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad
  store ptr %i.at, ptr %.sink18.i7.sroa.gep3.i.i.i.i, align 8, !noalias !5118
  store i64 %i.av, ptr %.sink15.i9.sroa.gep4.i.i.i.i, align 8, !noalias !5118
  br label %.sink.split.i6.i.i.i.i

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.ai, %bb.s
  %.sink5.i.i.i.i = phi i64 [ %i.ar, %bb.ai ], [ 3, %bb.s ]
  store i64 %.sink5.i.i.i.i, ptr %i.a, align 8, !noalias !5118
  invoke void @_RINvMsa_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5Alias3newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %.noexc14.i.i unwind label %bb.b, !noalias !5088

.noexc14.i.i:                                     ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5118
  store i64 4, ptr %i.d, align 16, !noalias !5105
  br label %bb.aj

bb.ai:                                            ; preds = %.sink.split.i6.i.i.i.i, %bb.u
  %.sink12.i15.i.i.i.i = phi i64 [ 8, %bb.u ], [ %.sink12.ph.i11.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %.sink10.i16.i.i.i.i = phi ptr [ %i.at, %bb.u ], [ %.sink10.ph.i12.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %.sink9.i17.i.i.i.i = phi i64 [ 16, %bb.u ], [ %.sink9.ph.i13.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %.sink7.i18.i.i.i.i = phi i64 [ %i.av, %bb.u ], [ %.sink7.ph.i14.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink12.i15.i.i.i.i
  store ptr %.sink10.i16.i.i.i.i, ptr %i.bq, align 8, !noalias !5118
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink9.i17.i.i.i.i
  store i64 %.sink7.i18.i.i.i.i, ptr %i.br, align 8, !noalias !5118
  br label %bb.ah

bb.aj:                                            ; preds = %.noexc14.i.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5105
  %i.bs = getelementptr inbounds nuw [112 x i8], ptr %.sroa.77.0.copyload, i64 %.val13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bs, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !5105
  %i.bt = add i64 %.val13.i.i, 1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5088
  %exitcond.not.i.i = icmp eq i64 %i.h, %i.e
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2p_8map_foldTRB1m_TIB1n_RB2P_ERB43_EENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs8_NtNtB7c_12logical_plan4planNtB81_13SubqueryAlias7try_newB2P_E0NCINvNvB5N_8for_each4callB78_NCINvMsj_NtB1M_3vecINtB9D_3VecB78_E14extend_trustedIB2n_BM_B7S_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2p_8map_foldTRB1m_TIB1n_RB2P_ERB43_EENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs8_NtNtB7c_12logical_plan4planNtB81_13SubqueryAlias7try_newB2P_E0NCINvNvB5N_8for_each4callB78_NCINvMsj_NtB1M_3vecINtB9D_3VecB78_E14extend_trustedIB2n_BM_B7S_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aj, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.56.0.copyload, %bb.a ], [ %i.bt, %bb.aj ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !5088
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB23_8dfschemaNtB4C_8DFSchema4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5d_4find5checkTIB1E_RB1Z_ERB3e_EQNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB6J_21LogicalPlanBuilderExt12drop_columnsReAB9F_j1_Es_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6h_EEB6N_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !5128
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !5128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5131, !noalias !5136, !noundef !4 ; 2 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !5131, !noalias !5136 ; 3 uses
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !5125, !noalias !5136, !nonnull !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !5125, !noalias !5136, !nonnull !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i, i64 %i.g)
  %exitcond.not.i9.not = icmp ult i64 %.promoted.i, %i.g
  br i1 %exitcond.not.i9.not, label %.lr.ph, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBS_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2R_ETIB1i_RB1D_EB5q_EuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCNvMNtB1H_8dfschemaNtB6D_8DFSchema4iter0NCINvNvB4a_4find5checkB5w_QNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB7N_21LogicalPlanBuilderExt12drop_columnsReABaJ_j1_Es_0E0E0B5O_EB7R_.exit

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.k, %umax.i
  br i1 %exitcond.not.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBS_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2R_ETIB1i_RB1D_EB5q_EuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCNvMNtB1H_8dfschemaNtB6D_8DFSchema4iter0NCINvNvB4a_4find5checkB5w_QNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB7N_21LogicalPlanBuilderExt12drop_columnsReABaJ_j1_Es_0E0E0B5O_EB7R_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.k, %bb.b ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.k, ptr %i.e, align 8, !alias.scope !5131, !noalias !5136
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i, i64 %i.j
  call void @llvm.experimental.noalias.scope.decl(metadata !5137)
  %i.n = load i64, ptr %i.l, align 8, !range !74, !alias.scope !5140, !noalias !5143, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.n, 3
  %..i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5147
  store ptr %..i.i.i, ptr %i.a, align 8, !noalias !5148
  store ptr %i.m, ptr %i.i, align 8, !noalias !5148
  %i.o = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtBX_21LogicalPlanBuilderExt12drop_columnsReAB3S_j1_Es_0INtB7_5FnMutTRTINtNtBb_6option6OptionRNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEE8call_mutB11_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !5125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5147
  br i1 %i.o, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBS_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2R_ETIB1i_RB1D_EB5q_EuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCNvMNtB1H_8dfschemaNtB6D_8DFSchema4iter0NCINvNvB4a_4find5checkB5w_QNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB7N_21LogicalPlanBuilderExt12drop_columnsReABaJ_j1_Es_0E0E0B5O_EB7R_.exit.split.loop.exit5, label %bb.b

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBS_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2R_ETIB1i_RB1D_EB5q_EuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCNvMNtB1H_8dfschemaNtB6D_8DFSchema4iter0NCINvNvB4a_4find5checkB5w_QNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB7N_21LogicalPlanBuilderExt12drop_columnsReABaJ_j1_Es_0E0E0B5O_EB7R_.exit.split.loop.exit5: ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i, i64 %i.j
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBS_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2R_ETIB1i_RB1D_EB5q_EuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCNvMNtB1H_8dfschemaNtB6D_8DFSchema4iter0NCINvNvB4a_4find5checkB5w_QNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB7N_21LogicalPlanBuilderExt12drop_columnsReABaJ_j1_Es_0E0E0B5O_EB7R_.exit

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBS_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2R_ETIB1i_RB1D_EB5q_EuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCNvMNtB1H_8dfschemaNtB6D_8DFSchema4iter0NCINvNvB4a_4find5checkB5w_QNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB7N_21LogicalPlanBuilderExt12drop_columnsReABaJ_j1_Es_0E0E0B5O_EB7R_.exit: ; preds = %bb.b, %bb.a, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBS_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2R_ETIB1i_RB1D_EB5q_EuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCNvMNtB1H_8dfschemaNtB6D_8DFSchema4iter0NCINvNvB4a_4find5checkB5w_QNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB7N_21LogicalPlanBuilderExt12drop_columnsReABaJ_j1_Es_0E0E0B5O_EB7R_.exit.split.loop.exit5
  %.sroa.3.0.i = phi ptr [ %i.p, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBS_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2R_ETIB1i_RB1D_EB5q_EuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCNvMNtB1H_8dfschemaNtB6D_8DFSchema4iter0NCINvNvB4a_4find5checkB5w_QNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB7N_21LogicalPlanBuilderExt12drop_columnsReABaJ_j1_Es_0E0E0B5O_EB7R_.exit.split.loop.exit5 ], [ null, %bb.a ], [ null, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %..i.i.i, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBS_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2R_ETIB1i_RB1D_EB5q_EuINtNtNtBc_3ops12control_flow11ControlFlowB5w_ENCNvMNtB1H_8dfschemaNtB6D_8DFSchema4iter0NCINvNvB4a_4find5checkB5w_QNCINvXs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7logicalNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builder18LogicalPlanBuilderNtB7N_21LogicalPlanBuilderExt12drop_columnsReABaJ_j1_Es_0E0E0B5O_EB7R_.exit.split.loop.exit5 ], [ undef, %bb.a ], [ undef, %bb.b ]
  %i.q = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.r = insertvalue { ptr, ptr } %i.q, ptr %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEB1d_ENCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB3a_12WriteBuilderNtNtNtBc_6future11into_future10IntoFuture11into_future0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5h_8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtB1I_3vecINtB7c_3VecB6k_E14extend_trustedBN_E0E0EB3e_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.g = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3K_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB4O_12WriteBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0NCINvNvB2I_8for_each4callB3U_NCINvMsj_NtB1r_3vecINtB7w_3VecB3U_E14extend_trustedINtB3r_3MapBM_B4E_EE0E0E0EB4S_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.c

.body.i.i:                                        ; preds = %bb.g, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.j, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !5153
  resume { ptr, i32 } %.pn.i.i

bb.b:                                             ; preds = %.noexc19.i.i, %bb.f, %bb.e, %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.c:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB3b_12WriteBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB6n_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB7t_EB31_EE0E0E0B3f_.exit.i.i, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.54.0.copyload, %.lr.ph.i.i ], [ %i.x, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB3b_12WriteBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB6n_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB7t_EB31_EE0E0E0B3f_.exit.i.i ] ; 3 uses
  %.sroa.0.021.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.k, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB3b_12WriteBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB6n_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB7t_EB31_EE0E0E0B3f_.exit.i.i ] ; 2 uses
  %i.k = add nuw i64 %.sroa.0.021.i.i, 1          ; 2 uses
  %i.l = add i64 %.sroa.0.021.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.l
  %.val14.i.i = load ptr, ptr %i.m, align 8, !noalias !5153, !nonnull !4, !noundef !4 ; 2 uses
  %.val15.i.i = load ptr, ptr %i.n, align 8, !noalias !5153, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5153
  %i.o = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val15.i.i, i64 40
  %i.r = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #46
          to label %.noexc.i.i unwind label %bb.b, !noalias !5153

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc.i.i
  invoke void @_RINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6Column9from_nameRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %.noexc17.i.i unwind label %bb.b, !noalias !5153

.noexc17.i.i:                                     ; preds = %bb.d
  store i64 5, ptr %i.d, align 16, !noalias !5160
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB3b_12WriteBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB6n_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB7t_EB31_EE0E0E0B3f_.exit.i.i

bb.e:                                             ; preds = %.noexc.i.i
  %i.s = load i8, ptr %i.f, align 1, !range !3, !noalias !5163, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5163
  invoke void @_RINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6Column9from_nameRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %.noexc18.i.i unwind label %bb.b, !noalias !5153

.noexc18.i.i:                                     ; preds = %bb.e
  store i64 5, ptr %i.b, align 16, !noalias !5163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5163
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.f unwind label %bb.g, !noalias !5163

bb.f:                                             ; preds = %.noexc18.i.i
  %i.t = trunc nuw i8 %i.s to i1
  %_RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn8try_cast._RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn4cast.i.i.i.i = select i1 %i.t, ptr @_RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn8try_cast, ptr @_RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn4cast
  invoke void %_RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn8try_cast._RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn4cast.i.i.i.i(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc19.i.i unwind label %bb.b, !noalias !5153, !inline_history !5166

.noexc19.i.i:                                     ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5163
  invoke void @_RINvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4Expr5aliasRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %.noexc20.i.i unwind label %bb.b, !noalias !5153

.noexc20.i.i:                                     ; preds = %.noexc19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5163
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB3b_12WriteBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB6n_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB7t_EB31_EE0E0E0B3f_.exit.i.i

bb.g:                                             ; preds = %.noexc18.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.b) #43
          to label %.body.i.i unwind label %bb.h, !noalias !5163

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5163
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB3b_12WriteBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB6n_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB7t_EB31_EE0E0E0B3f_.exit.i.i: ; preds = %.noexc20.i.i, %.noexc17.i.i
  %i.w = getelementptr inbounds nuw [112 x i8], ptr %.sroa.7.0.copyload, i64 %.val13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !5160
  %i.x = add i64 %.val13.i.i, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5153
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3K_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB4O_12WriteBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0NCINvNvB2I_8for_each4callB3U_NCINvMsj_NtB1r_3vecINtB7w_3VecB3U_E14extend_trustedINtB3r_3MapBM_B4E_EE0E0E0EB4S_.exit, label %bb.c

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3K_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB4O_12WriteBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0NCINvNvB2I_8for_each4callB3U_NCINvMsj_NtB1r_3vecINtB7w_3VecB3U_E14extend_trustedINtB3r_3MapBM_B4E_EE0E0E0EB4S_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB3b_12WriteBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB6n_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB7t_EB31_EE0E0E0B3f_.exit.i.i, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.54.0.copyload, %bb.a ], [ %i.x, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core10operations5writeNtB3b_12WriteBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB6n_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB7t_EB31_EE0E0E0B3f_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !5153
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB1e_NtNtNtB1H_11expressions7scalars6ScalarEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4E_8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringB2z_ENCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB6y_8IndexMapB5I_B2z_EINtNtB4I_7collect6ExtendB5H_E6extendBN_E0E0EB3p_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 16               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.h = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringB2h_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00NCINvNvB2V_8for_each4callB48_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB6T_8IndexMapB49_B2h_EINtNtB2Z_7collect6ExtendB48_E6extendINtB3E_3MapBM_B4R_EE0E0E0EB53_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5F_8IndexMapB2r_B1N_EINtNtB4K_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7y_B1N_EEB39_EE0E0E0B3l_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.m, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5F_8IndexMapB2r_B1N_EINtNtB4K_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7y_B1N_EEB39_EE0E0E0B3l_.exit.i.i ] ; 2 uses
  %i.m = add nuw i64 %.sroa.0.016.i.i, 1          ; 2 uses
  %i.n = add i64 %.sroa.0.016.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %.sroa.41.0.copyload, i64 %i.n
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val10.i.i = load ptr, ptr %i.q, align 8, !noalias !5167, !nonnull !4, !noundef !4
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %.val11.i.i = load i64, ptr %i.r, align 8, !noalias !5167, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5175
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val11.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !5181
  %i.s = load i64, ptr %i.e, align 8, !range !18, !noalias !5175, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = load i64, ptr %i.i, align 8, !range !56, !noalias !5175, !noundef !4 ; 3 uses
  br i1 %i.t, label %bb.c, label %bb.d, !prof !1168

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.j, align 8, !noalias !5175
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.v) #47, !noalias !5181
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.j, align 8, !noalias !5175, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = icmp ule i64 %.val11.i.i, %i.u
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5175
  %.not.i.i.i.i = icmp eq i64 %.val11.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  store i64 %i.u, ptr %i.g, align 8, !noalias !5175
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5175
  store i64 %.val11.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !5175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5175
  invoke fastcc void @_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.p)
          to label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00Bb_.exit.i.i.i unwind label %bb.g, !noalias !5182

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %.val10.i.i, i64 %.val11.i.i, i1 false), !noalias !5181
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #43
          to label %bb.i unwind label %bb.h, !noalias !5182

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5182
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00Bb_.exit.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !5183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !5183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5187
  call void @_RNvMs2_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE11insert_fullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.c), !noalias !5167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %i.l, i64 96, i1 false), !noalias !5187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5187
  %i.aa = load i64, ptr %i.b, align 16, !range !5030, !alias.scope !5190, !noalias !5187, !noundef !4
  %i.ab = icmp eq i64 %i.aa, -9223372036854775792
  br i1 %i.ab, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5F_8IndexMapB2r_B1N_EINtNtB4K_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7y_B1N_EEB39_EE0E0E0B3l_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00Bb_.exit.i.i.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.b), !noalias !5193
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5F_8IndexMapB2r_B1N_EINtNtB4K_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7y_B1N_EEB39_EE0E0E0B3l_.exit.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5F_8IndexMapB2r_B1N_EINtNtB4K_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7y_B1N_EEB39_EE0E0E0B3l_.exit.i.i: ; preds = %bb.j, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00Bb_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5172
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringB2h_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00NCINvNvB2V_8for_each4callB48_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB6T_8IndexMapB49_B2h_EINtNtB2Z_7collect6ExtendB48_E6extendINtB3E_3MapBM_B4R_EE0E0E0EB53_.exit, label %bb.b

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringB2h_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00NCINvNvB2V_8for_each4callB48_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB6T_8IndexMapB49_B2h_EINtNtB2Z_7collect6ExtendB48_E6extendINtB3E_3MapBM_B4R_EE0E0E0EB53_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17build_zorder_plan0s1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5F_8IndexMapB2r_B1N_EINtNtB4K_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7y_B1N_EEB39_EE0E0E0B3l_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB1e_NtNtNtB1H_11expressions7scalars6ScalarEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4F_8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringB2z_ENCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB6z_8IndexMapB5J_B2z_EINtNtB4J_7collect6ExtendB5I_E6extendBN_E0E0EB3p_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  %i.c = alloca [96 x i8], align 16               ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 16               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.h = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringB2h_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000NCINvNvB2V_8for_each4callB48_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB6U_8IndexMapB49_B2h_EINtNtB2Z_7collect6ExtendB48_E6extendINtB3E_3MapBM_B4R_EE0E0E0EB53_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5G_8IndexMapB2r_B1N_EINtNtB4L_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7z_B1N_EEB39_EE0E0E0B3l_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.m, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5G_8IndexMapB2r_B1N_EINtNtB4L_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7z_B1N_EEB39_EE0E0E0B3l_.exit.i.i ] ; 2 uses
  %i.m = add nuw i64 %.sroa.0.016.i.i, 1          ; 2 uses
  %i.n = add i64 %.sroa.0.016.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %.sroa.41.0.copyload, i64 %i.n
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val10.i.i = load ptr, ptr %i.q, align 8, !noalias !5194, !nonnull !4, !noundef !4
  %i.r = getelementptr i8, ptr %i.o, i64 16
  %.val11.i.i = load i64, ptr %i.r, align 8, !noalias !5194, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5202
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val11.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !5208
  %i.s = load i64, ptr %i.e, align 8, !range !18, !noalias !5202, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = load i64, ptr %i.i, align 8, !range !56, !noalias !5202, !noundef !4 ; 3 uses
  br i1 %i.t, label %bb.c, label %bb.d, !prof !1168

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.j, align 8, !noalias !5202
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.u, i64 %i.v) #47, !noalias !5208
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.j, align 8, !noalias !5202, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = icmp ule i64 %.val11.i.i, %i.u
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5202
  %.not.i.i.i.i = icmp eq i64 %.val11.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  store i64 %i.u, ptr %i.g, align 8, !noalias !5202
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5202
  store i64 %.val11.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !5202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5202
  invoke fastcc void @_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.p)
          to label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000Bb_.exit.i.i.i unwind label %bb.g, !noalias !5209

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %.val10.i.i, i64 %.val11.i.i, i1 false), !noalias !5208
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #43
          to label %bb.i unwind label %bb.h, !noalias !5209

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5209
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000Bb_.exit.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !5210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !5210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5214
  call void @_RNvMs2_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarE11insert_fullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.c), !noalias !5194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %i.l, i64 96, i1 false), !noalias !5214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5214
  %i.aa = load i64, ptr %i.b, align 16, !range !5030, !alias.scope !5217, !noalias !5214, !noundef !4
  %i.ab = icmp eq i64 %i.aa, -9223372036854775792
  br i1 %i.ab, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5G_8IndexMapB2r_B1N_EINtNtB4L_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7z_B1N_EEB39_EE0E0E0B3l_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000Bb_.exit.i.i.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.b), !noalias !5220
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5G_8IndexMapB2r_B1N_EINtNtB4L_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7z_B1N_EEB39_EE0E0E0B3l_.exit.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5G_8IndexMapB2r_B1N_EINtNtB4L_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7z_B1N_EEB39_EE0E0E0B3l_.exit.i.i: ; preds = %bb.j, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000Bb_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5199
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringB2h_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000NCINvNvB2V_8for_each4callB48_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB6U_8IndexMapB49_B2h_EINtNtB2Z_7collect6ExtendB48_E6extendINtB3E_3MapBM_B4R_EE0E0E0EB53_.exit, label %bb.b

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringB2h_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000NCINvNvB2V_8for_each4callB48_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB6U_8IndexMapB49_B2h_EINtNtB2Z_7collect6ExtendB48_E6extendINtB3E_3MapBM_B4R_EE0E0E0EB53_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize21build_compaction_plan000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXsb_NtCsbpG6u9KFjWn_8indexmap3mapINtB5G_8IndexMapB2r_B1N_EINtNtB4L_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB7z_B1N_EEB39_EE0E0E0B3l_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB1e_NtNtNtB1H_11expressions7scalars6ScalarEENCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3k_15LogicalFileView20partition_values_map00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB56_8for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBc_6option6OptionB6a_EENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7o_7HashMapB6a_B6M_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5a_7collect6ExtendB69_E6extendBN_E0E0EB3q_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.g = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBb_6option6OptionB49_EEuNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB5l_15LogicalFileView20partition_values_map00NCINvNvB2V_8for_each4callB48_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7J_7HashMapB49_B4L_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Z_7collect6ExtendB48_E6extendINtB3E_3MapBM_B5e_EE0E0E0EB5r_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionB2r_EEuNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3D_15LogicalFileView20partition_values_map00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6v_7HashMapB2r_B33_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5z_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB9b_B1N_EEB3w_EE0E0E0B3J_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.j, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionB2r_EEuNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3D_15LogicalFileView20partition_values_map00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6v_7HashMapB2r_B33_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5z_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB9b_B1N_EEB3w_EE0E0E0B3J_.exit.i.i ] ; 2 uses
  %i.j = add nuw i64 %.sroa.0.018.i.i, 1          ; 2 uses
  %i.k = add i64 %.sroa.0.018.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.l = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %.sroa.41.0.copyload, i64 %i.k ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val10.i.i = load ptr, ptr %i.n, align 8, !noalias !5221, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.l, i64 16
  %.val11.i.i = load i64, ptr %i.o, align 8, !noalias !5221, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5226)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5232
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.val11.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !5236
  %i.p = load i64, ptr %i.d, align 8, !range !18, !noalias !5232, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = load i64, ptr %i.h, align 8, !range !56, !noalias !5232, !noundef !4 ; 3 uses
  br i1 %i.q, label %bb.c, label %bb.d, !prof !1168

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.i, align 8, !noalias !5232
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.s) #47, !noalias !5236
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.i, align 8, !noalias !5232, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp ule i64 %.val11.i.i, %i.r
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5232
  %.not.i.i.i.i = icmp eq i64 %.val11.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  store i64 %i.r, ptr %i.f, align 8, !noalias !5232
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !5232
  store i64 %.val11.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !5232
  %i.v = load i64, ptr %i.m, align 16, !range !3207, !alias.scope !5237, !noalias !5238, !noundef !4
  %i.w = icmp eq i64 %i.v, -9223372036854775795
  br i1 %i.w, label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView20partition_values_map00Bc_.exit.i.i.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %.val10.i.i, i64 %.val11.i.i, i1 false), !noalias !5236
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5232
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.m)
          to label %bb.i unwind label %bb.h, !noalias !5238

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #43
          to label %common.resume.i.i.i unwind label %bb.j, !noalias !5238

bb.i:                                             ; preds = %bb.g
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !5232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !5239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5232
  br label %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView20partition_values_map00Bc_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5238
  unreachable

common.resume.i.i.i:                              ; preds = %bb.l, %bb.h
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.aa, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView20partition_values_map00Bc_.exit.i.i.i: ; preds = %bb.i, %bb.e
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.i ], [ -9223372036854775808, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !5239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5240
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.b, align 8, !noalias !5239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !5239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5243
  call void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBN_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !5246
  %i.z = load i64, ptr %i.a, align 8, !range !73, !alias.scope !5247, !noalias !5243, !noundef !4
  %switch.i.i.i.i.i.i = icmp slt i64 %i.z, -9223372036854775806
  br i1 %switch.i.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionB2r_EEuNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3D_15LogicalFileView20partition_values_map00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6v_7HashMapB2r_B33_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5z_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB9b_B1N_EEB3w_EE0E0E0B3J_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView20partition_values_map00Bc_.exit.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i unwind label %bb.l, !noalias !5246

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.m, !noalias !5246

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5246
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !5246
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionB2r_EEuNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3D_15LogicalFileView20partition_values_map00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6v_7HashMapB2r_B33_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5z_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB9b_B1N_EEB3w_EE0E0E0B3J_.exit.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionB2r_EEuNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3D_15LogicalFileView20partition_values_map00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6v_7HashMapB2r_B33_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5z_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB9b_B1N_EEB3w_EE0E0E0B3J_.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, %_RNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB6_15LogicalFileView20partition_values_map00Bc_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5240
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.g
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBb_6option6OptionB49_EEuNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB5l_15LogicalFileView20partition_values_map00NCINvNvB2V_8for_each4callB48_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7J_7HashMapB49_B4L_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Z_7collect6ExtendB48_E6extendINtB3E_3MapBM_B5e_EE0E0E0EB5r_.exit, label %bb.b

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBb_6option6OptionB49_EEuNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB5l_15LogicalFileView20partition_values_map00NCINvNvB2V_8for_each4callB48_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7J_7HashMapB49_B4L_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2Z_7collect6ExtendB48_E6extendINtB3E_3MapBM_B5e_EE0E0E0EB5r_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarETNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionB2r_EEuNCNCNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB3D_15LogicalFileView20partition_values_map00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2q_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6v_7HashMapB2r_B33_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB5z_7collect6ExtendB2q_E6extendINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB9b_B1N_EEB3w_EE0E0E0B3J_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB1e_NtNtNtB1H_11expressions7scalars6ScalarEENCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2B_10StructDataNtB3k_13PartitionsExt19hive_partition_path0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvXs0_NtCscVxtfYSVfE7_9itertools11intersperseINtB66_15IntersperseWithBN_INtB66_24IntersperseElementSimpleNtNtCs6Po7BT7Nknu_5alloc6string6StringEEB5j_4folduNCINvNvB5j_8for_each4callB7H_NCINvXsk_B7J_B7H_INtNtB5n_7collect6ExtendB7H_E6extendB6J_E0E0Es_0EB3q_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  %i.i = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2h_ENtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2j_10StructDataNtB4S_13PartitionsExt19hive_partition_path0NCINvXs0_NtCscVxtfYSVfE7_9itertools11intersperseINtB6Z_15IntersperseWithINtB3E_3MapBM_B4L_EINtB6Z_24IntersperseElementSimpleB48_EEB2V_4folduNCINvNvB2V_8for_each4callB48_NCINvXsk_B4a_B48_INtNtB2Z_7collect6ExtendB48_E6extendB7C_E0E0Es_0E0EB4Y_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload) ]
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarENtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1P_10StructDataNtB3a_13PartitionsExt19hive_partition_path0NCINvXs0_NtCscVxtfYSVfE7_9itertools11intersperseINtB5h_15IntersperseWithINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB6J_B1N_EEB33_EINtB5h_24IntersperseElementSimpleB2q_EENtNtNtB8_6traits8iterator8Iterator4folduNCINvNvB85_8for_each4callB2q_NCINvXsk_B2s_B2q_INtNtB89_7collect6ExtendB2q_E6extendB5U_E0E0Es_0E0B3g_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.q, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarENtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1P_10StructDataNtB3a_13PartitionsExt19hive_partition_path0NCINvXs0_NtCscVxtfYSVfE7_9itertools11intersperseINtB5h_15IntersperseWithINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB6J_B1N_EEB33_EINtB5h_24IntersperseElementSimpleB2q_EENtNtNtB8_6traits8iterator8Iterator4folduNCINvNvB85_8for_each4callB2q_NCINvXsk_B2s_B2q_INtNtB89_7collect6ExtendB2q_E6extendB5U_E0E0Es_0E0B3g_.exit.i.i ] ; 2 uses
  %i.q = add nuw i64 %.sroa.0.012.i.i, 1          ; 2 uses
  %i.r = add i64 %.sroa.0.012.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload, i64 %i.r
  %i.t = getelementptr inbounds nuw [96 x i8], ptr %.sroa.41.0.copyload, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5261
  call void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt17serialize_encoded(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.t), !noalias !5266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5261
  store ptr %i.s, ptr %i.e, align 8, !noalias !5261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5261
  store ptr %i.e, ptr %i.d, align 8, !noalias !5261
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !5261
  store ptr %i.f, ptr %i.j, align 8, !noalias !5261
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !5261
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @301, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.c, !noalias !5267

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #43
          to label %common.resume.i.i.i unwind label %bb.f, !noalias !5268

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5261
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataNtB6_13PartitionsExt19hive_partition_path0Bc_.exit.i.i.i unwind label %bb.d, !noalias !5268

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i.i.i unwind label %bb.e, !noalias !5268

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5268
  unreachable

common.resume.i.i.i:                              ; preds = %bb.v, %bb.s, %bb.p, %bb.d, %bb.c
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %.pn.ph.i.i.i.i, %bb.v ], [ %i.an, %bb.p ], [ %i.au, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5268
  unreachable

_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataNtB6_13PartitionsExt19hive_partition_path0Bc_.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !5268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5269
  invoke void @_RNvXNtCscVxtfYSVfE7_9itertools11intersperseINtB2_24IntersperseElementSimpleNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtB2_18IntersperseElementB1b_E8generateCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.g, !noalias !5272

bb.g:                                             ; preds = %_RNCINvXsk_NtCs6Po7BT7Nknu_5alloc6stringNtB8_6StringINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBB_E6extendINtNtCscVxtfYSVfE7_9itertools11intersperse15IntersperseWithINtNtNtBU_8adapters3map3MapINtNtB2T_3zip3ZipINtNtNtBW_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB3x_NtNtNtB40_11expressions7scalars6ScalarEENCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB4U_10StructDataNtB5D_13PartitionsExt19hive_partition_path0EINtB1U_24IntersperseElementSimpleBB_EEE0B5J_.exit.i.i.i.i.i, %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataNtB6_13PartitionsExt19hive_partition_path0Bc_.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.h:                                             ; preds = %_RNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataNtB6_13PartitionsExt19hive_partition_path0Bc_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !5269
  call void @llvm.experimental.noalias.scope.decl(metadata !5276)
  %i.z = load ptr, ptr %i.k, align 8, !alias.scope !5276, !noalias !5273, !nonnull !4, !noundef !4
  %i.aa = load i64, ptr %i.l, align 8, !alias.scope !5276, !noalias !5273, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.aa)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.i, !noalias !5279

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #43
          to label %bb.v unwind label %bb.n, !noalias !5280

.noexc.i.i.i.i.i.i:                               ; preds = %bb.h
  %i.ac = load i64, ptr %i.m, align 8, !alias.scope !5281, !noalias !5284, !noundef !4 ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  call void @llvm.assume(i1 %i.ad)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.ae = load ptr, ptr %i.n, align 8, !alias.scope !5281, !noalias !5284, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.z, i64 %i.aa, i1 false), !noalias !5279
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !5281, !noalias !5284
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i.i.i.i
  %i.ag = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.j ], [ %i.ac, %.noexc.i.i.i.i.i.i ]
  %i.ah = add i64 %i.ag, %i.aa
  store i64 %i.ah, ptr %i.m, align 8, !alias.scope !5281, !noalias !5284
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvXsk_NtCs6Po7BT7Nknu_5alloc6stringNtB8_6StringINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBB_E6extendINtNtCscVxtfYSVfE7_9itertools11intersperse15IntersperseWithINtNtNtBU_8adapters3map3MapINtNtB2T_3zip3ZipINtNtNtBW_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB3x_NtNtNtB40_11expressions7scalars6ScalarEENCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB4U_10StructDataNtB5D_13PartitionsExt19hive_partition_path0EINtB1U_24IntersperseElementSimpleBB_EEE0B5J_.exit.i.i.i.i.i unwind label %bb.l, !noalias !5280

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.v unwind label %bb.m, !noalias !5280

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5280
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5280
  unreachable

_RNCINvXsk_NtCs6Po7BT7Nknu_5alloc6stringNtB8_6StringINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBB_E6extendINtNtCscVxtfYSVfE7_9itertools11intersperse15IntersperseWithINtNtNtBU_8adapters3map3MapINtNtB2T_3zip3ZipINtNtNtBW_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB3x_NtNtNtB40_11expressions7scalars6ScalarEENCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB4U_10StructDataNtB5D_13PartitionsExt19hive_partition_path0EINtB1U_24IntersperseElementSimpleBB_EEE0B5J_.exit.i.i.i.i.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.o unwind label %bb.g, !noalias !5272

bb.o:                                             ; preds = %_RNCINvXsk_NtCs6Po7BT7Nknu_5alloc6stringNtB8_6StringINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBB_E6extendINtNtCscVxtfYSVfE7_9itertools11intersperse15IntersperseWithINtNtNtBU_8adapters3map3MapINtNtB2T_3zip3ZipINtNtNtBW_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIB3x_NtNtNtB40_11expressions7scalars6ScalarEENCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB4U_10StructDataNtB5D_13PartitionsExt19hive_partition_path0EINtB1U_24IntersperseElementSimpleBB_EEE0B5J_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5250
  call void @llvm.experimental.noalias.scope.decl(metadata !5288)
  %i.al = load ptr, ptr %i.o, align 8, !alias.scope !5288, !noalias !5285, !nonnull !4, !noundef !4
  %i.am = load i64, ptr %i.p, align 8, !alias.scope !5288, !noalias !5285, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.am)
          to label %.noexc.i.i7.i.i.i.i unwind label %bb.p, !noalias !5291

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #43
          to label %common.resume.i.i.i unwind label %bb.u, !noalias !5292

.noexc.i.i7.i.i.i.i:                              ; preds = %bb.o
  %i.ao = load i64, ptr %i.m, align 8, !alias.scope !5293, !noalias !5296, !noundef !4 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i.i.i8.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i8.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc.i.i7.i.i.i.i
  %i.aq = load ptr, ptr %i.n, align 8, !alias.scope !5293, !noalias !5296, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %i.al, i64 %i.am, i1 false), !noalias !5291
  %.pre.i.i.i9.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !5293, !noalias !5296
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc.i.i7.i.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i9.i.i.i.i, %bb.q ], [ %i.ao, %.noexc.i.i7.i.i.i.i ]
  %i.at = add i64 %i.as, %i.am
  store i64 %i.at, ptr %i.m, align 8, !alias.scope !5293, !noalias !5296
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldRNtNtNtB10_11expressions7scalars6ScalarENtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNvXs_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB1P_10StructDataNtB3a_13PartitionsExt19hive_partition_path0NCINvXs0_NtCscVxtfYSVfE7_9itertools11intersperseINtB5h_15IntersperseWithINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB6J_B1N_EEB33_EINtB5h_24IntersperseElementSimpleB2q_EENtNtNtB8_6traits8iterator8Iterator4folduNCINvNvB85_8for_each4callB2q_NCINvXsk_B2s_B2q_INtNtB89_7collect6ExtendB2q_E6extendB5U_E0E0Es_0E0B3g_.exit.i.i unwind label %bb.s, !noalias !5292

bb.s:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.t, !noalias !5292

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5292
  unreachable

bb.u:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !5292
  unreachable

bb.v:                                             ; preds = %bb.l, %bb.i, %bb.g
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.ai, %bb.l ], [ %i.y, %bb.g ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #43
          to label %common.resume.i.i.i unwind label %bb.w, !noalias !5267

bb.w:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENCNCNvB1r_14execution_plan00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB3D_8try_folduNCINvNvB3D_12try_for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEINtNtNtBc_3ops12control_flow11ControlFlowB7m_ENcNtB81_5Break0E0B81_E0IB82_B81_EEB1z_:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !15144
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  store i64 %storemerge.i.i19.i, ptr %0, align 8, !alias.scope !15178, !noalias !15144
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.75.118.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !15178, !noalias !15144
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringjENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB65_B4p_EENCNCNvBN_14execution_plan00NCINvXB3s_INtB3s_12GenericShuntINtB3q_3MapB3_B6U_EIB44_NtNtBa_7convert10InfallibleB54_EEB2w_8try_folduNCINvNvB2w_12try_for_each4callB4p_B6J_NcNtB6J_5Break0E0B6J_E0E0B64_EBV_.exit

bb.ac:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringjENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4O_B38_EENCNCNvB14_14execution_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5D_EIB2N_NtNtBa_7convert10InfallibleB3N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7U_12try_for_each4callB38_B5s_NcNtB5s_5Break0E0B5s_E0E0B1c_.exit.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringjENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4O_B38_EENCNCNvB14_14execution_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5D_EIB2N_NtNtBa_7convert10InfallibleB3N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7U_12try_for_each4callB38_B5s_NcNtB5s_5Break0E0B5s_E0E0B1c_.exit.thread.i
  %.sroa.75.112.ph.i = phi i64 [ %i.ay, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringjENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4O_B38_EENCNCNvB14_14execution_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5D_EIB2N_NtNtBa_7convert10InfallibleB3N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7U_12try_for_each4callB38_B5s_NcNtB5s_5Break0E0B5s_E0E0B1c_.exit.i ], [ %.sroa.75.035.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextINtNtBa_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringjENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4O_B38_EENCNCNvB14_14execution_plan00NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5D_EIB2N_NtNtBa_7convert10InfallibleB3N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7U_12try_for_each4callB38_B5s_NcNtB5s_5Break0E0B5s_E0E0B1c_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.ba = icmp eq ptr %i.s, %i.n
  br i1 %i.ba, label %._crit_edge.i, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2C_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringjENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB65_B4p_EENCNCNvBN_14execution_plan00NCINvXB3s_INtB3s_12GenericShuntINtB3q_3MapB3_B6U_EIB44_NtNtBa_7convert10InfallibleB54_EEB2w_8try_folduNCINvNvB2w_12try_for_each4callB4p_B6J_NcNtB6J_5Break0E0B6J_E0E0B64_EBV_.exit: ; preds = %._crit_edge.i, %.loopexit26.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBY_B1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB54_3VecB4w_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !8, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBG_BR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ad, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.k, align 8, !noalias !15182, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.l = load i64, ptr %i.e, align 8, !noalias !15185, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !15185, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #39
          to label %.noexc.i unwind label %bb.f, !noalias !15182

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !15185, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.l ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !15185, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !15185, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !58, !invariant.load !4, !noalias !15185
  %i.x = add nsw i64 %i.w, -1
  %i.y = and i64 %i.x, -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !15188
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.u, ptr %i.ac, align 8, !noalias !15188
  %i.ad = add i64 %.val15.i, 1                    ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.j
  br i1 %i.af, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBG_BR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !15182
  resume { ptr, i32 } %i.ag

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesIBG_BR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ad, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !15182
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1o_EE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3X_8for_each4callRDNtNtB1s_5array5ArrayEL_NCINvMsj_B3l_IB3j_B50_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !8, !noundef !4
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecBR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_B4B_IB4z_B3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ad, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.k, align 8, !noalias !15195, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.l = load i64, ptr %i.e, align 8, !noalias !15198, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !15198, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #39
          to label %.noexc.i unwind label %bb.f, !noalias !15195

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val16.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !15198, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.l ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !15198, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !15198, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !58, !invariant.load !4, !noalias !15198
  %i.x = add nsw i64 %i.w, -1
  %i.y = and i64 %i.x, -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !15201
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.u, ptr %i.ac, align 8, !noalias !15201
  %i.ad = add i64 %.val15.i, 1                    ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.j
  br i1 %i.af, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecBR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_B4B_IB4z_B3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !15195
  resume { ptr, i32 } %i.ag

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1U_8adapters3map8map_foldRBQ_RDNtNtBV_5array5ArrayEL_uNCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecBR_EE0NCINvNvB1O_8for_each4callB3c_NCINvMsj_B4B_IB4z_B3c_E14extend_trustedINtB2E_3MapBF_B3B_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ad, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !15195
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB46_8for_each4callNtNtB1s_12table_source27TableProviderFilterPushDownNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB67_3VecB59_E14extend_trustedBN_E0E0EB2m_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6n_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload), "nonnull"(ptr %.sroa.62.0.copyload) ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.s, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.t, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %.val16.i = load ptr, ptr %i.l, align 8, !noalias !15208, !nonnull !4, !align !63, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15211
  %i.m = load i8, ptr %.sroa.62.0.copyload, align 1, !range !3, !noalias !15211, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  invoke void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan17process_predicate(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %.val16.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %.sroa.01.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.5.0.copyload, i1 noundef zeroext %i.n)
          to label %.noexc.i unwind label %bb.f, !noalias !15208

.noexc.i:                                         ; preds = %bb.c
  %i.o = load i8, ptr %i.k, align 8, !range !4997, !noalias !15211, !noundef !4
  %i.p = load i64, ptr %i.a, align 16, !range !15216, !alias.scope !15217, !noalias !15211, !noundef !4
  %i.q = icmp eq i64 %i.p, 16
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.a)
          to label %bb.e unwind label %bb.f, !noalias !15208

bb.e:                                             ; preds = %bb.d, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15211
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val15.i
  store i8 %i.o, ptr %i.r, align 1, !noalias !15222
  %i.s = add i64 %.val15.i, 1                     ; 2 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.j
  br i1 %i.u, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6n_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit, label %bb.c

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !15208
  resume { ptr, i32 } %i.v

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6n_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.s, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !15208
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB2g_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider25supports_filters_pushdown0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtNtB1s_12table_source27TableProviderFilterPushDownNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7a_3VecB6c_E14extend_trustedBN_E0E0EB2m_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB3W_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7q_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 2, i64 %i.e, i1 false), !noalias !15227
  %i.f = add i64 %.sroa.5.0.copyload, %i.e
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB3W_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7q_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_NtNtBV_12table_source27TableProviderFilterPushDownuNCNvXs0_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB3W_21DeltaCdfTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider25supports_filters_pushdown0NCINvNvB1B_8for_each4callB2Z_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7q_3VecB2Z_E14extend_trustedINtB2r_3MapBF_B3O_EE0E0E0EB42_.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.f, %bb.b ], [ %.sroa.5.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !15236
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtB1s_19interval_arithmetic8IntervalINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9L_5Break0E0B9L_E0IB9M_B9L_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [112 x i8], align 16    ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15240)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !15242, !noalias !15237, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !15242, !noalias !15237 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.4.56..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !alias.scope !15242, !noalias !15237
  %.val5.i = load ptr, ptr %i.g, align 8, !noalias !15245, !nonnull !4, !align !63, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15245
  call void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB2_12Distribution5range(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val5.i), !noalias !15246
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.a, align 16, !noalias !15246 ; 3 uses
  %i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 50
  br i1 %i.i, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8, !range !3294, !alias.scope !15249, !noalias !15252, !noundef !4
  %i.k = icmp eq i64 %i.j, 20
  br i1 %i.k, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i unwind label %bb.e, !noalias !15252

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15246
  resume { ptr, i32 } %i.l

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15245
  br label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.56..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !15245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.i.i.i, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15245
  %.not.i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 51
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.4.i.i.i, i64 112, i1 false), !noalias !15240
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.m = icmp eq ptr %i.h, %i.c
  br i1 %i.m, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %storemerge.i = phi i128 [ %.sroa.0.0.copyload.i.i, %.loopexit.i ], [ 51, %bb.a ], [ 51, %bb.f ]
  store i128 %storemerge.i, ptr %0, align 16, !alias.scope !15237, !noalias !15240
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5r_8try_folduNCINvNvB5r_12try_for_each4callNtNtB1s_19interval_arithmetic8IntervalINtNtNtBc_3ops12control_flow11ControlFlowB9a_ENcNtB9M_5Break0E0B9M_E0IB9N_B9M_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [112 x i8], align 16    ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15259)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !15261, !noalias !15256, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !15261, !noalias !15256 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtBO_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5m_B3K_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB2N_INtB2N_12GenericShuntINtB2L_3MapB3_B6b_EIB3p_NtNtBa_7convert10InfallibleB4l_EEB1R_8try_folduNCINvNvB1R_12try_for_each4callB3K_B60_NcNtB60_5Break0E0B60_E0E0B5l_ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.4.56..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.g = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.h, %bb.f ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !alias.scope !15261, !noalias !15256
  %.val5.i = load ptr, ptr %i.g, align 8, !noalias !15264, !nonnull !4, !align !63, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15264
  call void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB2_12Distribution5range(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val5.i), !noalias !15265
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.a, align 16, !noalias !15265 ; 3 uses
  %i.i = icmp eq i128 %.sroa.0.0.copyload.i.i, 50
  br i1 %i.i, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8, !range !3294, !alias.scope !15268, !noalias !15271, !noundef !4
  %i.k = icmp eq i64 %i.j, 20
  br i1 %i.k, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i unwind label %bb.e, !noalias !15271

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15265
  resume { ptr, i32 } %i.l

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionINtNtBa_6result6ResultNtNtB15_19interval_arithmetic8IntervalNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB46_B2t_EENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4V_EIB28_NtNtBa_7convert10InfallibleB35_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9F_12try_for_each4callB2t_B4K_NcNtB4K_5Break0E0B4K_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !15265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15264
  br label %.loopexit.i
end_hunk_3
begin_hunk_4_@_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB4_INtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters0ENCB27_s_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtBc_6option6OptionRB1l_EIB4I_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEINtNtCs6Po7BT7Nknu_5alloc3vec3VecB4H_EIB69_B59_EEB2j_:bb.a
bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB8_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB17_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB2Y_18LogicalPlanBuilder13join_detailedB1V_B1V_E0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtBc_6result6ResultB1V_NtNtB1Z_5error15DataFusionErrorEB5n_INtB1c_3VecB5n_EB6n_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !19058
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !19058
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !19058
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !19058
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !19058
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  invoke void @_RNvXs_NvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBc_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB23_5error15DataFusionErrorEEB16_EINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtB3N_3zip3ZipINtNtB19_9into_iter8IntoIterB1Z_EB4q_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB5a_18LogicalPlanBuilder13join_detailedB1Z_B1Z_E0EE6extendCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1E_5error15DataFusionErrorEEBH_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.b) #43
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00s_0ENtCscVxtfYSVfE7_9itertools9Itertools11try_collectNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1m_3vec3VecB4z_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2L_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations6update7execute00s_0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B4N_IB4L_INtNtB1B_3vec3VecB41_EB5x_EINtNtNtB4_6traits7collect12FromIteratorIB4L_B41_B5x_EE9from_iterBQ_E0B6O_EB30_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesENCNCNvXs0_NtNtB1p_10operations11add_featureNtB2F_22AddTableFeatureBuilderNtNtNtBc_6future11into_future10IntoFuture11into_future00ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtBc_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEB5f_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB5f_EB6G_EB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !19061
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !19061
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !19061
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !19061
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !19061
  invoke void @_RNvXs_NvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBc_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEB16_EINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesENCNCNvXs0_NtNtB4n_10operations11add_featureNtB5D_22AddTableFeatureBuilderNtNtNtBc_6future11into_future10IntoFuture11into_future00EE6extendB4n_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEBH_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.a) #43
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENCNCNvB1l_14execution_plan00ENtCscVxtfYSVfE7_9itertools9Itertools11try_collectTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEINtNtNtB4p_11collections9vec_deque8VecDequeB4k_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB1t_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENCNCNvB1A_14execution_plan00ETNtNtCs6Po7BT7Nknu_5alloc6string6StringjEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B4u_IB4s_INtNtNtB3R_11collections9vec_deque8VecDequeB3M_EB5e_EINtNtNtB4_6traits7collect12FromIteratorIB4s_B3M_B5e_EE9from_iterBQ_E0B6v_EB1I_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENCNCNvB1J_18get_data_scan_plan00ENtCscVxtfYSVfE7_9itertools9Itertools11try_collectTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBc_6option6OptionINtBW_3VecbEEEEIB7d_B4M_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB1R_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENCNCNvB1Y_18get_data_scan_plan00ETNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB6_6option6OptionINtB1b_3VecbEEEEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6X_IB6V_IB6F_B4e_EB7H_EINtNtNtB4_6traits7collect12FromIteratorIB6V_B4e_B7H_EE9from_iterBQ_E0B8Y_EB26_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionENCNCNCNvNtNtB2I_10operations6update7execute000ENtCscVxtfYSVfE7_9itertools9Itertools11try_collectTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtBU_7HashMapB5m_B5Y_ENtNtB1R_5error15DataFusionErrorEB2I_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionENCNCNCNvNtNtB2X_10operations6update7execute000ETNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB26_5error15DataFusionErrorENCINvXso_B6d_IB6b_INtB19_7HashMapB4O_B5q_EB6X_EINtNtNtB4_6traits7collect12FromIteratorIB6b_B4N_B6X_EE9from_iterBQ_E0B7L_EB2X_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0ENtCscVxtfYSVfE7_9itertools9Itertools11try_collectjINtNtCs6Po7BT7Nknu_5alloc3vec3VecjENtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEB2Q_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files15find_files_scan00s_0EjINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorENCINvXso_B4u_IB4s_INtNtCs6Po7BT7Nknu_5alloc3vec3VecjEB5e_EINtNtNtB4_6traits7collect12FromIteratorIB4s_jB5e_EE9from_iterBQ_E0B6l_EB35_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !8, !noundef !4 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !1168

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !3, !noundef !4
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !1168

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #39
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel19ExpressionEvaluatorEL_EE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.f = tail call { ptr, ptr } %i.e(), !inline_history !19064 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !8, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !1168

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !3, !noundef !4
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !1168

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #39
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !inline_history !19065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB8_4Scan18scan_metadata_fromINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB1L_IB1c_INtNtNtB1g_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4n_4Scan18scan_metadata_fromB2I_E0ENCB4g_s_0EEE0B4t_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.8.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !58, !invariant.load !4
  %i.d = add nsw i64 %i.c, -1
  %i.e = and i64 %i.d, -16
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.i(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core(ptr nonnull %1, ptr nonnull %2) #43
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.a, align 16, !range !236, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.k, -9223372036854775743
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 16             ; 2 uses
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.717.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %0, align 16
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.219.0..sroa_idx, align 8
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %.sroa.320.0..sroa_idx, align 16
  %i.p = load ptr, ptr %2, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.p(ptr noundef nonnull %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !57, !invariant.load !4 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !57, !invariant.load !4 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.g, %bb.k
  %.sink = phi i64 [ %i.ag, %bb.k ], [ %i.v, %bb.g ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.t, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !58, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %.sink, i64 noundef range(i64 1, 536870913) %i.y) #42
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.b, %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.t, %bb.g ], [ %i.j, %bb.b ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.z, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 -9223372036854775743, ptr %0, align 16
  %i.aa = load ptr, ptr %2, align 8, !invariant.load !4 ; 2 uses
  %.not.i30 = icmp eq ptr %i.aa, null
  br i1 %.not.i30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.aa(ptr noundef nonnull %1)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !57, !invariant.load !4 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit.sink.split

bb.k:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !57, !invariant.load !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit.sink.split: ; preds = %bb.j, %bb.f
  %.sink9 = phi i64 [ %i.r, %bb.f ], [ %i.ac, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !58, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %.sink9, i64 noundef range(i64 1, 536870913) %i.aj) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core.exit.sink.split, %bb.j, %bb.f
  ret void

bb.l:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB7_18LogicalPlanBuilder13join_detailedNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnB1G_E0Cs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(208) %0, ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(208) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [104 x i8], align 8               ; 4 uses
  %i.f = alloca [104 x i8], align 8               ; 4 uses
  %i.g = alloca [104 x i8], align 8               ; 4 uses
  %i.h = alloca [120 x i8], align 8               ; 6 uses
  %i.i = alloca [104 x i8], align 8               ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 4 uses
  %i.k = alloca [104 x i8], align 8               ; 8 uses
  %i.l = alloca [1 x i8], align 1                 ; 6 uses
  %i.m = alloca [104 x i8], align 8               ; 4 uses
  %i.n = alloca [104 x i8], align 8               ; 4 uses
  %i.o = alloca [104 x i8], align 8               ; 4 uses
  %i.p = alloca [104 x i8], align 8               ; 5 uses
  %i.q = alloca [104 x i8], align 8               ; 4 uses
  %i.r = alloca [104 x i8], align 8               ; 4 uses
  %i.s = alloca [104 x i8], align 8               ; 4 uses
  %i.t = alloca [104 x i8], align 8               ; 4 uses
  %i.u = alloca [104 x i8], align 8               ; 5 uses
  %i.v = alloca [80 x i8], align 8                ; 8 uses
  %i.w = alloca [40 x i8], align 8                ; 2 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %i.y = alloca [104 x i8], align 8               ; 4 uses
  %i.z = alloca [104 x i8], align 8               ; 4 uses
  %i.aa = alloca [104 x i8], align 8              ; 4 uses
  %i.ab = alloca [104 x i8], align 8              ; 5 uses
  %i.ac = alloca [104 x i8], align 8              ; 4 uses
  %i.ad = alloca [104 x i8], align 8              ; 4 uses
  %i.ae = alloca [104 x i8], align 8              ; 4 uses
  %i.af = alloca [104 x i8], align 8              ; 4 uses
  %i.ag = alloca [104 x i8], align 8              ; 5 uses
  %i.ah = alloca [80 x i8], align 8               ; 8 uses
  %i.ai = alloca [40 x i8], align 8               ; 2 uses
  %i.aj = alloca [40 x i8], align 8               ; 6 uses
  %i.ak = alloca [104 x i8], align 8              ; 4 uses
  %i.al = alloca [104 x i8], align 8              ; 4 uses
  %i.am = alloca [104 x i8], align 8              ; 4 uses
  %i.an = alloca [104 x i8], align 8              ; 5 uses
  %i.ao = alloca [160 x i8], align 8              ; 9 uses
  %i.ap = alloca [40 x i8], align 8               ; 2 uses
  %i.aq = alloca [40 x i8], align 8               ; 6 uses
  %i.ar = alloca [40 x i8], align 8               ; 6 uses
  %i.as = alloca [40 x i8], align 8               ; 6 uses
  %i.at = alloca [104 x i8], align 8              ; 24 uses
  %i.au = alloca [104 x i8], align 8              ; 25 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef nonnull align 8 dereferenceable(104) %i.av, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(104) %1, i64 104, i1 false), !alias.scope !19066
  %i.aw = load i64, ptr %i.au, align 8, !range !74, !noundef !4
  %.not = icmp eq i64 %i.aw, 3
  %i.ax = load i64, ptr %i.at, align 8, !range !74, !noundef !4
  %.not10 = icmp eq i64 %i.ax, 3                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %.thread12, %.thread27
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn.pn16, %.thread12 ], [ %.pn31.pn.pn.pn, %.thread27 ] ; 2 uses
  %.sroa.07.0 = phi i1 [ %.sroa.07.117, %.thread12 ], [ %.sroa.07.1, %.thread27 ]
  br i1 %.sroa.07.0, label %.thread4, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not10, label %bb.aw, label %bb.av

bb.d:                                             ; preds = %bb.a
  br i1 %.not10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ay = load ptr, ptr %.0.val, align 8, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.az)
          to label %bb.x unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
end_hunk_4
begin_hunk_5_@_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueINtNtBa_6result6ResultINtNtBa_6option6OptionyENtNtB13_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B2g_EENCINvMs3_B11_BZ_13iter_to_arrayINtB4_3MapINtNtNtBa_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB5c_11transaction5stateNtB6g_12AddContainerNtNtB13_7pruning17PruningStatistics11null_counts0EEsh_0NCINvXB6_INtB6_12GenericShuntIB4x_INtNtB6_8peekable8PeekableB4w_EB41_EIB1V_NtNtBa_7convert10InfallibleB2E_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9E_12try_for_each4callB2g_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0B5e_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20706
  store ptr %.val, ptr %i.d, align 8, !noalias !20706
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !20706
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.p, align 8, !noalias !20706
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsh_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !20706
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @202, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !20704

.body31.i:                                        ; preds = %bb.k, %.body.i, %bb.c
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.q, %bb.c ], [ %i.ad, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.h) #43
          to label %common.resume unwind label %bb.m, !noalias !20704

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i30.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !20706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20706
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %bb.d, !noalias !20704

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.r, %bb.d ], [ %i.ab, %bb.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #43
          to label %.body31.i unwind label %bb.m, !noalias !20704

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.f, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.e:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.s = load i64, ptr %i.a, align 8, !range !18, !noalias !20706, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !56, !noalias !20706, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g, !prof !1168

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.w, align 8, !noalias !20706
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #47
          to label %bb.n unwind label %bb.d, !noalias !20704

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.w, align 8, !noalias !20706, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20706
  store i64 %i.v, ptr %i.c, align 8, !noalias !20706
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.y, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !20706
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !20706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20706
  store ptr %i.f, ptr %i.b, align 8, !noalias !20706
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !20706
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.z, align 8, !noalias !20706
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !20706
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @200, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit28.i unwind label %bb.h, !noalias !20704

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %.body.i unwind label %bb.m, !noalias !20704

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit28.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20706
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.i, !noalias !20704

bb.i:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit28.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.j, !noalias !20704

bb.j:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !20704
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit28.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d, !noalias !20704

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20706
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i30.i unwind label %bb.k, !noalias !20704

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body31.i unwind label %bb.l, !noalias !20704

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !20704
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i30.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.o unwind label %bb.c, !noalias !20704

bb.m:                                             ; preds = %bb.h, %.body.i, %.body31.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !20704
  unreachable

bb.n:                                             ; preds = %bb.f
  unreachable

common.resume:                                    ; preds = %.body31.i, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %.pn.pn.i, %.body31.i ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !20706
  %i.ag = load <2 x i64>, ptr %i.g, align 16, !noalias !20701 ; 3 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ah = load i64, ptr %.sroa.9.8..sroa_idx, align 16, !noalias !20701 ; 2 uses
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.h), !noalias !20704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ai = load i64, ptr %.8.val, align 8, !range !3294, !alias.scope !20707, !noalias !20710, !noundef !4
  %i.aj = icmp eq i64 %i.ai, 20
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.8.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.q, !noalias !20710

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i64 10, ptr %.8.val, align 8, !noalias !20710
  %.sroa.5.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.al = extractelement <2 x i64> %i.ag, i64 0
  store i64 %i.al, ptr %.sroa.5.0..8.val.sroa_idx.i, align 8, !noalias !20710
  %.sroa.612.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.am = extractelement <2 x i64> %i.ag, i64 1
  store i64 %i.am, ptr %.sroa.612.0..8.val.sroa_idx.i, align 8, !noalias !20710
  %.sroa.7.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  store i64 %i.ah, ptr %.sroa.7.0..8.val.sroa_idx.i, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.p, %bb.o
  store i64 10, ptr %.8.val, align 8, !noalias !20710
  %.sroa.5.0..8.val.sroa_idx10.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  store <2 x i64> %i.ag, ptr %.sroa.5.0..8.val.sroa_idx10.i, align 8, !noalias !20710
  %.sroa.7.0..8.val.sroa_idx15.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  store i64 %i.ah, ptr %.sroa.7.0..8.val.sroa_idx15.i, align 8
  br label %_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtB5_8peekable8PeekableIB11_INtNtNtB9_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2h_11transaction5stateNtB3l_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB4a_6scalarNtB5x_11ScalarValue13iter_to_arrayB1G_Esh_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB4a_5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callINtNtB9_6option6OptionyEINtNtNtB9_3ops12control_flow11ControlFlowB8Y_ENcNtB9m_5Break0E0B9m_E0B2j_.exit

_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtB5_8peekable8PeekableIB11_INtNtNtB9_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2h_11transaction5stateNtB3l_12AddContainerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts0EENCINvMs3_NtB4a_6scalarNtB5x_11ScalarValue13iter_to_arrayB1G_Esh_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB4a_5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7M_12try_for_each4callINtNtB9_6option6OptionyEINtNtNtB9_3ops12control_flow11ControlFlowB8Y_ENcNtB9m_5Break0E0B9m_E0B2j_.exit: ; preds = %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2G_11transaction5stateNtB3K_12AddContainerNtNtBa_7pruning17PruningStatistics11null_counts0EEsh_0B2I_.exit.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.4.1.i = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.o, %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2G_11transaction5stateNtB3K_12AddContainerNtNtBa_7pruning17PruningStatistics11null_counts0EEsh_0B2I_.exit.thread ]
  %.sroa.0.1.i = phi i64 [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.m, %_RNCINvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB8_11ScalarValue13iter_to_arrayINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNvXs_NtNtB2G_11transaction5stateNtB3K_12AddContainerNtNtBa_7pruning17PruningStatistics11null_counts0EEsh_0B2I_.exit.thread ]
  %i.an = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i, 0
  %i.ao = insertvalue { i64, i64 } %i.an, i64 %.sroa.4.1.i, 1
  ret { i64, i64 } %i.ao
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0EB4d_EE0NCINvNtB6_6filter15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB6q_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB6q_NCNvYIB4e_INtB5x_6FilterIB4e_B3T_B2E_EB68_EB77_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core(ptr %.8.val, ptr nofree readonly captures(none) %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20713)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i = load i64, ptr %i.e, align 8, !alias.scope !20713, !noundef !4
  %.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20723)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.16.val) ]
  %i.f = load ptr, ptr %.16.val, align 8, !noalias !20726, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.16.val, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !20726, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.8.val, i64 noundef %i.h)
          to label %.noexc19.i.i.i.i.i unwind label %bb.d, !noalias !20726

.noexc19.i.i.i.i.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !20727, !noalias !20726, !noundef !4 ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc19.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20727, !noalias !20726, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.f, i64 %i.h, i1 false), !noalias !20726
  %.pre.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !20727, !noalias !20726
  br label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %common.resume.i unwind label %bb.k, !noalias !20716

bb.e:                                             ; preds = %bb.c, %.noexc19.i.i.i.i.i
  %i.p = phi i64 [ %.pre.i.i.i.i.i.i, %bb.c ], [ %i.j, %.noexc19.i.i.i.i.i ]
  %i.q = add i64 %i.p, %i.h
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !20727, !noalias !20726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20726
  store ptr %i.c, ptr %i.b, align 8, !noalias !20726
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsb_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20726
  %i.r = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.8.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @307, ptr noundef nonnull @273, ptr noundef nonnull %i.b)
          to label %bb.f unwind label %bb.d, !noalias !20716

bb.f:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.g, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, !prof !1168

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #47
          to label %.noexc.i.i.i.i.i unwind label %bb.d, !noalias !20716

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20726
  %i.s = load i64, ptr %i.c, align 8, !range !56, !alias.scope !20730, !noalias !20716, !noundef !4
  %i.t = icmp eq i64 %i.s, -9223372036854775808
  br i1 %i.t, label %bb.p, label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i unwind label %bb.i, !noalias !20716

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.j, !noalias !20716

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !20716
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !20713
  br label %bb.p

bb.k:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !20716
  unreachable

bb.l:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.d, align 8, !range !56, !alias.scope !20733, !noundef !4
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B19_NtB19_4PathINtNtNtB8_6traits7collect12FromIteratorB15_E9from_iterINtNtB6_5chain5ChainINtNtB6_3map3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB19_B2U_5parts0EB4h_EEs_0NCINvB4k_12map_try_foldB15_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1Y_NCB2J_s0_0NCINvMs0_B21_B1Y_10wrap_mut_2uB65_NCINvNvNtNtB3a_8iterator8Iterator8for_each4callB65_NCNvYIB4i_INtB4_6FilterIB4i_B3X_NCB2J_0EB2H_EB6M_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume.i:                                  ; preds = %bb.n, %bb.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.o, %bb.d ], [ %i.u, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.m
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B19_NtB19_4PathINtNtNtB8_6traits7collect12FromIteratorB15_E9from_iterINtNtB6_5chain5ChainINtNtB6_3map3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB19_B2U_5parts0EB4h_EEs_0NCINvB4k_12map_try_foldB15_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1Y_NCB2J_s0_0NCINvMs0_B21_B1Y_10wrap_mut_2uB65_NCINvNvNtNtB3a_8iterator8Iterator8for_each4callB65_NCNvYIB4i_INtB4_6FilterIB4i_B3X_NCB2J_0EB2H_EB6M_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20716
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B19_NtB19_4PathINtNtNtB8_6traits7collect12FromIteratorB15_E9from_iterINtNtB6_5chain5ChainINtNtB6_3map3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB19_B2U_5parts0EB4h_EEs_0NCINvB4k_12map_try_foldB15_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1Y_NCB2J_s0_0NCINvMs0_B21_B1Y_10wrap_mut_2uB65_NCINvNvNtNtB3a_8iterator8Iterator8for_each4callB65_NCNvYIB4i_INtB4_6FilterIB4i_B3X_NCB2J_0EB2H_EB6M_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartuINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B19_NtB19_4PathINtNtNtB8_6traits7collect12FromIteratorB15_E9from_iterINtNtB6_5chain5ChainINtNtB6_3map3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB19_B2U_5parts0EB4h_EEs_0NCINvB4k_12map_try_foldB15_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1Y_NCB2J_s0_0NCINvMs0_B21_B1Y_10wrap_mut_2uB65_NCINvNvNtNtB3a_8iterator8Iterator8for_each4callB65_NCNvYIB4i_INtB4_6FilterIB4i_B3X_NCB2J_0EB2H_EB6M_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtBc_3map3MapINtBa_7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB2D_5array15byte_view_array20GenericByteViewArrayNtNtB2D_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB4Z_16MatchedFilesScan9files_set00EuNCINvB27_8map_foldNtNtCs6Po7BT7Nknu_5alloc6string6StringTB6V_uEuNCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB7O_7HashSetB6V_EINtNtB1n_7collect6ExtendB6V_E6extendINtBa_7FlatMapINtNtNtBg_5slice4iter4IterB3o_EB24_NCB4T_0EE0NCINvNvB1j_8for_each4callB7x_NCINvXs1l_NtB7Q_3mapINtBaM_7HashMapB6V_uEIB8D_B7x_E6extendIB25_B9c_B7F_EE0E0E0E0B53_(ptr %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20741)
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !20744 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20745
  %.not.i.i.i = icmp eq ptr %.sroa.3.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1q_5array15byte_view_array20GenericByteViewArrayNtNtB1q_5types14StringViewTypeEEENCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB3M_16MatchedFilesScan9files_set00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldNtNtCs6Po7BT7Nknu_5alloc6string6StringTB6l_uEuNCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB7e_7HashSetB6l_EINtNtB5t_7collect6ExtendB6l_E6extendINtB10_7FlatMapINtNtNtBc_5slice4iter4IterB2b_EBN_NCB3G_0EE0NCINvNvB5p_8for_each4callB6X_NCINvXs1l_NtB7g_3mapINtBac_7HashMapB6l_uEIB83_B6X_E6extendIBO_B8C_B75_EE0E0E0EB3Q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.3.0.copyload.i.i, ptr %i.d, align 8, !noalias !20745
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx2.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20748)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !20751, !noalias !20754, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !20751, !noalias !20754, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %_RNvXs_NtCs1N9T06jgEdt_11arrow_array8iteratorINtB4_9ArrayIterRINtNtNtB6_5array15byte_view_array20GenericByteViewArrayNtNtB6_5types14StringViewTypeEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten11flatten_oneINtNtBa_6option6OptionReEuNCINvNtB6_3map8map_foldB1o_NtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB2G_16MatchedFilesScan9files_set00QNCIB1v_B1T_TB1T_uEuNCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB4L_7HashSetB1T_EINtNtNtB8_6traits7collect6ExtendB1T_E6extendINtB4_7FlatMapINtNtNtBa_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB72_5types14StringViewTypeEEINtB1x_3MapINtB4_7FlattenINtNtB72_8iterator9ArrayIterRB6V_EEB2w_ENCB2A_0EE0NCINvNvNtNtB5E_8iterator8Iterator8for_each4callB4u_NCINvXs1l_NtB4N_3mapINtBaU_7HashMapB1T_uEIB5A_B4u_E6extendIB8J_B6h_B4C_EE0E0E0E0E0B2K_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.r = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ %i.ez, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten11flatten_oneINtNtBa_6option6OptionReEuNCINvNtB6_3map8map_foldB1o_NtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB2G_16MatchedFilesScan9files_set00QNCIB1v_B1T_TB1T_uEuNCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB4L_7HashSetB1T_EINtNtNtB8_6traits7collect6ExtendB1T_E6extendINtB4_7FlatMapINtNtNtBa_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB72_5types14StringViewTypeEEINtB1x_3MapINtB4_7FlattenINtNtB72_8iterator9ArrayIterRB6V_EEB2w_ENCB2A_0EE0NCINvNvNtNtB5E_8iterator8Iterator8for_each4callB4u_NCINvXs1l_NtB4N_3mapINtBaU_7HashMapB1T_uEIB5A_B4u_E6extendIB8J_B6h_B4C_EE0E0E0E0E0B2K_.exit.i.i.i.i ]
  %i.s = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.fa, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten11flatten_oneINtNtBa_6option6OptionReEuNCINvNtB6_3map8map_foldB1o_NtNtCs6Po7BT7Nknu_5alloc6string6StringuNCNCNvMs1_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_filesNtB2G_16MatchedFilesScan9files_set00QNCIB1v_B1T_TB1T_uEuNCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB4L_7HashSetB1T_EINtNtNtB8_6traits7collect6ExtendB1T_E6extendINtB4_7FlatMapINtNtNtBa_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB72_5types14StringViewTypeEEINtB1x_3MapINtB4_7FlattenINtNtB72_8iterator9ArrayIterRB6V_EEB2w_ENCB2A_0EE0NCINvNvNtNtB5E_8iterator8Iterator8for_each4callB4u_NCINvXs1l_NtB4N_3mapINtBaU_7HashMapB1T_uEIB5A_B4u_E6extendIB8J_B6h_B4C_EE0E0E0E0E0B2K_.exit.i.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20757)
  call void @llvm.experimental.noalias.scope.decl(metadata !20759)
  %i.t = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !alias.scope !20762, !noalias !20754, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.j, align 8, !alias.scope !20762, !noalias !20754, !noundef !4
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, label %bb.e, !prof !1200

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @316, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #39
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !20763

.noexc.i.i.i.i:                                   ; preds = %bb.e
  unreachable

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.d
  %i.w = load ptr, ptr %i.k, align 8, !alias.scope !20762, !noalias !20754, !noundef !4
  %i.x = load i64, ptr %i.l, align 8, !alias.scope !20762, !noalias !20754, !noundef !4
  %i.y = add i64 %i.x, %i.s                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !20764, !noundef !4
  %i.ac = trunc i64 %i.y to i8
  %i.ad = and i8 %i.ac, 7
  %i.ae = xor i8 %i.ab, -1
  %i.af = lshr i8 %i.ae, %i.ad
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %.thread.i.i.i.i, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i

_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i: ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.c
  %i.ah = add i64 %i.s, 1
  store i64 %i.ah, ptr %i.e, align 8, !alias.scope !20765, !noalias !20754
  %i.ai = invoke { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayRINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d, i64 noundef %i.s)
          to label %bb.h unwind label %.loopexit.i.i.i.i, !noalias !20763 ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21403
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.o) #46
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e, !noalias !21399, !inline_history !21406

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 1400, i64 noundef 8) #42, !noalias !21399, !inline_history !21402
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false), !noalias !21403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21403
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  store i8 1, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i8, ptr %i.r, align 2, !range !1086, !noundef !4
  %.val1 = load i8, ptr %i.s, align 1, !range !2318, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21407)
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core(), !noalias !21407, !inline_history !21410 ; 4 uses
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !21407, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21411
  invoke fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2696) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.v) #46
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g, !noalias !21407, !inline_history !21414

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 2696, i64 noundef 8) #42, !noalias !21407, !inline_history !21410
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2696) %i.u, ptr noundef nonnull align 8 dereferenceable(2696) %i.c, i64 2696, i1 false), !noalias !21411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21411
  store ptr %i.u, ptr %i.f, align 8
  %i.y = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.x unwind label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21418)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !3, !alias.scope !21418, !noalias !21415, !noundef !4
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %i.ab, ptr %i.ac, align 8, !alias.scope !21415, !noalias !21418
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i8 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ae) #46
  store i8 4, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ag) #46
  store i8 5, ptr %0, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ai) #46
  store i8 6, ptr %0, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ak) #46
  store i8 7, ptr %0, align 8
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.am, align 8           ; 4 uses
  %i.an = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21420)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21426
  %i.ao = load i64, ptr %.val2, align 8, !range !56, !alias.scope !21428, !noalias !21429, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2)
          to label %.noexc.i unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  store i64 -9223372036854775808, ptr %i.b, align 8, !noalias !21426
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !56, !alias.scope !21428, !noalias !21429, !noundef !4
  %.not4.i.i.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not4.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, label %bb.p

bb.p:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21426
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.r unwind label %bb.q, !noalias !21429

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #43
          to label %bb.u unwind label %bb.s, !noalias !21429

bb.r:                                             ; preds = %bb.p
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.a, align 8, !noalias !21426
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !21420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21426
  br label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !21429
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.t ], [ %i.ar, %bb.q ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 48, i64 noundef 8) #42
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc.i, %bb.r
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.r ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !21428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !noalias !21420
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !21420
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !21420
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.au, align 8
  store i8 8, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.w:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.f) #43
          to label %common.resume unwind label %bb.y

bb.x:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.val, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val1, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %i.az, align 8
  store i8 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21433)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !21430, !noalias !21433, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !21433, !noalias !21430, !noundef !4
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !21433, !noalias !21430, !nonnull !4, !noundef !4
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !21430, !noalias !21433, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.c), !noalias !21435
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.p = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
  br i1 %i.p, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val3) ]
  %i.q = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.q, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.g ], [ true, %bb.d ], [ %i.be, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21439)
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !21436, !noalias !21439, !nonnull !4, !noundef !4 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !21439, !noalias !21436, !nonnull !4, !noundef !4 ; 4 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21444)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !21441, !noalias !21446, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !21444, !noalias !21447, !noundef !4
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !21444, !noalias !21447, !nonnull !4, !noundef !4
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !21441, !noalias !21446, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i64 noundef %i.x), !noalias !21448
  br i1 %i.ah, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ak = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj), !noalias !21449
  br i1 %i.ak, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !21436, !noalias !21439, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !21439, !noalias !21436, !noundef !4
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !21439, !noalias !21436, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !21436, !noalias !21439, !nonnull !4, !noundef !4
  %i.au = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, i64 noundef %i.am), !noalias !21449
  br i1 %i.au, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !21436, !noalias !21439, !noundef !4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !21439, !noalias !21436, !noundef !4
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !21439, !noalias !21436, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !21436, !noalias !21439, !nonnull !4, !noundef !4
  %i.be = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bb, i64 noundef %i.aw), !noalias !21449
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1T_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterConnectorOwnerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) initializes((0, 68)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %.sroa.01 = alloca [56 x i8], align 8           ; 5 uses
  %.sroa.0 = alloca [56 x i8], align 8            ; 5 uses
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.g = load i32, ptr %i.d, align 8, !range !11023, !noundef !4
  %.sroa.01.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.01, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.h = load i32, ptr %i.d, align 8, !range !11023, !noundef !4
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink4 = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink4, ptr %i.i, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1V_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #46
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !4
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not6 = icmp eq ptr %i.g, null
  br i1 %.not6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.1 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.04.0 = load i64, ptr %.sroa.04.0.in, align 8, !noundef !4
  %i.h = add i64 %.sroa.04.0, %i.e
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 -1, 4611686018427387903) i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = lshr i64 %i.b, 2
  %i.d = add nsw i64 %i.c, -1
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array5nullsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEENtB7_5Array6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #11 {
bb.a:
end_hunk_6
begin_hunk_7_@_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtBb_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB1Y_5error5ErrorEIB1z_NtNtB1Y_4scan12ScanMetadataB2Q_EuINtNtB9_12control_flow11ControlFlowB3b_ENCINvYNtNtB3i_10log_replay22ScanLogReplayProcessorNtB1W_18LogReplayProcessor20process_actions_iterINtNtBV_5chain5ChainNtNtNtB1Y_10log_reader6commit12CommitReaderINtBT_3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB73_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBX_6traits8iterator8Iteratorp4ItemIB1z_IB87_DNtNtB1Y_11engine_data10EngineDataEL_EB2Q_ENtNtBb_6marker4SendEL_ENCNvMNtB1Y_11log_segmentNtBaD_10LogSegment24create_checkpoint_streams_0EINtNtNtB7h_8adaptors3map14MapSpecialCaseIB62_INtNtNtBX_7sources4once4OnceB9k_EINtNtBV_7flatten7FlattenINtNtBb_6option8IntoIterB86_EEEINtBbL_18MapSpecialCaseFnOkNCNCBaA_s_00EEB2Q_ENCBaA_s0_0EEE0NCINvNvB8G_4find5checkB3b_QNCB4t_s_0E0E0INtB7_5FnMutTuB1y_EE8call_mutCs14kWLkQVSKO_14deltalake_core:bb.a

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvYNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorNtNtB10_10log_replay18LogReplayProcessor20process_actions_iterINtNtNtNtBb_4iter8adapters5chain5ChainNtNtNtB10_10log_reader6commit12CommitReaderINtNtB3c_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB4r_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB3e_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB5C_DNtNtB10_11engine_data10EngineDataEL_ENtNtB10_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB10_11log_segmentNtB8G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4M_8adaptors3map14MapSpecialCaseIB38_INtNtNtB3e_7sources4once4OnceB6Q_EINtNtB3c_7flatten7FlattenINtNtBb_6option8IntoIterB5B_EEEINtB9O_18MapSpecialCaseFnOkNCNCB8D_s_00EEB7T_ENCB8D_s0_0EEEs_0INtB7_5FnMutTRIB6R_NtBY_12ScanMetadataB7T_EEE8call_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  br i1 %i.i, label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvYNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorNtNtB10_10log_replay18LogReplayProcessor20process_actions_iterINtNtNtNtBb_4iter8adapters5chain5ChainNtNtNtB10_10log_reader6commit12CommitReaderINtNtB3c_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB4r_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB3e_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB5C_DNtNtB10_11engine_data10EngineDataEL_ENtNtB10_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB10_11log_segmentNtB8G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4M_8adaptors3map14MapSpecialCaseIB38_INtNtNtB3e_7sources4once4OnceB6Q_EINtNtB3c_7flatten7FlattenINtNtBb_6option8IntoIterB5B_EEEINtB9O_18MapSpecialCaseFnOkNCNCB8D_s_00EEB7T_ENCB8D_s0_0EEEs_0INtB7_5FnMutTRIB6R_NtBY_12ScanMetadataB7T_EEE8call_mutCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvYNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorNtNtB10_10log_replay18LogReplayProcessor20process_actions_iterINtNtNtNtBb_4iter8adapters5chain5ChainNtNtNtB10_10log_reader6commit12CommitReaderINtNtB3c_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB4r_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB3e_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB5C_DNtNtB10_11engine_data10EngineDataEL_ENtNtB10_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB10_11log_segmentNtB8G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4M_8adaptors3map14MapSpecialCaseIB38_INtNtNtB3e_7sources4once4OnceB6Q_EINtNtB3c_7flatten7FlattenINtNtBb_6option8IntoIterB5B_EEEINtB9O_18MapSpecialCaseFnOkNCNCB8D_s_00EEB7T_ENCB8D_s0_0EEEs_0INtB7_5FnMutTRIB6R_NtBY_12ScanMetadataB7T_EEE8call_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i
  store i64 -9223372036854775742, ptr %0, align 16, !alias.scope !21586, !noalias !21587
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtB16_5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.b), !noalias !21585
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB1p_5error5ErrorEIB10_NtNtB1p_4scan12ScanMetadataB2h_EuINtNtNtBa_3ops12control_flow11ControlFlowB2C_ENCINvYNtNtB2J_10log_replay22ScanLogReplayProcessorNtB1n_18LogReplayProcessor20process_actions_iterINtNtB6_5chain5ChainNtNtNtB1p_10log_reader6commit12CommitReaderINtB4_3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB6A_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemIB10_IB7E_DNtNtB1p_11engine_data10EngineDataEL_EB2h_ENtNtBa_6marker4SendEL_ENCNvMNtB1p_11log_segmentNtBaa_10LogSegment24create_checkpoint_streams_0EINtNtNtB6O_8adaptors3map14MapSpecialCaseIB5z_INtNtNtB8_7sources4once4OnceB8R_EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterB7D_EEEINtBbi_18MapSpecialCaseFnOkNCNCBa7_s_00EEB2h_ENCBa7_s0_0EEE0NCINvNvB8d_4find5checkB2C_QNCB40_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvYNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorNtNtB10_10log_replay18LogReplayProcessor20process_actions_iterINtNtNtNtBb_4iter8adapters5chain5ChainNtNtNtB10_10log_reader6commit12CommitReaderINtNtB3c_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB4r_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB3e_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB5C_DNtNtB10_11engine_data10EngineDataEL_ENtNtB10_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB10_11log_segmentNtB8G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4M_8adaptors3map14MapSpecialCaseIB38_INtNtNtB3e_7sources4once4OnceB6Q_EINtNtB3c_7flatten7FlattenINtNtBb_6option8IntoIterB5B_EEEINtB9O_18MapSpecialCaseFnOkNCNCB8D_s_00EEB7T_ENCB8D_s0_0EEEs_0INtB7_5FnMutTRIB6R_NtBY_12ScanMetadataB7T_EEE8call_mutCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvYNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorNtNtB10_10log_replay18LogReplayProcessor20process_actions_iterINtNtNtNtBb_4iter8adapters5chain5ChainNtNtNtB10_10log_reader6commit12CommitReaderINtNtB3c_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB4r_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB3e_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB5C_DNtNtB10_11engine_data10EngineDataEL_ENtNtB10_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB10_11log_segmentNtB8G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4M_8adaptors3map14MapSpecialCaseIB38_INtNtNtB3e_7sources4once4OnceB6Q_EINtNtB3c_7flatten7FlattenINtNtBb_6option8IntoIterB5B_EEEINtB9O_18MapSpecialCaseFnOkNCNCB8D_s_00EEB7T_ENCB8D_s0_0EEEs_0INtB7_5FnMutTRIB6R_NtBY_12ScanMetadataB7T_EEE8call_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCINvYNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorNtNtBb_10log_replay18LogReplayProcessor20process_actions_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainNtNtNtBb_10log_reader6commit12CommitReaderINtNtB2m_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB3Q_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB2o_6traits8iterator8Iteratorp4ItemINtNtB2q_6result6ResultIB51_DNtNtBb_11engine_data10EngineDataEL_ENtNtBb_5error5ErrorENtNtB2q_6marker4SendEL_ENCNvMNtBb_11log_segmentNtB85_10LogSegment24create_checkpoint_streams_0EINtNtNtB4b_8adaptors3map14MapSpecialCaseIB2i_INtNtNtB2o_7sources4once4OnceB6f_EINtNtB2m_7flatten7FlattenINtNtB2q_6option8IntoIterB50_EEEINtB9c_18MapSpecialCaseFnOkNCNCB82_s_00EEB7i_ENCB82_s0_0EEE0Cs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !21561
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB1p_5error5ErrorEIB10_NtNtB1p_4scan12ScanMetadataB2h_EuINtNtNtBa_3ops12control_flow11ControlFlowB2C_ENCINvYNtNtB2J_10log_replay22ScanLogReplayProcessorNtB1n_18LogReplayProcessor20process_actions_iterINtNtB6_5chain5ChainNtNtNtB1p_10log_reader6commit12CommitReaderINtB4_3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB6A_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemIB10_IB7E_DNtNtB1p_11engine_data10EngineDataEL_EB2h_ENtNtBa_6marker4SendEL_ENCNvMNtB1p_11log_segmentNtBaa_10LogSegment24create_checkpoint_streams_0EINtNtNtB6O_8adaptors3map14MapSpecialCaseIB5z_INtNtNtB8_7sources4once4OnceB8R_EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterB7D_EEEINtBbi_18MapSpecialCaseFnOkNCNCBa7_s_00EEB2h_ENCBa7_s0_0EEE0NCINvNvB8d_4find5checkB2C_QNCB40_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !21585
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtBa_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_replay12ActionsBatchNtNtB1p_5error5ErrorEIB10_NtNtB1p_4scan12ScanMetadataB2h_EuINtNtNtBa_3ops12control_flow11ControlFlowB2C_ENCINvYNtNtB2J_10log_replay22ScanLogReplayProcessorNtB1n_18LogReplayProcessor20process_actions_iterINtNtB6_5chain5ChainNtNtNtB1p_10log_reader6commit12CommitReaderINtB4_3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB6A_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemIB10_IB7E_DNtNtB1p_11engine_data10EngineDataEL_EB2h_ENtNtBa_6marker4SendEL_ENCNvMNtB1p_11log_segmentNtBaa_10LogSegment24create_checkpoint_streams_0EINtNtNtB6O_8adaptors3map14MapSpecialCaseIB5z_INtNtNtB8_7sources4once4OnceB8R_EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterB7D_EEEINtBbi_18MapSpecialCaseFnOkNCNCBa7_s_00EEB2h_ENCBa7_s0_0EEE0NCINvNvB8d_4find5checkB2C_QNCB40_s_0E0E0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvYNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay22ScanLogReplayProcessorNtNtB10_10log_replay18LogReplayProcessor20process_actions_iterINtNtNtNtBb_4iter8adapters5chain5ChainNtNtNtB10_10log_reader6commit12CommitReaderINtNtB3c_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB4r_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB3e_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB5C_DNtNtB10_11engine_data10EngineDataEL_ENtNtB10_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB10_11log_segmentNtB8G_10LogSegment24create_checkpoint_streams_0EINtNtNtB4M_8adaptors3map14MapSpecialCaseIB38_INtNtNtB3e_7sources4once4OnceB6Q_EINtNtB3c_7flatten7FlattenINtNtBb_6option8IntoIterB5B_EEEINtB9O_18MapSpecialCaseFnOkNCNCB8D_s_00EEB7T_ENCB8D_s0_0EEEs_0INtB7_5FnMutTRIB6R_NtBY_12ScanMetadataB7T_EEE8call_mutCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21563
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4P_B35_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5F_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB29_8MapEntryEIB9p_B1y_ENCB5A_0EB5y_EIB2K_NtNtBb_7convert10InfallibleB3O_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBbb_12try_for_each4callB35_B5n_NcNtB5n_5Break0E0B5n_E0E0INtB7_5FnMutTuB1y_EE8call_mutB6K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 5 uses
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21591)
  %i.f = load ptr, ptr %.val1, align 8, !alias.scope !21591, !noalias !21594, !nonnull !4, !align !8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %2, i64 328, i1 false), !noalias !21599
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !21591, !noalias !21594, !nonnull !4, !align !8, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !21591, !noalias !21594, !nonnull !4, !align !8, !noundef !4
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24sql_expr_to_logical_exprB18_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.j)
          to label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0B1a_.exit.i unwind label %bb.b, !noalias !21600

common.resume.i:                                  ; preds = %bb.f, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %2, i64 noundef 328, i64 noundef 8) #42, !noalias !21599
  br label %common.resume.i

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0B1a_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21598
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %2, i64 noundef 328, i64 noundef 8) #42, !noalias !21599
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !21600 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21601)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0B1a_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.m = load i64, ptr %.val, align 8, !range !3294, !alias.scope !21604, !noalias !21607, !noundef !4
  %i.n = icmp eq i64 %i.m, 20
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.f, !noalias !21607

bb.e:                                             ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0B1a_.exit.i
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !21600
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i64 64, i1 false), !noalias !21600
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 16, !alias.scope !21609, !noalias !21610
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.416.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i, i64 104, i1 false), !noalias !21610
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B2w_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5c_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtB14_3vec9into_iter8IntoIterNtB1A_8MapEntryEIB8W_BZ_ENCB57_0EB55_EIB2b_NtNtBa_7convert10InfallibleB3f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaH_12try_for_each4callB2w_B4U_NcNtB4U_5Break0E0B4U_E0E0B6h_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !21600
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false), !noalias !21600
  store i64 37, ptr %0, align 16, !alias.scope !21609, !noalias !21610
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B2w_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5c_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtB14_3vec9into_iter8IntoIterNtB1A_8MapEntryEIB8W_BZ_ENCB57_0EB55_EIB2b_NtNtBa_7convert10InfallibleB3f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaH_12try_for_each4callB2w_B4U_NcNtB4U_5Break0E0B4U_E0E0B6h_.exit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B2w_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5c_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE20try_plan_map_literals_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_7flatten7FlatMapINtNtNtB14_3vec9into_iter8IntoIterNtB1A_8MapEntryEIB8W_BZ_ENCB57_0EB55_EIB2b_NtNtBa_7convert10InfallibleB3f_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaH_12try_for_each4callB2w_B4U_NcNtB4U_5Break0E0B4U_E0E0B6h_.exit: ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartB1y_uINtNtB9_12control_flow11ControlFlowB1y_ENCINvXs4_B1C_NtB1C_4PathINtNtNtBX_6traits7collect12FromIteratorB1y_E9from_iterINtNtBV_5chain5ChainIB4q_INtNtNtBX_7sources4once4OnceB1y_EINtNtBV_6filter6FilterINtBT_3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1C_B3m_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6Z_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EEB4O_EE0NCINvNvNtNtB3C_8iterator8Iterator4find5checkB1y_QNCB3b_s_0E0E0INtB7_5FnMutTuB1y_EE8call_mutB73_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21614)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !21618
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21622)
  %i.b = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvXs4_NtCsjyY8HP3IvQ6_12object_store4pathNtBX_4PathINtNtNtNtBb_4iter6traits7collect12FromIteratorNtNtBX_5parts8PathPartE9from_iterINtNtNtB1N_8adapters5chain5ChainIB2Y_INtNtNtB1N_7sources4once4OnceB2q_EINtNtB32_6filter6FilterINtNtB32_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMBX_B1w_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB5R_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EEB3y_EEs_0INtB7_5FnMutTRB2q_EE8call_mutB5V_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !noalias !21624

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #43
          to label %common.resume.i.i unwind label %bb.i, !noalias !21624

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !21625, !noalias !21626
  %i.d = load i64, ptr %i.a, align 8, !range !56, !alias.scope !21628, !noalias !21633, !noundef !4
  %i.e = icmp eq i64 %i.d, -9223372036854775808
  br i1 %i.e, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0B6w_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.f, !noalias !21624

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i unwind label %bb.g, !noalias !21624

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !21624
  unreachable

common.resume.i.i:                                ; preds = %bb.f, %bb.b
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !21624
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0B6w_.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !21634, !noalias !21635
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0B6w_.exit

bb.i:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !21624
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvNvNtNtB37_8iterator8Iterator4find5checkBZ_QNCB2G_s_0E0E0B6w_.exit: ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21616
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartB1y_uINtNtB9_9try_trait17NeverShortCircuituENCINvXs4_B1C_NtB1C_4PathINtNtNtBX_6traits7collect12FromIteratorB1y_E9from_iterINtNtBV_5chain5ChainIB4p_INtNtNtBX_7sources4once4OnceB1y_EINtNtBV_6filter6FilterINtBT_3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMB1C_B3l_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6Y_15GenerateBuilderNtNtNtBb_6future11into_future10IntoFuture11into_future0s_0EEB4N_EE0NCINvB5n_15filter_try_foldB1y_uB2v_NCB3a_s_0NCIBR_B1y_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB2v_NCB3a_s0_0NCINvMs0_B2y_B2v_10wrap_mut_2uBab_NCINvNvNtNtB3B_8iterator8Iterator8for_each4callBab_NCNvYIB5H_IB5l_IB5H_B4o_B38_EB9S_EBaS_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0INtB7_5FnMutTuB1y_EE8call_mutB72_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr i8, ptr %.0.val, i64 8
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.f = getelementptr i8, ptr %.0.val, i64 16
  %.val1 = load ptr, ptr %i.f, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21639)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i.i = load i64, ptr %i.g, align 8, !alias.scope !21639, !noalias !21636, !noundef !4
  %.not.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i.i, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21649)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  %i.h = load ptr, ptr %.val1, align 8, !noalias !21652, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !21652, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.j)
          to label %.noexc19.i.i.i.i.i.i unwind label %bb.d, !noalias !21652

.noexc19.i.i.i.i.i.i:                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !21653, !noalias !21652, !noundef !4 ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.m)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc19.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !21653, !noalias !21652, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %i.h, i64 %i.j, i1 false), !noalias !21652
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !21653, !noalias !21652
  br label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %common.resume.i.i unwind label %bb.k, !noalias !21642

bb.e:                                             ; preds = %bb.c, %.noexc19.i.i.i.i.i.i
  %i.r = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.c ], [ %i.l, %.noexc19.i.i.i.i.i.i ]
  %i.s = add i64 %i.r, %i.j
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !21653, !noalias !21652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21652
  store ptr %i.c, ptr %i.b, align 8, !noalias !21652
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsb_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !21652
  %i.t = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @307, ptr noundef nonnull @273, ptr noundef nonnull %i.b)
          to label %bb.f unwind label %bb.d, !noalias !21642

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.g, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, !prof !1168

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #47
          to label %.noexc.i.i.i.i.i.i unwind label %bb.d, !noalias !21642

.noexc.i.i.i.i.i.i:                               ; preds = %bb.g
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21652
  %i.u = load i64, ptr %i.c, align 8, !range !56, !alias.scope !21656, !noalias !21642, !noundef !4
  %i.v = icmp eq i64 %i.u, -9223372036854775808
  br i1 %i.v, label %bb.p, label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i unwind label %bb.i, !noalias !21642

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i.i unwind label %bb.j, !noalias !21642

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !21642
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !21659
  br label %bb.p

bb.k:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !21642
  unreachable

bb.l:                                             ; preds = %bb.a
  %i.z = load i64, ptr %i.d, align 8, !range !56, !alias.scope !21660, !noalias !21636, !noundef !4
  %i.aa = icmp eq i64 %i.z, -9223372036854775808
  br i1 %i.aa, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvB4R_15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB9D_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB9D_NCNvYIB5b_IB4P_IB5b_B3T_B2E_EB9l_EBak_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B6w_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.n, !noalias !21636

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i.i unwind label %bb.o, !noalias !21636

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !21636
  unreachable

common.resume.i.i:                                ; preds = %bb.n, %bb.i, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.q, %bb.d ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.m
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !21636
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvB4R_15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB9D_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB9D_NCNvYIB5b_IB4P_IB5b_B3T_B2E_EB9l_EBak_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B6w_.exit

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21642
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvB4R_15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB9D_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB9D_NCNvYIB5b_IB4P_IB5b_B3T_B2E_EB9l_EBak_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B6w_.exit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartBZ_uINtNtNtBa_3ops9try_trait17NeverShortCircuituENCINvXs4_B13_NtB13_4PathINtNtNtB8_6traits7collect12FromIteratorBZ_E9from_iterINtNtB6_5chain5ChainIB3U_INtNtNtB8_7sources4once4OnceBZ_EINtNtB6_6filter6FilterINtB4_3MapINtNtNtBa_3str4iter15SplitTerminatorReENCNvMB13_B2R_5parts0ENCNCNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8generateNtB6s_15GenerateBuilderNtNtNtBa_6future11into_future10IntoFuture11into_future0s_0EEB4i_EE0NCINvB4R_15filter_try_foldBZ_uB1V_NCB2G_s_0NCIB2_BZ_INtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEuB1V_NCB2G_s0_0NCINvMs0_B1Y_B1V_10wrap_mut_2uB9D_NCINvNvNtNtB37_8iterator8Iterator8for_each4callB9D_NCNvYIB5b_IB4P_IB5b_B3T_B2E_EB9l_EBak_ENtCscVxtfYSVfE7_9itertools9Itertools4join0E0E0E0E0E0B6w_.exit: ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21636
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1u_EB2d_NCINvNtB1y_5utils19find_exprs_in_exprsNCINvB2Y_17find_window_exprsINtNtBV_5chain5ChainINtNtNtBb_5slice4iter4IterB1u_EINtNtBb_6option4IterB1u_EEE0B3X_E0NCINvNvMsg_NtBV_7flattenINtB5v_13FlattenCompatppE9iter_fold7flattenB2d_B2d_NCINvNvXsi_B5v_B5I_NtNtNtBX_6traits8iterator8Iterator4fold7flattenINtNtB2g_9into_iter8IntoIterB1u_EB2d_NCB2V_s_0E0E0E0INtB7_5FnMutTB2d_B1t_EE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !21670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21665
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1z_5slice4iter4IterNtNtB4_4expr4ExprEINtNtB1z_6option4IterB2J_EEE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val1)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_17find_window_exprsINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEE0B3m_E0NCINvNvMsg_NtB6_7flattenINtB4S_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B4S_B55_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c, !noalias !21671

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #43
          to label %bb.b unwind label %bb.d, !noalias !21671

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !21671
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_17find_window_exprsINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEE0B3m_E0NCINvNvMsg_NtB6_7flattenINtB4S_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B4S_B55_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !21670
  %.sroa.4.24.copyload.i = load i64, ptr %i.b, align 8, !noalias !21665
  %.sroa.6.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.24.copyload.i = load ptr, ptr %.sroa.6.24..sroa_idx.i, align 8, !noalias !21665, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.7.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.24.copyload.i = load i64, ptr %.sroa.7.24..sroa_idx.i, align 8, !noalias !21665 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = icmp ult i64 %.sroa.7.24.copyload.i, 82351536043346213
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [112 x i8], ptr %.sroa.6.24.copyload.i, i64 %.sroa.7.24.copyload.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %.sroa.6.24.copyload.i, ptr %i.j, align 8, !noalias !21672
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.6.24.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !21672
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.4.24.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !21672
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !21672
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBX_EQNCINvNtB11_5utils19find_exprs_in_exprsNCINvB31_17find_window_exprsINtNtNtB1N_8adapters5chain5ChainINtNtNtB1P_5slice4iter4IterBX_EINtNtB1P_6option4IterBX_EEE0B40_Es_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull %.val), !noalias !21677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21665
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1u_EB2d_NCINvNtB1y_5utils19find_exprs_in_exprsNCINvB2Y_20find_aggregate_exprsINtNtBV_5chain5ChainIB41_INtNtNtBb_5slice4iter4IterB1u_EINtNtBb_6option4IterB1u_EEB4U_EE0B40_E0NCINvNvMsg_NtBV_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB2d_B2d_NCINvNvXsi_B5I_B5V_NtNtNtBX_6traits8iterator8Iterator4fold7flattenINtNtB2g_9into_iter8IntoIterB1u_EB2d_NCB2V_s_0E0E0E0INtB7_5FnMutTB2d_B1t_EE8call_mutCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !21683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21678
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1u_INtNtNtB1C_5slice4iter4IterNtNtB4_4expr4ExprEINtNtB1C_6option4IterB2R_EEB39_EE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val1)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_20find_aggregate_exprsINtNtB6_5chain5ChainIB3q_INtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEB4i_EE0B3p_E0NCINvNvMsg_NtB6_7flattenINtB55_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B55_B5i_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c, !noalias !21684

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #43
end_hunk_7
begin_hunk_8_@_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !21936, !noalias !21933, !nonnull !4, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !21933, !noalias !21936, !nonnull !4, !noundef !4
  %i.bk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bh, i64 noundef %i.bc), !noalias !21946
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !range !3, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i8, ptr %i.c, align 4, !range !3, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.g = load i8, ptr %i.f, align 1, !range !3, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.i = load i8, ptr %i.h, align 1, !range !3, !noundef !4
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l) #46
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q) #46
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !range !11023, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.t, 1114112
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !range !11023, !noundef !4 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.c, %bb.d, %bb.a, %bb.b, %bb.h
  %.sroa.0.0.shrunk = phi i1 [ %i.w, %bb.g ], [ false, %bb.c ], [ %i.x, %bb.h ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.t, %i.v
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.v, 1114112
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #46
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !3, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !3, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #46
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bd, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21950)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !21947, !noalias !21950, !nonnull !4, !noundef !4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !21950, !noalias !21947, !nonnull !4, !noundef !4 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21955)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !21952, !noalias !21957, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !21955, !noalias !21958, !noundef !4
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !21955, !noalias !21958, !nonnull !4, !noundef !4
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !21952, !noalias !21957, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i64 noundef %i.w), !noalias !21959
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aj = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai), !noalias !21960
  br i1 %i.aj, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !21947, !noalias !21950, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !21950, !noalias !21947, !noundef !4
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !21950, !noalias !21947, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !21947, !noalias !21950, !nonnull !4, !noundef !4
  %i.at = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq, i64 noundef %i.al), !noalias !21960
  br i1 %i.at, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !21947, !noalias !21950, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !21950, !noalias !21947, !noundef !4
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !21950, !noalias !21947, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !21947, !noalias !21950, !nonnull !4, !noundef !4
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba, i64 noundef %i.av), !noalias !21960
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !18, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !18, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %.val to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val3) ]
  %i.g = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  br i1 %i.j, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  br i1 %i.m, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21964)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i8, ptr %i.n, align 16, !range !3, !alias.scope !21961, !noalias !21964, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i8, ptr %i.p, align 16, !range !3, !alias.scope !21964, !noalias !21961, !noundef !4
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 16, !alias.scope !21961, !noalias !21964, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !21964, !noalias !21961, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !21964, !noalias !21961, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !21961, !noalias !21964, !nonnull !4, !noundef !4
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t), !noalias !21966, !inline_history !21967
  br i1 %i.ab, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !21961, !noalias !21964, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !21964, !noalias !21961, !noundef !4
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !21964, !noalias !21961, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 16, !alias.scope !21961, !noalias !21964, !nonnull !4, !noundef !4
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !21966, !inline_history !21967
  br i1 %i.al, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = load i64, ptr %i.am, align 16, !alias.scope !21961, !noalias !21964, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !21964, !noalias !21961, !noundef !4
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !21964, !noalias !21961, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !21961, !noalias !21964, !nonnull !4, !noundef !4
  %i.av = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.au, ptr noundef nonnull %i.as, i64 noundef %i.an), !noalias !21966, !inline_history !21967
  br i1 %i.av, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #46, !inline_history !21967
  br i1 %i.aw, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !21961, !noalias !21964, !align !63, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !21964, !noalias !21961, !align !63, !noundef !4 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bb, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba) #46, !inline_history !21967
  br i1 %i.bc, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.be = load i8, ptr %i.bd, align 1, !range !4997, !alias.scope !21961, !noalias !21964, !noundef !4 ; 2 uses
  %.not5.i = icmp eq i8 %i.be, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bg = load i8, ptr %i.bf, align 1, !range !4997, !alias.scope !21964, !noalias !21961, !noundef !4 ; 2 uses
  br i1 %.not5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = icmp eq i8 %i.be, %i.bg
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.bg, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.a, %bb.s, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.p, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.g ], [ %i.bi, %bb.s ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.i ], [ %i.bh, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2F_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(2432) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.552 = alloca [320 x i8], align 8         ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 4 uses
  %.sroa.458 = alloca [344 x i8], align 8         ; 3 uses
  %i.f = alloca [328 x i8], align 8               ; 4 uses
  %i.g = alloca [328 x i8], align 8               ; 4 uses
  %i.h = alloca [328 x i8], align 8               ; 4 uses
  %i.i = alloca [328 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [328 x i8], align 8               ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [328 x i8], align 8               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [328 x i8], align 8               ; 7 uses
  %i.u = alloca [328 x i8], align 8               ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [64 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [336 x i8], align 8              ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2336
  call fastcc void @_RNvXs7_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB5_13AttachedTokenNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ad) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2248 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !73, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.af, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.not.i = icmp eq i64 %i.af, -9223372036854775808
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %_RNvXsdB_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !21968, !noalias !21971
  br label %_RNvXsdB_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %i.ab, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXsdB_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !3074, !noundef !4 ; 3 uses
  %.not2 = icmp eq i64 %i.ah, 71
  br i1 %.not2, label %bb.m, label %bb.i

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3TopEECs14kWLkQVSKO_14deltalake_core.exit, %bb.h
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3TopEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ai, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.ac) #43
          to label %bb.ck unwind label %bb.cj

bb.h:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
end_hunk_8
begin_hunk_9_@_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.l = phi i64 [ %i.fi, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr1488 = phi ptr [ %.tr14.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 41 uses
  %.tr87 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 41 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.t
    i64 9, label %bb.u
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ao
    i64 14, label %bb.ap
    i64 15, label %bb.aq
    i64 16, label %bb.az
    i64 17, label %bb.ba
    i64 18, label %bb.bb
    i64 19, label %bb.bc
    i64 20, label %bb.bd
    i64 21, label %bb.be
    i64 22, label %bb.bf
    i64 23, label %bb.bg
    i64 24, label %bb.bh
  ]

_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.am, %bb.ai, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.an, %bb.bh, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.a, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ap, %bb.ao, %bb.ae, %bb.ad, %bb.t, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.aw ], [ %i.cm, %bb.t ], [ false, %bb.o ], [ %i.ej, %bb.ad ], [ %i.em, %bb.ae ], [ false, %bb.y ], [ %i.fr, %bb.ao ], [ %i.fu, %bb.ap ], [ false, %bb.au ], [ %i.hm, %bb.az ], [ %i.hp, %bb.ba ], [ %i.hs, %bb.bb ], [ %i.hv, %bb.bc ], [ %i.hw, %bb.bd ], [ %i.hz, %bb.be ], [ %i.ie, %bb.bf ], [ %i.ih, %bb.bg ], [ true, %bb.ax ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.j ], [ %i.cj, %bb.s ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.u ], [ true, %bb.v ], [ %i.eg, %bb.ac ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10 ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.as ], [ %i.hj, %bb.ay ], [ false, %bb.av ], [ false, %bb.ar ], [ false, %bb.aq ], [ false, %bb.a ], [ true, %bb.an ], [ false, %bb.bh ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.bl ], [ false, %bb.ag ], [ false, %tailrecurse.backedge ], [ true, %bb.bm ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs2z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22822)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !22819, !noalias !22822, !noundef !4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !22822, !noalias !22819, !noundef !4
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !22822, !noalias !22819, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !22819, !noalias !22822, !nonnull !4, !noundef !4
  %i.aq = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, i64 noundef %i.ai), !noalias !22824
  br i1 %i.aq, label %bb.l, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !22819, !noalias !22822, !nonnull !4, !noundef !4 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !22822, !noalias !22819, !nonnull !4, !noundef !4 ; 6 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22828)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !22825, !noalias !22830, !nonnull !4, !noundef !4 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !22828, !noalias !22831, !nonnull !4, !noundef !4 ; 4 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22835)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !22832, !noalias !22837, !noundef !4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !22835, !noalias !22838, !noundef !4
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !22835, !noalias !22838, !nonnull !4, !noundef !4
  %i.bj = load ptr, ptr %i.bh, align 8, !alias.scope !22832, !noalias !22837, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef %i.bc), !noalias !22839
  br i1 %i.bm, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bp = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo), !noalias !22840
  br i1 %i.bp, label %bb.p, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !22825, !noalias !22830, !noundef !4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !22828, !noalias !22831, !noundef !4
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.q, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !22828, !noalias !22831, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !22825, !noalias !22830, !nonnull !4, !noundef !4
  %i.bz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.by, ptr noundef nonnull %i.bw, i64 noundef %i.br), !noalias !22840
  br i1 %i.bz, label %bb.r, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !22825, !noalias !22830, !noundef !4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !22828, !noalias !22831, !noundef !4
  %i.ce = icmp eq i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.s, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !22828, !noalias !22831, !nonnull !4, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !22825, !noalias !22830, !nonnull !4, !noundef !4
  %i.cj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cg, i64 noundef %i.cb), !noalias !22840
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.cm = tail call noundef zeroext i1 @_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.cl)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %.val = load ptr, ptr %i.cn, align 8            ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %.val2 = load i8, ptr %i.cp, align 8, !range !3, !noundef !4
  %.val3 = load ptr, ptr %i.co, align 8           ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %.val4 = load i8, ptr %i.cq, align 8, !range !3, !noundef !4
  %i.cr = icmp eq i8 %.val2, %.val4
  br i1 %i.cr, label %bb.v, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  %i.cs = icmp eq ptr %.val, %.val3
  br i1 %i.cs, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22844)
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !22841, !noalias !22844, !nonnull !4, !noundef !4 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !22844, !noalias !22841, !nonnull !4, !noundef !4 ; 4 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22849)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !22846, !noalias !22851, !noundef !4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !22849, !noalias !22852, !noundef !4
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.y, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.df = load ptr, ptr %i.dd, align 8, !alias.scope !22849, !noalias !22852, !nonnull !4, !noundef !4
  %i.dg = load ptr, ptr %i.de, align 8, !alias.scope !22846, !noalias !22851, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i64 noundef %i.cz), !noalias !22853
  br i1 %i.dj, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10: ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dm = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dl), !noalias !22854
  br i1 %i.dm, label %bb.z, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !22841, !noalias !22844, !noundef !4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !22844, !noalias !22841, !noundef !4
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.aa, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !22844, !noalias !22841, !nonnull !4, !noundef !4
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !22841, !noalias !22844, !nonnull !4, !noundef !4
  %i.dw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, i64 noundef %i.do), !noalias !22854
  br i1 %i.dw, label %bb.ab, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !22841, !noalias !22844, !noundef !4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !22844, !noalias !22841, !noundef !4
  %i.eb = icmp eq i64 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !22844, !noalias !22841, !nonnull !4, !noundef !4
  %i.ee = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !22841, !noalias !22844, !nonnull !4, !noundef !4
  %i.eg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ed, i64 noundef %i.dy), !noalias !22854
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ej = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ei) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.em = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.el) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %.lr.ph
  %i.en = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22858)
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !22855, !noalias !22858, !align !63, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, null
  %i.er = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !22858, !noalias !22855, !align !63, !noundef !4 ; 2 uses
  %i.et = icmp eq ptr %i.es, null                 ; 2 uses
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.et, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  br i1 %i.et, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eu = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.es) #46, !noalias !22860, !inline_history !22861
  br i1 %i.eu, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !22855, !noalias !22858, !align !63, !noundef !4 ; 2 uses
  %.not5.i = icmp eq ptr %i.ew, null
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !22858, !noalias !22855, !align !63, !noundef !4 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null                 ; 2 uses
  br i1 %.not5.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ez, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.am

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ez, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.ak
  %i.fa = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ew, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ey) #46, !noalias !22860, !inline_history !22861
  br i1 %i.fa, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fb = load ptr, ptr %i.en, align 8, !alias.scope !22855, !noalias !22858, !nonnull !4, !noundef !4 ; 2 uses
  %i.fc = load ptr, ptr %i.eo, align 8, !alias.scope !22858, !noalias !22855, !nonnull !4, !noundef !4 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bm, %bb.an
  %.pn = phi ptr [ %i.fb, %bb.an ], [ %i.jg, %bb.bm ]
  %.pn112 = phi ptr [ %i.fc, %bb.an ], [ %i.ji, %bb.bm ]
  %.tr14.be = getelementptr inbounds nuw i8, ptr %.pn112, i64 16 ; 2 uses
  %.tr.be = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.fe = load i64, ptr %.tr.be, align 16, !range !18091, !noundef !4 ; 3 uses
  %i.ff = icmp ne i64 %i.fe, 31
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = add nsw i64 %i.fe, -11
  %i.fh = icmp samesign ugt i64 %i.fe, 10
  %i.fi = select i1 %i.fh, i64 %i.fg, i64 20      ; 2 uses
  %i.fj = load i64, ptr %.tr14.be, align 16, !range !18091, !noundef !4 ; 3 uses
  %i.fk = icmp ne i64 %i.fj, 31
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = add nsw i64 %i.fj, -11
  %i.fm = icmp samesign ugt i64 %i.fj, 10
  %i.fn = select i1 %i.fm, i64 %i.fl, i64 20
  %i.fo = icmp eq i64 %i.fi, %i.fn
  br i1 %i.fo, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fr = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fq) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fu = tail call fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ft) #46
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22865)
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr87, i64 48
  %i.fw = load i8, ptr %i.fv, align 8, !range !3, !alias.scope !22862, !noalias !22865, !noundef !4
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr1488, i64 48
  %i.fy = load i8, ptr %i.fx, align 8, !range !3, !alias.scope !22865, !noalias !22862, !noundef !4
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br i1 %i.fz, label %bb.ar, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr87, i64 49
  %i.gb = load i8, ptr %i.ga, align 1, !range !3, !alias.scope !22862, !noalias !22865, !noundef !4
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr1488, i64 49
  %i.gd = load i8, ptr %i.gc, align 1, !range !3, !alias.scope !22865, !noalias !22862, !noundef !4
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br i1 %i.ge, label %bb.as, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.ar
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr87, i64 50
  %i.gg = load i8, ptr %i.gf, align 2, !range !1086, !alias.scope !22862, !noalias !22865, !noundef !4
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr1488, i64 50
  %i.gi = load i8, ptr %i.gh, align 2, !range !1086, !alias.scope !22865, !noalias !22862, !noundef !4
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br i1 %i.gj, label %bb.at, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !22862, !noalias !22865, !nonnull !4, !noundef !4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !22865, !noalias !22862, !nonnull !4, !noundef !4 ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
end_hunk_9
