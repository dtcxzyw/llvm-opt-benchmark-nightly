Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.11?download=true
inline.NumInlined: 454
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs2p_NtCs3v5ql5U6hxj_6fontir2irNtB6_5PaintNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq:bb.a
  %i.gc = fcmp oeq float %i.fz, %i.gb
  br label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.ak
  %i.gd = fcmp uno float %i.gb, 0.000000e+00
  br label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.b
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !noundef !4 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !4
  %i.gi = icmp eq i64 %i.gf, %i.gh
  br i1 %i.gi, label %bb.au, label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %bb.d
  br i1 %i.n, label %bb.aq, label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %bb.d
  %i.gj = xor i1 %i.n, true
  br label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %bb.ao
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !noundef !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !noundef !4
  %i.go = icmp eq i8 %i.gl, %i.gn
  br i1 %i.go, label %bb.ar, label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gp = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.gq = load i8, ptr %i.gp, align 1, !noundef !4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !noundef !4
  %i.gt = icmp eq i8 %i.gq, %i.gs
  br i1 %i.gt, label %bb.as, label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.ar
  %i.gu = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.gx = load i8, ptr %i.gw, align 1, !noundef !4
  %i.gy = icmp eq i8 %i.gv, %i.gx
  br i1 %i.gy, label %bb.at, label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ha = load i8, ptr %i.gz, align 1, !noundef !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.hc = load i8, ptr %i.hb, align 1, !noundef !4
  %i.hd = icmp eq i8 %i.ha, %i.hc
  br label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.au:                                            ; preds = %bb.an
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !nonnull !4, !noundef !4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !nonnull !4, !noundef !4
  %.not33.not = icmp eq i64 %i.gf, 0
  br i1 %.not33.not, label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au, %.lr.ph
  %.sroa.01.0.i34 = phi i64 [ %i.hl, %.lr.ph ], [ 0, %bb.au ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %.sroa.01.0.i34
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %.sroa.01.0.i34
  %i.hk = tail call fastcc noundef zeroext i1 @_RNvXs2p_NtCs3v5ql5U6hxj_6fontir2irNtB6_5PaintNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hj) #25, !inline_history !487 ; 2 uses
  %i.hl = add nuw i64 %.sroa.01.0.i34, 1          ; 2 uses
  %exitcond.not = icmp ne i64 %i.hl, %i.gf
  %or.cond.not = select i1 %i.hk, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs2t_NtCs3v5ql5U6hxj_6fontir2irNtB6_10PaintGlyphNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB16_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBQ_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = icmp eq i64 %i.c, 0
  %i.i = load i64, ptr %i.g, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !4   ; 2 uses
  br i1 %i.h, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.not.not.not.i.not.us = icmp eq ptr %i.l, null
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB4n_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB4v_3cmp9PartialEq2eq0E0INtNtNtB4v_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

