Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.09?download=true
inline.NumInlined: 12053
inline.NumDeleted: 5555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate14min_max_helperReRINtNtNtCs1N9T06jgEdt_11arrow_array5array10byte_array16GenericByteArrayINtNtB15_5types17GenericStringTypelEENCINvB2_10min_stringlE0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %.lcssa.i.i = phi i64 [ %i.w, %.._crit_edge_crit_edge.i.i ], [ %.pn3.i17.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ] ; 2 uses
  %i.aq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i, i1 true) ; 2 uses
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = xor i64 %i.ar, %.lcssa.i.i
  store i64 %i.as, ptr %i.v, align 8, !alias.scope !3531
  %i.at = add i64 %i.aq, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !3536
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i, %.loopexit.i
  %.sroa.0.0.i8.i = phi i64 [ %i.at, %.loopexit.i ], [ %.sroa.0.0.i6.i.i, %.loopexit.i.i ] ; 3 uses
  %i.az = load i64, ptr %i.au, align 8, !alias.scope !3540, !noalias !3539, !noundef !23 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i6, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3540, !noalias !3539
  br label %.loopexit.i.i

.lr.ph.i.i.i6:                                    ; preds = %bb.h, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  %i.bb = load i64, ptr %i.av, align 8, !range !37, !alias.scope !3541, !noalias !3539, !noundef !23 ; 2 uses
  switch i64 %i.bb, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i [
    i64 3, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
    i64 2, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  ]

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i6
  %i.bc = load i64, ptr %i.aw, align 8, !alias.scope !3542, !noalias !3539
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.bb, 1     ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = select i1 %.not3.i.i.i.i.i.i.i, i64 0, i64 2
  store i64 %spec.store.select.i.i.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !3543, !noalias !3539
  br i1 %.not3.i.i.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %.lr.ph.i.i.i6
  %i.bd = load ptr, ptr %i.ax, align 8, !alias.scope !3544, !noalias !3539, !noundef !23
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  %i.be = call { i64, i64 } @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1
  %.not4.i.i.i.i = icmp eq i64 %i.bf, 1
  br i1 %.not4.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i.i.i.i
  store i64 3, ptr %i.av, align 8, !alias.scope !3541, !noalias !3539
  br label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.sink.split.i.i.i, %.lr.ph.i.i.i6
  %i.bh = load i64, ptr %i.a, align 8, !range !26, !alias.scope !3545, !noalias !3539, !noundef !23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bh, 2
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtB8_6option8IntoIteryEINtNtB4_6cloned6ClonedINtNtNtB8_5slice4iter4IteryEEEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.thread7.i.i.i
  %i.bi = load i64, ptr %i.ay, align 8, !alias.scope !3546, !noalias !3539
  store i64 0, ptr %i.a, align 8, !alias.scope !3546, !noalias !3539
  %i.bj = trunc nuw i64 %i.bh to i1
  br i1 %i.bj, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %bb.j

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i
  %.pn3.i17.i.i.i = phi i64 [ %i.bi, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bg, %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIteryEINtNtBa_6cloned6ClonedINtNtNtBe_5slice4iter4IteryEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.bc, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIteryEyNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ] ; 3 uses
  store i64 %.pn3.i17.i.i.i, ptr %i.au, align 8, !alias.scope !3540, !noalias !3539
  %i.bk = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3540, !noalias !3539, !noundef !23
  %i.bl = add i64 %i.bk, 64                       ; 2 uses
  store i64 %i.bl, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !3540, !noalias !3539
  %i.bm = icmp eq i64 %.pn3.i17.i.i.i, 0
  br i1 %i.bm, label %.lr.ph.i.i.i6, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %i.bn = phi i64 [ %.pre.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.bl, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ]
  %.lcssa.i.i.i = phi i64 [ %i.az, %.._crit_edge_crit_edge.i.i.i ], [ %.pn3.i17.i.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionyE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtBZ_5ChainIB1t_INtB3_8IntoIteryEINtNtB11_6cloned6ClonedINtNtNtB5_5slice4iter4IteryEEEB1J_ENtNtNtB13_6traits8iterator8Iterator4next0ECs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ] ; 2 uses
  %i.bo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i, i1 true) ; 2 uses
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = xor i64 %i.bp, %.lcssa.i.i.i
  store i64 %i.bq, ptr %i.au, align 8, !alias.scope !3540, !noalias !3539
  %i.br = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bs = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %.sroa.0.0.i8.i) ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  %i.bv = call { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayRINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %i.br) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3539
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
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23 ; 12 uses
  %i.g = icmp ne i64 %.sroa.04.0, %i.f            ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noundef !23 ; 5 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %0, align 8, !range !74, !noundef !23
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
  %i.m = and i64 %i.f, 24
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ splat (i8 -128), %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi8 = phi <16 x i8> [ splat (i8 -128), %vector.ph ], [ %i.q, %vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !alias.scope !3552
  %wide.load9 = load <16 x i8>, ptr %i.o, align 1, !alias.scope !3552
  %i.p = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.q = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load9, <16 x i8> %vec.phi8) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3549

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.p, <16 x i8> %i.q)
  %i.s = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.s, %vec.epilog.iter.check ], [ -128, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.f, -8                     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi12 = phi <8 x i8> [ %broadcast.splat, %vec.epilog.ph ], [ %i.u, %vec.epilog.vector.body ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %index11
  %wide.load13 = load <8 x i8>, ptr %i.t, align 1, !alias.scope !3552
  %i.u = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load13, <8 x i8> %vec.phi12) ; 2 uses
  %index.next14 = add nuw i64 %index11, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next14, %n.vec10
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3550

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.w = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.u) ; 2 uses
  %cmp.n15 = icmp eq i64 %i.f, %n.vec10
  br i1 %cmp.n15, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.ph = phi i8 [ -128, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.y, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.sroa.02.0.i.i = phi i8 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.x, align 1, !alias.scope !3552, !noundef !23
  %spec.select.i.i.i.i.i = tail call noundef i8 @llvm.smax.i8(i8 %.val.i.i, i8 %.sroa.02.0.i.i) ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.f
  br i1 %i.z, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3551

bb.f:                                             ; preds = %bb.c
  %i.aa = tail call noundef i8 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanesaINtB2_14MaxAccumulatoraEKj20_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.f) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MaxAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i8 [ undef, %bb.a ], [ %i.k, %bb.d ], [ %i.aa, %bb.f ], [ -128, %bb.e ], [ %i.w, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %i.ab = insertvalue { i1, i8 } poison, i1 %i.g, 0
  %i.ac = insertvalue { i1, i8 } %i.ab, i8 %.sroa.5.2, 1
  ret { i1, i8 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define hidden { i1, i8 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregateaNtNtCs1N9T06jgEdt_11arrow_array5types8Int8TypeINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23 ; 12 uses
  %i.g = icmp ne i64 %.sroa.04.0, %i.f            ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noundef !23 ; 5 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %0, align 8, !range !74, !noundef !23
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
  %i.m = and i64 %i.f, 24
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ splat (i8 127), %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi8 = phi <16 x i8> [ splat (i8 127), %vector.ph ], [ %i.q, %vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !alias.scope !3558
  %wide.load9 = load <16 x i8>, ptr %i.o, align 1, !alias.scope !3558
  %i.p = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.q = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load9, <16 x i8> %vec.phi8) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3555

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.p, <16 x i8> %i.q)
  %i.s = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.s, %vec.epilog.iter.check ], [ 127, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.f, -8                     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi12 = phi <8 x i8> [ %broadcast.splat, %vec.epilog.ph ], [ %i.u, %vec.epilog.vector.body ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %index11
  %wide.load13 = load <8 x i8>, ptr %i.t, align 1, !alias.scope !3558
  %i.u = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %wide.load13, <8 x i8> %vec.phi12) ; 2 uses
  %index.next14 = add nuw i64 %index11, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next14, %n.vec10
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3556

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.w = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.u) ; 2 uses
  %cmp.n15 = icmp eq i64 %i.f, %n.vec10
  br i1 %cmp.n15, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.ph = phi i8 [ 127, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.y, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.sroa.02.0.i.i = phi i8 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.0.i.i
  %.val.i.i = load i8, ptr %i.x, align 1, !alias.scope !3558, !noundef !23
  %spec.select.i.i.i.i.i = tail call noundef i8 @llvm.smin.i8(i8 %.val.i.i, i8 %.sroa.02.0.i.i) ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.f
  br i1 %i.z, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3557

bb.f:                                             ; preds = %bb.c
  %i.aa = tail call noundef i8 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanesaINtB2_14MinAccumulatoraEKj20_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.f) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpleaINtB2_14MinAccumulatoraEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i8 [ undef, %bb.a ], [ %i.k, %bb.d ], [ %i.aa, %bb.f ], [ 127, %bb.e ], [ %i.w, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %i.ab = insertvalue { i1, i8 } poison, i1 %i.g, 0
  %i.ac = insertvalue { i1, i8 } %i.ab, i8 %.sroa.5.2, 1
  ret { i1, i8 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatedNtNtCs1N9T06jgEdt_11arrow_array5types11Float64TypeINtB2_14MaxAccumulatordEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23
  %i.g = lshr i64 %i.f, 3                         ; 5 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MaxAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !23 ; 3 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !74, !noundef !23
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef double @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanesdINtB2_14MaxAccumulatordEKj2_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MaxAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MaxAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.x, %.preheader.i ], [ 0, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i = phi double [ %.sroa.0.0.i.i.i.i.i, %.preheader.i ], [ -nan(0x7FFFFFFFFFFFF), %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %.val.i.i = load double, ptr %i.n, align 8, !alias.scope !3561, !noundef !23 ; 2 uses
  %i.o = bitcast double %.val.i.i to i64          ; 2 uses
  %i.p = bitcast double %.sroa.02.0.i.i to i64    ; 2 uses
  %i.q = ashr i64 %i.o, 63
  %i.r = lshr i64 %i.q, 1
  %i.s = xor i64 %i.r, %i.o
  %i.t = ashr i64 %i.p, 63
  %i.u = lshr i64 %i.t, 1
  %i.v = xor i64 %i.u, %i.p
  %i.w = icmp sgt i64 %i.s, %i.v
  %.sroa.0.0.i.i.i.i.i = select i1 %i.w, double %.val.i.i, double %.sroa.02.0.i.i ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.g
  br i1 %i.y, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MaxAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i

bb.f:                                             ; preds = %bb.c
  %i.z = tail call noundef double @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanesdINtB2_14MaxAccumulatordEKj4_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MaxAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MaxAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi double [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.z, %bb.f ], [ -nan(0x7FFFFFFFFFFFF), %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %.preheader.i ]
  %i.aa = insertvalue { i64, double } poison, i64 %.sroa.0.2, 0
  %i.ab = insertvalue { i64, double } %i.aa, double %.sroa.5.2, 1
  ret { i64, double } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatedNtNtCs1N9T06jgEdt_11arrow_array5types11Float64TypeINtB2_14MinAccumulatordEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23
  %i.g = lshr i64 %i.f, 3                         ; 5 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MinAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !23 ; 3 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !74, !noundef !23
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef double @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanesdINtB2_14MinAccumulatordEKj2_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MinAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MinAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.x, %.preheader.i ], [ 0, %bb.e ] ; 2 uses
  %.sroa.02.0.i.i = phi double [ %.sroa.0.0.i.i.i.i.i, %.preheader.i ], [ +nan(0x7FFFFFFFFFFFF), %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %.val.i.i = load double, ptr %i.n, align 8, !alias.scope !3564, !noundef !23 ; 2 uses
  %i.o = bitcast double %.val.i.i to i64          ; 2 uses
  %i.p = bitcast double %.sroa.02.0.i.i to i64    ; 2 uses
  %i.q = ashr i64 %i.o, 63
  %i.r = lshr i64 %i.q, 1
  %i.s = xor i64 %i.r, %i.o
  %i.t = ashr i64 %i.p, 63
  %i.u = lshr i64 %i.t, 1
  %i.v = xor i64 %i.u, %i.p
  %i.w = icmp slt i64 %i.s, %i.v
  %.sroa.0.0.i.i.i.i.i = select i1 %i.w, double %.val.i.i, double %.sroa.02.0.i.i ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.g
  br i1 %i.y, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MinAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i

bb.f:                                             ; preds = %bb.c
  %i.z = tail call noundef double @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanesdINtB2_14MinAccumulatordEKj4_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MinAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simpledINtB2_14MinAccumulatordEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi double [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.z, %bb.f ], [ +nan(0x7FFFFFFFFFFFF), %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %.preheader.i ]
  %i.aa = insertvalue { i64, double } poison, i64 %.sroa.0.2, 0
  %i.ab = insertvalue { i64, double } %i.aa, double %.sroa.5.2, 1
  ret { i64, double } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, float } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatefNtNtCs1N9T06jgEdt_11arrow_array5types11Float32TypeINtB2_14MaxAccumulatorfEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23 ; 2 uses
  %i.g = lshr i64 %i.f, 2                         ; 6 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplefINtB2_14MaxAccumulatorfEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !23 ; 5 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !74, !noundef !23
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
end_hunk_0
begin_hunk_1_@_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatelNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeINtB2_14MaxAccumulatorlEECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3573

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.q)
  %i.s = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MaxAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader9

.preheader.i.preheader9:                          ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i32 [ -2147483648, %.preheader.i.preheader ], [ %i.s, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader9, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.u, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader9 ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader9 ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.t, align 4, !alias.scope !3575, !noundef !23
  %spec.select.i.i.i.i.i = tail call noundef i32 @llvm.smax.i32(i32 %.val.i.i, i32 %.sroa.02.0.i.i) ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MaxAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3574

bb.f:                                             ; preds = %bb.c
  %i.w = tail call noundef i32 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_laneslINtB2_14MaxAccumulatorlEKj8_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MaxAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MaxAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i32 [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.w, %bb.f ], [ -2147483648, %bb.e ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %.preheader.i ]
  %i.x = insertvalue { i32, i32 } poison, i32 %.sroa.0.2, 0
  %i.y = insertvalue { i32, i32 } %i.x, i32 %.sroa.5.2, 1
  ret { i32, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatelNtNtCs1N9T06jgEdt_11arrow_array5types9Int32TypeINtB2_14MinAccumulatorlEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23 ; 2 uses
  %i.g = lshr i64 %i.f, 2                         ; 7 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MinAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !23 ; 4 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !74, !noundef !23
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i32 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_laneslINtB2_14MinAccumulatorlEKj4_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.j, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MinAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MinAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.f, 32
  br i1 %min.iters.check, label %.preheader.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.g, 4611686018427387896      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ splat (i32 2147483647), %vector.ph ], [ %i.q, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !alias.scope !3580
  %wide.load8 = load <4 x i32>, ptr %i.o, align 4, !alias.scope !3580
  %i.p = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.q = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load8, <4 x i32> %vec.phi7) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3578

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.p, <4 x i32> %i.q)
  %i.s = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MinAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader9

.preheader.i.preheader9:                          ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i32 [ 2147483647, %.preheader.i.preheader ], [ %i.s, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader9, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.u, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader9 ] ; 2 uses
  %.sroa.02.0.i.i = phi i32 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader9 ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %.val.i.i = load i32, ptr %i.t, align 4, !alias.scope !3580, !noundef !23
  %spec.select.i.i.i.i.i = tail call noundef i32 @llvm.smin.i32(i32 %.val.i.i, i32 %.sroa.02.0.i.i) ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MinAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3579

bb.f:                                             ; preds = %bb.c
  %i.w = tail call noundef i32 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_laneslINtB2_14MinAccumulatorlEKj8_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MinAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplelINtB2_14MinAccumulatorlEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i32 [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.w, %bb.f ], [ 2147483647, %bb.e ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %.preheader.i ]
  %i.x = insertvalue { i32, i32 } poison, i32 %.sroa.0.2, 0
  %i.y = insertvalue { i32, i32 } %i.x, i32 %.sroa.5.2, 1
  ret { i32, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatesNtNtCs1N9T06jgEdt_11arrow_array5types9Int16TypeINtB2_14MaxAccumulatorsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23 ; 4 uses
  %i.g = lshr i64 %i.f, 1                         ; 9 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MaxAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !23 ; 5 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !74, !noundef !23
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i16 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanessINtB2_14MaxAccumulatorsEKj8_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.j, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MaxAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MaxAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.g, 9223372036854775792      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ splat (i16 -32768), %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi8 = phi <8 x i16> [ splat (i16 -32768), %vector.ph ], [ %i.q, %vector.body ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !alias.scope !3586
  %wide.load9 = load <8 x i16>, ptr %i.o, align 2, !alias.scope !3586
  %i.p = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.q = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load9, <8 x i16> %vec.phi8) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3583

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.p, <8 x i16> %i.q)
  %i.s = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MaxAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.t = and i64 %i.f, 24
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.s, %vec.epilog.iter.check ], [ -32768, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.g, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi12 = phi <4 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %i.v, %vec.epilog.vector.body ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index11
  %wide.load13 = load <4 x i16>, ptr %i.u, align 2, !alias.scope !3586
  %i.v = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load13, <4 x i16> %vec.phi12) ; 2 uses
  %index.next14 = add nuw i64 %index11, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next14, %n.vec10
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3584

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.x = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.v) ; 2 uses
  %cmp.n15 = icmp eq i64 %i.g, %n.vec10
  br i1 %cmp.n15, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MaxAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.ph = phi i16 [ -32768, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.z, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.sroa.02.0.i.i = phi i16 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %.val.i.i = load i16, ptr %i.y, align 2, !alias.scope !3586, !noundef !23
  %spec.select.i.i.i.i.i = tail call noundef i16 @llvm.smax.i16(i16 %.val.i.i, i16 %.sroa.02.0.i.i) ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.g
  br i1 %i.aa, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MaxAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3585

bb.f:                                             ; preds = %bb.c
  %i.ab = tail call noundef i16 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanessINtB2_14MaxAccumulatorsEKj10_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MaxAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MaxAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i16 [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.ab, %bb.f ], [ -32768, %bb.e ], [ %i.x, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i16 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %vec.epilog.middle.block ], [ 1, %middle.block ], [ 1, %.preheader.i ]
  %i.ac = insertvalue { i16, i16 } poison, i16 %.sroa.0.2, 0
  %i.ad = insertvalue { i16, i16 } %i.ac, i16 %.sroa.5.2, 1
  ret { i16, i16 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatesNtNtCs1N9T06jgEdt_11arrow_array5types9Int16TypeINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23 ; 4 uses
  %i.g = lshr i64 %i.f, 1                         ; 9 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !23 ; 5 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !74, !noundef !23
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i16 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanessINtB2_14MinAccumulatorsEKj8_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.j, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.g, 9223372036854775792      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ splat (i16 32767), %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi8 = phi <8 x i16> [ splat (i16 32767), %vector.ph ], [ %i.q, %vector.body ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !alias.scope !3592
  %wide.load9 = load <8 x i16>, ptr %i.o, align 2, !alias.scope !3592
  %i.p = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.q = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %wide.load9, <8 x i16> %vec.phi8) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3589

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.p, <8 x i16> %i.q)
  %i.s = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.t = and i64 %i.f, 24
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !94

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.s, %vec.epilog.iter.check ], [ 32767, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.g, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi12 = phi <4 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %i.v, %vec.epilog.vector.body ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index11
  %wide.load13 = load <4 x i16>, ptr %i.u, align 2, !alias.scope !3592
  %i.v = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %wide.load13, <4 x i16> %vec.phi12) ; 2 uses
  %index.next14 = add nuw i64 %index11, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next14, %n.vec10
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3590

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.x = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.v) ; 2 uses
  %cmp.n15 = icmp eq i64 %i.g, %n.vec10
  br i1 %cmp.n15, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  %.sroa.02.0.i.i.ph = phi i16 [ 32767, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.z, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.sroa.02.0.i.i = phi i16 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %.val.i.i = load i16, ptr %i.y, align 2, !alias.scope !3592, !noundef !23
  %spec.select.i.i.i.i.i = tail call noundef i16 @llvm.smin.i16(i16 %.val.i.i, i16 %.sroa.02.0.i.i) ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.g
  br i1 %i.aa, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3591

bb.f:                                             ; preds = %bb.c
  %i.ab = tail call noundef i16 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanessINtB2_14MinAccumulatorsEKj10_ECsik5xThmkOmN_37datafusion_functions_aggregate_common(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplesINtB2_14MinAccumulatorsEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i16 [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.ab, %bb.f ], [ 32767, %bb.e ], [ %i.x, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i16 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %vec.epilog.middle.block ], [ 1, %middle.block ], [ 1, %.preheader.i ]
  %i.ac = insertvalue { i16, i16 } poison, i16 %.sroa.0.2, 0
  %i.ad = insertvalue { i16, i16 } %i.ac, i16 %.sroa.5.2, 1
  ret { i16, i16 } %i.ad
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatexNtNtCs1N9T06jgEdt_11arrow_array5types9Int64TypeINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23 ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 7 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !23 ; 4 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !74, !noundef !23
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanesxINtB2_14MaxAccumulatorxEKj2_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.f, 32
  br i1 %min.iters.check, label %.preheader.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.g, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ splat (i64 -9223372036854775808), %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi7 = phi <2 x i64> [ splat (i64 -9223372036854775808), %vector.ph ], [ %i.q, %vector.body ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8, !alias.scope !3597
  %wide.load8 = load <2 x i64>, ptr %i.o, align 8, !alias.scope !3597
  %i.p = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load, <2 x i64> %vec.phi) ; 2 uses
  %i.q = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load8, <2 x i64> %vec.phi7) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3595

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %i.p, <2 x i64> %i.q)
  %i.s = tail call i64 @llvm.vector.reduce.smax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader9

