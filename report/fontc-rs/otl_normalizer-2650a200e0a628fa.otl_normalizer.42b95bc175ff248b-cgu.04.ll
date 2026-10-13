Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.04?download=true
inline.NumInlined: 334
inline.NumDeleted: 131
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2E_11collections5btree3mapINtB3q_8BTreeMapBY_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4s_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6i_7NameMap9from_fonts_0EE0E0EB6k_:bb.a
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %4 ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.f, ptr %0
  %i.h = shl nuw nsw i64 %i.d, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.j = phi ptr [ %i.t, %.preheader ], [ %i.i, %.critedge ]
  %i.k = phi ptr [ %i.r, %.preheader ], [ %i.f, %.critedge ]
  %.sroa.0.0.i = phi ptr [ %i.n, %.preheader ], [ %i.g, %.critedge ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -32 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -32 ; 2 uses
  %.val.i = load i16, ptr %i.m, align 2, !noalias !231, !noundef !5
  %.val12.i = load i16, ptr %i.l, align 2, !noalias !231, !noundef !5
  %i.o = icmp ult i16 %.val.i, %.val12.i          ; 3 uses
  %..i = select i1 %i.o, ptr %i.l, ptr %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %..i, i64 32, i1 false), !noalias !231
  %i.p = xor i1 %i.o, true
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.s = zext i1 %i.o to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.s ; 3 uses
  %i.u = icmp eq ptr %i.r, %0
  %i.v = icmp eq ptr %i.t, %2
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB1b_B1Y_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4U_8adapters3map3MapINtNtNtBb_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6L_7NameMap9from_fonts_0EE0E0EB6N_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.w = phi ptr [ %i.ae, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.f, %.critedge ] ; 3 uses
  %i.x = phi ptr [ %i.ab, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load i16, ptr %.sroa.0.02.i, align 2, !noalias !232, !noundef !5
  %.val.i18 = load i16, ptr %i.x, align 2, !noalias !232, !noundef !5
  %i.y = icmp ult i16 %.sroa.0.0.val.i, %.val.i18 ; 3 uses
  %i.z = xor i1 %i.y, true
  %.sroa.05.0.i = select i1 %i.y, ptr %.sroa.0.02.i, ptr %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i, i64 32, i1 false), !noalias !232
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa ; 3 uses
  %i.ac = zext i1 %i.y to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.af = icmp ne ptr %i.ab, %i.i
  %i.ag = icmp ne ptr %i.ad, %i.g
  %or.cond.i19 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB1b_B1Y_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4U_8adapters3map3MapINtNtNtBb_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6L_7NameMap9from_fonts_0EE0E0EB6N_.exit

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB1b_B1Y_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4U_8adapters3map3MapINtNtNtBb_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6L_7NameMap9from_fonts_0EE0E0EB6N_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.r, %.preheader ], [ %i.ae, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.t, %.preheader ], [ %i.i, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.7.0 to i64
  %i.ai = ptrtoint ptr %.sroa.0.0 to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aj, i1 false), !noalias !233
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB34_11collections5btree3mapINtB3R_8BTreeMapB1b_B1Y_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4U_8adapters3map3MapINtNtNtBb_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6L_7NameMap9from_fonts_0EE0E0EB6N_.exit
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.de, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.cp, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph102 = phi i32 [ %i.j, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph101 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph104, i64 8
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph104, i64 16
  %i.e = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph101, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph101, i64 8
  %i.g = getelementptr i8, ptr %.sroa.028.0.ph101, i64 16
  %i.h = icmp eq i32 %.sroa.025.0.ph102, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph227

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit
  %i.i = icmp eq i32 %i.j, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph227

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %i.cq, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph104, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit ], [ %i.de, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit ], [ %i.cp, %.outer ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa95, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.097.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYBW_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph104, i64 noundef %.sroa.16.097.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph227:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.096226 = phi i32 [ %i.j, %bb.b ], [ %.sroa.025.0.ph102, %.lr.ph ]
  %.sroa.16.097225 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ] ; 21 uses
  %i.j = add i32 %.sroa.025.096226, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.k = lshr i64 %.sroa.16.097225, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.k, 96
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.k, 168
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx2.i ; 4 uses
  %i.n = icmp samesign ult i64 %.sroa.16.097225, 64
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph227
  %i.o = call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB14_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph104, ptr noundef readonly %i.l, ptr noundef readonly %i.m, i64 noundef %i.k)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph227
  %.val10.i = load ptr, ptr %i.c, align 8, !alias.scope !253, !nonnull !5, !noundef !5 ; 2 uses
  %.val11.i = load i64, ptr %i.d, align 8, !alias.scope !253, !noundef !5 ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val12.i = load ptr, ptr %i.p, align 8, !alias.scope !253, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %.val13.i = load i64, ptr %i.q, align 8, !alias.scope !253, !noundef !5 ; 2 uses
  %i.r = call noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !253 ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.r, -2
  %i.s = icmp slt i8 %i.r, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.s     ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 8
  %.val8.i = load ptr, ptr %i.t, align 8, !alias.scope !253, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = getelementptr i8, ptr %i.m, i64 16
  %.val9.i = load i64, ptr %i.u, align 8, !alias.scope !253, !noundef !5 ; 2 uses
  %i.v = call noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !253 ; 2 uses
  %.not.i.i14.i = icmp ne i8 %i.v, -2
  %i.w = icmp slt i8 %i.v, 0
  %.sroa.0.0.i.i15.i = and i1 %.not.i.i14.i, %i.w
  %i.x = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i15.i
  br i1 %i.x, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !253 ; 2 uses
  %.not.i.i16.i = icmp ne i8 %i.y, -2
  %i.z = icmp slt i8 %i.y, 0
  %.sroa.0.0.i.i17.i = and i1 %.not.i.i16.i, %i.z
  %i.aa = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i17.i
  %..i.i = select i1 %i.aa, ptr %i.m, ptr %i.l
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.o, %bb.c ], [ %.sroa.0.0.ph104, %bb.d ], [ %..i.i, %bb.e ]
  %i.ab = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ac = sub nuw i64 %i.ab, %i.e                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ac, 24         ; 3 uses
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.097225
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %i.ac ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %.sroa.028.0.val37 = load i64, ptr %i.g, align 8, !noundef !5
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %.val38 = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ah = call noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.sroa.028.0.val, i64 noundef %.sroa.028.0.val37, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val, i64 noundef %.val38) ; 2 uses
  %.not.i.i = icmp ne i8 %i.ah, -2
  %i.ai = icmp slt i8 %i.ah, 0
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.ai
  br i1 %.sroa.0.0.i.i, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.not71 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not71, label %bb.k, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.ak = getelementptr i8, ptr %i.ae, i64 8
  %i.al = getelementptr i8, ptr %i.ae, i64 16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.19.0.i = phi ptr [ %i.aj, %bb.j ], [ %i.az, %bb.m ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph104, %bb.j ], [ %i.bb, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.097225, %bb.m ] ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i39 ; 2 uses
  %i.an = icmp ult ptr %.sroa.5.0.i, %i.am
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %.val13.i40 = load ptr, ptr %i.ak, align 8, !alias.scope !254, !noalias !255, !nonnull !5, !noundef !5
  %.val14.i = load i64, ptr %i.al, align 8, !alias.scope !254, !noalias !255, !noundef !5
  br label %.lr.ph.i.a