.split:                                           ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB4P_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.m = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.n, null ; 3 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB4n_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB4v_3cmp9PartialEq2eq0E0INtNtNtB4v_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1I_15NormalizedSpaceEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !520 ; 2 uses
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
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !521 ; 2 uses
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
  %i.ac = getelementptr inbounds [48 x i8], ptr %i.j, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.ae = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBt_15NormalizedSpaceEINtB2_10EquivalentBq_E10equivalentCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad), !noalias !522
  br i1 %i.ae, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB4P_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i, label %bb.e, !prof !6

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB4n_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB4v_3cmp9PartialEq2eq0E0INtNtNtB4v_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, !prof !7

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.d

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB4P_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.an = call noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
  br i1 %i.an, label %.split, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB4n_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB4v_3cmp9PartialEq2eq0E0INtNtNtB4v_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB4n_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB4v_3cmp9PartialEq2eq0E0INtNtNtB4v_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB4P_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i, %.split, %._crit_edge.i.i.i.i.i, %.split.us
  %.not.not.not.not.i.not5 = phi i1 [ %.not.not.not.not.i.not.us, %.split.us ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.not.i.not, %.split ], [ %.not.not.not.not.i.not, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB4P_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB4n_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB4v_3cmp9PartialEq2eq0E0INtNtNtB4v_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not5, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceEINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB4n_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB4v_3cmp9PartialEq2eq0E0INtNtNtB4v_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB16_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.not = icmp eq i64 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBQ_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %.not23.not.i = icmp eq ptr %i.h, null
  br i1 %.not23.not.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = icmp eq i64 %i.d, 0
  %i.l = load i64, ptr %i.j, align 8              ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !nonnull !4   ; 2 uses
  br i1 %i.k, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3d_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.n = phi ptr [ %i.gs, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3d_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i ], [ %i.h, %.lr.ph.i ] ; 2 uses
  %i.o = phi { ptr, ptr } [ %i.gr, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3d_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i ], [ %i.g, %.lr.ph.i ]
  %i.p = extractvalue { ptr, ptr } %i.o, 1        ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.q = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1I_15NormalizedSpaceEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !553 ; 2 uses
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.split
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.split ], [ %i.al, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.split ], [ %i.am, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.l ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !554 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ak, %bb.d ], [ %i.x, %bb.c ] ; 3 uses
  %i.y = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.l
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [112 x i8], ptr %i.m, i64 %i.ac ; 10 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -112
  %i.af = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBt_15NormalizedSpaceEINtB2_10EquivalentBq_E10equivalentCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ae), !noalias !555
  br i1 %i.af, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBR_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, label %bb.d, !prof !6

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, !prof !7

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.al
  br label %bb.c

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBR_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.ao = load double, ptr %i.an, align 8, !alias.scope !558, !noundef !4
  %i.ap = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.aq = load double, ptr %i.ap, align 8, !alias.scope !557, !noalias !553, !noundef !4
  %i.ar = fcmp oeq double %i.ao, %i.aq
  br i1 %i.ar, label %bb.f, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.f:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBR_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ad, i64 -88
  %i.at = load i64, ptr %i.p, align 8, !range !12, !alias.scope !558, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.av = trunc nuw i64 %i.at to i1
  %i.aw = load i64, ptr %i.as, align 8, !range !12, !alias.scope !557, !noalias !553, !noundef !4
  %i.ax = trunc nuw i64 %i.aw to i1               ; 2 uses
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ax, label %.split.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.h:                                             ; preds = %bb.f
  br i1 %i.ax, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.i

.split.i.i.i.i:                                   ; preds = %bb.g
  %i.ay = getelementptr inbounds i8, ptr %i.ad, i64 -80
  %i.az = load double, ptr %i.au, align 8, !alias.scope !558, !noundef !4
  %i.ba = load double, ptr %i.ay, align 8, !alias.scope !557, !noalias !553, !noundef !4
  %i.bb = fcmp oeq double %i.az, %i.ba
  br i1 %i.bb, label %bb.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.i:                                             ; preds = %.split.i.i.i.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !12, !alias.scope !558, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bf = trunc nuw i64 %i.bd to i1
  %i.bg = getelementptr inbounds i8, ptr %i.ad, i64 -72
  %i.bh = load i64, ptr %i.bg, align 8, !range !12, !alias.scope !557, !noalias !553, !noundef !4
  %i.bi = trunc nuw i64 %i.bh to i1               ; 2 uses
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.bi, label %.split4.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.k:                                             ; preds = %bb.i
  br i1 %i.bi, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.l

.split4.i.i.i.i:                                  ; preds = %bb.j
  %i.bj = getelementptr inbounds i8, ptr %i.ad, i64 -64
  %i.bk = load double, ptr %i.be, align 8, !alias.scope !558, !noundef !4
  %i.bl = load double, ptr %i.bj, align 8, !alias.scope !557, !noalias !553, !noundef !4
  %i.bm = fcmp oeq double %i.bk, %i.bl
  br i1 %i.bm, label %bb.l, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.l:                                             ; preds = %.split4.i.i.i.i, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !558, !noundef !4 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.ad, i64 -40
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !557, !noalias !553, !noundef !4
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.m, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds i8, ptr %i.ad, i64 -48
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !557, !noalias !553, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !558, !nonnull !4, !noundef !4
  %i.bw = icmp eq i64 %i.bo, 0
  br i1 %i.bw, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i, label %.lr.ph.i.i4.i.i.i