.preheader.i.preheader9:                          ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ -9223372036854775808, %.preheader.i.preheader ], [ %i.s, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader9, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.u, %.preheader.i ], [ %.sroa.04.0.i.i.ph, %.preheader.i.preheader9 ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %spec.select.i.i.i.i.i, %.preheader.i ], [ %.sroa.02.0.i.i.ph, %.preheader.i.preheader9 ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.04.0.i.i
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !3597, !noundef !23
  %spec.select.i.i.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %.val.i.i, i64 %.sroa.02.0.i.i) ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.04.0.i.i, 1       ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i, !llvm.loop !3596

bb.f:                                             ; preds = %bb.c
  %i.w = tail call noundef i64 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate23aggregate_nonnull_lanesxINtB2_14MaxAccumulatorxEKj4_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MaxAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.preheader.i, %middle.block, %bb.e, %bb.d, %bb.f, %bb.a
  %.sroa.5.2 = phi i64 [ undef, %bb.a ], [ %i.l, %bb.d ], [ %i.w, %bb.f ], [ -9223372036854775808, %bb.e ], [ %i.s, %middle.block ], [ %spec.select.i.i.i.i.i, %.preheader.i ]
  %.sroa.0.2 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %middle.block ], [ 1, %.preheader.i ]
  %i.x = insertvalue { i64, i64 } poison, i64 %.sroa.0.2, 0
  %i.y = insertvalue { i64, i64 } %i.x, i64 %.sroa.5.2, 1
  ret { i64, i64 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate9aggregatexNtNtCs1N9T06jgEdt_11arrow_array5types9Int64TypeINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !23
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.04.0 = select i1 %.not, i64 0, i64 %i.d  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !noundef !23 ; 2 uses
  %i.g = lshr i64 %i.f, 3                         ; 7 uses
  %i.h = icmp eq i64 %.sroa.04.0, %i.g
  br i1 %i.h, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noundef !23 ; 4 uses
  %.not6 = icmp eq i64 %.sroa.04.0, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 8, !range !74, !noundef !23
  %.off = add nsw i8 %i.k, -10
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call noundef i64 @_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nullable_lanesxINtB2_14MinAccumulatorxEKj2_ECs90oH6M0AZ2B_22datafusion_expr_common(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a) #45
  br label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.f, 32
  br i1 %min.iters.check, label %.preheader.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.g, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi7 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph ], [ %i.q, %vector.body ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8, !alias.scope !3602
  %wide.load8 = load <2 x i64>, ptr %i.o, align 8, !alias.scope !3602
  %i.p = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load, <2 x i64> %vec.phi) ; 2 uses
  %i.q = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %wide.load8, <2 x i64> %vec.phi7) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3600

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.p, <2 x i64> %i.q)
  %i.s = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvNtCsljwZ9olD1ul_11arrow_arith9aggregate24aggregate_nonnull_simplexINtB2_14MinAccumulatorxEECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.i.preheader9

.preheader.i.preheader9:                          ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 9223372036854775807, %.preheader.i.preheader ], [ %i.s, %middle.block ]
end_hunk_1
