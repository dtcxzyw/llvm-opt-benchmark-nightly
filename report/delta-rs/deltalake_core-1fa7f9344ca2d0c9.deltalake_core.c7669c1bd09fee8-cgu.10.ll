Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.10?download=true
inline.NumInlined: 7791
inline.NumDeleted: 3011
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB13_EENtNtB1K_3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core:bb.a
  %brmerge.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.aw
  br i1 %brmerge.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRINtNtBe_6option6OptionB1d_EENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2q_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val2.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !15692, !noundef !31 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !15693, !noalias !15683, !noundef !31
  %i.az = icmp eq i64 %.val2.i.i.i.i.i.i, %.val4.i.i.i.i.i.i
  br i1 %i.az, label %.split18.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EENtNtNtNtB1C_4iter6traits8iterator8Iterator8try_folduNCINvNvB2e_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1C_3cmp9PartialEq2eq0E0INtNtNtB1C_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split18.i:                                       ; preds = %bb.h
  %i.ba = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !15693, !noalias !15683, !nonnull !31, !noundef !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !15692, !nonnull !31, !noundef !31
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i.i.i, i64 %.val2.i.i.i.i.i.i), !noalias !15694
  %i.bc = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %.split.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EENtNtNtNtB1C_4iter6traits8iterator8Iterator8try_folduNCINvNvB2e_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1C_3cmp9PartialEq2eq0E0INtNtNtB1C_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRINtNtBe_6option6OptionB1d_EENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2q_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g
  %.mux.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i, %i.aw
  br i1 %.mux.i.i.i.i.i.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EENtNtNtNtB1C_4iter6traits8iterator8Iterator8try_folduNCINvNvB2e_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1C_3cmp9PartialEq2eq0E0INtNtNtB1C_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split.backedge.i:                                ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRINtNtBe_6option6OptionB1d_EENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2q_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %.split18.i
  %i.bd = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBK_EENtNtNtNtB1r_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bd, 0      ; 2 uses
  %.not.not.not.i = icmp eq ptr %i.be, null
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EENtNtNtNtB1C_4iter6traits8iterator8Iterator8try_folduNCINvNvB2e_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1C_3cmp9PartialEq2eq0E0INtNtNtB1C_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EENtNtNtNtB1C_4iter6traits8iterator8Iterator8try_folduNCINvNvB2e_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1C_3cmp9PartialEq2eq0E0INtNtNtB1C_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRINtNtBe_6option6OptionB1d_EENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2q_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %.split18.i, %bb.h, %.split.backedge.i, %._crit_edge.i.i.i.i.i, %.split.i.preheader, %.split.us.i, %bb.c
  %i.bf = phi i1 [ true, %.split.us.i ], [ false, %._crit_edge.i.i.i.i.i ], [ false, %bb.c ], [ true, %.split.i.preheader ], [ false, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRINtNtBe_6option6OptionB1d_EENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2q_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ false, %.split18.i ], [ false, %bb.h ], [ true, %.split.backedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EENtNtNtNtB1C_4iter6traits8iterator8Iterator8try_folduNCINvNvB2e_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1C_3cmp9PartialEq2eq0E0INtNtNtB1C_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi i1 [ %i.bf, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBV_EENtNtNtNtB1C_4iter6traits8iterator8Iterator8try_folduNCINvNvB2e_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1C_3cmp9PartialEq2eq0E0INtNtNtB1C_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !31 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !31
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15717)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !15717, !nonnull !31, !noundef !31 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !15717, !noundef !31
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 1
  %.val3.i.i = load <16 x i8>, ptr %i.f, align 16, !noalias !15718
  %i.k = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !15716
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15716
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15716
  %.sroa.01.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <16 x i1> %i.k, ptr %.sroa.01.sroa.6.0..sroa_idx.i, align 8, !alias.scope !15716
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !15716
  %i.m = icmp eq i64 %i.c, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !nonnull !31  ; 2 uses
  br i1 %i.m, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.r = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %.not.i.not.us = icmp eq ptr %i.s, null
  br label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split:                                           ; preds = %bb.b, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs14kWLkQVSKO_14deltalake_core.exit
  %i.t = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 3 uses
  %.not.i.not = icmp eq ptr %i.u, null            ; 3 uses
  br i1 %.not.i.not, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u), !noalias !15719 ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ar, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.as, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.p    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !15720 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.aa
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.aq, %bb.e ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.01.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.p
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [144 x i8], ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -144
  %i.al = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.ak), !noalias !15721
  br i1 %i.al, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.e, !prof !39

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit, !prof !33

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.06.0.i33.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.as = add i64 %.sroa.01.0.i.i.i, %i.ar
  br label %bb.d

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -112
  %i.au = call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) dereferenceable_or_null(112) %i.at) #53, !noalias !15722, !inline_history !15715
  br i1 %i.au, label %.split, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.split, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs14kWLkQVSKO_14deltalake_core.exit, %._crit_edge.i.i, %.split.us
  %.not.i.not13 = phi i1 [ %.not.i.not.us, %.split.us ], [ false, %._crit_edge.i.i ], [ %.not.i.not, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs14kWLkQVSKO_14deltalake_core.exit ], [ %.not.i.not, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi i1 [ %.not.i.not13, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !31 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !31
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15756)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !15756, !nonnull !31, !noundef !31 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !15756, !noundef !31
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 1
  %.val3.i.i = load <16 x i8>, ptr %i.f, align 16, !noalias !15757
  %i.k = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !15755
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15755
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15755
  %.sroa.01.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <16 x i1> %i.k, ptr %.sroa.01.sroa.6.0..sroa_idx.i, align 8, !alias.scope !15755
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !15755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15758)
  %i.m = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !15758 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %.not16.not.i = icmp eq ptr %i.n, null
  br i1 %.not16.not.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = icmp eq i64 %i.c, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !15758 ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !alias.scope !15758, !nonnull !31 ; 2 uses
  br i1 %i.o, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.critedge.backedge.i
  %i.t = phi ptr [ %i.do, %.critedge.backedge.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.u = phi { ptr, ptr } [ %i.dn, %.critedge.backedge.i ], [ %i.m, %.lr.ph.i ]
  %i.v = extractvalue { ptr, ptr } %i.u, 1        ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !15759)
  call void @llvm.experimental.noalias.scope.decl(metadata !15760)
  %i.w = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t), !noalias !15761 ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ar, %bb.e ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.w, %.lr.ph.split.i ], [ %i.as, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.r ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !15762 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.aa
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.aq, %bb.d ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.r
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [56 x i8], ptr %i.s, i64 %i.ai ; 14 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -56
  %i.al = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ak), !noalias !15763
  br i1 %i.al, label %bb.f, label %bb.d, !prof !39

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.e, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit, !prof !33

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ar = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.as = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ar
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !15764)
  call void @llvm.experimental.noalias.scope.decl(metadata !15765)
  call void @llvm.experimental.noalias.scope.decl(metadata !15766)
  call void @llvm.experimental.noalias.scope.decl(metadata !15767)
  call void @llvm.experimental.noalias.scope.decl(metadata !15768)
  call void @llvm.experimental.noalias.scope.decl(metadata !15769)
  %i.au = load i8, ptr %i.v, align 8, !range !59, !alias.scope !15770, !noundef !31 ; 4 uses
  %i.av = add nsw i8 %i.au, -6
  %i.aw = icmp samesign ugt i8 %i.au, 5
  %narrow.i.i.i.i.i.i = select i1 %i.aw, i8 %i.av, i8 3 ; 2 uses
  %i.ax = load i8, ptr %i.at, align 8, !range !59, !alias.scope !15771, !noalias !15761, !noundef !31 ; 3 uses
  %i.ay = add nsw i8 %i.ax, -6
  %i.az = icmp samesign ugt i8 %i.ax, 5
  %narrow4.i.i.i.i.i.i = select i1 %i.az, i8 %i.ay, i8 3
  %i.ba = icmp eq i8 %narrow.i.i.i.i.i.i, %narrow4.i.i.i.i.i.i
  br i1 %i.ba, label %bb.g, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.f
  switch i8 %narrow.i.i.i.i.i.i, label %bb.h [
    i8 0, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2R_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i
    i8 1, label %bb.i
    i8 2, label %.split47.i
    i8 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !15770, !noundef !31 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !15771, !noalias !15761, !noundef !31
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %.split49.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split47.i:                                       ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !range !72, !alias.scope !15770, !noundef !31
  %i.bi = getelementptr inbounds i8, ptr %i.aj, i64 -31
  %i.bj = load i8, ptr %i.bi, align 1, !range !72, !alias.scope !15771, !noalias !15761, !noundef !31
  %i.bk = icmp eq i8 %i.bh, %i.bj
  br i1 %i.bk, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !15772)
  call void @llvm.experimental.noalias.scope.decl(metadata !15773)
  %i.bl = icmp eq i8 %i.au, %i.ax
  br i1 %i.bl, label %bb.k, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

