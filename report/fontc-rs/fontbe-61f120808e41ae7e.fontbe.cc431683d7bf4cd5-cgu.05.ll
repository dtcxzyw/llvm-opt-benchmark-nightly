Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.05?download=true
inline.NumInlined: 1595
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RINvNtNtCshxhuDJfZv4T_6fontbe8features10properties26glyphs_by_script_directionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEB6_:bb.a
bb.bt:                                            ; preds = %.split.thread.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdEECshxhuDJfZv4T_6fontbe.exit.i
  %.pn92.pn.pn175.i = phi { ptr, i32 } [ %i.ed, %.split.thread.i ], [ %.pn92.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdEECshxhuDJfZv4T_6fontbe.exit.i ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEEB1G_.exit.i unwind label %bb.be, !noalias !482

_RINvNtNtCshxhuDJfZv4T_6fontbe8features10properties8classifyNtB2_15ScriptDirectionNCINvB2_26glyphs_by_script_directionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE0B1R_EB6_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCshxhuDJfZv4T_6fontbe8features10properties15ScriptDirectionEEB1e_.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id7GlyphIdEECshxhuDJfZv4T_6fontbe.exit157.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i32, i32 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlatMapINtNtB4_6filter6FilterINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2W_7BitPage4iter0EIB17_NtB2W_4IterNCNCB2T_s_00ENCB2T_s_0ENCNCNvMs1_NtB2Y_6bitsetNtB53_6U32Set4iter00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = load i64, ptr %0, align 8, !range !12, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !574, !nonnull !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = trunc nuw i64 %i.c to i1
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.o = load i32, ptr %i.d, align 8, !alias.scope !575, !noundef !10 ; 2 uses
  %i.p = load i32, ptr %i.e, align 4, !alias.scope !575, !noundef !10 ; 2 uses
  %i.q = icmp sgt i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.o, 63
  %i.s = zext nneg i32 %i.r to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.s
  %i.t = load i64, ptr %i.f, align 8, !alias.scope !575, !noundef !10
  %i.u = and i64 %i.t, %notmask.i.i.i.i.i.i.i.i
  %i.v = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.u, i1 false)
  %i.w = trunc nuw nsw i64 %i.v to i32            ; 3 uses
  %i.x = icmp slt i32 %i.p, %i.w
  br i1 %i.x, label %bb.e, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpage4IterNCNCNvMB1o_NtB1o_7BitPage4iters_00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !576
  br label %bb.f

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpage4IterNCNCNvMB1o_NtB1o_7BitPage4iters_00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i: ; preds = %bb.d
  %i.y = add nuw nsw i32 %i.w, 1
  store i32 %i.y, ptr %i.d, align 8, !alias.scope !575
  %.val.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !577, !noundef !10
  %i.z = add i32 %.val.i.i.i.i.i.i.i, %i.w
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2D_7BitPage4iter0EIB6_NtB2D_4IterNCNCB2A_s_00ENCB2A_s_0ENCNCNvMs1_NtB2F_6bitsetNtB4J_6U32Set4iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit

bb.f:                                             ; preds = %bb.e, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.aa = load ptr, ptr %i.g, align 8, !alias.scope !579, !noalias !580, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !586
  store ptr %i.h, ptr %i.b, align 8, !noalias !587
  store ptr %i.i, ptr %i.j, align 8, !noalias !587
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ab = phi ptr [ %i.ad, %bb.i ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %i.l
  br i1 %i.ac, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB22_7BitPage4iter0ENtNtNtB9_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i.i, label %bb.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB22_7BitPage4iter0ENtNtNtB9_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !586
  br label %.loopexit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.g, align 8, !alias.scope !588, !noalias !589
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.ae = load ptr, ptr %i.j, align 8, !alias.scope !590, !noalias !591, !nonnull !10, !align !19, !noundef !10
  %i.af = load i64, ptr %i.ae, align 8, !noalias !592, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !593
  store i64 %i.af, ptr %i.a, align 8, !noalias !594
  store ptr %i.ab, ptr %i.m, align 8, !noalias !594
  %i.ag = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtBT_7BitPage4iter0INtB7_5FnMutTRTjRyEEE8call_mutCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !593
  %i.ah = load ptr, ptr %i.j, align 8, !alias.scope !590, !noalias !591, !nonnull !10, !align !19, !noundef !10 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !595, !noundef !10
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !noalias !595
  br i1 %i.ag, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !586
  %.val.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !596, !noundef !10
  %i.ak = trunc i64 %i.af to i32
  %i.al = shl i32 %i.ak, 6
  store i64 1, ptr %0, align 8, !alias.scope !574
  store i64 %.val.i.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !574
  store i32 0, ptr %i.d, align 8, !alias.scope !574
  store i32 63, ptr %i.e, align 4, !alias.scope !574
  store i32 %i.al, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !574
  br label %bb.c

.loopexit.i.i.i.i:                                ; preds = %bb.f, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6filterINtB5_6FilterINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB22_7BitPage4iter0ENtNtNtB9_6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe.exit.thread.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !15, !alias.scope !597, !noundef !10
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.loopexit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !alias.scope !598, !noundef !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !598, !noundef !10 ; 2 uses
  %i.at = icmp sgt i32 %i.aq, %i.as
  br i1 %i.at, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = and i32 %i.aq, 63
  %i.aw = zext nneg i32 %i.av to i64
  %notmask.i.i.i.i4.i.i.i.i = shl nsw i64 -1, %i.aw
  %i.ax = load i64, ptr %i.au, align 8, !alias.scope !598, !noundef !10
  %i.ay = and i64 %i.ax, %notmask.i.i.i.i4.i.i.i.i
  %i.az = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ay, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i32          ; 3 uses
  %i.bb = icmp slt i32 %i.as, %i.ba
  br i1 %i.bb, label %bb.l, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpage4IterNCNCNvMBV_NtBV_7BitPage4iters_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit.i5.i.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpage4IterNCNCNvMBV_NtBV_7BitPage4iters_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit.i5.i.i.i.i: ; preds = %bb.k
  %i.bc = add nuw nsw i32 %i.ba, 1
  store i32 %i.bc, ptr %i.ap, align 8, !alias.scope !598
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i.i6.i.i.i.i = load i32, ptr %i.bd, align 8, !alias.scope !599, !noundef !10
  %i.be = add i32 %.val.i.i.i6.i.i.i.i, %i.ba
  br label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2D_7BitPage4iter0EIB6_NtB2D_4IterNCNCB2A_s_00ENCB2A_s_0ENCNCNvMs1_NtB2F_6bitsetNtB4J_6U32Set4iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  store i64 0, ptr %i.am, align 8, !alias.scope !597
  br label %bb.n

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2D_7BitPage4iter0EIB6_NtB2D_4IterNCNCB2A_s_00ENCB2A_s_0ENCNCNvMs1_NtB2F_6bitsetNtB4J_6U32Set4iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpage4IterNCNCNvMB1o_NtB1o_7BitPage4iters_00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpage4IterNCNCNvMBV_NtBV_7BitPage4iters_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit.i5.i.i.i.i
  %.sroa.3.0.i2.pn.i.i.ph.i.i = phi i32 [ %i.be, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpage4IterNCNCNvMBV_NtBV_7BitPage4iters_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit.i5.i.i.i.i ], [ %i.z, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpage4IterNCNCNvMB1o_NtB1o_7BitPage4iters_00EmNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  %.val.i.i = load i32, ptr %i.h, align 8, !alias.scope !600, !noundef !10
  %i.bf = add i32 %.val.i.i, %.sroa.3.0.i2.pn.i.i.ph.i.i
  br label %bb.m

bb.m:                                             ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2D_7BitPage4iter0EIB6_NtB2D_4IterNCNCB2A_s_00ENCB2A_s_0ENCNCNvMs1_NtB2F_6bitsetNtB4J_6U32Set4iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit, %bb.n, %bb.a
  %.sroa.3.0 = phi i32 [ undef, %bb.a ], [ undef, %bb.n ], [ %i.bf, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2D_7BitPage4iter0EIB6_NtB2D_4IterNCNCB2A_s_00ENCB2A_s_0ENCNCNvMs1_NtB2F_6bitsetNtB4J_6U32Set4iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit ]
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtBa_7flatten7FlatMapINtNtBa_6filter6FilterINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IteryEENCNvMNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set7bitpageNtB2D_7BitPage4iter0EIB6_NtB2D_4IterNCNCB2A_s_00ENCB2A_s_0ENCNCNvMs1_NtB2F_6bitsetNtB4J_6U32Set4iter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCshxhuDJfZv4T_6fontbe.exit ]
  %i.bg = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.bh = insertvalue { i32, i32 } %i.bg, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.bh

bb.n:                                             ; preds = %.loopexit.i.i.i.i, %bb.l
  store i64 2, ptr %0, align 8
  br label %bb.m
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYBT_NtNtB8_3cmp10PartialOrd2ltEBX_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPair7reverseBy_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = tail call fastcc noundef zeroext i1 @_RNvYNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB6_(ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %0) #40 ; 2 uses
  %.not16 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader6

.preheader6:                                      ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit, label %.lr.ph12

.lr.ph:                                           ; preds = %.preheader6, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader6 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.0.i8
  %3 = add nsw i64 %.sroa.01.0.i8, -1             ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %3
  %i.e = tail call fastcc noundef zeroext i1 @_RNvYNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB6_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %5) #40
  br i1 %i.e, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i8, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.thread, label %.lr.ph

