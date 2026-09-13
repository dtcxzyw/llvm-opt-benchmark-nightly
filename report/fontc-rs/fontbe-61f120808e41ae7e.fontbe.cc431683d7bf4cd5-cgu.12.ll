Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.12?download=true
begin_hunk_0_@_RINvXs2_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtB6_6U32SetINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendmE6extendINtNtNtB1n_8adapters3map3MapINtNtB2n_10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB52_19GatherIrKerningWorkINtNtB4e_13orchestration4WorkNtNtB56_13orchestration7ContextNtB6B_9AnyWorkIdNtNtB56_5error5ErrorE4execs_00ENCINvXs4_B8_INtB8_6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EIB1h_B8e_E6extendB2K_E0EEB56_:bb.a
  %.not9.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not9.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.loopexit:                                        ; preds = %bb.e, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8find_map5checkRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16QNCNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB2W_19GatherIrKerningWorkINtNtB1l_13orchestration4WorkNtNtB30_13orchestration7ContextNtB4v_9AnyWorkIdNtNtB30_5error5ErrorE4execs_00E0B30_.exit.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtB6_6U32SetINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendmE6extendINtNtNtB1n_8adapters3map3MapINtNtB2n_5chain5ChainINtNtB2n_10filter_map9FilterMapINtNtNtB1p_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB5y_9MarkGroup21make_filter_glyph_sets_00EIB36_IB3B_TB42_INtB5y_16BaseOrLigAnchorsB4P_EEENCB5t_s_0EENCINvXs4_B8_INtB8_6IntSetB42_EIB1h_B42_E6extendB2K_E0EEB5C_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 -1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  %i.l = load ptr, ptr %i.c, align 8, !alias.scope !1491, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.thread5.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1492)
  call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1495
  store ptr %i.g, ptr %i.b, align 8, !noalias !1496
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !1497, !noalias !1498, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.thread8.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.p, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.q = call { i16, i16 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtBV_9MarkGroup21make_filter_glyph_sets_00INtB7_5FnMutTRTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEEE8call_mutBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o), !noalias !1494 ; 3 uses
  %i.r = extractvalue { i16, i16 } %i.q, 0        ; 2 uses
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB34_9MarkGroup21make_filter_glyph_sets_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB38_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = icmp eq ptr %i.p, %i.m
  br i1 %i.t, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.thread8.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.thread8.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1495
  store ptr null, ptr %i.c, align 8, !alias.scope !1491
  br label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.thread5.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB34_9MarkGroup21make_filter_glyph_sets_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB38_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.p, ptr %i.c, align 8, !alias.scope !1497, !noalias !1498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1495
  %.not4.i.i.i = icmp eq i16 %i.r, 1
  br i1 %.not4.i.i.i, label %bb.g, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.i.i: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB34_9MarkGroup21make_filter_glyph_sets_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB38_.exit.i.i.i
  store ptr null, ptr %i.c, align 8, !alias.scope !1491
  br label %bb.g

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.thread5.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.thread8.i.i, %bb.b
  %i.u = load ptr, ptr %i.i, align 8, !alias.scope !1499, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.thread5.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1502
  store ptr %i.j, ptr %i.a, align 8, !noalias !1503
  %i.v = load ptr, ptr %i.k, align 8, !alias.scope !1504, !noalias !1505, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3q_9MarkGroup21make_filter_glyph_sets_00EIB10_IB1u_TB1U_INtB3q_16BaseOrLigAnchorsB2H_EEENCB3l_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB3u_.exit.thread14.i, label %.lr.ph.i.i.i.i1.i.i