._crit_edge.i:                                    ; preds = %.lr.ph.i.a, %bb.l
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.at, %.lr.ph.i.a ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.aw, %.lr.ph.i.a ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.ax, %.lr.ph.i.a ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.097225
  br i1 %i.ao, label %bb.n, label %bb.m

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.ax, %.lr.ph.i.a ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.aw, %.lr.ph.i.a ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.at, %.lr.ph.i.a ]
  %i.ap = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.ap, align 8, !alias.scope !254, !noalias !255, !nonnull !5, !noundef !5
  %i.aq = getelementptr i8, ptr %.sroa.5.111.i, i64 16
  %.val14.i.a = load i64, ptr %i.aq, align 8, !alias.scope !254, !noalias !255, !noundef !5
  %i.ar = call noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %.val14.i.a, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val13.i40, i64 noundef %.val14.i), !noalias !256 ; 2 uses
  %.not.i.i.i42 = icmp ne i8 %i.ar, -2
  %i.as = icmp slt i8 %i.ar, 0
  %.sroa.0.0.i.i.i43 = and i1 %.not.i.i.i42, %i.as ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.sroa.0.0.i.i.i43, ptr %2, ptr %i.at
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !256, !noalias !257
  %i.av = zext i1 %.sroa.0.0.i.i.i43 to i64
  %i.aw = add i64 %.sroa.11.110.i, %i.av          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.ay = icmp ult ptr %i.ax, %i.am
  br i1 %i.ay, label %.lr.ph.i.a, label %._crit_edge.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !256, !noalias !258
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge.i
  %i.bc = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.bc, i1 false), !alias.scope !256
  %i.bd = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.n
  %i.be = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.bd, 1
  %i.bf = icmp eq i64 %.sroa.16.097225, %.neg
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bd, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bj, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.o ]
  %i.bg = xor i64 %.sroa.06.014.i, -1
  %i.bh = getelementptr [24 x i8], ptr %i.aj, i64 %i.bg
  %i.bi = getelementptr [24 x i8], ptr %i.be, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !alias.scope !256
  %i.bj = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.bk = xor i64 %.sroa.06.014.i, -2
  %i.bl = getelementptr [24 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = getelementptr [24 x i8], ptr %i.be, i64 %.sroa.06.014.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !alias.scope !256
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.o

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bj, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod288)
  %i.bo = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.bp = getelementptr [24 x i8], ptr %i.aj, i64 %i.bo
  %i.bq = getelementptr [24 x i8], ptr %i.be, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !alias.scope !256
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.n
  %i.br = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.br, label %.thread, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.097225
  br i1 %.not.i44, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit, !prof !9

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29, !noalias !259
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph104) ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 %i.bs, i64 noundef %i.bd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias nofree noundef nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.bt, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not72, label %bb.s, label %bb.r, !prof !8

