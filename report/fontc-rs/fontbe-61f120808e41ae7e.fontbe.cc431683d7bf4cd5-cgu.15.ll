Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.15?download=true
inline.NumInlined: 2339
inline.NumDeleted: 1551
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringtENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe:bb.a
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.al, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !3944 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.ae = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsgCecv3eZDcN_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !3945
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsgCecv3eZDcN_5alloc6string6StringRtENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB20_7HashMapB1d_tENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, label %bb.e, !prof !16

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringtENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkTRBV_RtENCNvXs4_B6_INtB6_7HashMapBV_tENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, !prof !17

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.d

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsgCecv3eZDcN_5alloc6string6StringRtENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB20_7HashMapB1d_tENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.val3.i.i.i = load i16, ptr %i.am, align 2, !noundef !5
  %.not8.i = icmp eq i16 %.val6.i, %.val3.i.i.i
  br i1 %.not8.i, label %.split, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringtENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkTRBV_RtENCNvXs4_B6_INtB6_7HashMapBV_tENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringtENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkTRBV_RtENCNvXs4_B6_INtB6_7HashMapBV_tENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsgCecv3eZDcN_5alloc6string6StringRtENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB20_7HashMapB1d_tENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, %.split, %._crit_edge.i.i.i.i.i, %.split.us
  %.not.not.not.not.i.not4 = phi i1 [ %.not.not.not.not.i.not.us, %.split.us ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.not.i.not, %.split ], [ %.not.not.not.not.i.not, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsgCecv3eZDcN_5alloc6string6StringRtENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB20_7HashMapB1d_tENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringtENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkTRBV_RtENCNvXs4_B6_INtB6_7HashMapBV_tENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not4, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringtENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkTRBV_RtENCNvXs4_B6_INtB6_7HashMapBV_tENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = icmp eq i64 %i.c, 0
  %i.i = load i64, ptr %i.g, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !5   ; 2 uses
  br i1 %i.h, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.not.not.not.i.not.us = icmp eq ptr %i.l, null
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2t_3all5checkTRBV_RB1F_ENCNvXs4_B6_INtB6_7HashMapBV_B1F_ENtNtB2B_3cmp9PartialEq2eq0E0INtNtNtB2B_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

.split:                                           ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2U_7HashMapB1d_B1Y_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i
  %i.m = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.n, null ; 3 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2t_3all5checkTRBV_RB1F_ENCNvXs4_B6_INtB6_7HashMapBV_B1F_ENtNtB2B_3cmp9PartialEq2eq0E0INtNtNtB2B_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.val6.i = load i16, ptr %i.o, align 2
  %i.p = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ak, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %i.al, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !3957 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.ae = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtB2_10EquivalentBq_E10equivalentCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !3958
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2U_7HashMapB1d_B1Y_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, label %bb.e, !prof !16

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2t_3all5checkTRBV_RB1F_ENCNvXs4_B6_INtB6_7HashMapBV_B1F_ENtNtB2B_3cmp9PartialEq2eq0E0INtNtNtB2B_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, !prof !17

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.d

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2U_7HashMapB1d_B1Y_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.val3.i.i.i = load i16, ptr %i.am, align 2, !noundef !5
  %.not8.i = icmp eq i16 %.val6.i, %.val3.i.i.i
  br i1 %.not8.i, label %.split, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2t_3all5checkTRBV_RB1F_ENCNvXs4_B6_INtB6_7HashMapBV_B1F_ENtNtB2B_3cmp9PartialEq2eq0E0INtNtNtB2B_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2t_3all5checkTRBV_RB1F_ENCNvXs4_B6_INtB6_7HashMapBV_B1F_ENtNtB2B_3cmp9PartialEq2eq0E0INtNtNtB2B_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2U_7HashMapB1d_B1Y_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, %.split, %._crit_edge.i.i.i.i.i, %.split.us
  %.not.not.not.not.i.not4 = phi i1 [ %.not.not.not.not.i.not.us, %.split.us ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.not.i.not, %.split ], [ %.not.not.not.not.i.not, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2U_7HashMapB1d_B1Y_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2t_3all5checkTRBV_RB1F_ENCNvXs4_B6_INtB6_7HashMapBV_B1F_ENtNtB2B_3cmp9PartialEq2eq0E0INtNtNtB2B_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not4, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2t_3all5checkTRBV_RB1F_ENCNvXs4_B6_INtB6_7HashMapBV_B1F_ENtNtB2B_3cmp9PartialEq2eq0E0INtNtNtB2B_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtB15_6SourceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %.not = icmp eq i64 %i.e, %i.g
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBP_6SourceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBM_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %.not.not.not.not.i.not5 = icmp eq ptr %i.j, null
  br i1 %.not.not.not.not.i.not5, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = icmp eq i64 %i.e, 0
  %i.n = load <2 x i64>, ptr %i.l, align 8        ; 3 uses
  %i.o = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.p = xor <2 x i64> %i.o, <i64 8317987319222330741, i64 7816392313619706465>
  %i.q = shufflevector <2 x i64> %i.n, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.r = xor <2 x i64> %i.q, <i64 7237128888997146477, i64 8387220255154660723>
  %i.s = load i64, ptr %i.k, align 8              ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !nonnull !5   ; 2 uses
  br i1 %i.m, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  call void @llvm.experimental.noalias.scope.decl(metadata !3997)
  call void @llvm.experimental.noalias.scope.decl(metadata !3998)
  call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  call void @llvm.experimental.noalias.scope.decl(metadata !4000)
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge.i
  %i.u = phi ptr [ %i.er, %.backedge.i ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.v = phi { ptr, ptr } [ %i.eq, %.backedge.i ], [ %i.i, %.lr.ph ]
  %i.w = extractvalue { ptr, ptr } %i.v, 1        ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  call void @llvm.experimental.noalias.scope.decl(metadata !3997)
  call void @llvm.experimental.noalias.scope.decl(metadata !3998)
  call void @llvm.experimental.noalias.scope.decl(metadata !3999)
  call void @llvm.experimental.noalias.scope.decl(metadata !4000)
  call void @llvm.experimental.noalias.scope.decl(metadata !4001)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4002
  store <2 x i64> %i.p, ptr %i.b, align 16, !alias.scope !4003, !noalias !4002
  store <2 x i64> %i.r, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !4003, !noalias !4002
  store <2 x i64> %i.n, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !4003, !noalias !4002
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !4003, !noalias !4002
  %.val.i.i.i.i.i.i = load i32, ptr %i.u, align 4, !range !31, !alias.scope !4004, !noalias !4005, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4006
  store i32 %.val.i.i.i.i.i.i, ptr %i.a, align 4, !noalias !4006
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #44, !noalias !4007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4006
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !4008, !noalias !4002
  %.sroa.10.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !4008, !noalias !4002
  %.sroa.17.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !4008, !noalias !4002 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !4008, !noalias !4002
  %i.x = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !4008, !noalias !4002, !noundef !5
  %i.y = shl i64 %i.x, 56
  %i.z = load i64, ptr %i.h, align 8, !alias.scope !4008, !noalias !4002, !noundef !5
  %i.aa = or i64 %i.y, %i.z                       ; 2 uses
  %i.ab = xor i64 %i.aa, %.sroa.22.0.copyload.i.i.i.i.i.i.i ; 3 uses
  %i.ac = add i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i ; 3 uses
  %i.ad = add i64 %i.ab, %.sroa.10.0.copyload.i.i.i.i.i.i.i ; 2 uses
  %i.ae = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i.i.i, i64 13)
  %i.af = xor i64 %i.ae, %i.ac                    ; 3 uses
  %i.ag = call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.ad, %i.af                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = xor i64 %i.ak, %i.aa
  %i.ar = xor i64 %i.ap, 255
  %i.as = add i64 %i.aq, %i.am                    ; 3 uses
  %i.at = add i64 %i.ao, %i.ar                    ; 2 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.av = xor i64 %i.as, %i.au                    ; 3 uses
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.az, %i.bb                    ; 3 uses
  %i.bd = call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 3 uses
  %i.bm = call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bn = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bo = add i64 %i.bl, %i.bm                    ; 2 uses
  %i.bp = call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bq = xor i64 %i.bp, %i.bn                    ; 3 uses
  %i.br = call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bs = xor i64 %i.br, %i.bo                    ; 3 uses
  %i.bt = call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.bu = add i64 %i.bq, %i.bo
  %i.bv = add i64 %i.bs, %i.bt                    ; 2 uses
  %i.bw = call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 13)
  %i.bx = xor i64 %i.bw, %i.bu                    ; 3 uses
  %i.by = call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 16)
  %i.bz = xor i64 %i.by, %i.bv                    ; 2 uses
  %i.ca = add i64 %i.bx, %i.bv                    ; 3 uses
  %i.cb = call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 17)
  %i.cc = call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 21)
  %i.cd = call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ce = xor i64 %i.cc, %i.cb
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = xor i64 %i.cf, %i.ca                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4002
  %i.ch = lshr i64 %i.cg, 57
  %i.ci = trunc nuw nsw i64 %i.ch to i8
  %i.cj = insertelement <16 x i8> poison, i8 %i.ci, i64 0
  %i.ck = shufflevector <16 x i8> %i.cj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split ], [ %i.db, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.split ], [ %i.dc, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.s ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.cl, align 1, !noalias !4009 ; 2 uses
  %i.cm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.ck
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.da, %bb.d ], [ %i.cn, %bb.c ] ; 3 uses
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.cp
  %i.cr = and i64 %i.cq, %i.s
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds [72 x i8], ptr %i.t, i64 %i.cs ; 8 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -72
  %i.cv = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdINtB2_10EquivalentBq_E10equivalentCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cu), !noalias !4010
  br i1 %i.cv, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBQ_6SourceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe.exit.i.i.i, label %bb.d, !prof !16

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.e, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, !prof !17

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cz = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.da = and i16 %i.cz, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.db = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.dc = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.db
  br label %bb.c

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBQ_6SourceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  call void @llvm.experimental.noalias.scope.decl(metadata !4012)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.de = load i32, ptr %i.dd, align 8, !range !31, !alias.scope !4013, !noundef !5
  %i.df = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dg = load i32, ptr %i.df, align 8, !range !31, !alias.scope !4012, !noalias !4014, !noundef !5
  %i.dh = icmp eq i32 %i.de, %i.dg
  br i1 %i.dh, label %bb.f, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