bb.k:                                             ; preds = %bb.j
  switch i8 %i.au, label %default.unreachable9.i.i.i.i.i.i.i [
    i8 1, label %.split45.i
    i8 2, label %bb.l
    i8 3, label %bb.n
    i8 4, label %bb.o
    i8 5, label %.split46.i
    i8 0, label %.critedge.backedge.i
  ]

default.unreachable:                              ; preds = %bb.m
  unreachable

default.unreachable9.i.i.i.i.i.i.i:               ; preds = %bb.k
  unreachable

.split45.i:                                       ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !range !72, !alias.scope !15774, !noundef !31
  %i.bo = getelementptr inbounds i8, ptr %i.aj, i64 -31
  %i.bp = load i8, ptr %i.bo, align 1, !range !72, !alias.scope !15775, !noalias !15761, !noundef !31
  %i.bq = icmp eq i8 %i.bn, %i.bp
  br i1 %i.bq, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !range !58, !alias.scope !15774, !noundef !31 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8, !range !58, !alias.scope !15775, !noalias !15761, !noundef !31
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bs, %i.bu
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.bw = getelementptr inbounds i8, ptr %i.aj, i64 -16 ; 3 uses
  switch i64 %i.bs, label %default.unreachable [
    i64 0, label %.split42.i
    i64 1, label %.split43.i
    i64 2, label %.split.i
  ]