bb.r:                                             ; preds = %.thread
  %i.bu = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.bv = getelementptr i8, ptr %i.ae, i64 8
  %i.bw = getelementptr i8, ptr %i.ae, i64 16
  br label %bb.t

bb.s:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.19.0.i47 = phi ptr [ %i.bu, %bb.r ], [ %i.ck, %bb.u ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.r ], [ %i.cm, %bb.u ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph104, %bb.r ], [ %i.cn, %bb.u ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.16.097225, %bb.u ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i50 ; 2 uses
  %i.by = icmp ult ptr %.sroa.5.0.i49, %i.bx
  br i1 %i.by, label %.lr.ph.i59, label %._crit_edge.i51

.lr.ph.i59:                                       ; preds = %bb.t
  %.val13.i60 = load ptr, ptr %i.bv, align 8, !alias.scope !260, !noalias !261, !nonnull !5, !noundef !5
  %.val14.i61 = load i64, ptr %i.bw, align 8, !alias.scope !260, !noalias !261, !noundef !5
  br label %.lr.ph.i59.a

._crit_edge.i51:                                  ; preds = %.lr.ph.i59.a, %bb.t
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.t ], [ %i.ce, %.lr.ph.i59.a ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.t ], [ %i.ch, %.lr.ph.i59.a ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.t ], [ %i.ci, %.lr.ph.i59.a ] ; 2 uses
  %i.bz = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.097225
  br i1 %i.bz, label %bb.v, label %bb.u

.lr.ph.i59.a:                                     ; preds = %.lr.ph.i59.a, %.lr.ph.i59
  %.sroa.5.111.i60 = phi ptr [ %.sroa.5.0.i49, %.lr.ph.i59 ], [ %i.ci, %.lr.ph.i59.a ] ; 4 uses
  %.sroa.11.110.i61 = phi i64 [ %.sroa.11.0.i48, %.lr.ph.i59 ], [ %i.ch, %.lr.ph.i59.a ] ; 2 uses
  %.sroa.19.19.i62 = phi ptr [ %.sroa.19.0.i47, %.lr.ph.i59 ], [ %i.ce, %.lr.ph.i59.a ]
  %i.ca = getelementptr i8, ptr %.sroa.5.111.i60, i64 8
  %.val.i63 = load ptr, ptr %i.ca, align 8, !alias.scope !260, !noalias !261, !nonnull !5, !noundef !5
  %i.cb = getelementptr i8, ptr %.sroa.5.111.i60, i64 16
  %.val14.i66 = load i64, ptr %i.cb, align 8, !alias.scope !260, !noalias !261, !noundef !5
  %i.cc = call noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val13.i60, i64 noundef %.val14.i61, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i63, i64 noundef %.val14.i66), !noalias !262 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.cc, -2
  %i.cd = icmp sgt i8 %i.cc, -1
  %.sroa.0.0.i.i.not.i.i = or i1 %.not.i.i.i.i, %i.cd ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.sroa.19.19.i62, i64 -24 ; 3 uses
  %.sroa.01.0.i.i67 = select i1 %.sroa.0.0.i.i.not.i.i, ptr %2, ptr %i.ce
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i67, i64 %.sroa.11.110.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i60, i64 24, i1 false), !alias.scope !262, !noalias !263
  %i.cg = zext i1 %.sroa.0.0.i.i.not.i.i to i64
  %i.ch = add i64 %.sroa.11.110.i61, %i.cg        ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i60, i64 24 ; 3 uses
  %i.cj = icmp ult ptr %i.ci, %i.bx
  br i1 %i.cj, label %.lr.ph.i59.a, label %._crit_edge.i51

bb.u:                                             ; preds = %._crit_edge.i51
  %i.ck = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -24
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i54, i64 24, i1 false), !alias.scope !262, !noalias !264
  %i.cm = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 24
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.i51
  %i.co = mul nuw nsw i64 %.sroa.11.1.lcssa.i53, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.co, i1 false), !alias.scope !262
  %i.cp = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not18.i55 = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53
  %i.cq = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 4 uses
  br i1 %.not18.i55, label %.outer.thread, label %.lr.ph16.i56.preheader

.lr.ph16.i56.preheader:                           ; preds = %bb.v
  %.neg300 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter295 = and i64 %i.cp, 1
  %i.cr = icmp eq i64 %.sroa.16.097225, %.neg300
  br i1 %i.cr, label %.lr.ph16.i56.epil.preheader, label %.lr.ph16.i56.preheader.new

.lr.ph16.i56.preheader.new:                       ; preds = %.lr.ph16.i56.preheader
  %unroll_iter298 = and i64 %i.cp, -2
  br label %.lr.ph16.i56