.lr.ph.i.i4.i.i.i:                                ; preds = %bb.m, %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i
  %.sroa.01.011.i.i.i.i.i = phi i64 [ %i.fd, %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i ], [ 0, %bb.m ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.sroa.01.011.i.i.i.i.i ; 2 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.sroa.01.011.i.i.i.i.i ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !noalias !559 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bx, i64 16
  %.val5.i.i.i.i.i = load i64, ptr %i.ca, align 8, !noalias !559, !noundef !4 ; 3 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 8
  %.val6.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !noalias !559 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.by, i64 16
  %.val7.i.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !559, !noundef !4
  %i.cd = icmp eq i64 %.val5.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.cd, label %bb.n, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.n:                                             ; preds = %.lr.ph.i.i4.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i.i.i), "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.ce = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.ce, label %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.n, %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread6.i.i.i.i.i.i.i.i.i
  %.sroa.01.09.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread6.i.i.i.i.i.i.i.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i.i.i ; 15 uses
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %.val6.i.i.i.i.i, i64 %.sroa.01.09.i.i.i.i.i.i.i.i.i ; 15 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.ch = load i64, ptr %i.cf, align 8, !range !10, !alias.scope !564, !noalias !559, !noundef !4 ; 2 uses
  %i.ci = load i64, ptr %i.cg, align 8, !range !10, !alias.scope !565, !noalias !559, !noundef !4
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.o, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  switch i64 %i.ch, label %default.unreachable [
    i64 0, label %bb.p
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.u
    i64 4, label %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread6.i.i.i.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cn = load double, ptr %i.cm, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.co = fcmp oeq double %i.cl, %i.cn
  br i1 %i.co, label %.split.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cq = load double, ptr %i.cp, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cs = load double, ptr %i.cr, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.ct = fcmp oeq double %i.cq, %i.cs
  br i1 %i.ct, label %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread6.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.q:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cv = load double, ptr %i.cu, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cx = load double, ptr %i.cw, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.cy = fcmp oeq double %i.cv, %i.cx
  br i1 %i.cy, label %.split35.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

.split35.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.da = load double, ptr %i.cz, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.dc = load double, ptr %i.db, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.dd = fcmp oeq double %i.da, %i.dc
  br i1 %i.dd, label %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread6.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.r:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.df = load double, ptr %i.de, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.dh = load double, ptr %i.dg, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.di = fcmp oeq double %i.df, %i.dh
  br i1 %i.di, label %bb.s, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.dk = load double, ptr %i.dj, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.dm = load double, ptr %i.dl, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.dn = fcmp oeq double %i.dk, %i.dm
  br i1 %i.dn, label %bb.t, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.t:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.dp = load double, ptr %i.do, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.dr = load double, ptr %i.dq, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.ds = fcmp oeq double %i.dp, %i.dr
  br i1 %i.ds, label %.split36.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

.split36.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.t
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.du = load double, ptr %i.dt, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.dw = load double, ptr %i.dv, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.dx = fcmp oeq double %i.du, %i.dw
  br i1 %i.dx, label %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread6.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.u:                                             ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dz = load double, ptr %i.dy, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.eb = load double, ptr %i.ea, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.ec = fcmp oeq double %i.dz, %i.eb
  br i1 %i.ec, label %bb.v, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.v:                                             ; preds = %bb.u
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ee = load double, ptr %i.ed, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.eh = fcmp oeq double %i.ee, %i.eg
  br i1 %i.eh, label %bb.w, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.w:                                             ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ej = load double, ptr %i.ei, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.el = load double, ptr %i.ek, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.em = fcmp oeq double %i.ej, %i.el
  br i1 %i.em, label %bb.x, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.x:                                             ; preds = %bb.w
  %i.en = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.eo = load double, ptr %i.en, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.eq = load double, ptr %i.ep, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.er = fcmp oeq double %i.eo, %i.eq
  br i1 %i.er, label %bb.y, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.y:                                             ; preds = %bb.x
  %i.es = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.et = load double, ptr %i.es, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ev = load double, ptr %i.eu, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.ew = fcmp oeq double %i.et, %i.ev
  br i1 %i.ew, label %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ey = load double, ptr %i.ex, align 8, !alias.scope !564, !noalias !559, !noundef !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.fa = load double, ptr %i.ez, align 8, !alias.scope !565, !noalias !559, !noundef !4
  %i.fb = fcmp oeq double %i.ey, %i.fa
  br i1 %i.fb, label %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread6.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread6.i.i.i.i.i.i.i.i.i: ; preds = %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i.i.i.i.i, %.split36.i.i.i.i.i.i.i.i.i, %.split35.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i, %bb.o
  %i.fc = add nuw i64 %.sroa.01.09.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fc, %.val5.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i: ; preds = %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.thread6.i.i.i.i.i.i.i.i.i, %bb.n
  %i.fd = add nuw i64 %.sroa.01.011.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fd, %i.bo
  br i1 %exitcond.not.i.i.i.i.i, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i, label %.lr.ph.i.i4.i.i.i

_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i: ; preds = %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i, %bb.m
  %i.fe = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !558, !noundef !4 ; 3 uses
  %i.fg = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !557, !noalias !553, !noundef !4
  %i.fi = icmp eq i64 %i.ff, %i.fh
  br i1 %i.fi, label %bb.z, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.z:                                             ; preds = %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i
  %i.fj = getelementptr inbounds i8, ptr %i.ad, i64 -24
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !557, !noalias !553, !nonnull !4, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !558, !nonnull !4, !noundef !4
  %i.fn = icmp eq i64 %i.ff, 0
  br i1 %i.fn, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3d_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %.split.i.i
  %i.fo = add nuw i64 %.sroa.01.06.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fo, %i.ff
  br i1 %exitcond.not.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3d_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.aa
  %.sroa.01.06.i.i = phi i64 [ %i.fo, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [96 x i8], ptr %i.fm, i64 %.sroa.01.06.i.i ; 8 uses
  %i.fq = getelementptr inbounds nuw [96 x i8], ptr %i.fk, i64 %.sroa.01.06.i.i ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !566), !noalias !559
  call void @llvm.experimental.noalias.scope.decl(metadata !567), !noalias !559
  call void @llvm.experimental.noalias.scope.decl(metadata !568), !noalias !559
  call void @llvm.experimental.noalias.scope.decl(metadata !569), !noalias !559
  %i.fr = call noundef zeroext i1 @_RNvXs3_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.fp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.fq), !noalias !559
  br i1 %i.fr, label %bb.ab, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %.val.i.i.i.i6.i = load double, ptr %i.fs, align 8, !alias.scope !570, !noalias !559, !noundef !4
  %.val5.i.i.i.i7.i = load double, ptr %i.ft, align 8, !alias.scope !571, !noalias !559, !noundef !4
  %i.fu = fcmp oeq double %.val.i.i.i.i6.i, %.val5.i.i.i.i7.i
  br i1 %i.fu, label %bb.ac, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %.val.1.i.i.i.i.i = load double, ptr %i.fv, align 8, !alias.scope !570, !noalias !559, !noundef !4
  %.val5.1.i.i.i.i.i = load double, ptr %i.fw, align 8, !alias.scope !571, !noalias !559, !noundef !4
  %i.fx = fcmp oeq double %.val.1.i.i.i.i.i, %.val5.1.i.i.i.i.i
  br i1 %i.fx, label %bb.ad, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %.val.2.i.i.i.i.i = load double, ptr %i.fy, align 8, !alias.scope !570, !noalias !559, !noundef !4
  %.val5.2.i.i.i.i.i = load double, ptr %i.fz, align 8, !alias.scope !571, !noalias !559, !noundef !4
  %i.ga = fcmp oeq double %.val.2.i.i.i.i.i, %.val5.2.i.i.i.i.i
  br i1 %i.ga, label %bb.ae, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %.val.3.i.i.i.i.i = load double, ptr %i.gb, align 8, !alias.scope !570, !noalias !559, !noundef !4
  %.val5.3.i.i.i.i.i = load double, ptr %i.gc, align 8, !alias.scope !571, !noalias !559, !noundef !4
  %i.gd = fcmp oeq double %.val.3.i.i.i.i.i, %.val5.3.i.i.i.i.i
  br i1 %i.gd, label %bb.af, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  %.val.4.i.i.i.i.i = load double, ptr %i.ge, align 8, !alias.scope !570, !noalias !559, !noundef !4
  %.val5.4.i.i.i.i.i = load double, ptr %i.gf, align 8, !alias.scope !571, !noalias !559, !noundef !4
  %i.gg = fcmp oeq double %.val.4.i.i.i.i.i, %.val5.4.i.i.i.i.i
  br i1 %i.gg, label %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpdINtB5_14SlicePartialEqdE17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpdINtB5_14SlicePartialEqdE17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i: ; preds = %bb.af
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 88
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  %.val.5.i.i.i.i.i = load double, ptr %i.gh, align 8, !alias.scope !570, !noalias !559, !noundef !4
  %.val5.5.i.i.i.i.i = load double, ptr %i.gi, align 8, !alias.scope !571, !noalias !559, !noundef !4
  %i.gj = fcmp oeq double %.val.5.i.i.i.i.i, %.val5.5.i.i.i.i.i
  br i1 %i.gj, label %bb.ag, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.ag:                                            ; preds = %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpdINtB5_14SlicePartialEqdE17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fp, i64 24 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 8, !range !572, !alias.scope !570, !noalias !559, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.gl, -1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 8, !range !572, !alias.scope !571, !noalias !559, !noundef !4 ; 2 uses
  %i.go = icmp eq i8 %i.gn, -1
  %brmerge.i.i.i.i = or i1 %.not.i.i.i.i, %i.go
  br i1 %brmerge.i.i.i.i, label %_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ag
  %i.gp = call noundef zeroext i1 @_RNvXs3_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gm), !noalias !559
  br i1 %i.gp, label %bb.aa, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i: ; preds = %bb.ag
  %i.gq = and i8 %i.gn, %i.gl
  %.mux.i.i.i.i = icmp eq i8 %i.gq, -1
  br i1 %.mux.i.i.i.i, label %bb.aa, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3d_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %bb.aa, %bb.z
  %i.gr = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.gs = extractvalue { ptr, ptr } %i.gr, 0      ; 2 uses
  %.not.not.i = icmp eq ptr %i.gs, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, label %.lr.ph.i.split

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3d_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i, %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i, %bb.l, %.split4.i.i.i.i, %bb.k, %bb.j, %.split.i.i.i.i, %bb.h, %bb.g, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBR_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, %._crit_edge.i.i.i.i.i, %.lr.ph.i.i4.i.i.i, %.lr.ph.i.i, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpdINtB5_14SlicePartialEqdE17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i, %.split.i.i, %_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.p, %.split.i.i.i.i.i.i.i.i.i, %bb.q, %.split35.i.i.i.i.i.i.i.i.i, %bb.r, %bb.s, %bb.t, %.split36.i.i.i.i.i.i.i.i.i, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.split.us, %bb.b
  %i.gt = phi i1 [ false, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i4.i.i.i ], [ true, %bb.b ], [ false, %._crit_edge.i.i.i.i.i ], [ false, %.lr.ph.i.split.us ], [ false, %_RNvYNtNtCscDfuDmzQoJe_5kurbo7bezpath6PathElNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i.i.i.i.i.i ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ false, %.split36.i.i.i.i.i.i.i.i.i ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.r ], [ false, %.split35.i.i.i.i.i.i.i.i.i ], [ false, %bb.q ], [ false, %.split.i.i.i.i.i.i.i.i.i ], [ false, %bb.p ], [ false, %_RNvYNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCsjceHdiZFn9b_13glyphs2fontir.exit.i.i ], [ false, %.split.i.i ], [ false, %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpdINtB5_14SlicePartialEqdE17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %.split4.i.i.i.i ], [ false, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBR_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.h ], [ true, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceERNtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3d_7HashMapB1d_B2n_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i ], [ false, %_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCscDfuDmzQoJe_5kurbo7bezpath7BezPathINtB5_14SlicePartialEqBC_E17equal_same_lengthCsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i.i ], [ false, %.split.i.i.i.i ], [ false, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit
  %.sroa.0.0 = phi i1 [ %i.gt, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_3all5checkTRBV_RB23_ENCNvXs4_B6_INtB6_7HashMapBV_B23_ENtNtB2T_3cmp9PartialEq2eq0E0INtNtNtB2T_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtB1M_3cmp9PartialEq2eqCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = icmp eq i64 %i.c, 0
  %i.i = load i64, ptr %i.g, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !4   ; 2 uses
  br i1 %i.h, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1t_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.not.not.not.i.not.us = icmp eq ptr %i.l, null
  br i1 %.not.not.not.not.i.not.us, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.c

bb.c:                                             ; preds = %.split.us
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

.split:                                           ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsbZq13ASDQ8l_10font_types3tag3TagRINtNtNtBe_3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3m_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.m = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1t_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.n, null ; 5 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.d

bb.d:                                             ; preds = %.split
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.p = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsbZq13ASDQ8l_10font_types3tag3TagECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.n), !noalias !591 ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ak, %bb.g ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.al, %bb.g ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !592 ; 2 uses
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
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.ae = call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB2_10EquivalentBq_E10equivalentCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !noalias !593
  br i1 %i.ae, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, label %bb.f, !prof !6

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %bb.e
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, !prof !7

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.e

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !13, !alias.scope !596, !noundef !4
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ap = load i8, ptr %i.ao, align 8, !range !13, !alias.scope !595, !noalias !591, !noundef !4
  %i.aq = icmp eq i8 %i.an, %i.ap
  br i1 %i.aq, label %bb.h, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

bb.h:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %.val2.i.i.i.i = load double, ptr %i.o, align 8, !alias.scope !596, !noundef !4 ; 2 uses
  %.val3.i.i.i.i = load double, ptr %i.ar, align 8, !alias.scope !595, !noalias !591 ; 2 uses
  %i.as = fcmp uno double %.val2.i.i.i.i, 0.000000e+00
  %i.at = fcmp uno double %.val3.i.i.i.i, 0.000000e+00
  %i.au = fcmp oeq double %.val2.i.i.i.i, %.val3.i.i.i.i
  %.sroa.0.0.in.i.i.i.i.i = select i1 %i.as, i1 %i.at, i1 %i.au
  br i1 %.sroa.0.0.in.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsbZq13ASDQ8l_10font_types3tag3TagRINtNtNtBe_3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3m_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsbZq13ASDQ8l_10font_types3tag3TagRINtNtNtBe_3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3m_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i: ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aw = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %.val.i.i.i.i = load double, ptr %i.av, align 8, !alias.scope !596, !noundef !4 ; 2 uses
  %.val1.i.i.i.i = load double, ptr %i.aw, align 8, !alias.scope !595, !noalias !591 ; 2 uses
  %i.ax = fcmp uno double %.val.i.i.i.i, 0.000000e+00
  %i.ay = fcmp ord double %.val1.i.i.i.i, 0.000000e+00
  %i.az = fcmp une double %.val.i.i.i.i, %.val1.i.i.i.i
  %.sroa.0.0.in.i4.i.i.i.i = select i1 %i.ax, i1 %i.ay, i1 %i.az
  br i1 %.sroa.0.0.in.i4.i.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, label %.split

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsbZq13ASDQ8l_10font_types3tag3TagRINtNtNtBe_3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3m_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i, %bb.h, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i, %.split, %._crit_edge.i.i.i.i.i, %.split.us, %bb.c
  %.not.not.not.not.i.not5 = phi i1 [ true, %.split.us ], [ false, %bb.c ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.not.i.not, %.split ], [ %.not.not.not.not.i.not, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_ECsjceHdiZFn9b_13glyphs2fontir.exit.i.i.i ], [ %.not.not.not.not.i.not, %bb.h ], [ %.not.not.not.not.i.not, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsbZq13ASDQ8l_10font_types3tag3TagRINtNtNtBe_3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB3m_7HashMapB1d_B1Q_ENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.not.i.not5, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusiveINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtNtB1E_4iter6traits8iterator8Iterator8try_folduNCINvNvB3b_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB1E_3cmp9PartialEq2eq0E0INtNtB1C_12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagjENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagjNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = icmp eq i64 %i.c, 0
  %i.i = load i64, ptr %i.g, align 8              ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !4   ; 2 uses
  br i1 %i.h, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.l = extractvalue { ptr, ptr } %i.k, 0
  %.not.not.not.not.i.not.us = icmp eq ptr %i.l, null
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkTRBV_RjENCNvXs4_B6_INtB6_7HashMapBV_jENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit

.split:                                           ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCsbZq13ASDQ8l_10font_types3tag3TagRjENCNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB20_7HashMapB1d_jENtNtBe_3cmp9PartialEq2eq0E0CsjceHdiZFn9b_13glyphs2fontir.exit.i
  %i.m = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.n, null ; 3 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtCsbZq13ASDQ8l_10font_types3tag3TagjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkTRBV_RjENCNvXs4_B6_INtB6_7HashMapBV_jENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %.val6.i = load i64, ptr %i.o, align 8
  %i.p = call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsbZq13ASDQ8l_10font_types3tag3TagECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.n) ; 2 uses
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
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !606 ; 2 uses
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
end_hunk_0
