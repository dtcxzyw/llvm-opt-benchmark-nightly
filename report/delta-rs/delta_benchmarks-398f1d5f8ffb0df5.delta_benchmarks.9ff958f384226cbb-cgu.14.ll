Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-398f1d5f8ffb0df5.delta_benchmarks.9ff958f384226cbb-cgu.14?download=true
inline.NumInlined: 2497
inline.NumDeleted: 1001
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.pn.i.i.i.i.i.i = phi i64 [ %i.v, %bb.c ], [ %i.av, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.m ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !6433 ; 2 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, %i.z
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not.i.not33.i.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i.i
  %.sroa.06.0.i34.i.i.i.i.i = phi i16 [ %i.at, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i.i ], [ %i.ae, %bb.d ] ; 3 uses
  %i.af = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.m
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.aj ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -32
  %.val3.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !6434, !noalias !6435, !noundef !7
  %i.am = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.am, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i.i, !prof !18

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr i8, ptr %i.ak, i64 -40
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !noalias !6436, !nonnull !7, !noundef !7
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i), !noalias !6437
  %i.ao = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %bb.f, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i.i, !prof !19

._crit_edge.i.i.i.i.i:                            ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i.i, %bb.d
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !9

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.as = add i16 %.sroa.06.0.i34.i.i.i.i.i, -1
  %i.at = and i16 %i.as, %.sroa.06.0.i34.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.au = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.av = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.au
  br label %bb.d

bb.f:                                             ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyBS_BS_BS_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6438)
  %i.aw = getelementptr i8, ptr %i.ak, i64 -8
  %.val7.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !6438, !noundef !7
  %i.ax = icmp eq i64 %.val8.i, %.val7.i.i.i.i
  br i1 %i.ax, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.f
  %i.ay = getelementptr i8, ptr %i.ak, i64 -16
  %.val6.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !6438, !nonnull !7, !noundef !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i) ]
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val6.i.i.i.i, i64 %.val8.i), !noalias !6438
  %.not10.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not10.i, label %.split.i, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.split.i, %bb.f, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i
  %.not14.i = phi i1 [ false, %._crit_edge.i.i.i.i.i ], [ %.not.us.not.i.not, %.split.us.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1c_ENCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB22_7HashMapB1d_B1d_ENtNtBe_3cmp9PartialEq2eq0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ %.not.not.not.i, %bb.f ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.0.0 = phi i1 [ %.not14.i, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1B_3all5checkTRBV_B32_ENCNvXs4_B6_INtB6_7HashMapBV_BV_ENtNtB1J_3cmp9PartialEq2eq0E0INtNtNtB1J_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6469)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !6469, !noalias !6468, !nonnull !7, !noundef !7 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6469, !noalias !6468, !noundef !7
  %i.i = add i64 %i.h, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE3newCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i64 noundef %i.i), !noalias !6469
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !6468, !noalias !6469
  %i.j = icmp eq i64 %i.c, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !nonnull !7   ; 2 uses
  br i1 %i.j, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.o = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %.not.i.not.us = icmp eq ptr %i.p, null
  br label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit

.split:                                           ; preds = %bb.b, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECsdJxlLsGgtXr_16delta_benchmarks.exit
  %i.q = call { ptr, ptr } @_RNvXsG_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 4 uses
  %.not.i.not = icmp eq ptr %i.r, null            ; 3 uses
  br i1 %.not.i.not, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r), !noalias !6470 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6471), !noalias !6470
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !6472, !noalias !6473 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !6472, !noalias !6473, !nonnull !7
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.as, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.t, %bb.c ], [ %i.at, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.m    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.aa, align 1, !noalias !6474 ; 2 uses
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.x
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.ar, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ad = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.m
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [144 x i8], ptr %i.n, i64 %i.ah ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -128
  %.val3.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !6475, !noalias !6476, !noundef !7
  %i.ak = icmp eq i64 %.val1.i.i.i.i.i, %.val3.i.i.i
  br i1 %i.ak, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, !prof !18

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i
  %i.al = getelementptr i8, ptr %i.ai, i64 -136
  %.val2.i.i.i = load ptr, ptr %i.al, align 8, !noalias !6477, !nonnull !7, !noundef !7
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val1.i.i.i.i.i), !noalias !6478
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECsdJxlLsGgtXr_16delta_benchmarks.exit, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, !prof !19

._crit_edge.i.i:                                  ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i, %bb.d
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit, !prof !9

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %i.aq = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ar = and i16 %i.aq, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.as = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.at = add i64 %.sroa.01.0.i.i.i, %i.as
  br label %bb.d

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1u_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ai, i64 -112
  %i.av = call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) dereferenceable_or_null(112) %i.au) #46, !noalias !6479, !inline_history !6467
  br i1 %i.av, label %.split, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.split, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECsdJxlLsGgtXr_16delta_benchmarks.exit, %._crit_edge.i.i, %.split.us
  %.not.i.not13 = phi i1 [ %.not.i.not.us, %.split.us ], [ false, %._crit_edge.i.i ], [ %.not.i.not, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ %.not.i.not, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.0.0 = phi i1 [ %.not.i.not13, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECsdJxlLsGgtXr_16delta_benchmarks.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCs6Po7BT7Nknu_5alloc5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 72057594037927936) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i.i = alloca [88 x i8], align 8      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 4 uses
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %..preheader.i_crit_edge, label %bb.b

..preheader.i_crit_edge:                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %i.e, %1                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %1 ; 2 uses
  store i64 %1, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.e, %1
  br i1 %i.k, label %.preheader.i, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.l = icmp eq i64 %i.n, %i.g
  br i1 %i.l, label %.preheader.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.sroa.0.0.i69 = phi i64 [ %i.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %.sroa.0.0.i69 ; 5 uses
  %i.n = add i64 %.sroa.0.0.i69, 1                ; 4 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.o, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(96) %i.r) #43
          to label %.body.i unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(96) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.g:                                             ; preds = %.lr.ph71
  %i.u = add i64 %.sroa.0.1.i70, 1                ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %common.resume, label %.lr.ph71

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.h ], [ %eh.lpad-body.i.i, %.body.i.i ] ; 2 uses
  %i.x = icmp eq i64 %i.n, %i.g
  br i1 %i.x, label %common.resume, label %.lr.ph71