.lr.ph16.i56:                                     ; preds = %.lr.ph16.i56, %.lr.ph16.i56.preheader.new
  %.sroa.06.014.i57 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %i.cv, %.lr.ph16.i56 ] ; 5 uses
  %niter299 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %niter299.next.1, %.lr.ph16.i56 ]
  %i.cs = xor i64 %.sroa.06.014.i57, -1
  %i.ct = getelementptr [24 x i8], ptr %i.bu, i64 %i.cs
  %i.cu = getelementptr [24 x i8], ptr %i.cq, i64 %.sroa.06.014.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !alias.scope !262
  %i.cv = add nuw i64 %.sroa.06.014.i57, 2        ; 2 uses
  %i.cw = xor i64 %.sroa.06.014.i57, -2
  %i.cx = getelementptr [24 x i8], ptr %i.bu, i64 %i.cw
  %i.cy = getelementptr [24 x i8], ptr %i.cq, i64 %.sroa.06.014.i57
  %i.cz = getelementptr i8, ptr %i.cy, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !alias.scope !262
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit.unr-lcssa, label %.lr.ph16.i56

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit.unr-lcssa: ; preds = %.lr.ph16.i56
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit, label %.lr.ph16.i56.epil.preheader

.lr.ph16.i56.epil.preheader:                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit.unr-lcssa, %.lr.ph16.i56.preheader
  %.sroa.06.014.i57.epil.init = phi i64 [ 0, %.lr.ph16.i56.preheader ], [ %i.cv, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod297 = trunc i64 %i.cp to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.da = xor i64 %.sroa.06.014.i57.epil.init, -1
  %i.db = getelementptr [24 x i8], ptr %i.bu, i64 %i.da
  %i.dc = getelementptr [24 x i8], ptr %i.cq, i64 %.sroa.06.014.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !alias.scope !262
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit.unr-lcssa, %.lr.ph16.i56.epil.preheader
  %i.dd = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.097225
  br i1 %i.dd, label %bb.w, label %.outer, !prof !9

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.df = icmp ult i64 %i.cp, 33
  br i1 %i.df, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.097225, i64 noundef %.sroa.16.097225, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #29
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 2 captures(address) dereferenceable_or_null(2) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph120 = phi ptr [ %i.fa, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph119 = phi i64 [ %i.ef, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph118 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph117 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph120 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph117, null
  %i.d = icmp eq i32 %.sroa.025.0.ph118, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph266

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph266

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.eg, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph120, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit ], [ %i.fa, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit ], [ %i.ef, %.outer ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB1s_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, ptr noalias nofree noundef nonnull %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0113.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYBW_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %.sroa.0.0.ph120, i64 noundef %.sroa.16.0113.lcssa, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %bb.d

.lr.ph266:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0112265 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph118, %.lr.ph ]
  %.sroa.16.0113264 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ] ; 20 uses
  %i.f = add i32 %.sroa.025.0112265, -1           ; 4 uses
  %i.g = lshr i64 %.sroa.16.0113264, 3            ; 2 uses
  %.idx.i = and i64 %.sroa.16.0113264, 4611686018427387896
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 14
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0113264, 64
  br i1 %i.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYBZ_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph266
  %i.k = call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB14_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noundef nonnull readonly align 2 %.sroa.0.0.ph120, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %bb.e

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYBZ_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %.lr.ph266
  %.val6.i = load i16, ptr %.sroa.0.0.ph120, align 2, !alias.scope !306, !noundef !5 ; 2 uses
  %.val7.i = load i16, ptr %i.h, align 2, !alias.scope !306, !noundef !5 ; 2 uses
  %i.l = icmp ult i16 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i16, ptr %i.i, align 2, !alias.scope !306, !noundef !5 ; 2 uses
  %i.m = icmp ult i16 %.val6.i, %.val5.i
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp ult i16 %.val7.i, %.val5.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.0.ph120, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYBZ_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYBZ_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i ], [ %i.k, %bb.c ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.r, 1           ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0113264
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.r
  %i.u = load i16, ptr %i.t, align 2              ; 7 uses
  store i16 %i.u, ptr %i.a, align 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i16, ptr %.sroa.028.0.ph117, align 2, !noundef !5
  %i.v = icmp ult i16 %.sroa.028.0.val, %i.u
  br i1 %i.v, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %.not80 = icmp samesign ult i64 %3, %.sroa.16.0113264
  br i1 %.not80, label %bb.i, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr [2 x i8], ptr %2, i64 %.sroa.16.0113264 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.w, %bb.h ], [ %i.bj, %bb.k ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.k ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph120, %bb.h ], [ %i.bm, %bb.k ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0113264, %bb.k ] ; 3 uses
  %i.x = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph120, i64 %i.x ; 2 uses
  %i.z = icmp ult ptr %.sroa.9.0.i, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.j ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.j ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.j ] ; 4 uses
  %.val21.i = load i16, ptr %.sroa.9.131.i, align 2, !alias.scope !307, !noalias !308, !noundef !5 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer:bb.a
  %i.bl = load i16, ptr %.sroa.9.2.lcssa.i, align 2, !alias.scope !307, !noalias !314
  store i16 %i.bl, ptr %i.bk, align 2, !alias.scope !308, !noalias !315
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 2
  br label %bb.j