bb.f:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBQ_6SourceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe.exit.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i4.i.i.i = load ptr, ptr %i.di, align 8, !alias.scope !4013, !nonnull !5, !noundef !5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.dj, align 8, !alias.scope !4013, !noundef !5
  %i.dk = getelementptr inbounds i8, ptr %i.ct, i64 -56
  %.val4.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !4012, !noalias !4014
  %i.dl = getelementptr inbounds i8, ptr %i.ct, i64 -48
  %.val5.i5.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !4012, !noalias !4014
  %i.dm = call fastcc noundef zeroext i1 @_RNvXsW_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr %.val.i4.i.i.i, i64 %.val3.i.i.i.i, ptr %.val4.i.i.i.i, i64 %.val5.i5.i.i.i) #44, !noalias !4015
  br i1 %i.dm, label %bb.g, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

bb.g:                                             ; preds = %bb.f
  %i.dn = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !4013, !nonnull !5, !noundef !5 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !4013, !noundef !5 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.ct, i64 -40
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !4012, !noalias !4014, !nonnull !5, !noundef !5 ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.ct, i64 -32
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !4012, !noalias !4014, !noundef !5
  %i.dv = icmp eq ptr %i.do, %i.ds
  %i.dw = icmp eq i64 %i.dq, %i.du                ; 2 uses
  %i.dx = and i1 %i.dv, %i.dw
  br i1 %i.dx, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.dw, label %bb.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