.lr.ph71:                                         ; preds = %.body.i, %bb.g
  %.sroa.0.1.i70 = phi i64 [ %i.u, %bb.g ], [ %i.n, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.j, i64 %.sroa.0.1.i70
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(128) %i.y) #43
          to label %bb.g unwind label %bb.i

common.resume:                                    ; preds = %bb.g, %.body.i, %bb.k, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.k ], [ %i.ao, %bb.p ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.lr.ph71
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41
  unreachable

.preheader.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.b, %..preheader.i_crit_edge
  %3 = phi ptr [ %.pre, %..preheader.i_crit_edge ], [ %i.i, %bb.b ], [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ]
  %4 = phi i64 [ %i.e, %..preheader.i_crit_edge ], [ %1, %bb.b ], [ %1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6493)
  %.not.i2 = icmp eq i64 %4, 0
  br i1 %.not.i2, label %_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.0.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 40
  %.sroa.0.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ap, %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks.exit.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %3, i64 %.sroa.0.08.i ; 5 uses
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.0.08.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6495)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !6496, !noalias !6497, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  store i64 %i.ad, ptr %i.ae, align 8, !alias.scope !6497, !noalias !6496
  tail call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_from(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ab)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6499)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6501
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ag), !noalias !6502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6501
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  invoke fastcc void @_RNvXs1G_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.m unwind label %bb.l, !noalias !6502

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.am, %bb.n ], [ %i.ai, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %common.resume unwind label %bb.o, !noalias !6502

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ak = load i8, ptr %i.aj, align 8, !range !11, !alias.scope !6503, !noalias !6504, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6501
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al)
          to label %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.n, !noalias !6502

bb.n:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.b) #43
          to label %bb.k unwind label %bb.o, !noalias !6502

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #41, !noalias !6502
  unreachable

_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.40..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !6505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !6505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6501
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.af)
          to label %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.p

bb.p:                                             ; preds = %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i.i, i64 88, i1 false), !noalias !6506
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i8 %i.ak, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !6507, !noalias !6506
  br label %common.resume

_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RNvXs12_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.af, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i.i, i64 88, i1 false), !noalias !6506
  %.sroa.7.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store i8 %i.ak, ptr %.sroa.7.0..sroa_idx1.i.i.i, align 8, !alias.scope !6507, !noalias !6506
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ap = add nuw nsw i64 %.sroa.0.08.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %4
  br i1 %exitcond.not.i, label %_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.j

_RNvXs3_NtCsbvkFyIu7lgC_4core5sliceSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB5_13CloneFromSpecBx_E15spec_clone_fromCsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNvXs_CsbpG6u9KFjWn_8indexmapINtB4_6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone10clone_fromCsdJxlLsGgtXr_16delta_benchmarks.exit.i, %.preheader.i
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %4
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %1
  tail call void @_RNvXs1_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB9_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB5_10SpecExtendRBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBU_EE11spec_extendCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !33, !noundef !7 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !33, !noundef !7
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
  %i.f = load i8, ptr %i.e, align 1, !range !28, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !28, !noundef !7
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.w, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !28, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !28, !noundef !7
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !28, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !28, !noundef !7
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !28, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !28, !noundef !7
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !13, !noundef !7
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !13, !noundef !7
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !7
  %i.af = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !7
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.z

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.aa

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !7
  %i.au = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !7
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.ab, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val20 = load i64, ptr %i.bh, align 8, !noundef !7 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val22 = load i64, ptr %i.bi, align 8, !noundef !7
  %i.bj = icmp eq i64 %.val20, %.val22
  br i1 %i.bj, label %bb.n, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val21 = load ptr, ptr %i.bk, align 8, !nonnull !7, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val = load ptr, ptr %i.bl, align 8, !nonnull !7, !noundef !7
  %i.bm = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull readonly align 8 %i.bn, ptr noundef nonnull readonly align 8 %i.bm, i64 noundef range(i64 0, 1152921504606846976) %.val20)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val24 = load i64, ptr %i.bp, align 8, !noundef !7 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val26 = load i64, ptr %i.bq, align 8, !noundef !7
  %i.br = icmp eq i64 %.val24, %.val26
  br i1 %i.br, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val25 = load ptr, ptr %i.bs, align 8, !nonnull !7, !noundef !7
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val23 = load ptr, ptr %i.bt, align 8, !nonnull !7, !noundef !7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCsdJxlLsGgtXr_16delta_benchmarks(ptr noundef nonnull readonly align 8 %i.bv, ptr noundef nonnull readonly align 8 %i.bu, i64 noundef range(i64 0, 576460752303423488) %.val24)
  br i1 %i.bw, label %bb.af, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !7, !noundef !7
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !7, !noundef !7
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #46
  br i1 %i.cb, label %tailrecurse, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !7
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !7
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.ag, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !7
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !7
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.ah, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !7
  %i.co = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !noundef !7
  %i.cq = icmp eq i8 %i.cn, %i.cp
  br i1 %i.cq, label %bb.ai, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

end_hunk_0