bb.l:                                             ; preds = %._crit_edge39.i
  %i.bn = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.0.0.ph120, ptr nonnull align 2 %2, i64 %i.bn, i1 false), !alias.scope !316
  %i.bo = sub i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i ; 9 uses
  %.not47.i = icmp eq i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %iter.check294

iter.check294:                                    ; preds = %bb.l
  %i.bp = getelementptr [2 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %min.iters.check279 = icmp ult i64 %i.bo, 4
  br i1 %min.iters.check279, label %vec.epilog.scalar.ph295.preheader, label %vector.main.loop.iter.check280

vector.main.loop.iter.check280:                   ; preds = %iter.check294
  %min.iters.check281 = icmp ult i64 %i.bo, 16
  br i1 %min.iters.check281, label %vec.epilog.ph298, label %vector.ph282

vector.ph282:                                     ; preds = %vector.main.loop.iter.check280
  %i.bq = and i64 %i.bo, 12
  %n.vec283 = and i64 %i.bo, -16                  ; 4 uses
  br label %vector.body284

vector.body284:                                   ; preds = %vector.ph282, %vector.body284
  %index285 = phi i64 [ 0, %vector.ph282 ], [ %index.next290, %vector.body284 ] ; 3 uses
  %i.br = xor i64 %index285, -1
  %i.bs = getelementptr [2 x i8], ptr %i.w, i64 %i.br ; 2 uses
  %i.bt = getelementptr [2 x i8], ptr %i.bp, i64 %index285 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bs, i64 -14
  %i.bv = getelementptr i8, ptr %i.bs, i64 -30
  %wide.load286 = load <8 x i16>, ptr %i.bu, align 2, !alias.scope !308, !noalias !307
  %wide.load287 = load <8 x i16>, ptr %i.bv, align 2, !alias.scope !308, !noalias !307
  %reverse288 = shufflevector <8 x i16> %wide.load286, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse289 = shufflevector <8 x i16> %wide.load287, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bw = getelementptr i8, ptr %i.bt, i64 16
  store <8 x i16> %reverse288, ptr %i.bt, align 2, !alias.scope !307, !noalias !308
  store <8 x i16> %reverse289, ptr %i.bw, align 2, !alias.scope !307, !noalias !308
  %index.next290 = add nuw i64 %index285, 16      ; 2 uses
  %i.bx = icmp eq i64 %index.next290, %n.vec283
  br i1 %i.bx, label %middle.block291, label %vector.body284, !llvm.loop !282

middle.block291:                                  ; preds = %vector.body284
  %cmp.n292 = icmp eq i64 %i.bo, %n.vec283
  br i1 %cmp.n292, label %.loopexit, label %vec.epilog.iter.check296

vec.epilog.iter.check296:                         ; preds = %middle.block291
  %min.epilog.iters.check297 = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check297, label %vec.epilog.scalar.ph295.preheader, label %vec.epilog.ph298, !prof !319

vec.epilog.ph298:                                 ; preds = %vector.main.loop.iter.check280, %vec.epilog.iter.check296
  %vec.epilog.resume.val293 = phi i64 [ %n.vec283, %vec.epilog.iter.check296 ], [ 0, %vector.main.loop.iter.check280 ]
  %n.vec299 = and i64 %i.bo, -4                   ; 3 uses
  br label %vec.epilog.vector.body300

vec.epilog.vector.body300:                        ; preds = %vec.epilog.vector.body300, %vec.epilog.ph298
  %index301 = phi i64 [ %vec.epilog.resume.val293, %vec.epilog.ph298 ], [ %index.next304, %vec.epilog.vector.body300 ] ; 3 uses
  %i.by = xor i64 %index301, -1
  %i.bz = getelementptr [2 x i8], ptr %i.w, i64 %i.by
  %i.ca = getelementptr [2 x i8], ptr %i.bp, i64 %index301
  %i.cb = getelementptr i8, ptr %i.bz, i64 -6
  %wide.load302 = load <4 x i16>, ptr %i.cb, align 2, !alias.scope !308, !noalias !307
  %reverse303 = shufflevector <4 x i16> %wide.load302, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse303, ptr %i.ca, align 2, !alias.scope !307, !noalias !308
  %index.next304 = add nuw i64 %index301, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next304, %n.vec299
  br i1 %i.cc, label %vec.epilog.middle.block305, label %vec.epilog.vector.body300, !llvm.loop !283

vec.epilog.middle.block305:                       ; preds = %vec.epilog.vector.body300
  %cmp.n306 = icmp eq i64 %i.bo, %n.vec299
  br i1 %cmp.n306, label %.loopexit, label %vec.epilog.scalar.ph295.preheader

vec.epilog.scalar.ph295.preheader:                ; preds = %iter.check294, %vec.epilog.iter.check296, %vec.epilog.middle.block305
  %.sroa.07.043.i.ph = phi i64 [ 0, %iter.check294 ], [ %n.vec283, %vec.epilog.iter.check296 ], [ %n.vec299, %vec.epilog.middle.block305 ]
  br label %vec.epilog.scalar.ph295

vec.epilog.scalar.ph295:                          ; preds = %vec.epilog.scalar.ph295.preheader, %vec.epilog.scalar.ph295
  %.sroa.07.043.i = phi i64 [ %i.cd, %vec.epilog.scalar.ph295 ], [ %.sroa.07.043.i.ph, %vec.epilog.scalar.ph295.preheader ] ; 3 uses
  %i.cd = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.ce = xor i64 %.sroa.07.043.i, -1
  %i.cf = getelementptr [2 x i8], ptr %i.w, i64 %i.ce
  %i.cg = getelementptr [2 x i8], ptr %i.bp, i64 %.sroa.07.043.i
  %i.ch = load i16, ptr %i.cf, align 2, !alias.scope !308, !noalias !307
  store i16 %i.ch, ptr %i.cg, align 2, !alias.scope !307, !noalias !308
  %exitcond.not.i = icmp eq i64 %i.cd, %i.bo
  br i1 %exitcond.not.i, label %.loopexit, label %vec.epilog.scalar.ph295, !llvm.loop !284

.loopexit:                                        ; preds = %vec.epilog.scalar.ph295, %middle.block291, %vec.epilog.middle.block305, %bb.l
  %i.ci = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.ci, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0113264
  br i1 %.not.i38, label %bb.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit, !prof !9

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29, !noalias !320
  unreachable

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph120) ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %i.cj, i64 noundef %i.bo, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %i.a, ptr noalias nofree noundef nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ck, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.r ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0113264
  br i1 %.not81, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %.thread
  %i.cm = getelementptr [2 x i8], ptr %2, i64 %.sroa.16.0113264 ; 4 uses
  br label %bb.q