bb.i:                                             ; preds = %bb.h
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.dz, ptr nonnull %i.dy, i64 %i.dq), !noalias !4015
  %i.ea = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ea, label %bb.j, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !4013, !nonnull !5, !noundef !5 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !4013, !noundef !5 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ct, i64 -24
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !4012, !noalias !4014, !nonnull !5, !noundef !5 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.ct, i64 -16
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !4012, !noalias !4014, !noundef !5
  %i.ej = icmp eq ptr %i.ec, %i.eg                ; 2 uses
  %i.ek = icmp eq i64 %i.ee, %i.ei                ; 2 uses
  %.not.i6.i.i.i = xor i1 %i.ek, true
  %brmerge.i.i.i.i = or i1 %i.ej, %.not.i6.i.i.i
  br i1 %brmerge.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdRNtB1f_6SourceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2l_7HashMapB1d_B1Z_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.j
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.en = shl nuw i64 %i.ee, 3
  %bcmp2.i.i.i.i = call i32 @bcmp(ptr nonnull %i.el, ptr nonnull %i.em, i64 %i.en), !noalias !4015
  %i.eo = icmp eq i32 %bcmp2.i.i.i.i, 0
  br i1 %i.eo, label %.backedge.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdRNtB1f_6SourceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2l_7HashMapB1d_B1Z_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.j
  %i.ep = and i1 %i.ej, %i.ek
  br i1 %i.ep, label %.backedge.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