.split42.i:                                       ; preds = %bb.m
  %i.bx = load i64, ptr %i.bv, align 8, !alias.scope !15774, !noundef !31
  %i.by = load i64, ptr %i.bw, align 8, !alias.scope !15775, !noalias !15761, !noundef !31
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split43.i:                                       ; preds = %bb.m
  %i.ca = load i64, ptr %i.bv, align 8, !alias.scope !15774, !noundef !31
  %i.cb = load i64, ptr %i.bw, align 8, !alias.scope !15775, !noalias !15761, !noundef !31
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split.i:                                         ; preds = %bb.m
  %i.cd = load double, ptr %i.bv, align 8, !alias.scope !15774, !noundef !31
  %i.ce = load double, ptr %i.bw, align 8, !alias.scope !15775, !noalias !15761, !noundef !31
  %i.cf = fcmp oeq double %i.cd, %i.ce
  br i1 %i.cf, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !15774, !noundef !31 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !15775, !noalias !15761, !noundef !31
  %i.ck = icmp eq i64 %i.ch, %i.cj
  br i1 %i.ck, label %.split48.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split48.i:                                       ; preds = %bb.n
  %i.cl = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !15775, !noalias !15761, !nonnull !31, !noundef !31
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !15774, !nonnull !31, !noundef !31
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.co, ptr nonnull %i.cm, i64 %i.ch), !noalias !15776
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.cp, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !15774, !noundef !31 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !15775, !noalias !15761, !noundef !31
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %.split44.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split44.i:                                       ; preds = %bb.o
  %i.cv = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !15775, !noalias !15761, !nonnull !31, !noundef !31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !15774, !nonnull !31, !noundef !31
  %i.cz = call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCseqDwI8vvjGQ_10serde_json5value5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cw, i64 noundef %i.cr), !noalias !15776
  br i1 %i.cz, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split46.i:                                       ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.db = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %i.dc = call noundef zeroext i1 @_RNvXs1t_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.da, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db)
  br i1 %i.dc, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split49.i:                                       ; preds = %bb.i
  %i.dd = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !15771, !noalias !15761, !nonnull !31, !noundef !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !15770, !nonnull !31, !noundef !31
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.dg, ptr nonnull %i.de, i64 %i.bc), !noalias !15777
  %i.dh = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.dh, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2R_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.g
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !15770, !noundef !31
  %i.dk = getelementptr inbounds i8, ptr %i.aj, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !15771, !noalias !15761, !noundef !31
  %i.dm = icmp eq i64 %i.dj, %i.dl
  br i1 %i.dm, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.critedge.backedge.i:                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2R_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %.split49.i, %.split46.i, %.split44.i, %.split48.i, %.split.i, %.split43.i, %.split42.i, %.split45.i, %bb.k, %.split47.i
  %i.dn = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.do = extractvalue { ptr, ptr } %i.dn, 0      ; 2 uses
  %.not.not.i = icmp eq ptr %i.do, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.split.i

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.i, %.split47.i, %bb.j, %.split45.i, %bb.l, %.split42.i, %.split43.i, %.split.i, %bb.n, %.split48.i, %bb.o, %.split44.i, %.split46.i, %.split49.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2R_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %.critedge.backedge.i, %._crit_edge.i.i.i.i.i, %bb.b, %.lr.ph.i
  %i.dp = phi i1 [ false, %.lr.ph.i ], [ true, %bb.b ], [ false, %._crit_edge.i.i.i.i.i ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.o ], [ false, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2R_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ true, %.critedge.backedge.i ], [ false, %.split.i ], [ false, %.split42.i ], [ false, %.split43.i ], [ false, %.split44.i ], [ false, %.split45.i ], [ false, %.split46.i ], [ false, %.split47.i ], [ false, %.split48.i ], [ false, %.split49.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi i1 [ %i.dp, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2q_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2y_3cmp9PartialEq2eq0E0INtNtNtB2y_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !31 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !31
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15797)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !15797, !nonnull !31, !noundef !31 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !15797, !noundef !31
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 1
  %.val3.i.i = load <16 x i8>, ptr %i.f, align 16, !noalias !15798
  %i.k = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.f, ptr %i.a, align 8, !alias.scope !15796
  %.sroa.01.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15796
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15796
  %.sroa.01.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <16 x i1> %i.k, ptr %.sroa.01.sroa.6.0..sroa_idx.i, align 8, !alias.scope !15796
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !15796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15799)
  %i.m = icmp eq i64 %i.c, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !15799 ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !alias.scope !15799, !nonnull !31 ; 2 uses
  br i1 %i.m, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  %i.r = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !15799
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %.not.us.not.i.not = icmp eq ptr %i.s, null
  br label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1U_3all5checkTRBV_RjENCNvXs4_B6_INtB6_7HashMapBV_jENtNtB22_3cmp9PartialEq2eq0E0INtNtNtB22_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