bb.p:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.s, %bb.o
  %.sroa.43.0.i41 = phi ptr [ %i.cm, %bb.o ], [ %i.dz, %bb.s ] ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.o ], [ %i.ec, %bb.s ] ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph120, %bb.o ], [ %i.ed, %bb.s ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.o ], [ %.sroa.16.0113264, %bb.s ] ; 3 uses
  %i.cn = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3)
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph120, i64 %i.cn ; 2 uses
  %i.cp = icmp ult ptr %.sroa.9.0.i43, %i.co
  br i1 %i.cp, label %.lr.ph.i64, label %._crit_edge.i45

.lr.ph.i64:                                       ; preds = %bb.q
  %.val22.i65 = load i16, ptr %i.cl, align 2, !alias.scope !321, !noalias !322, !noundef !5 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i64
  %.sroa.9.131.i66 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i64 ], [ %i.dn, %bb.r ] ; 5 uses
  %.sroa.27.130.i67 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i64 ], [ %i.dm, %bb.r ] ; 2 uses
  %.sroa.43.129.i68 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i64 ], [ %i.dj, %bb.r ] ; 4 uses
  %.val21.i69 = load i16, ptr %.sroa.9.131.i66, align 2, !alias.scope !321, !noalias !322, !noundef !5 ; 2 uses
  %i.cq = icmp uge i16 %.val22.i65, %.val21.i69   ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -2
  %.sroa.01.0.i.i70 = select i1 %i.cq, ptr %2, ptr %i.cr
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.27.130.i67
  store i16 %.val21.i69, ptr %i.cs, align 2, !alias.scope !322, !noalias !323
  %i.ct = zext i1 %i.cq to i64
  %i.cu = add i64 %.sroa.27.130.i67, %i.ct        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 2
  %.val19.i71 = load i16, ptr %i.cv, align 2, !alias.scope !321, !noalias !322, !noundef !5 ; 2 uses
  %i.cw = icmp uge i16 %.val22.i65, %.val19.i71   ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -4
  %.sroa.01.0.i23.i72 = select i1 %i.cw, ptr %2, ptr %i.cx
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i23.i72, i64 %i.cu
  store i16 %.val19.i71, ptr %i.cy, align 2, !alias.scope !322, !noalias !324
  %i.cz = zext i1 %i.cw to i64
  %i.da = add i64 %i.cu, %i.cz                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 4
  %.val17.i73 = load i16, ptr %i.db, align 2, !alias.scope !321, !noalias !322, !noundef !5 ; 2 uses
  %i.dc = icmp uge i16 %.val22.i65, %.val17.i73   ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -6
  %.sroa.01.0.i24.i74 = select i1 %i.dc, ptr %2, ptr %i.dd
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i24.i74, i64 %i.da
  store i16 %.val17.i73, ptr %i.de, align 2, !alias.scope !322, !noalias !325
  %i.df = zext i1 %i.dc to i64
  %i.dg = add i64 %i.da, %i.df                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 6
  %.val15.i75 = load i16, ptr %i.dh, align 2, !alias.scope !321, !noalias !322, !noundef !5 ; 2 uses
  %i.di = icmp uge i16 %.val22.i65, %.val15.i75   ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -8 ; 3 uses
  %.sroa.01.0.i25.i76 = select i1 %i.di, ptr %2, ptr %i.dj
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.dg
  store i16 %.val15.i75, ptr %i.dk, align 2, !alias.scope !322, !noalias !326
  %i.dl = zext i1 %i.di to i64
  %i.dm = add i64 %i.dg, %i.dl                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 8 ; 3 uses
  %i.do = icmp ult ptr %i.dn, %i.co
  br i1 %i.do, label %bb.r, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %bb.r, %bb.q
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.q ], [ %i.dj, %bb.r ] ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.q ], [ %i.dm, %bb.r ] ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.q ], [ %i.dn, %bb.r ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i44 ; 2 uses
  %i.dq = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.dp
  br i1 %i.dq, label %.lr.ph38.i57.preheader, label %._crit_edge39.i49

.lr.ph38.i57.preheader:                           ; preds = %._crit_edge.i45
  %.val14.i62 = load i16, ptr %i.cl, align 2, !alias.scope !321, !noalias !322, !noundef !5
  br label %.lr.ph38.i57

._crit_edge39.i49:                                ; preds = %.lr.ph38.i57, %._crit_edge.i45
  %.sroa.43.2.lcssa.i50 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.dt, %.lr.ph38.i57 ]
  %.sroa.27.2.lcssa.i51 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.dw, %.lr.ph38.i57 ] ; 9 uses
  %.sroa.9.2.lcssa.i52 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.dx, %.lr.ph38.i57 ] ; 2 uses
  %i.dr = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0113264
  br i1 %i.dr, label %bb.t, label %bb.s