.backedge.i:                                      ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdRNtB1f_6SourceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2l_7HashMapB1d_B1Z_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, %.split.i
  %i.eq = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBM_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) ; 2 uses
  %i.er = extractvalue { ptr, ptr } %i.eq, 0      ; 2 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.er, null
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph.split

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdRNtB1f_6SourceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2l_7HashMapB1d_B1Z_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, %.split.i, %bb.i, %bb.h, %bb.f, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBQ_6SourceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe.exit.i.i.i, %.backedge.i, %._crit_edge.i.i.i.i.i, %bb.b, %.lr.ph.split.us
  %.not.not.not.not.i.not4 = phi i1 [ false, %.lr.ph.split.us ], [ true, %bb.b ], [ false, %._crit_edge.i.i.i.i.i ], [ false, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdRNtB1f_6SourceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2l_7HashMapB1d_B1Z_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i ], [ false, %.split.i ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.f ], [ false, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBQ_6SourceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECshxhuDJfZv4T_6fontbe.exit.i.i.i ], [ true, %.backedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not4, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBX_6SourceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1T_3all5checkTRBV_RB1G_ENCNvXs4_B6_INtB6_7HashMapBV_B1G_ENtNtB21_3cmp9PartialEq2eq0E0INtNtNtB21_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMaptNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = icmp eq i64 %i.c, 0
  %i.i = load i64, ptr %i.g, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !5   ; 2 uses
  br i1 %i.h, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.not.not.not.i.not.us = icmp eq ptr %i.l, null
  br i1 %.not.not.not.not.i.not.us, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRtRBW_ENCNvXs4_B6_INtB6_7HashMaptBW_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, label %bb.c

bb.c:                                             ; preds = %.split.us
  call void @llvm.experimental.noalias.scope.decl(metadata !4034)
  call void @llvm.experimental.noalias.scope.decl(metadata !4035)
  call void @llvm.experimental.noalias.scope.decl(metadata !4036)
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRtRBW_ENCNvXs4_B6_INtB6_7HashMaptBW_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

.split:                                           ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRtRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2b_7HashMaptB1f_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i
  %i.m = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.n, null ; 3 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRtRBW_ENCNvXs4_B6_INtB6_7HashMaptBW_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, label %bb.d

bb.d:                                             ; preds = %.split
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.val6.i = load i16, ptr %i.o, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !4034)
  call void @llvm.experimental.noalias.scope.decl(metadata !4035)
  call void @llvm.experimental.noalias.scope.decl(metadata !4036)
  %i.p = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRtECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.n) ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i.i.i = load i16, ptr %i.n, align 2, !alias.scope !4037
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ak, %bb.g ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.al, %bb.g ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !4038 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %.val2.i.i.i.i.i.i = load i16, ptr %i.ad, align 2, !alias.scope !4039, !noalias !4040, !noundef !5
  %i.ae = icmp eq i16 %.val.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRtRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2b_7HashMaptB1f_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, label %bb.f, !prof !16

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %bb.e
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRtRBW_ENCNvXs4_B6_INtB6_7HashMaptBW_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, !prof !17

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.e

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRtRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2b_7HashMaptB1f_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -2
  %.val3.i.i.i = load i16, ptr %i.am, align 2, !noalias !4041, !noundef !5
  %.not8.i = icmp eq i16 %.val6.i, %.val3.i.i.i
  br i1 %.not8.i, label %.split, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRtRBW_ENCNvXs4_B6_INtB6_7HashMaptBW_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRtRBW_ENCNvXs4_B6_INtB6_7HashMaptBW_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRtRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2b_7HashMaptB1f_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i, %.split, %._crit_edge.i.i.i.i.i, %.split.us, %bb.c
  %.not.not.not.not.i.not4 = phi i1 [ true, %.split.us ], [ false, %bb.c ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.not.i.not, %.split ], [ %.not.not.not.not.i.not, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRtRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB2b_7HashMaptB1f_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRtRBW_ENCNvXs4_B6_INtB6_7HashMaptBW_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not4, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4ItertNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3all5checkTRtRBW_ENCNvXs4_B6_INtB6_7HashMaptBW_ENtNtB1S_3cmp9PartialEq2eq0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core5array8equalityNtNtCs2sOuOmxaxiH_7tinystr9asciibyte9AsciiByteINtB5_11SpecArrayEqBH_Kj4_E7spec_eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %1) unnamed_addr #18 {