.lr.ph12:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i11 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.01.1.i11
  %6 = add nsw i64 %.sroa.01.1.i11, -1            ; 2 uses
  %7 = icmp samesign ult i64 %6, %1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %6
  %i.h = tail call fastcc noundef zeroext i1 @_RNvYNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltB6_(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull align 8 %8) #40
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit

bb.d:                                             ; preds = %.lr.ph12
  %i.i = add nuw nsw i64 %.sroa.01.1.i11, 1       ; 2 uses
  %exitcond19.not = icmp eq i64 %i.i, %1
  br i1 %exitcond19.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.thread, label %.lr.ph12

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit: ; preds = %.lr.ph, %.lr.ph12, %.preheader6, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader6 ], [ 2, %.preheader ], [ %.sroa.01.1.i11, %.lr.ph12 ], [ %.sroa.01.0.i8, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPair7reverseBy_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB17_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.p, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPair7reverseBy_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPair7reverseBy_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEB14_.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairNvYB12_NtNtB8_3cmp10PartialOrd2ltEB16_.exit.thread
  %i.q = lshr i64 %1, 1
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.w, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.u = getelementptr [304 x i8], ptr %i.r, i64 %i.s
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshxhuDJfZv4T_6fontbe(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 38)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEB14_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPair7reverseBy_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYBT_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE7reverseCshxhuDJfZv4T_6fontbe.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i.i = load i16, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %.val3.i.i = load i16, ptr %0, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i16 %.val.i.i, %.val3.i.i
  br i1 %i.c, label %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit, label %.split

.split:                                           ; preds = %bb.b
  %i.d = icmp ult i16 %.val.i.i, %.val3.i.i
  br i1 %i.d, label %.preheader, label %.preheader18

.preheader:                                       ; preds = %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit, %.split
  %.not28 = icmp eq i64 %1, 2
  br i1 %.not28, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph24

_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB5_6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpCshxhuDJfZv4T_6fontbe(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull align 8 %i.f)
  %i.h = icmp slt i8 %i.g, 0
  br i1 %i.h, label %.preheader, label %.preheader18

.preheader18:                                     ; preds = %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit, %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader18, %bb.c
  %.sroa.01.0.i20 = phi i64 [ %i.s, %bb.c ], [ 2, %.preheader18 ] ; 5 uses
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.0.i20 ; 2 uses
  %i.j = add nsw i64 %.sroa.01.0.i20, -1          ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.j ; 2 uses
  %.val.i.i2 = load i16, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %.val3.i.i3 = load i16, ptr %i.l, align 8, !noundef !10 ; 2 uses
  %i.m = icmp eq i16 %.val.i.i2, %.val3.i.i3
  br i1 %i.m, label %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit5, label %.split12

.split12:                                         ; preds = %.lr.ph
  %i.n = icmp ult i16 %.val.i.i2, %.val3.i.i3
  br i1 %i.n, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %bb.c

_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit5: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB5_6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpCshxhuDJfZv4T_6fontbe(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull align 8 %i.p)
  %i.r = icmp slt i8 %i.q, 0
  br i1 %i.r, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %bb.c

bb.c:                                             ; preds = %.split12, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit5
  %i.s = add nuw nsw i64 %.sroa.01.0.i20, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph

.lr.ph24:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i23 = phi i64 [ %i.ad, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.1.i23 ; 2 uses
  %i.u = add nsw i64 %.sroa.01.1.i23, -1          ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, %1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.u ; 2 uses
  %.val.i.i6 = load i16, ptr %i.t, align 8, !noundef !10 ; 2 uses
  %.val3.i.i7 = load i16, ptr %i.w, align 8, !noundef !10 ; 2 uses
  %i.x = icmp eq i16 %.val.i.i6, %.val3.i.i7
  br i1 %i.x, label %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit9, label %.split13

.split13:                                         ; preds = %.lr.ph24
  %i.y = icmp ult i16 %.val.i.i6, %.val3.i.i7
  br i1 %i.y, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit9: ; preds = %.lr.ph24
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs8n5UXKvQVD9_10read_fonts11collections7int_setINtB5_6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtCsf3Ta7LF998c_4core3cmp3Ord3cmpCshxhuDJfZv4T_6fontbe(ptr noundef nonnull align 8 %i.z, ptr noundef nonnull align 8 %i.aa)
  %i.ac = icmp slt i8 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

bb.d:                                             ; preds = %.split13, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit9
  %i.ad = add nuw nsw i64 %.sroa.01.1.i23, 1      ; 2 uses
  %exitcond32.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond32.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph24

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit5, %bb.c, %.split12, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit9, %bb.d, %.split13, %.preheader18, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader18 ], [ true, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit9 ], [ true, %.split13 ], [ true, %bb.d ], [ false, %.split12 ], [ false, %bb.c ], [ false, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit5 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader18 ], [ %.sroa.01.1.i23, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit9 ], [ %1, %bb.d ], [ %.sroa.01.1.i23, %.split13 ], [ %.sroa.01.0.i20, %_RNvYNvYTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Z_3ops8function5FnMutTRB5_B36_EE8call_mutCshxhuDJfZv4T_6fontbe.exit5 ], [ %1, %bb.c ], [ %.sroa.01.0.i20, %.split12 ] ; 2 uses
  %i.ae = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE7reverseCshxhuDJfZv4T_6fontbe.exit

bb.f:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB12_NtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit
  %i.ag = or i64 %1, 1
  %i.ah = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = xor i32 %i.aj, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EENvYB17_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noundef align 8 null, i32 noundef %i.ak, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE7reverseCshxhuDJfZv4T_6fontbe.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE7reverseCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEECshxhuDJfZv4T_6fontbe.exit.i.i, %bb.a, %bb.e, %bb.f
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.al = lshr i64 %1, 1
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEECshxhuDJfZv4T_6fontbe.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ar, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEECshxhuDJfZv4T_6fontbe.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.an = xor i64 %.sroa.0.017.i.i, -1
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.ap = getelementptr [80 x i8], ptr %i.am, i64 %i.an
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshxhuDJfZv4T_6fontbe(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef 10)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEECshxhuDJfZv4T_6fontbe.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #36
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EEECshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ar = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTtINtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6IntSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EE7reverseCshxhuDJfZv4T_6fontbe.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCshxhuDJfZv4T_6fontbe.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load i64, ptr %i.b, align 8, !alias.scope !20, !noalias !21, !noundef !10 ; 3 uses
  %.val6 = load i64, ptr %0, align 8, !alias.scope !21, !noalias !20, !noundef !10
  %i.c = icmp ult i64 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %3 = add nsw i64 %.sroa.01.0.i13, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %.val3 = load i64, ptr %i.d, align 8, !alias.scope !20, !noalias !21, !noundef !10 ; 2 uses
  %i.e = icmp ult i64 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %5 = add nsw i64 %.sroa.01.1.i16, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %.val = load i64, ptr %i.g, align 8, !alias.scope !20, !noalias !21, !noundef !10 ; 2 uses
  %i.h = icmp ult i64 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.thread, label %.lr.ph17

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit
  br i1 %i.c, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCshxhuDJfZv4T_6fontbe.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCshxhuDJfZv4T_6fontbe.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.thread, %bb.e
  ret void

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 576460752303423484       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !alias.scope !610, !noalias !609
  %wide.load39 = load <2 x i64>, ptr %i.v, align 8, !alias.scope !610, !noalias !609
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %wide.load40 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !611, !noalias !608
  %wide.load41 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !611, !noalias !608
  %reverse = shufflevector <2 x i64> %wide.load40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse42 = shufflevector <2 x i64> %wide.load41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 8, !alias.scope !610, !noalias !609
  store <2 x i64> %reverse42, ptr %i.v, align 8, !alias.scope !610, !noalias !609
  %reverse43 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse44 = shufflevector <2 x i64> %wide.load39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse43, ptr %i.w, align 8, !alias.scope !611, !noalias !608
  store <2 x i64> %reverse44, ptr %i.x, align 8, !alias.scope !611, !noalias !608
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !606

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCshxhuDJfZv4T_6fontbe.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !610, !noalias !609, !noundef !10
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !611, !noalias !608
  store i64 %i.ad, ptr %i.aa, align 8, !alias.scope !610, !noalias !609
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !611, !noalias !608
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj7reverseCshxhuDJfZv4T_6fontbe.exit, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSj12split_at_mutCshxhuDJfZv4T_6fontbe.exit11.i.i, !llvm.loop !607
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB28_ENvYB18_NtNtBa_3cmp10PartialOrd2ltECshxhuDJfZv4T_6fontbe(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = alloca [72 x i8], align 8                ; 12 uses
  %i.d = alloca [72 x i8], align 8                ; 12 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %.val9 = load ptr, ptr %1, align 8, !nonnull !10, !align !19, !noundef !10 ; 3 uses
  %.val10 = load ptr, ptr %i.e, align 8, !nonnull !10, !align !19, !noundef !10 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !638
  %i.f = load ptr, ptr %.val9, align 8, !alias.scope !639, !noalias !640, !noundef !10 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !639, !noalias !640, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !639, !noalias !640, !noundef !10
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.f, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.h, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !638
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink42.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sink.i.i.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink42.i.i.i.i, ptr %i.d, align 8, !noalias !638
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sink42.i.i.i.i, ptr %i.k, align 8, !noalias !638
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sink.i.i.i.i, ptr %i.l, align 8, !noalias !638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !638
  %i.m = load ptr, ptr %.val10, align 8, !alias.scope !640, !noalias !639, !noundef !10 ; 3 uses
  %.not40.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not40.i.i.i.i, label %_RNvYNvYRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB15_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Y_3ops8function5FnMutTRB5_B35_EE8call_mutCshxhuDJfZv4T_6fontbe.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !640, !noalias !639, !noundef !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !640, !noalias !639, !noundef !10
  %.sroa.423.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.423.0..sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.o, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.625.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.625.0..sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.625.sroa.4.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.m, ptr %.sroa.625.sroa.4.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !638
  %.sroa.625.sroa.5.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.o, ptr %.sroa.625.sroa.5.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !638
  br label %_RNvYNvYRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB15_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Y_3ops8function5FnMutTRB5_B35_EE8call_mutCshxhuDJfZv4T_6fontbe.exit

_RNvYNvYRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB15_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Y_3ops8function5FnMutTRB5_B35_EE8call_mutCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.c, %bb.d
  %.sink45.i.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sink43.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ]
  store i64 %.sink45.i.i.i.i, ptr %i.c, align 8, !noalias !638
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink45.i.i.i.i, ptr %i.r, align 8, !noalias !638
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sink43.i.i.i.i, ptr %i.s, align 8, !noalias !638
  %i.t = call noundef range(i8 -2, 2) i8 @_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameBY_ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator14partial_cmp_byB3_NCINvYB3_B1M_11partial_cmpB3_E0ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.c), !noalias !638 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !638
  %.not.i.i.i = icmp ne i8 %i.t, -2
  %i.u = icmp slt i8 %i.t, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.u
  br i1 %.sroa.0.0.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvYNvYRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB15_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Y_3ops8function5FnMutTRB5_B35_EE8call_mutCshxhuDJfZv4T_6fontbe.exit
  %i.v = load ptr, ptr %1, align 8, !nonnull !10, !align !19, !noundef !10 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i14 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i16 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i17 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.423.0..sroa_idx.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.625.0..sroa_idx.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.625.sroa.4.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.625.sroa.5.0..sroa.625.0..sroa_idx.sroa_idx.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.g

bb.f:                                             ; preds = %_RNvYNvYRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB15_ENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1Y_3ops8function5FnMutTRB5_B35_EE8call_mutCshxhuDJfZv4T_6fontbe.exit, %bb.m
  ret void

end_hunk_0