.lr.ph38.i57:                                     ; preds = %.lr.ph38.i57, %.lr.ph38.i57.preheader
  %.sroa.9.236.i58 = phi ptr [ %.sroa.9.1.lcssa.i48, %.lr.ph38.i57.preheader ], [ %i.dx, %.lr.ph38.i57 ] ; 2 uses
  %.sroa.27.235.i59 = phi i64 [ %.sroa.27.1.lcssa.i47, %.lr.ph38.i57.preheader ], [ %i.dw, %.lr.ph38.i57 ] ; 2 uses
  %.sroa.43.234.i60 = phi ptr [ %.sroa.43.1.lcssa.i46, %.lr.ph38.i57.preheader ], [ %i.dt, %.lr.ph38.i57 ]
  %.val.i61 = load i16, ptr %.sroa.9.236.i58, align 2, !alias.scope !321, !noalias !322, !noundef !5 ; 2 uses
  %i.ds = icmp uge i16 %.val14.i62, %.val.i61     ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %.sroa.43.234.i60, i64 -2 ; 3 uses
  %.sroa.01.0.i26.i63 = select i1 %i.ds, ptr %2, ptr %i.dt
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i26.i63, i64 %.sroa.27.235.i59
  store i16 %.val.i61, ptr %i.du, align 2, !alias.scope !322, !noalias !327
  %i.dv = zext i1 %i.ds to i64
  %i.dw = add i64 %.sroa.27.235.i59, %i.dv        ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i58, i64 2 ; 3 uses
  %i.dy = icmp ult ptr %i.dx, %i.dp
  br i1 %i.dy, label %.lr.ph38.i57, label %._crit_edge39.i49

bb.s:                                             ; preds = %._crit_edge39.i49
  %i.dz = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i50, i64 -2
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i51
  %i.eb = load i16, ptr %.sroa.9.2.lcssa.i52, align 2, !alias.scope !321, !noalias !328
  store i16 %i.eb, ptr %i.ea, align 2, !alias.scope !322, !noalias !329
  %i.ec = add i64 %.sroa.27.2.lcssa.i51, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i52, i64 2
  br label %bb.q