".lr.ph.i+.lr.ph.i.1+.lr.ph.i.2+.lr.ph.i.3":
  %i.a = load i32, ptr %0, align 1
  %i.b = load i32, ptr %1, align 1
  %i.c = icmp ne i32 %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsV_NtCsf3Ta7LF998c_4core5arrayAhja_NtNtB7_7default7Default7defaultCshxhuDJfZv4T_6fontbe(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([10 x i8]) align 1 captures(none) dereferenceable(10) initializes((0, 10)) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %0, i8 0, i64 10, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsW_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr nofree nonnull readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr nofree readonly captures(address, read_provenance) %.8.val1, i64 %.16.val3) unnamed_addr #10 {
bb.a:
  %.sroa.5.i = alloca [39 x i8], align 1          ; 4 uses
  %.sroa.518.i = alloca [39 x i8], align 1        ; 4 uses
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 13 uses
  %i.d = alloca [64 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val1) ]
  call void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.8.val1, i64 noundef %.16.val3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4046)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !4045, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4046, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %i.d, align 8, !alias.scope !4045
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = load i8, ptr %i.j, align 8, !range !4047, !alias.scope !4045, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load i8, ptr %i.l, align 8, !range !4047, !alias.scope !4046, !noundef !5
  %i.n = icmp eq i8 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.p = load i8, ptr %i.o, align 1, !range !4047, !alias.scope !4045
  %i.q = icmp eq i8 %i.p, 2
  %or.cond.i = select i1 %i.n, i1 %i.q, i1 false
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !4047, !alias.scope !4046
  %i.t = icmp eq i8 %i.s, 2
  %or.cond7.i = select i1 %or.cond.i, i1 %i.t, i1 false
  %.pre27.i = load ptr, ptr %i.d, align 8, !alias.scope !4045 ; 3 uses
  br i1 %or.cond7.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %._crit_edge.i
  %i.u = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.pre27.i, %bb.d ], [ %.pre27.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4048
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !4049, !alias.scope !4045, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.w, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.c, align 8, !alias.scope !4046, !nonnull !5, !noundef !5
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.pre27.i, ptr nonnull %i.x, i64 %i.f), !noalias !4048
  %i.y = icmp eq i32 %bcmp.i, 0
  br i1 %i.y, label %_RNvXsl_NtCs5Xr050g3D4S_3std4pathNtB5_10ComponentsNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i, i64 39, i1 false), !noalias !4046
end_hunk_0