.split.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecRjENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2l_7HashMapB1d_jENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0        ; 3 uses
  %.not.not.not.i = icmp eq ptr %i.u, null        ; 3 uses
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1U_3all5checkTRBV_RjENCNvXs4_B6_INtB6_7HashMapBV_jENtNtB22_3cmp9PartialEq2eq0E0INtNtNtB22_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %.val7.i = load i64, ptr %i.v, align 8
  %i.w = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.u) ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ar, %bb.f ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.as, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.p ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !15800 ; 2 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.aa
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.aq, %bb.e ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ae = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.p
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.al = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecINtB2_10EquivalentBq_E10equivalentCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak), !noalias !15801
  br i1 %i.al, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecRjENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2l_7HashMapB1d_jENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.e, !prof !39

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.f, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1U_3all5checkTRBV_RjENCNvXs4_B6_INtB6_7HashMapBV_jENtNtB22_3cmp9PartialEq2eq0E0INtNtNtB22_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit, !prof !33

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ar = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.as = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ar
  br label %bb.d

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecRjENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2l_7HashMapB1d_jENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %.val5.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !15802, !noundef !31
  %.not9.i = icmp eq i64 %.val7.i, %.val5.i.i.i.i
  br i1 %.not9.i, label %.split.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1U_3all5checkTRBV_RjENCNvXs4_B6_INtB6_7HashMapBV_jENtNtB22_3cmp9PartialEq2eq0E0INtNtNtB22_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1U_3all5checkTRBV_RjENCNvXs4_B6_INtB6_7HashMapBV_jENtNtB22_3cmp9PartialEq2eq0E0INtNtNtB22_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.split.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecRjENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2l_7HashMapB1d_jENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i
  %.not13.i = phi i1 [ %.not.us.not.i.not, %.split.us.i ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecRjENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB2l_7HashMapB1d_jENtNtBe_3cmp9PartialEq2eq0E0Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1U_3all5checkTRBV_RjENCNvXs4_B6_INtB6_7HashMapBV_jENtNtB22_3cmp9PartialEq2eq0E0INtNtNtB22_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi i1 [ %.not13.i, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1U_3all5checkTRBV_RjENCNvXs4_B6_INtB6_7HashMapBV_jENtNtB22_3cmp9PartialEq2eq0E0INtNtNtB22_3ops12control_flow11ControlFlowuEECs14kWLkQVSKO_14deltalake_core.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs4k_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_25WildcardAdditionalOptionsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !noundef !31
  %.not = icmp eq i64 %i.a, -9223372036854775808
  %i.b = load i64, ptr %1, align 8, !range !32, !noundef !31
  %.not20 = icmp eq i64 %i.b, -9223372036854775808 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not20, label %bb.ac, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not20, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !48, !noundef !31 ; 2 uses
  %.not22 = icmp eq i64 %i.d, -9223372036854775807
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !48, !noundef !31 ; 2 uses
  %.not23 = icmp eq i64 %i.f, -9223372036854775807 ; 2 uses
  br i1 %.not22, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !nonnull !31, !noundef !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val34 = load i64, ptr %i.h, align 8, !noundef !31
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val35 = load ptr, ptr %i.i, align 8, !nonnull !31, !noundef !31
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val36 = load i64, ptr %i.j, align 8, !noundef !31
  %i.k = tail call noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val34, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val35, i64 noundef %.val36) ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.ac

bb.f:                                             ; preds = %bb.d
  br i1 %.not23, label %bb.ac, label %bb.i

bb.g:                                             ; preds = %bb.d
  br i1 %.not23, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_RNvXs4E_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !32, !noundef !31
  %.not25 = icmp eq i64 %i.n, -9223372036854775808
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !32, !noundef !31
  %.not26 = icmp eq i64 %i.p, -9223372036854775808 ; 2 uses
  br i1 %.not25, label %bb.q, label %bb.p

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15810)
  %i.q = icmp eq i64 %i.d, -9223372036854775808   ; 2 uses
  %i.r = zext i1 %i.q to i8
  %i.s = icmp eq i64 %i.f, -9223372036854775808   ; 3 uses
  %.neg.i = sext i1 %i.s to i8
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.s, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = add nsw i8 %.neg.i, %i.r
  br label %_RNvXs4E_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %bb.k
  %i.u = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e)
end_hunk_0