bb.t:                                             ; preds = %._crit_edge39.i49
  %i.ee = shl nuw nsw i64 %.sroa.27.2.lcssa.i51, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.0.0.ph120, ptr nonnull align 2 %2, i64 %i.ee, i1 false), !alias.scope !330
  %i.ef = sub i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i51 ; 11 uses
  %.not47.i53 = icmp eq i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i51
  %i.eg = getelementptr [2 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i51 ; 4 uses
  br i1 %.not47.i53, label %.outer.thread, label %iter.check

iter.check:                                       ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.ef, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check270 = icmp ult i64 %i.ef, 16
  br i1 %min.iters.check270, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eh = and i64 %i.ef, 12
  %n.vec = and i64 %i.ef, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ei = xor i64 %index, -1
  %i.ej = getelementptr [2 x i8], ptr %i.cm, i64 %i.ei ; 2 uses
  %i.ek = getelementptr [2 x i8], ptr %i.eg, i64 %index ; 2 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 -14
  %i.em = getelementptr i8, ptr %i.ej, i64 -30
  %wide.load = load <8 x i16>, ptr %i.el, align 2, !alias.scope !322, !noalias !321
  %wide.load271 = load <8 x i16>, ptr %i.em, align 2, !alias.scope !322, !noalias !321
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse272 = shufflevector <8 x i16> %wide.load271, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.en = getelementptr i8, ptr %i.ek, i64 16
  store <8 x i16> %reverse, ptr %i.ek, align 2, !alias.scope !321, !noalias !322
  store <8 x i16> %reverse272, ptr %i.en, align 2, !alias.scope !321, !noalias !322
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !319

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec273 = and i64 %i.ef, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index274 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next277, %vec.epilog.vector.body ] ; 3 uses
  %i.ep = xor i64 %index274, -1
  %i.eq = getelementptr [2 x i8], ptr %i.cm, i64 %i.ep
  %i.er = getelementptr [2 x i8], ptr %i.eg, i64 %index274
  %i.es = getelementptr i8, ptr %i.eq, i64 -6
  %wide.load275 = load <4 x i16>, ptr %i.es, align 2, !alias.scope !322, !noalias !321
  %reverse276 = shufflevector <4 x i16> %wide.load275, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse276, ptr %i.er, align 2, !alias.scope !321, !noalias !322
  %index.next277 = add nuw i64 %index274, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next277, %n.vec273
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !304

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n278 = icmp eq i64 %i.ef, %n.vec273
  br i1 %cmp.n278, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.07.043.i55.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec273, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.07.043.i55 = phi i64 [ %i.eu, %vec.epilog.scalar.ph ], [ %.sroa.07.043.i55.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.eu = add nuw i64 %.sroa.07.043.i55, 1        ; 2 uses
  %i.ev = xor i64 %.sroa.07.043.i55, -1
  %i.ew = getelementptr [2 x i8], ptr %i.cm, i64 %i.ev
  %i.ex = getelementptr [2 x i8], ptr %i.eg, i64 %.sroa.07.043.i55
  %i.ey = load i16, ptr %i.ew, align 2, !alias.scope !322, !noalias !321
  store i16 %i.ey, ptr %i.ex, align 2, !alias.scope !321, !noalias !322
  %exitcond.not.i56 = icmp eq i64 %i.eu, %i.ef
  br i1 %exitcond.not.i56, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit, label %vec.epilog.scalar.ph, !llvm.loop !305

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ez = icmp ugt i64 %.sroa.27.2.lcssa.i51, %.sroa.16.0113264
  br i1 %i.ez, label %bb.u, label %.outer, !prof !9

.outer.thread:                                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fb = icmp ult i64 %i.ef, 33
  br i1 %i.fb, label %.outer._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECs5JazJsyow1H_14otl_normalizer.exit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i51, i64 noundef %.sroa.16.0113264, i64 noundef %.sroa.16.0113264, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #29
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2M_11collections5btree3mapINtB3z_8BTreeMapB16_B1T_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4C_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6t_7NameMap9from_fonts_0EE0E0EB6v_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(32) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %i.cg, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph95 = phi i64 [ %i.br, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.d = icmp eq i32 %.sroa.025.0.ph94, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph219

bb.b:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph219

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.bs, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit ], [ %i.cg, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE12split_at_mutCs5JazJsyow1H_14otl_normalizer.exit ], [ %i.br, %.outer ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB39_11collections5btree3mapINtB3W_8BTreeMapB1t_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4Z_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6Q_7NameMap9from_fonts_0EE0E0EB6S_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3p_8BTreeMapBX_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4r_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6h_7NameMap9from_fonts_0EE0E0EB6j_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.088218, -1            ; 4 uses
  %i.g = lshr i64 %.sroa.16.089217, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 7
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 224
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.089217, 64
  br i1 %i.j, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB2G_11collections5btree3mapINtB3s_8BTreeMapB10_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB4v_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6l_7NameMap9from_fonts_0EE0E0EB6n_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph219
  %i.k = call fastcc noundef ptr @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot11median3_recTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB2L_11collections5btree3mapINtB3y_8BTreeMapB15_B1S_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB4B_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6s_7NameMap9from_fonts_0EE0E0EB6u_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %bb.e

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB2G_11collections5btree3mapINtB3s_8BTreeMapB10_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB4v_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6l_7NameMap9from_fonts_0EE0E0EB6n_.exit.i: ; preds = %.lr.ph219
  %.val6.i = load i16, ptr %.sroa.0.0.ph96, align 2, !alias.scope !350, !noundef !5 ; 2 uses
  %.val7.i = load i16, ptr %i.h, align 2, !alias.scope !350, !noundef !5 ; 2 uses
  %i.l = icmp ult i16 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i16, ptr %i.i, align 2, !alias.scope !350, !noundef !5 ; 2 uses
  %i.m = icmp ult i16 %.val6.i, %.val5.i
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp ult i16 %.val7.i, %.val5.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.0.ph96, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB2G_11collections5btree3mapINtB3s_8BTreeMapB10_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB4v_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6l_7NameMap9from_fonts_0EE0E0EB6n_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared5pivot7median3TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB2G_11collections5btree3mapINtB3s_8BTreeMapB10_B1N_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB4v_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6l_7NameMap9from_fonts_0EE0E0EB6n_.exit.i ], [ %i.k, %bb.c ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.r, 5           ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.089217
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %i.r ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  br i1 %.not, label %bb.g, label %bb.f

end_hunk_1