.lr.ph.i.i.i.i1.i.i:                              ; preds = %bb.e, %bb.f
  %i.x = phi ptr [ %i.y, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  %i.z = call { i16, i16 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtBV_9MarkGroup21make_filter_glyph_sets_0s_0INtB7_5FnMutTRTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtBV_16BaseOrLigAnchorsRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEEEE8call_mutBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !1501 ; 2 uses
  %i.aa = extractvalue { i16, i16 } %i.z, 0
  %i.ab = trunc i16 %i.aa to i1
  br i1 %i.ab, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3q_9MarkGroup21make_filter_glyph_sets_00EIB10_IB1u_TB1U_INtB3q_16BaseOrLigAnchorsB2H_EEENCB3l_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB3u_.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i1.i.i
  %i.ac = icmp eq ptr %i.y, %i.v
  br i1 %i.ac, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3q_9MarkGroup21make_filter_glyph_sets_00EIB10_IB1u_TB1U_INtB3q_16BaseOrLigAnchorsB2H_EEENCB3l_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB3u_.exit.thread14.i, label %.lr.ph.i.i.i.i1.i.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3q_9MarkGroup21make_filter_glyph_sets_00EIB10_IB1u_TB1U_INtB3q_16BaseOrLigAnchorsB2H_EEENCB3l_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB3u_.exit.thread14.i: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1502
  br label %.loopexit

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3q_9MarkGroup21make_filter_glyph_sets_00EIB10_IB1u_TB1U_INtB3q_16BaseOrLigAnchorsB2H_EEENCB3l_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB3u_.exit.i: ; preds = %.lr.ph.i.i.i.i1.i.i
  store ptr %i.y, ptr %i.i, align 8, !alias.scope !1504, !noalias !1505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1502
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3q_9MarkGroup21make_filter_glyph_sets_00EIB10_IB1u_TB1U_INtB3q_16BaseOrLigAnchorsB2H_EEENCB3l_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB3u_.exit.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB34_9MarkGroup21make_filter_glyph_sets_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB38_.exit.i.i.i
  %.pn.i = phi { i16, i16 } [ %i.z, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3q_9MarkGroup21make_filter_glyph_sets_00EIB10_IB1u_TB1U_INtB3q_16BaseOrLigAnchorsB2H_EEENCB3l_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB3u_.exit.i ], [ %i.q, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.i.i ], [ %i.q, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB34_9MarkGroup21make_filter_glyph_sets_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB38_.exit.i.i.i ]
  %.pn2.i.i7.i = extractvalue { i16, i16 } %.pn.i, 1
  %i.ad = zext i16 %.pn2.i.i7.i to i32
  call void @_RNvMs3_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtB5_13U32SetBuilder6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.ad)
  br label %bb.b

.loopexit:                                        ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3v_9MarkGroup21make_filter_glyph_sets_00EB1Z_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3z_.exit.thread5.i.i, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEENCNCNvMNtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3q_9MarkGroup21make_filter_glyph_sets_00EIB10_IB1u_TB1U_INtB3q_16BaseOrLigAnchorsB2H_EEENCB3l_s_0EENtNtNtB8_6traits8iterator8Iterator4nextB3u_.exit.thread14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtB6_6U32SetINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendmE6extendINtNtNtB1n_8adapters3map3MapINtNtB2n_6copied6CopiedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENCINvXs4_B8_INtB8_6IntSetB3Z_EIB1h_B3Z_E6extendB2K_E0EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.e = call { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.f = extractvalue { i16, i16 } %i.e, 0        ; 2 uses
  %i.g = trunc i16 %i.f to i1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.h = phi i16 [ %i.n, %.lr.ph ], [ %i.f, %bb.a ]
  %i.i = phi { i16, i16 } [ %i.m, %.lr.ph ], [ %i.e, %bb.a ]
  %i.j = trunc i16 %i.h to i1
  %i.k = extractvalue { i16, i16 } %i.i, 1
  %i.l = zext i16 %i.k to i32
  %.sroa.3.0.i = select i1 %i.j, i32 %i.l, i32 undef
  call void @_RNvMs3_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtB5_13U32SetBuilder6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %.sroa.3.0.i)
  %i.m = call { i16, i16 } @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtB8_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { i16, i16 } %i.m, 0        ; 2 uses
  %i.o = trunc i16 %i.n to i1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtB6_6U32SetINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendmE6extendINtNtNtB1n_8adapters3map3MapINtNtB2n_6filter6FilterIB2j_IB2j_INtNtB2n_9enumerate9EnumerateINtNtNtCsbeZck1VjBmm_8indexmap3set4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB5m_10GlyphOrder4iter0ENCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB6j_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss3_0ENCB6d_s4_0ENCINvXs4_B8_INtB8_6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EIB1h_B8y_E6extendB2K_E0EEB6n_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = call { i16, i16 } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtCsbeZck1VjBmm_8indexmap3set4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB35_10GlyphOrder4iter0ENCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB42_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss3_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5H_4find5checkNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16QNCB3W_s4_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6L_EEB46_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = extractvalue { i16, i16 } %i.f, 0        ; 2 uses
  %i.h = trunc i16 %i.g to i1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi i16 [ %i.o, %.lr.ph ], [ %i.g, %bb.a ]
  %i.j = phi { i16, i16 } [ %i.n, %.lr.ph ], [ %i.f, %bb.a ]
  %i.k = trunc i16 %i.i to i1
  %i.l = extractvalue { i16, i16 } %i.j, 1
  %i.m = zext i16 %i.l to i32
  %spec.select.i = select i1 %i.k, i32 %i.m, i32 undef
  call void @_RNvMs3_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtB5_13U32SetBuilder6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %spec.select.i)
  %i.n = call { i16, i16 } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtCsbeZck1VjBmm_8indexmap3set4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvMs2_NtCs3v5ql5U6hxj_6fontir2irNtB35_10GlyphOrder4iter0ENCNvMs2_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB42_17MarkLookupBuilder31split_mark_and_abvm_blwm_glyphss3_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5H_4find5checkNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16QNCB3W_s4_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6L_EEB46_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.o = extractvalue { i16, i16 } %i.n, 0        ; 2 uses
  %i.p = trunc i16 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i48 @_RNvMNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations14common_builderINtB2_17VarStoreRemappingNtNtB6_6layout14VariationIndexE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1518, !noalias !1519, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRmECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1522, !noalias !1523, !noundef !5 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !1522, !noalias !1523, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !1524 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownmINtB2_10EquivalentmE10equivalentCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.w), !noalias !1525
  br i1 %i.x, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit, label %bb.d, !prof !26

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit.thread, !prof !7

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.c

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -4
  %.val = load i16, ptr %i.af, align 2, !noundef !5
  %i.ag = getelementptr i8, ptr %i.v, i64 -2
  %.val3 = load i16, ptr %i.ag, align 2, !noundef !5
  br label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit.thread

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit
  %.sroa.4.0 = phi i16 [ %.val3, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit ], [ undef, %bb.a ], [ undef, %._crit_edge.i.i ]
  %.sroa.3.0 = phi i16 [ %.val, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit ], [ undef, %bb.a ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi i16 [ 1, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapmNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout14VariationIndexNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getmECshxhuDJfZv4T_6fontbe.exit ], [ 0, %bb.a ], [ 0, %._crit_edge.i.i ]
  %.sroa.4.0.insert.ext = zext i16 %.sroa.4.0 to i48
  %.sroa.4.0.insert.shift = shl nuw i48 %.sroa.4.0.insert.ext, 32
  %.sroa.3.0.insert.ext = zext i16 %.sroa.3.0 to i48
  %.sroa.3.0.insert.shift = shl nuw nsw i48 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCshxhuDJfZv4T_6fontbe8features4kernNtB5_5Names2at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %1, align 8, !range !9, !noundef !5 ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 -1, label %bb.b
    i64 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.n, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.g = trunc nuw i64 %i.c to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load i8, ptr %i.h, align 8, !range !10, !alias.scope !1532, !noalias !1533, !noundef !5
  %i.j = icmp eq i8 %i.i, 25                      ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.i, label %bb.h, !prof !7

bb.e:                                             ; preds = %bb.c
  br i1 %i.j, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.e
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #29
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #29
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.j:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !10, !noundef !5
  %i.m = icmp eq i8 %i.l, 25
  br i1 %i.m, label %bb.l, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.l:                                             ; preds = %bb.j
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k) #29
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.k, %bb.l, %bb.g, %bb.f, %bb.i, %bb.h
  %.sroa.0.0 = phi i64 [ 1, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %bb.i ], [ 2, %bb.l ], [ 2, %bb.k ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit7, %bb.w, %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  ret void

bb.n:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !25, !noundef !5
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %2
  %i.q = load ptr, ptr %i.p, align 8, !align !25, !noundef !5 ; 3 uses
  %.not6 = icmp eq ptr %i.q, null
  br i1 %.not6, label %bb.w, label %bb.p

bb.o:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.r = load i64, ptr %i.q, align 8, !range !15, !alias.scope !1534, !noalias !1535, !noundef !5
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.u = load i8, ptr %i.t, align 8, !range !10, !alias.scope !1534, !noalias !1535, !noundef !5
  %i.v = icmp eq i8 %i.u, 25                      ; 2 uses
  br i1 %i.s, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.v, label %bb.v, label %bb.u, !prof !7

bb.r:                                             ; preds = %bb.p
  br i1 %i.v, label %bb.t, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit7

bb.t:                                             ; preds = %bb.r
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) #29
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit7

bb.u:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit7

bb.v:                                             ; preds = %bb.q
  call void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) #29
  br label %_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit7

_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit7: ; preds = %bb.u, %bb.v, %bb.s, %bb.t
  %.sroa.09.0 = phi i64 [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.v ], [ 1, %bb.u ]
  store i64 %.sroa.09.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
end_hunk_0
