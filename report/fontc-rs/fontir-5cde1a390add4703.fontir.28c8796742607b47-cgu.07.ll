Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.07?download=true
inline.NumInlined: 688
inline.NumDeleted: 446
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB16_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCs3v5ql5U6hxj_6fontir:bb.a

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.al, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.q, %bb.c ], [ %i.am, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !725 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ak, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.y = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.i
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [40 x i8], ptr %i.j, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -40
  %i.af = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBt_15NormalizedSpaceEINtB2_10EquivalentBq_E10equivalentCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae), !noalias !726
  br i1 %i.af, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCscDfuDmzQoJe_5kurbo5point5PointENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB36_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0Cs3v5ql5U6hxj_6fontir.exit.i, label %bb.e, !prof !8

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2M_3cmp9PartialEq2eq0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEECs3v5ql5U6hxj_6fontir.exit, !prof !7

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.al
  br label %bb.d

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCscDfuDmzQoJe_5kurbo5point5PointENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB36_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0Cs3v5ql5U6hxj_6fontir.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val4.i.i.i = load double, ptr %i.an, align 8, !noundef !4
  %i.ao = getelementptr i8, ptr %i.ad, i64 -8
  %.val5.i.i.i = load double, ptr %i.ao, align 8
  %i.ap = fcmp une double %.val6.i, %.val4.i.i.i
  %i.aq = fcmp une double %.val7.i, %.val5.i.i.i
  %.sroa.0.0.i6.i.not.i.i = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.sroa.0.0.i6.i.not.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2M_3cmp9PartialEq2eq0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEECs3v5ql5U6hxj_6fontir.exit, label %.split

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2M_3cmp9PartialEq2eq0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEECs3v5ql5U6hxj_6fontir.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCscDfuDmzQoJe_5kurbo5point5PointENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB36_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0Cs3v5ql5U6hxj_6fontir.exit.i, %.split, %._crit_edge.i.i.i.i.i, %.split.us
  %.not.not.not.not.i.not5 = phi i1 [ %.not.not.not.not.i.not.us, %.split.us ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.not.i.not, %.split ], [ %.not.not.not.not.i.not, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCscDfuDmzQoJe_5kurbo5point5PointENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB36_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0Cs3v5ql5U6hxj_6fontir.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2M_3cmp9PartialEq2eq0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEECs3v5ql5U6hxj_6fontir.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not5, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2E_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2M_3cmp9PartialEq2eq0E0INtNtNtB2M_3ops12control_flow11ControlFlowuEECs3v5ql5U6hxj_6fontir.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1K_dEEEENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqB17_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1u_dEEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterBR_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1r_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not15.not.i = icmp eq ptr %i.g, null
  br i1 %.not15.not.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = icmp eq i64 %i.c, 0
  %i.k = load i64, ptr %i.i, align 8              ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !4   ; 2 uses
  br i1 %i.j, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1V_dEEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3H_7HashMapB1d_B1U_ENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i
  %i.m = phi ptr [ %i.bg, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1V_dEEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3H_7HashMapB1d_B1U_ENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.n = phi { ptr, ptr } [ %i.bf, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1V_dEEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3H_7HashMapB1d_B1U_ENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i ], [ %i.f, %.lr.ph.i ]
  %i.o = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val6.i = load ptr, ptr %i.p, align 8          ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 16
  %.val7.i = load i64, ptr %i.q, align 8          ; 3 uses
  %i.r = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricEB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.m) ; 2 uses
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.split
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.split ], [ %i.am, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.split ], [ %i.an, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.k ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.w, align 1, !noalias !743 ; 2 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.v
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.al, %bb.d ], [ %i.y, %bb.c ] ; 3 uses
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aa
  %i.ac = and i64 %i.ab, %i.k
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -32
  %i.ag = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af), !noalias !744
  br i1 %i.ag, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1v_dEEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBS_.exit.i.i.i, label %bb.d, !prof !8

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %i.aj = icmp eq i16 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit, !prof !7

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.al = and i16 %i.ak, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.am = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.an = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.am
  br label %bb.c

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1v_dEEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBS_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr i8, ptr %i.ae, i64 -16
  %.val4.i.i.i = load ptr, ptr %i.ao, align 8     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ae, i64 -8
  %.val5.i.i.i = load i64, ptr %i.ap, align 8, !noundef !4
  %i.aq = icmp eq i64 %.val7.i, %.val5.i.i.i      ; 3 uses
  br i1 %i.aq, label %bb.f, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit

bb.f:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1v_dEEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBS_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i), "nonnull"(ptr %.val6.i) ]
  %i.ar = icmp eq i64 %.val7.i, 0
  br i1 %i.ar, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1V_dEEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3H_7HashMapB1d_B1U_ENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i, label %.lr.ph.i.i7.i.i.i

bb.g:                                             ; preds = %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtNtCsgCecv3eZDcN_5alloc3vec3VecdEENtNtB7_3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i
  %i.as = add nuw i64 %.sroa.01.06.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.as, %.val7.i
  br i1 %exitcond.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1V_dEEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3H_7HashMapB1d_B1U_ENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i, label %.lr.ph.i.i7.i.i.i

.lr.ph.i.i7.i.i.i:                                ; preds = %bb.f, %bb.g
  %.sroa.01.06.i.i.i.i.i = phi i64 [ %i.as, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %.val6.i, i64 %.sroa.01.06.i.i.i.i.i ; 4 uses
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %.val4.i.i.i, i64 %.sroa.01.06.i.i.i.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.ax = call noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
  br i1 %i.ax, label %_RNvYNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit

_RNvYNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i7.i.i.i
  %i.ay = call noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB5_7HashSetNtNtCsbZq13ASDQ8l_10font_types3tag3TagENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.au)
  br i1 %i.ay, label %bb.h, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit

bb.h:                                             ; preds = %_RNvYNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %.val1.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !745, !noalias !747, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !746, !noundef !4
  %i.bb = icmp eq i64 %.val1.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.bb, label %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtNtCsgCecv3eZDcN_5alloc3vec3VecdEENtNtB7_3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit

_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtNtCsgCecv3eZDcN_5alloc3vec3VecdEENtNtB7_3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !746, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !745, !noalias !747, !nonnull !4, !noundef !4
  %i.be = call noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpdINtB5_14SlicePartialEqdE17equal_same_lengthCs3v5ql5U6hxj_6fontir(ptr noundef nonnull %.val.i.i.i.i.i.i, ptr noundef nonnull %.val2.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i)
  br i1 %i.be, label %bb.g, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1V_dEEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3H_7HashMapB1d_B1U_ENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i: ; preds = %bb.g, %bb.f
  %i.bf = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1r_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.bg = extractvalue { ptr, ptr } %i.bf, 0      ; 2 uses
  %.not.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit, label %.lr.ph.i.split

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1V_dEEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3H_7HashMapB1d_B1U_ENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1v_dEEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBS_.exit.i.i.i, %._crit_edge.i.i.i.i.i, %.lr.ph.i.i7.i.i.i, %_RNvYNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i.i, %bb.h, %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtNtCsgCecv3eZDcN_5alloc3vec3VecdEENtNtB7_3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i, %.lr.ph.i, %bb.b
  %i.bh = phi i1 [ false, %._crit_edge.i.i.i.i.i ], [ true, %bb.b ], [ false, %.lr.ph.i.i7.i.i.i ], [ false, %.lr.ph.i ], [ false, %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtNtCsgCecv3eZDcN_5alloc3vec3VecdEENtNtB7_3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i ], [ false, %bb.h ], [ false, %_RNvYNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCs3v5ql5U6hxj_6fontir.exit.i.i.i.i.i.i ], [ %i.aq, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1v_dEEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EBS_.exit.i.i.i ], [ %i.aq, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1V_dEEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3H_7HashMapB1d_B1U_ENtNtBe_3cmp9PartialEq2eq0E0B1h_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit
  %.sroa.0.0 = phi i1 [ %i.bh, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCs3v5ql5U6hxj_6fontir2ir12GlobalMetricINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionIB1C_dEEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB1B_ENCNvXs4_B6_INtB6_7HashMapBV_B1B_ENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEBZ_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2Y_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtNtBa_5slice4iter4IterNtB46_9ComponentENCNvNtB48_5glyph24prune_missing_components0ENCB5v_s_0ENCB5v_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB48_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call noundef align 8 ptr @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2i_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtNtBc_5slice4iter4IterNtB3q_9ComponentENCNvNtB3s_5glyph24prune_missing_components0ENCB4P_s_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5F_4find5checkRNtNtB2k_5types9GlyphNameQNCB4P_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6J_EEB3s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1) ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 8, !range !16, !alias.scope !750, !noundef !4
  %i.e = icmp eq i8 %i.d, 25
  br i1 %i.e, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_RNvXsf_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #28
  br label %_RNvXsf_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

_RNvXsf_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXsf_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtB6_3map3MapINtNtB6_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2Y_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtNtBa_5slice4iter4IterNtB46_9ComponentENCNvNtB48_5glyph24prune_missing_components0ENCB5v_s_0ENCB5v_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB48_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !766, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !767, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !766, !noundef !4 ; 2 uses
  %.not53.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not53.i.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2D_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtNtBb_5slice4iter4IterNtB3L_9ComponentENCNvNtB3N_5glyph24prune_missing_components0ENCB5a_s_0ENCB5a_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3N_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i62.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !768, !nonnull !4, !noundef !4
  %i.k = ptrtoint ptr %.val3.i62.i.i.i.i to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 96
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2D_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtNtBb_5slice4iter4IterNtB3L_9ComponentENCNvNtB3N_5glyph24prune_missing_components0ENCB5a_s_0ENCB5a_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3N_.exit

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2D_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEINtNtNtBb_5slice4iter4IterNtB3L_9ComponentENCNvNtB3N_5glyph24prune_missing_components0ENCB5a_s_0ENCB5a_s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3N_.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i, %bb.c
  %.sroa.8.0.i.i.i.i = phi i64 [ %i.n, %bb.c ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintEB1d_.exit.i.i.i.i ]
  %i.o = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !766, !noundef !4
  %.not54.i.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !766
  %i.s = icmp eq i64 %.val.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %.not54.i.i.i.i, i1 true, i1 %i.s ; 2 uses
  %spec.select.i = select i1 %or.cond.i.i.i.i, i64 %i.o, i64 undef
  %spec.select1.i = zext i1 %or.cond.i.i.i.i to i64
  store i64 0, ptr %0, align 8, !alias.scope !764
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select1.i, ptr %i.t, align 8, !alias.scope !764
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.u, align 8, !alias.scope !764
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1P_23origin_adjusted_anchorss0_0EENtNtNtB8_6traits8iterator8Iterator4nextB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !776
  store ptr %i.d, ptr %i.c, align 8, !noalias !778
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !779, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !779 ; 2 uses
  %i.g = icmp eq ptr %.promoted.i.i, %i.f
  br i1 %i.g, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1u_23origin_adjusted_anchorss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.i, %bb.b ], [ %.promoted.i.i, %bb.a ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !778
  store ptr %i.h, ptr %i.b, align 8, !noalias !778, !captures !780
  %i.j = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCs3v5ql5U6hxj_6fontir17propagate_anchors23origin_adjusted_anchorss0_0INtB7_5FnMutTRRNtBS_9RawAnchorEE8call_mutBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !778
  br i1 %i.j, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1u_23origin_adjusted_anchorss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = icmp eq ptr %i.i, %i.f
  br i1 %i.k, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1u_23origin_adjusted_anchorss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread, label %.lr.ph.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1u_23origin_adjusted_anchorss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !776
  br label %bb.f

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1u_23origin_adjusted_anchorss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !776
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1u_23origin_adjusted_anchorss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit
  %i.l = load i8, ptr %i.h, align 8, !range !16, !alias.scope !781, !noundef !4
  %i.m = icmp eq i8 %i.l, 25
  br i1 %i.m, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.h, i64 24, i1 false)
  br label %_RNvXs_NtCs3v5ql5U6hxj_6fontir17propagate_anchorsNtB4_9RawAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.h) #28
  br label %_RNvXs_NtCs3v5ql5U6hxj_6fontir17propagate_anchorsNtB4_9RawAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

_RNvXs_NtCs3v5ql5U6hxj_6fontir17propagate_anchorsNtB4_9RawAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load <2 x double>, ptr %i.n, align 8, !alias.scope !781
  store <2 x double> %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1u_23origin_adjusted_anchorss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.thread, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1u_23origin_adjusted_anchorss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs_NtCs3v5ql5U6hxj_6fontir17propagate_anchorsNtB4_9RawAnchorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir17propagate_anchors9RawAnchorENCNvB1P_23origin_adjusted_anchorss0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #9 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 40
  store i64 0, ptr %0, align 8, !alias.scope !784
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !784
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !784
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENCNvMs4_NtNtCs3v5ql5U6hxj_6fontir2ir15static_metadataNtB2B_14StaticMetadata3new0EENtNtNtB8_6traits8iterator8Iterator4nextB2F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([296 x i8]) align 8 captures(none) dereferenceable(296) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
end_hunk_0
