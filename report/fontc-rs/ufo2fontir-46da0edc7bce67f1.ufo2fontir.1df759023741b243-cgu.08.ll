Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/ufo2fontir-46da0edc7bce67f1.ufo2fontir.1df759023741b243-cgu.08?download=true
inline.NumInlined: 478
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB22_9UserSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_11sort_by_keyB1n_NCNvXs7_B22_INtB22_8LocationB2H_EINtNtBa_7convert4FromINtNtB37_3vec3VecB1m_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir:bb.a
  store i32 %.val9.i, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.val8.i, ptr %i.a, align 4
  %i.q = load i32, ptr %i.b, align 4
  %i.r = load i32, ptr %i.a, align 4
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.u = icmp ult i32 %i.s, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.u, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !837
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i, i64 12, i1 false), !noalias !837
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1O_9UserSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvXs7_B1O_INtB1O_8LocationB2t_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB18_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1O_9UserSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_11sort_by_keyB19_NCNvXs7_B1O_INtB1O_8LocationB2t_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB18_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB1n_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4F_8adapters3map3MapINtB3C_8IntoIterNtNtB2P_6string6StringB27_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6M_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2B_11collections5btree3mapINtB3o_8BTreeMapB19_B1T_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4r_8adapters3map3MapINtB3o_8IntoIterNtNtB2B_6string6StringB1T_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6y_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB1n_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB53_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB7m_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2Z_11collections5btree3mapINtB3M_8BTreeMapB19_B1T_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB78_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_lefttNvYtNtNtBa_3cmp10PartialOrd2ltECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 2 captures(address) %0, i64 noundef range(i64 0, 4611686018427387904) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailtNvYtNtNtBa_3cmp10PartialOrd2ltECs2zvA5OmMqFb_10ufo2fontir.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailtNvYtNtNtBa_3cmp10PartialOrd2ltECs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailtNvYtNtNtBa_3cmp10PartialOrd2ltECs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -2 ; 3 uses
  %.val9.i = load i16, ptr %.sroa.0.05, align 2, !alias.scope !845, !noalias !846, !noundef !5 ; 3 uses
  %.val10.i = load i16, ptr %i.d, align 2, !alias.scope !846, !noalias !845, !noundef !5 ; 2 uses
  %i.e = icmp ult i16 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailtNvYtNtNtBa_3cmp10PartialOrd2ltECs2zvA5OmMqFb_10ufo2fontir.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i16 %.val10.i, ptr %.sroa.0.05, align 2
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i16 %.val8.i, ptr %.sroa.0.0.i8, align 2
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -2 ; 3 uses
  %.val8.i = load i16, ptr %i.h, align 2, !alias.scope !846, !noalias !845, !noundef !5 ; 2 uses
  %i.i = icmp ult i16 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i16 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 2, !noalias !847
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailtNvYtNtNtBa_3cmp10PartialOrd2ltECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailtNvYtNtNtBa_3cmp10PartialOrd2ltECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1I_5sliceSBW_7sort_byNCINvXs1o_NtB1E_3mapINtB3Y_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4D_8adapters10filter_map9FilterMapIB5v_INtB3Y_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1I_3vec3VecB6r_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7o_s_0EE0E0EB7s_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.bq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i117 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i122 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.bm, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.bm ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.js, %bb.bm ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.jq, %bb.bm ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit
  %.sroa.021.0 = phi i8 [ %i.bb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.s = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #28, !noalias !894, !inline_history !851 ; 2 uses
  %.not91 = icmp eq i64 %i.o, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader61

.preheader61:                                     ; preds = %bb.k
  br i1 %.not91, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader61
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not91, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.preheader
  %smax98 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph78

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.sroa.01.0.i.i74 = phi i64 [ %i.x, %bb.l ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.01.0.i.i74
  %i.u = getelementptr [56 x i8], ptr %i.p, i64 %.sroa.01.0.i.i74
  %i.v = getelementptr i8, ptr %i.u, i64 -56
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.v) #28, !noalias !894, !inline_history !851
  br i1 %i.w, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i64 %.sroa.01.0.i.i74, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i, label %.lr.ph

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %bb.m
  %.sroa.01.1.i.i77 = phi i64 [ %i.ac, %bb.m ], [ 2, %.lr.ph78.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.01.1.i.i77
  %i.z = getelementptr [56 x i8], ptr %i.p, i64 %.sroa.01.1.i.i77
  %i.aa = getelementptr i8, ptr %i.z, i64 -56
  %i.ab = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.y, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aa) #28, !noalias !894, !inline_history !851
  br i1 %i.ab, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i

bb.m:                                             ; preds = %.lr.ph78
  %i.ac = add nuw nsw i64 %.sroa.01.1.i.i77, 1    ; 2 uses
  %exitcond98.not = icmp eq i64 %i.ac, %smax98
  br i1 %exitcond98.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i, label %.lr.ph78

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph78
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i77, %.lr.ph78 ], [ %smax98, %bb.m ], [ %.sroa.01.0.i.i74, %.lr.ph ], [ %smax, %bb.l ] ; 5 uses
  %i.ad = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.ad)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120: ; preds = %.preheader
  br i1 %.not3.i122, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread: ; preds = %.preheader61
  br i1 %.not3.i117, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp ne i64 %i.ae, 0
  %or.cond.not = and i1 %.not.i.i, %i.s
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit

bb.o:                                             ; preds = %bb.i
  %i.af = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 164703072086692426) %i.o)
  %i.ag = shl nuw nsw i64 %i.af, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit

bb.p:                                             ; preds = %bb.i
  %i.ah = tail call i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1R_5sliceSB15_7sort_byNCINvXs1o_NtB1N_3mapINtB48_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4O_8adapters10filter_map9FilterMapIB5H_INtB48_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1R_3vec3VecB6D_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7A_s_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ah, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !851
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = or disjoint i64 %i.ai, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i5659 = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread ], [ %.sroa.0.0.i.i118125129, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ]
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i.i5659, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120
  %i.am = phi i64 [ %i.ae, %bb.n ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120 ]
  %.sroa.0.0.i.i118125129 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.0.0.i.i118125129
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.as, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.017.i.i, -1
  %i.ap = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.0.017.i.i
  %i.aq = getelementptr [56 x i8], ptr %i.an, i64 %i.ao
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i64 noundef 7)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.q, !noalias !894

bb.q:                                             ; preds = %.lr.ph.i.i35
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #27, !noalias !894
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.as = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.am
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.0.i32 = phi i64 [ %i.al, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.aj, %bb.p ], [ %i.ag, %bb.o ] ; 2 uses
  %i.at = lshr i64 %.sroa.023.0, 1
  %i.au = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.av = sub nsw i64 %factor, %i.at
  %i.aw = add nuw nsw i64 %i.au, %factor
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph84, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit
  %.sroa.02.183 = phi i64 [ %.sroa.02.0, %.lr.ph84 ], [ %i.bc, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit ] ; 2 uses
  %.sroa.023.182 = phi i64 [ %.sroa.023.0, %.lr.ph84 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit ] ; 4 uses
  %i.bc = add i64 %.sroa.02.183, -1               ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.be, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.182, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.183, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bg, align 1
  br i1 %i.l, label %bb.bm, label %bb.bn

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 8 uses
  %i.bk = lshr i64 %.sroa.023.182, 1              ; 6 uses
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 4 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bm ; 6 uses
  %i.bo = icmp samesign ugt i64 %i.bl, %3
  %i.bp = trunc i64 %.sroa.023.182 to i1
  %i.bq = or i64 %i.bi, %.sroa.023.182
  %i.br = trunc i64 %i.bq to i1
  %or.cond3.i = or i1 %i.bo, %i.br
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = trunc i64 %i.bi to i1
  br i1 %i.bs, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bt = shl nuw nsw i64 %i.bl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bp, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bu = or i64 %i.bj, 1
  %i.bv = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1R_5sliceSB15_7sort_byNCINvXs1o_NtB1N_3mapINtB48_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4O_8adapters10filter_map9FilterMapIB5H_INtB48_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1R_3vec3VecB6D_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7A_s_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, 164703072086692426) %i.bj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !852
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %i.bj
  %i.ca = or i64 %i.bk, 1
  %i.cb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1R_5sliceSB15_7sort_byNCINvXs1o_NtB1N_3mapINtB48_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4O_8adapters10filter_map9FilterMapIB5H_INtB48_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1R_3vec3VecB6D_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7A_s_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 164703072086692426) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !852
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cf = icmp eq i64 %i.bj, 0
  %i.cg = icmp eq i64 %i.bk, 0
  %or.cond.i = or i1 %i.cg, %i.cf
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bj, i64 %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %i.ch
  br i1 %i.ci, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %i.bj ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bj, %i.bk  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bn
  %i.ck = mul nuw nsw i64 %i.ch, 56               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !895
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51
  %i.cm = phi ptr [ %i.fw, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.cl, %.critedge.i ] ; 12 uses
  %i.cn = phi ptr [ %i.fu, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.cj, %.critedge.i ] ; 12 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cq, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.n, %.critedge.i ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -56 ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -56 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898), !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900), !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901), !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902), !noalias !899
  %i.cr = load i64, ptr %i.cp, align 8, !range !7, !alias.scope !903, !noalias !904, !noundef !5 ; 3 uses
  %i.cs = load i64, ptr %i.co, align 8, !range !7, !alias.scope !905, !noalias !906, !noundef !5 ; 2 uses
  %i.ct = sub nsw i64 %i.cr, %i.cs
  %i.cu = trunc nsw i64 %i.ct to i8
  %i.cv = icmp eq i64 %i.cr, %i.cs
  br i1 %i.cv, label %bb.aa, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51

bb.aa:                                            ; preds = %.preheader.i
  %i.cw = trunc nuw i64 %i.cr to i1
  %i.cx = getelementptr inbounds i8, ptr %i.cm, i64 -48 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cn, i64 -48 ; 2 uses
  br i1 %i.cw, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907), !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908), !noalias !899
  %i.cz = load i8, ptr %i.cx, align 8, !range !4, !alias.scope !909, !noalias !910, !noundef !5 ; 2 uses
  %i.da = icmp samesign ugt i8 %i.cz, 23
  %i.db = zext nneg i8 %i.cz to i64               ; 2 uses
  %i.dc = add nsw i64 %i.db, -23
  %i.dd = select i1 %i.da, i64 %i.dc, i64 0
  switch i64 %i.dd, label %bb.ac [
    i64 0, label %bb.ad
    i64 1, label %bb.ae
    i64 2, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ag, %bb.ab
  unreachable

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1I_5sliceSBW_7sort_byNCINvXs1o_NtB1E_3mapINtB3Y_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4D_8adapters10filter_map9FilterMapIB5v_INtB3Y_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1I_3vec3VecB6r_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7o_s_0EE0E0EB7s_:bb.a
    i64 0, label %bb.bf
    i64 1, label %bb.bg
    i64 2, label %bb.bh
  ]

bb.be:                                            ; preds = %bb.bi, %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 9
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bd
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !938, !noalias !939, !nonnull !5, !noundef !5
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !938, !noalias !939, !noundef !5
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !alias.scope !938, !noalias !939, !nonnull !5, !noundef !5
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !938, !noalias !939, !noundef !5
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %.sroa.4.0.i2.i.i.i = phi i64 [ %i.hu, %bb.bf ], [ %i.ib, %bb.bg ], [ %i.if, %bb.bh ] ; 2 uses
  %.sroa.0.0.i3.i.i.i = phi ptr [ %i.hx, %bb.bf ], [ %i.hz, %bb.bg ], [ %i.ig, %bb.bh ]
  %i.ih = load i8, ptr %i.gi, align 8, !range !4, !alias.scope !940, !noalias !941, !noundef !5 ; 2 uses
  %i.ii = icmp samesign ugt i8 %i.ih, 23
  %i.ij = zext nneg i8 %i.ih to i64               ; 2 uses
  %i.ik = add nsw i64 %i.ij, -23
  %i.il = select i1 %i.ii, i64 %i.ik, i64 0
  switch i64 %i.il, label %bb.be [
    i64 0, label %bb.bj
    i64 1, label %bb.bk
    i64 2, label %bb.bl
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.im = getelementptr inbounds nuw i8, ptr %i.ga, i64 9
  br label %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.in = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !940, !noalias !941, !nonnull !5, !noundef !5
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !940, !noalias !941, !noundef !5
  br label %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i

bb.bl:                                            ; preds = %bb.bi
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !940, !noalias !941, !nonnull !5, !noundef !5
  %i.it = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !940, !noalias !941, !noundef !5
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  br label %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i

_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %.sroa.42.0.i4.i.i.i = phi i64 [ %i.ij, %bb.bj ], [ %i.iq, %bb.bk ], [ %i.iu, %bb.bl ] ; 2 uses
  %.sroa.01.0.i5.i.i.i = phi ptr [ %i.im, %bb.bj ], [ %i.io, %bb.bk ], [ %i.iv, %bb.bl ]
  %spec.store.select.i6.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i2.i.i.i, i64 %.sroa.42.0.i4.i.i.i)
  %i.iw = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i3.i.i.i, ptr nonnull %.sroa.01.0.i5.i.i.i, i64 %spec.store.select.i6.i.i.i), !noalias !922 ; 2 uses
  %i.ix = sext i32 %i.iw to i64
  %i.iy = icmp eq i32 %i.iw, 0
  %i.iz = sub i64 %.sroa.4.0.i2.i.i.i, %.sroa.42.0.i4.i.i.i
  %spec.select.i7.i.i.i = select i1 %i.iy, i64 %i.iz, i64 %i.ix
  %i.ja = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i7.i.i.i, i64 0)
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit: ; preds = %.lr.ph.i.i, %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.hr, %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i ], [ %i.ja, %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i ], [ %i.ge, %.lr.ph.i.i ]
  %i.jb = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 3 uses
  %i.jc = xor i1 %i.jb, true
  %.sroa.05.0.i.i = select i1 %i.jb, ptr %.sroa.0.02.i.i, ptr %i.ga
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fz, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05.0.i.i, i64 56, i1 false), !alias.scope !895, !noalias !922
  %i.jd = zext i1 %i.jc to i64
  %i.je = getelementptr inbounds nuw [56 x i8], ptr %i.ga, i64 %i.jd ; 3 uses
  %i.jf = zext i1 %i.jb to i64
  %i.jg = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i.i, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.fz, i64 56 ; 2 uses
  %i.ji = icmp ne ptr %i.je, %i.cl
  %i.jj = icmp ne ptr %i.jg, %i.n
  %or.cond.i18.i = select i1 %i.ji, i1 %i.jj, i1 false
  br i1 %or.cond.i18.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE10merge_downNCINvMNtB1W_5sliceSB1a_7sort_byNCINvXs1o_NtB1S_3mapINtB4q_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB56_8adapters10filter_map9FilterMapIB5Z_INtB4q_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1W_3vec3VecB6V_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7S_s_0EE0E0EB7W_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE10merge_downNCINvMNtB1W_5sliceSB1a_7sort_byNCINvXs1o_NtB1S_3mapINtB4q_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB56_8adapters10filter_map9FilterMapIB5Z_INtB4q_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1W_3vec3VecB6V_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7S_s_0EE0E0EB7W_.exit.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51
  %.sroa.13.1.i = phi ptr [ %i.fu, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.jh, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit ]
  %.sroa.7.0.i = phi ptr [ %i.fw, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.cl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.je, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit ] ; 2 uses
  %i.jk = ptrtoint ptr %.sroa.7.0.i to i64
  %i.jl = ptrtoint ptr %.sroa.0.1.i to i64
  %i.jm = sub nuw i64 %i.jk, %i.jl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.jm, i1 false), !alias.scope !895, !noalias !942
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE10merge_downNCINvMNtB1W_5sliceSB1a_7sort_byNCINvXs1o_NtB1S_3mapINtB4q_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB56_8adapters10filter_map9FilterMapIB5Z_INtB4q_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1W_3vec3VecB6V_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7S_s_0EE0E0EB7W_.exit.i
  %i.jn = shl nuw nsw i64 %i.bl, 1
  %i.jo = or disjoint i64 %i.jn, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit
  %.sroa.0.0.i = phi i64 [ %i.jo, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit ], [ %i.bt, %bb.u ] ; 2 uses
  %i.jp = icmp ugt i64 %i.bc, 1
  br i1 %i.jp, label %bb.r, label %._crit_edge

bb.bm:                                            ; preds = %._crit_edge
  %i.jq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.jr = lshr i64 %.sroa.018.0, 1
  %i.js = add nuw nsw i64 %i.jr, %.sroa.09.0
  br label %bb.f

bb.bn:                                            ; preds = %._crit_edge
  %i.jt = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.jt, 0
  br i1 %.not30, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ju = or i64 %1, 1
  %i.jv = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ju, i1 true)
  %i.jw = trunc nuw nsw i64 %i.jv to i32
  %i.jx = shl nuw nsw i32 %i.jw, 1
  %i.jy = xor i32 %i.jx, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1R_5sliceSB15_7sort_byNCINvXs1o_NtB1N_3mapINtB48_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4O_8adapters10filter_map9FilterMapIB5H_INtB48_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1R_3vec3VecB6D_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7A_s_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.jy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !852
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.a, %bb.bp
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1C_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyBX_NCNvXs7_B1C_INtB1C_8LocationB2h_EINtNtBa_7convert4FromINtNtB2K_3vec3VecBW_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = icmp samesign ult i64 %1, 2
  br i1 %i.m, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = udiv i64 4611686018427387904, %1
  %i.o = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.n, %i.p         ; 2 uses
  %i.q = icmp samesign ult i64 %1, 4097
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %1, 1
  %i.t = sub nuw nsw i64 %1, %i.s
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.u, %bb.d ], [ %i.r, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not3.i90 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i95 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.aa ] ; 3 uses
  %i.v = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.021.0 = phi i8 [ %i.bt, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit ], [ 1, %bb.f ] ; 2 uses
  %i.w = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.w, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.y = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.y, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread93, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp samesign ult i64 %i.y, 2
  br i1 %i.aa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val7.i = load i32, ptr %i.ab, align 8, !alias.scope !960, !noalias !961 ; 3 uses
  %.val8.i = load i32, ptr %i.z, align 8, !alias.scope !960, !noalias !961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.val7.i, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.val8.i, ptr %i.a, align 4
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.ag = icmp uge i32 %i.ae, %i.af               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not67 = icmp eq i64 %i.y, 2                   ; 2 uses
  br i1 %i.ag, label %.preheader45, label %.preheader

.preheader45:                                     ; preds = %bb.k
  br i1 %.not67, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader45
  %smax = tail call i64 @llvm.smax.i64(i64 %i.y, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not67, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread93, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %.preheader
  %smax74 = tail call i64 @llvm.smax.i64(i64 %i.y, i64 3) ; 2 uses
  br label %.lr.ph54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val6.i = phi i32 [ %.val5.i, %bb.l ], [ %.val7.i, %.lr.ph.preheader ]
  %.sroa.01.0.i.i50 = phi i64 [ %i.an, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.01.0.i.i50
  %.val5.i = load i32, ptr %i.ah, align 8, !alias.scope !960, !noalias !961 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.val5.i, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.val6.i, ptr %i.c, align 4
  %i.ai = load i32, ptr %i.d, align 4
  %i.aj = load i32, ptr %i.c, align 4
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.am = icmp ult i32 %i.ak, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.am, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.an = add nuw nsw i64 %.sroa.01.0.i.i50, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %.lr.ph

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.m
  %.val4.i = phi i32 [ %.val.i, %bb.m ], [ %.val7.i, %.lr.ph54.preheader ]
  %.sroa.01.1.i.i53 = phi i64 [ %i.au, %bb.m ], [ 2, %.lr.ph54.preheader ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.01.1.i.i53
  %.val.i = load i32, ptr %i.ao, align 8, !alias.scope !960, !noalias !961 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.val.i, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.val4.i, ptr %i.e, align 4
  %i.ap = load i32, ptr %i.f, align 4
  %i.aq = load i32, ptr %i.e, align 4
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.at = icmp ult i32 %i.ar, %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.at, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i

bb.m:                                             ; preds = %.lr.ph54
  %i.au = add nuw nsw i64 %.sroa.01.1.i.i53, 1    ; 2 uses
  %exitcond74.not = icmp eq i64 %i.au, %smax74
  br i1 %exitcond74.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %.lr.ph54

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i: ; preds = %bb.m, %.lr.ph54, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i50, %.lr.ph ], [ %smax, %bb.l ], [ %.sroa.01.1.i.i53, %.lr.ph54 ], [ %smax74, %bb.m ] ; 5 uses
  %i.av = icmp samesign ule i64 %.sroa.0.0.i.i, %i.y
  tail call void @llvm.assume(i1 %i.av)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread93: ; preds = %.preheader
  br i1 %.not3.i95, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread: ; preds = %.preheader45
  br i1 %.not3.i90, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i
  %i.aw = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.aw, 0
  %or.cond = or i1 %i.ag, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %i.ax = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.y)
  %i.ay = shl nuw nsw i64 %i.ax, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit

bb.p:                                             ; preds = %bb.i
  %i.az = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.y, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef %i.az, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !947
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = or disjoint i64 %i.ba, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4043 = phi i64 [ %i.y, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread ], [ %.sroa.0.0.i.i9198102, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ]
  %i.bc = shl nuw nsw i64 %.sroa.0.0.i.i4043, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread93
  %i.be = phi i64 [ %i.aw, %bb.n ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread93 ]
  %.sroa.0.0.i.i9198102 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread93 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.0.0.i.i9198102
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bk, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bg = xor i64 %.sroa.0.017.i.i, -1
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.0.017.i.i
  %i.bi = getelementptr [16 x i8], ptr %i.bf, i64 %i.bg
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bi, i64 noundef 2)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.q, !noalias !961

bb.q:                                             ; preds = %.lr.ph.i.i35
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #27, !noalias !961
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1G_11DesignSpaceEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.bk = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %i.be
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1J_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyB14_NCNvXs7_B1J_INtB1J_8LocationB2o_EINtNtBa_7convert4FromINtNtB2R_3vec3VecB13_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bd, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1a_11DesignSpaceEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.bb, %bb.p ], [ %i.ay, %bb.o ] ; 2 uses
  %i.bl = lshr i64 %.sroa.023.0, 1
  %i.bm = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bn = sub nsw i64 %factor, %i.bl
  %i.bo = add nuw nsw i64 %i.bm, %factor
  %i.bp = mul i64 %i.bn, %.sroa.0.0
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false)
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph60, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.02.159 = phi i64 [ %.sroa.02.0, %.lr.ph60 ], [ %i.bu, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit ] ; 2 uses
  %.sroa.023.158 = phi i64 [ %.sroa.023.0, %.lr.ph60 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit ] ; 4 uses
  %i.bu = add i64 %.sroa.02.159, -1               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.158, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.159, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.by, align 1
  br i1 %i.v, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bu
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !5 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 8 uses
  %i.cc = lshr i64 %.sroa.023.158, 1              ; 6 uses
  %i.cd = add nuw i64 %i.cb, %i.cc                ; 4 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ce ; 6 uses
  %i.cg = icmp samesign ugt i64 %i.cd, %3
  %i.ch = trunc i64 %.sroa.023.158 to i1
  %i.ci = or i64 %i.ca, %.sroa.023.158
  %i.cj = trunc i64 %i.ci to i1
  %or.cond3.i = or i1 %i.cg, %i.cj
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cl = shl nuw nsw i64 %i.cd, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ch, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cm = or i64 %i.cb, 1
  %i.cn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 576460752303423488) %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !948
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb
  %i.cs = or i64 %i.cc, 1
  %i.ct = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 576460752303423488) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !948
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.cx = icmp eq i64 %i.cb, 0
  %i.cy = icmp eq i64 %i.cc, 0
  %or.cond.i = or i1 %i.cy, %i.cx
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.cb, i64 %i.cc) ; 2 uses
  %i.da = icmp samesign ult i64 %3, %i.cz
  br i1 %i.da, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cb, %i.cc  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.db, ptr %i.cf
  %i.dc = shl nuw nsw i64 %i.cz, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dc, i1 false), !alias.scope !964
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %i.dc ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.de = phi ptr [ %i.ds, %.preheader.i ], [ %i.dd, %.critedge.i ]
  %i.df = phi ptr [ %i.dq, %.preheader.i ], [ %i.db, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.di, %.preheader.i ], [ %i.x, %.critedge.i ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -16 ; 3 uses
  %i.dh = getelementptr inbounds i8, ptr %i.de, i64 -16 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %.val.i.i = load i32, ptr %i.dh, align 8, !alias.scope !963, !noalias !965
  %.val12.i.i = load i32, ptr %i.dg, align 8, !alias.scope !962, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !967
  store i32 %.val.i.i, ptr %i.j, align 4, !noalias !967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !967
  store i32 %.val12.i.i, ptr %i.i, align 4, !noalias !967
  %i.dj = load i32, ptr %i.j, align 4
  %i.dk = load i32, ptr %i.i, align 4
  %i.dl = tail call i32 @llvm.bswap.i32(i32 %i.dj)
  %i.dm = tail call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dn = tail call i32 @llvm.ucmp.i32.i32(i32 %i.dl, i32 %i.dm) ; 2 uses
  %i.do = icmp sgt i32 %i.dn, -1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !967
  %..i.i = select i1 %i.do, ptr %i.dh, ptr %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !964, !noalias !968
  %i.dp = zext i1 %i.do to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dp ; 3 uses
  %.lobit.i.i = lshr i32 %i.dn, 31
  %i.dr = zext nneg i32 %.lobit.i.i to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dr ; 3 uses
  %i.dt = icmp eq ptr %i.dq, %i.cf
  %i.du = icmp eq ptr %i.ds, %2
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1Q_11DesignSpaceEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvXs7_B1Q_INtB1Q_8LocationB2v_EINtNtBb_7convert4FromINtNtB3b_3vec3VecB1a_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dv = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.cf, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %i.db, %.critedge.i ] ; 3 uses
  %i.dw = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 8, !alias.scope !962, !noalias !969
  %.val.i18.i = load i32, ptr %i.dw, align 8, !alias.scope !963, !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !971
  store i32 %.sroa.0.0.val.i.i, ptr %i.h, align 4, !noalias !971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !971
  store i32 %.val.i18.i, ptr %i.g, align 4, !noalias !971
  %i.dx = load i32, ptr %i.h, align 4
  %i.dy = load i32, ptr %i.g, align 4
  %i.dz = tail call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.ea = tail call i32 @llvm.bswap.i32(i32 %i.dy)
  %i.eb = tail call i32 @llvm.ucmp.i32.i32(i32 %i.dz, i32 %i.ea) ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, -1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !971
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !971
  %.sroa.05.0.i.i = select i1 %i.ec, ptr %i.dw, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !964, !noalias !972
  %i.ed = zext i1 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.ed ; 3 uses
  %.lobit.i19.i = lshr i32 %i.eb, 31
  %i.ef = zext nneg i32 %.lobit.i19.i to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.ei = icmp ne ptr %i.ee, %i.dd
  %i.ej = icmp ne ptr %i.eg, %i.x
  %or.cond.i20.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1Q_11DesignSpaceEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvXs7_B1Q_INtB1Q_8LocationB2v_EINtNtBb_7convert4FromINtNtB3b_3vec3VecB1a_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1Q_11DesignSpaceEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvXs7_B1Q_INtB1Q_8LocationB2v_EINtNtBb_7convert4FromINtNtB3b_3vec3VecB1a_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dq, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ds, %.preheader.i ], [ %i.dd, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ee, %.lr.ph.i.i ] ; 2 uses
  %i.ek = ptrtoint ptr %.sroa.7.0.i to i64
  %i.el = ptrtoint ptr %.sroa.0.1.i to i64
  %i.em = sub nuw i64 %i.ek, %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.em, i1 false), !alias.scope !964, !noalias !973
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1Q_11DesignSpaceEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvXs7_B1Q_INtB1Q_8LocationB2v_EINtNtBb_7convert4FromINtNtB3b_3vec3VecB1a_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i
  %i.en = shl nuw nsw i64 %i.cd, 1
  %i.eo = or disjoint i64 %i.en, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1M_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyB17_NCNvXs7_B1M_INtB1M_8LocationB2r_EINtNtBa_7convert4FromINtNtB2U_3vec3VecB16_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.0.i = phi i64 [ %i.eo, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1D_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyBY_NCNvXs7_B1D_INtB1D_8LocationB2i_EINtNtBa_7convert4FromINtNtB2L_3vec3VecBX_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.cl, %bb.u ] ; 2 uses
  %i.ep = icmp ugt i64 %i.bu, 1
  br i1 %i.ep, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eq = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.er = lshr i64 %.sroa.018.0, 1
  %i.es = add nuw nsw i64 %i.er, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.et = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.et, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = or i64 %1, 1
  %i.ev = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.eu, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 1
  %i.ey = xor i32 %i.ex, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1L_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyB16_NCNvXs7_B1L_INtB1L_8LocationB2q_EINtNtBa_7convert4FromINtNtB2T_3vec3VecB15_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !948
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2p_11collections5btree3mapINtB3b_8BTreeMapBX_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4d_8adapters3map3MapINtB3b_8IntoIterNtNtB2p_6string6StringB1H_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6j_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i110 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i115 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.bo, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.bo ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ke, %bb.bo ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.kc, %bb.bo ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4m_8adapters3map3MapINtB3j_8IntoIterNtNtB2w_6string6StringB1O_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6t_.exit
  %.sroa.021.0 = phi i8 [ %i.fb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4m_8adapters3map3MapINtB3j_8IntoIterNtNtB2w_6string6StringB1O_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6t_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4m_8adapters3map3MapINtB3j_8IntoIterNtNtB2w_6string6StringB1O_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6t_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph78, label %._crit_edge

.lr.ph78:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.ap

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 19 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread113, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i, %bb.h
  br i1 %4, label %bb.an, label %bb.am

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1052), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1054), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1055), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1058), !noalias !1053
  %i.s = load i8, ptr %i.r, align 8, !range !4, !alias.scope !1059, !noalias !1060, !noundef !5 ; 2 uses
  %i.t = icmp samesign ugt i8 %i.s, 23
  %i.u = zext nneg i8 %i.s to i64                 ; 2 uses
  %i.v = add nsw i64 %i.u, -23
  %i.w = select i1 %i.t, i64 %i.v, i64 0
  switch i64 %i.w, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.p, %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 49
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1059, !noalias !1060, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1059, !noalias !1060, !noundef !5
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1059, !noalias !1060, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1059, !noalias !1060, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.4.0.i.i.i.i43 = phi i64 [ %i.u, %bb.m ], [ %i.ab, %bb.n ], [ %i.af, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i.i.i44 = phi ptr [ %i.x, %bb.m ], [ %i.z, %bb.n ], [ %i.ag, %bb.o ]
  %i.ah = load i8, ptr %i.p, align 8, !range !4, !alias.scope !1061, !noalias !1062, !noundef !5 ; 2 uses
  %i.ai = icmp samesign ugt i8 %i.ah, 23
  %i.aj = zext nneg i8 %i.ah to i64               ; 2 uses
  %i.ak = add nsw i64 %i.aj, -23
  %i.al = select i1 %i.ai, i64 %i.ak, i64 0
  switch i64 %i.al, label %bb.l [
    i64 0, label %bb.q
    i64 1, label %bb.r
    i64 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit49

bb.r:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1061, !noalias !1062, !nonnull !5, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1061, !noalias !1062, !noundef !5
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit49

bb.s:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1061, !noalias !1062, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !1061, !noalias !1062, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit49

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit49: ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.42.0.i.i.i.i45 = phi i64 [ %i.aj, %bb.q ], [ %i.aq, %bb.r ], [ %i.au, %bb.s ] ; 2 uses
  %.sroa.01.0.i.i.i.i46 = phi ptr [ %i.am, %bb.q ], [ %i.ao, %bb.r ], [ %i.av, %bb.s ]
  %spec.store.select.i.i.i.i47 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i43, i64 %.sroa.42.0.i.i.i.i45)
  %i.aw = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i44, ptr nonnull %.sroa.01.0.i.i.i.i46, i64 %spec.store.select.i.i.i.i47), !noalias !1053 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %.sroa.4.0.i.i.i.i43, %.sroa.42.0.i.i.i.i45
  %spec.select.i.i.i.i48 = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = icmp sgt i64 %spec.select.i.i.i.i48, -1 ; 2 uses
  %.not85 = icmp eq i64 %i.o, 2                   ; 2 uses
  br i1 %i.ba, label %.preheader59, label %.preheader

.preheader59:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit49
  br i1 %.not85, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader59
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit49
  br i1 %.not85, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread113, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %smax92 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %.sroa.01.0.i.i70 = phi i64 [ %i.co, %bb.ab ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.01.0.i.i70 ; 6 uses
  %i.bc = add nsw i64 %.sroa.01.0.i.i70, -1       ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.o
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.bc ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070), !noalias !1053
  %i.bf = load i8, ptr %i.bb, align 8, !range !4, !alias.scope !1071, !noalias !1072, !noundef !5 ; 2 uses
  %i.bg = icmp samesign ugt i8 %i.bf, 23
  %i.bh = zext nneg i8 %i.bf to i64               ; 2 uses
  %i.bi = add nsw i64 %i.bh, -23
  %i.bj = select i1 %i.bg, i64 %i.bi, i64 0
  switch i64 %i.bj, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.t:                                             ; preds = %bb.x, %.lr.ph
  unreachable

bb.u:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !1071, !noalias !1072, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1071, !noalias !1072, !noundef !5
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !1071, !noalias !1072, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1071, !noalias !1072, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.4.0.i.i.i.i36 = phi i64 [ %i.bh, %bb.u ], [ %i.bo, %bb.v ], [ %i.bs, %bb.w ] ; 2 uses
  %.sroa.0.0.i.i.i.i37 = phi ptr [ %i.bk, %bb.u ], [ %i.bm, %bb.v ], [ %i.bt, %bb.w ]
  %i.bu = load i8, ptr %i.be, align 8, !range !4, !alias.scope !1073, !noalias !1074, !noundef !5 ; 2 uses
  %i.bv = icmp samesign ugt i8 %i.bu, 23
  %i.bw = zext nneg i8 %i.bu to i64               ; 2 uses
  %i.bx = add nsw i64 %i.bw, -23
  %i.by = select i1 %i.bv, i64 %i.bx, i64 0
  switch i64 %i.by, label %bb.t [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit42

bb.z:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !1073, !noalias !1074, !nonnull !5, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !1073, !noalias !1074, !noundef !5
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit42

bb.aa:                                            ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !1073, !noalias !1074, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1073, !noalias !1074, !noundef !5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit42

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit42: ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.42.0.i.i.i.i38 = phi i64 [ %i.bw, %bb.y ], [ %i.cd, %bb.z ], [ %i.ch, %bb.aa ] ; 2 uses
  %.sroa.01.0.i.i.i.i39 = phi ptr [ %i.bz, %bb.y ], [ %i.cb, %bb.z ], [ %i.ci, %bb.aa ]
  %spec.store.select.i.i.i.i40 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i36, i64 %.sroa.42.0.i.i.i.i38)
  %i.cj = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i37, ptr nonnull %.sroa.01.0.i.i.i.i39, i64 %spec.store.select.i.i.i.i40), !noalias !1053 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp eq i32 %i.cj, 0
  %i.cm = sub i64 %.sroa.4.0.i.i.i.i36, %.sroa.42.0.i.i.i.i38
  %spec.select.i.i.i.i41 = select i1 %i.cl, i64 %i.cm, i64 %i.ck
  %i.cn = icmp slt i64 %spec.select.i.i.i.i41, 0
  br i1 %i.cn, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit42
  %i.co = add nuw nsw i64 %.sroa.01.0.i.i70, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i, label %.lr.ph

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %bb.ak
  %.sroa.01.1.i.i72 = phi i64 [ %i.ec, %bb.ak ], [ 2, %.lr.ph73.preheader ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.01.1.i.i72 ; 6 uses
  %i.cq = add nsw i64 %.sroa.01.1.i.i72, -1       ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.o
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.cq ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081), !noalias !1053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082), !noalias !1053
  %i.ct = load i8, ptr %i.cp, align 8, !range !4, !alias.scope !1083, !noalias !1084, !noundef !5 ; 2 uses
  %i.cu = icmp samesign ugt i8 %i.ct, 23
  %i.cv = zext nneg i8 %i.ct to i64               ; 2 uses
  %i.cw = add nsw i64 %i.cv, -23
  %i.cx = select i1 %i.cu, i64 %i.cw, i64 0
  switch i64 %i.cx, label %bb.ac [
    i64 0, label %bb.ad
    i64 1, label %bb.ae
    i64 2, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ag, %.lr.ph73
  unreachable

bb.ad:                                            ; preds = %.lr.ph73
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  br label %bb.ag

bb.ae:                                            ; preds = %.lr.ph73
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !1083, !noalias !1084, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1083, !noalias !1084, !noundef !5
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !1083, !noalias !1084, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !1083, !noalias !1084, !noundef !5
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.cv, %bb.ad ], [ %i.dc, %bb.ae ], [ %i.dg, %bb.af ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.cy, %bb.ad ], [ %i.da, %bb.ae ], [ %i.dh, %bb.af ]
  %i.di = load i8, ptr %i.cs, align 8, !range !4, !alias.scope !1085, !noalias !1086, !noundef !5 ; 2 uses
  %i.dj = icmp samesign ugt i8 %i.di, 23
  %i.dk = zext nneg i8 %i.di to i64               ; 2 uses
  %i.dl = add nsw i64 %i.dk, -23
  %i.dm = select i1 %i.dj, i64 %i.dl, i64 0
  switch i64 %i.dm, label %bb.ac [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
    i64 2, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !1085, !noalias !1086, !nonnull !5, !noundef !5
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !1085, !noalias !1086, !noundef !5
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit

bb.aj:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !1085, !noalias !1086, !nonnull !5, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !1085, !noalias !1086, !noundef !5
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.42.0.i.i.i.i = phi i64 [ %i.dk, %bb.ah ], [ %i.dr, %bb.ai ], [ %i.dv, %bb.aj ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.dn, %bb.ah ], [ %i.dp, %bb.ai ], [ %i.dw, %bb.aj ]
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i, i64 %.sroa.42.0.i.i.i.i)
  %i.dx = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i, ptr nonnull %.sroa.01.0.i.i.i.i, i64 %spec.store.select.i.i.i.i), !noalias !1053 ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp eq i32 %i.dx, 0
  %i.ea = sub i64 %.sroa.4.0.i.i.i.i, %.sroa.42.0.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.dz, i64 %i.ea, i64 %i.dy
  %i.eb = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.eb, label %bb.ak, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i

bb.ak:                                            ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit
  %i.ec = add nuw nsw i64 %.sroa.01.1.i.i72, 1    ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ec, %smax92
  br i1 %exitcond93.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i, label %.lr.ph73

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i: ; preds = %bb.ak, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit, %bb.ab, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit42
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i70, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit42 ], [ %smax, %bb.ab ], [ %.sroa.01.1.i.i72, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit ], [ %smax92, %bb.ak ] ; 5 uses
  %i.ed = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.ed)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.al

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread113: ; preds = %.preheader
  br i1 %.not3.i115, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread: ; preds = %.preheader59
  br i1 %.not3.i110, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit

bb.al:                                            ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i
  %i.ee = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ee, 0
  %or.cond = or i1 %i.ba, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph.preheader.i.i

bb.am:                                            ; preds = %bb.i
  %i.ef = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 192153584101141163) %i.o)
  %i.eg = shl nuw nsw i64 %i.ef, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4m_8adapters3map3MapINtB3j_8IntoIterNtNtB2w_6string6StringB1O_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6t_.exit

bb.an:                                            ; preds = %bb.i
  %i.eh = tail call i64 @llvm.umin.i64(i64 range(i64 0, 192153584101141163) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4o_8adapters3map3MapINtB3l_8IntoIterNtNtB2y_6string6StringB1Q_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6v_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.eh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !1013
  %i.ei = shl nuw nsw i64 %i.eh, 1
  %i.ej = or disjoint i64 %i.ei, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4m_8adapters3map3MapINtB3j_8IntoIterNtNtB2w_6string6StringB1O_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6t_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread, %bb.j, %bb.al
  %.sroa.0.0.i.i5457 = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.al ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread ], [ %.sroa.0.0.i.i111118122, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ]
  %i.ek = shl nuw nsw i64 %.sroa.0.0.i.i5457, 1
  %i.el = or disjoint i64 %i.ek, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4m_8adapters3map3MapINtB3j_8IntoIterNtNtB2w_6string6StringB1O_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6t_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.al, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread113
  %i.em = phi i64 [ %i.ee, %bb.al ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread113 ]
  %.sroa.0.0.i.i111118122 = phi i64 [ %.sroa.0.0.i.i, %bb.al ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2v_11collections5btree3mapINtB3i_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4l_8adapters3map3MapINtB3i_8IntoIterNtNtB2v_6string6StringB1N_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6s_.exit.i.thread113 ] ; 2 uses
  %i.en = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.0.0.i.i111118122
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.es, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.eo = xor i64 %.sroa.0.017.i.i, -1
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.0.017.i.i
  %i.eq = getelementptr [48 x i8], ptr %i.en, i64 %i.eo
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %i.ep, ptr noundef nonnull %i.eq, i64 noundef 6)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.ao, !noalias !1053

bb.ao:                                            ; preds = %.lr.ph.i.i35
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #27, !noalias !1053
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.es = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.es, %i.em
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2w_11collections5btree3mapINtB3j_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4m_8adapters3map3MapINtB3j_8IntoIterNtNtB2w_6string6StringB1O_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6t_.exit: ; preds = %bb.am, %bb.an, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.0.i32 = phi i64 [ %i.el, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.ej, %bb.an ], [ %i.eg, %bb.am ] ; 2 uses
  %i.et = lshr i64 %.sroa.023.0, 1
  %i.eu = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ev = sub nsw i64 %factor, %i.et
  %i.ew = add nuw nsw i64 %i.eu, %factor
  %i.ex = mul i64 %i.ev, %.sroa.0.0
  %i.ey = mul i64 %i.ew, %.sroa.0.0
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ez, i1 false)
  %i.fb = trunc nuw nsw i64 %i.fa to i8
  br label %bb.g

bb.ap:                                            ; preds = %.lr.ph78, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_8IntoIterNtNtB2z_6string6StringB1R_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6w_.exit
  %.sroa.02.177 = phi i64 [ %.sroa.02.0, %.lr.ph78 ], [ %i.fc, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_8IntoIterNtNtB2z_6string6StringB1R_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6w_.exit ] ; 2 uses
  %.sroa.023.176 = phi i64 [ %.sroa.023.0, %.lr.ph78 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_8IntoIterNtNtB2z_6string6StringB1R_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6w_.exit ] ; 4 uses
  %i.fc = add i64 %.sroa.02.177, -1               ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.fe, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.aq

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_8IntoIterNtNtB2z_6string6StringB1R_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6w_.exit, %bb.ap, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.176, %bb.ap ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_8IntoIterNtNtB2z_6string6StringB1R_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6w_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.177, %bb.ap ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_8IntoIterNtNtB2z_6string6StringB1R_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6w_.exit ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.fg, align 1
  br i1 %i.l, label %bb.bo, label %bb.bp

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fc
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !5 ; 3 uses
  %i.fj = lshr i64 %i.fi, 1                       ; 8 uses
  %i.fk = lshr i64 %.sroa.023.176, 1              ; 6 uses
  %i.fl = add nuw i64 %i.fj, %i.fk                ; 4 uses
  %i.fm = sub i64 %.sroa.09.0, %i.fl
  %i.fn = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.fm ; 6 uses
  %i.fo = icmp samesign ugt i64 %i.fl, %3
  %i.fp = trunc i64 %.sroa.023.176 to i1
  %i.fq = or i64 %i.fi, %.sroa.023.176
  %i.fr = trunc i64 %i.fq to i1
  %or.cond3.i = or i1 %i.fo, %i.fr
  br i1 %or.cond3.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fs = trunc i64 %i.fi to i1
  br i1 %i.fs, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.ft = shl nuw nsw i64 %i.fl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_8IntoIterNtNtB2z_6string6StringB1R_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6w_.exit

bb.at:                                            ; preds = %bb.au, %bb.ar
  br i1 %i.fp, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.fu = or i64 %i.fj, 1
  %i.fv = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fu, i1 true)
  %i.fw = trunc nuw nsw i64 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 1
  %i.fy = xor i32 %i.fx, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4o_8adapters3map3MapINtB3l_8IntoIterNtNtB2y_6string6StringB1Q_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6v_(ptr noalias nofree noundef nonnull align 8 %i.fn, i64 noundef range(i64 0, 192153584101141163) %i.fj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !1014
  br label %bb.at

bb.av:                                            ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fj
  %i.ga = or i64 %i.fk, 1
  %i.gb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ga, i1 true)
  %i.gc = trunc nuw nsw i64 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 1
  %i.ge = xor i32 %i.gd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4o_8adapters3map3MapINtB3l_8IntoIterNtNtB2y_6string6StringB1Q_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6v_(ptr noalias nofree noundef nonnull align 8 %i.fz, i64 noundef range(i64 0, 192153584101141163) %i.fk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.ge, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !1014
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.gf = icmp eq i64 %i.fj, 0
  %i.gg = icmp eq i64 %i.fk, 0
  %or.cond.i = or i1 %i.gg, %i.gf
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapBY_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3c_8IntoIterNtNtB2q_6string6StringB1I_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6k_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gh = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.fj, i64 %i.fk) ; 2 uses
  %i.gi = icmp samesign ult i64 %3, %i.gh
  br i1 %i.gi, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapBY_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3c_8IntoIterNtNtB2q_6string6StringB1I_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6k_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ax
  %i.gj = getelementptr inbounds nuw [48 x i8], ptr %i.fn, i64 %i.fj ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.fj, %i.fk  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.gj, ptr %i.fn
  %i.gk = mul nuw nsw i64 %i.gh, 48               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.gk, i1 false), !alias.scope !1089
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 %i.gk ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i.i
  %i.gm = phi ptr [ %i.ic, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i.i ], [ %i.gl, %.critedge.i ] ; 6 uses
  %i.gn = phi ptr [ %i.ib, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i.i ], [ %i.gj, %.critedge.i ] ; 6 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.gq, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i.i ], [ %i.n, %.critedge.i ]
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -48 ; 3 uses
  %i.gp = getelementptr inbounds i8, ptr %i.gm, i64 -48 ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.gr = load i8, ptr %i.gp, align 8, !range !4, !alias.scope !1098, !noalias !1099, !noundef !5 ; 2 uses
  %i.gs = icmp samesign ugt i8 %i.gr, 23
  %i.gt = zext nneg i8 %i.gr to i64               ; 2 uses
  %i.gu = add nsw i64 %i.gt, -23
  %i.gv = select i1 %i.gs, i64 %i.gu, i64 0
  switch i64 %i.gv, label %bb.ay [
    i64 0, label %bb.az
    i64 1, label %bb.ba
    i64 2, label %bb.bb
  ]

bb.ay:                                            ; preds = %bb.bc, %.preheader.i
  unreachable

bb.az:                                            ; preds = %.preheader.i
  %i.gw = getelementptr inbounds i8, ptr %i.gm, i64 -47
  br label %bb.bc

bb.ba:                                            ; preds = %.preheader.i
  %i.gx = getelementptr inbounds i8, ptr %i.gm, i64 -40
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !1098, !noalias !1099, !nonnull !5, !noundef !5
  %i.gz = getelementptr inbounds i8, ptr %i.gm, i64 -32
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !1098, !noalias !1099, !noundef !5
  br label %bb.bc

bb.bb:                                            ; preds = %.preheader.i
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2p_11collections5btree3mapINtB3b_8BTreeMapBX_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4d_8adapters3map3MapINtB3b_8IntoIterNtNtB2p_6string6StringB1H_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6j_:bb.a
  %.sroa.0.02.i.i = phi ptr [ %i.js, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i ], [ %i.gj, %.critedge.i ] ; 8 uses
  %i.ig = phi ptr [ %i.jr, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i ], [ %2, %.critedge.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  %i.ih = load i8, ptr %.sroa.0.02.i.i, align 8, !range !4, !alias.scope !1111, !noalias !1112, !noundef !5 ; 2 uses
  %i.ii = icmp samesign ugt i8 %i.ih, 23
  %i.ij = zext nneg i8 %i.ih to i64               ; 2 uses
  %i.ik = add nsw i64 %i.ij, -23
  %i.il = select i1 %i.ii, i64 %i.ik, i64 0
  switch i64 %i.il, label %bb.bg [
    i64 0, label %bb.bh
    i64 1, label %bb.bi
    i64 2, label %bb.bj
  ]

bb.bg:                                            ; preds = %bb.bk, %.lr.ph.i.i
  unreachable

bb.bh:                                            ; preds = %.lr.ph.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 1
  br label %bb.bk

bb.bi:                                            ; preds = %.lr.ph.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !1111, !noalias !1112, !nonnull !5, !noundef !5
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !1111, !noalias !1112, !noundef !5
  br label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !alias.scope !1111, !noalias !1112, !nonnull !5, !noundef !5
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !alias.scope !1111, !noalias !1112, !noundef !5
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.sroa.4.0.i.i.i.i.i18.i = phi i64 [ %i.ij, %bb.bh ], [ %i.iq, %bb.bi ], [ %i.iu, %bb.bj ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i19.i = phi ptr [ %i.im, %bb.bh ], [ %i.io, %bb.bi ], [ %i.iv, %bb.bj ]
  %i.iw = load i8, ptr %i.ig, align 8, !range !4, !alias.scope !1113, !noalias !1114, !noundef !5 ; 2 uses
  %i.ix = icmp samesign ugt i8 %i.iw, 23
  %i.iy = zext nneg i8 %i.iw to i64               ; 2 uses
  %i.iz = add nsw i64 %i.iy, -23
  %i.ja = select i1 %i.ix, i64 %i.iz, i64 0
  switch i64 %i.ja, label %bb.bg [
    i64 0, label %bb.bl
    i64 1, label %bb.bm
    i64 2, label %bb.bn
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i

bb.bm:                                            ; preds = %bb.bk
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !alias.scope !1113, !noalias !1114, !nonnull !5, !noundef !5
  %i.je = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !1113, !noalias !1114, !noundef !5
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i

bb.bn:                                            ; preds = %bb.bk
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !alias.scope !1113, !noalias !1114, !nonnull !5, !noundef !5
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !1113, !noalias !1114, !noundef !5
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i: ; preds = %bb.bn, %bb.bm, %bb.bl
  %.sroa.42.0.i.i.i.i.i21.i = phi i64 [ %i.iy, %bb.bl ], [ %i.jf, %bb.bm ], [ %i.jj, %bb.bn ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i22.i = phi ptr [ %i.jb, %bb.bl ], [ %i.jd, %bb.bm ], [ %i.jk, %bb.bn ]
  %spec.store.select.i.i.i.i.i23.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i.i18.i, i64 %.sroa.42.0.i.i.i.i.i21.i)
  %i.jl = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i19.i, ptr nonnull %.sroa.01.0.i.i.i.i.i22.i, i64 %spec.store.select.i.i.i.i.i23.i), !noalias !1115 ; 2 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = icmp eq i32 %i.jl, 0
  %i.jo = sub i64 %.sroa.4.0.i.i.i.i.i18.i, %.sroa.42.0.i.i.i.i.i21.i
  %spec.select.i.i.i.i.i24.i = select i1 %i.jn, i64 %i.jo, i64 %i.jm ; 2 uses
  %i.jp = icmp sgt i64 %spec.select.i.i.i.i.i24.i, -1 ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.jp, ptr %i.ig, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.if, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.05.0.i.i, i64 48, i1 false), !alias.scope !1089, !noalias !1115
  %i.jq = zext i1 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [48 x i8], ptr %i.ig, i64 %i.jq ; 3 uses
  %spec.select.i.i.i.i.lobit.i25.i = lshr i64 %spec.select.i.i.i.i.i24.i, 63
  %i.js = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.select.i.i.i.i.lobit.i25.i ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.if, i64 48 ; 2 uses
  %i.ju = icmp ne ptr %i.jr, %i.gl
  %i.jv = icmp ne ptr %i.js, %i.n
  %or.cond.i26.i = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %or.cond.i26.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2Q_11collections5btree3mapINtB3D_8BTreeMapB1b_B1V_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4G_8adapters3map3MapINtB3D_8IntoIterNtNtB2Q_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6N_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2Q_11collections5btree3mapINtB3D_8BTreeMapB1b_B1V_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4G_8adapters3map3MapINtB3D_8IntoIterNtNtB2Q_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6N_.exit.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.ib, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i.i ], [ %i.jt, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i ]
  %.sroa.7.0.i = phi ptr [ %i.ic, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i.i ], [ %i.gl, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i.i ], [ %i.jr, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_.exit.i20.i ] ; 2 uses
  %i.jw = ptrtoint ptr %.sroa.7.0.i to i64
  %i.jx = ptrtoint ptr %.sroa.0.1.i to i64
  %i.jy = sub nuw i64 %i.jw, %i.jx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.jy, i1 false), !alias.scope !1089, !noalias !1116
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapBY_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3c_8IntoIterNtNtB2q_6string6StringB1I_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6k_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapBY_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3c_8IntoIterNtNtB2q_6string6StringB1I_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6k_.exit: ; preds = %bb.aw, %bb.ax, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2Q_11collections5btree3mapINtB3D_8BTreeMapB1b_B1V_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4G_8adapters3map3MapINtB3D_8IntoIterNtNtB2Q_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6N_.exit.i
  %i.jz = shl nuw nsw i64 %i.fl, 1
  %i.ka = or disjoint i64 %i.jz, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_8IntoIterNtNtB2z_6string6StringB1R_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6w_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2z_11collections5btree3mapINtB3m_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4p_8adapters3map3MapINtB3m_8IntoIterNtNtB2z_6string6StringB1R_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6w_.exit: ; preds = %bb.as, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapBY_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3c_8IntoIterNtNtB2q_6string6StringB1I_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6k_.exit
  %.sroa.0.0.i = phi i64 [ %i.ka, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapBY_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4e_8adapters3map3MapINtB3c_8IntoIterNtNtB2q_6string6StringB1I_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6k_.exit ], [ %i.ft, %bb.as ] ; 2 uses
  %i.kb = icmp ugt i64 %i.fc, 1
  br i1 %i.kb, label %bb.ap, label %._crit_edge

bb.bo:                                            ; preds = %._crit_edge
  %i.kc = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.kd = lshr i64 %.sroa.018.0, 1
  %i.ke = add nuw nsw i64 %i.kd, %.sroa.09.0
  br label %bb.f

bb.bp:                                            ; preds = %._crit_edge
  %i.kf = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.kf, 0
  br i1 %.not30, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.kg = or i64 %1, 1
  %i.kh = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.kg, i1 true)
  %i.ki = trunc nuw nsw i64 %i.kh to i32
  %i.kj = shl nuw nsw i32 %i.ki, 1
  %i.kk = xor i32 %i.kj, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2y_11collections5btree3mapINtB3l_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4o_8adapters3map3MapINtB3l_8IntoIterNtNtB2y_6string6StringB1Q_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0EB6v_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.kk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !1014
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.a, %bb.br
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3z_8BTreeMapBX_B1H_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4B_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB6T_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not3.i110 = icmp ugt i64 %.sroa.01.0, 2
  %.not3.i115 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.bo, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.bo ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ke, %bb.bo ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.kc, %bb.bo ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2U_11collections5btree3mapINtB3H_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4K_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB73_.exit
  %.sroa.021.0 = phi i8 [ %i.fb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2U_11collections5btree3mapINtB3H_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4K_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB73_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2U_11collections5btree3mapINtB3H_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4K_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB73_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph78, label %._crit_edge

.lr.ph78:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.ap

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 19 uses
  %.not.i31 = icmp ult i64 %i.o, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread113, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i, %bb.h
  br i1 %4, label %bb.an, label %bb.am

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201), !noalias !1196
  %i.s = load i8, ptr %i.r, align 8, !range !4, !alias.scope !1202, !noalias !1203, !noundef !5 ; 2 uses
  %i.t = icmp samesign ugt i8 %i.s, 23
  %i.u = zext nneg i8 %i.s to i64                 ; 2 uses
  %i.v = add nsw i64 %i.u, -23
  %i.w = select i1 %i.t, i64 %i.v, i64 0
  switch i64 %i.w, label %bb.l [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.l:                                             ; preds = %bb.p, %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1202, !noalias !1203, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1202, !noalias !1203, !noundef !5
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1202, !noalias !1203, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1202, !noalias !1203, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.4.0.i.i.i.i43 = phi i64 [ %i.u, %bb.m ], [ %i.ab, %bb.n ], [ %i.af, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i.i.i44 = phi ptr [ %i.x, %bb.m ], [ %i.z, %bb.n ], [ %i.ag, %bb.o ]
  %i.ah = load i8, ptr %i.p, align 8, !range !4, !alias.scope !1204, !noalias !1205, !noundef !5 ; 2 uses
  %i.ai = icmp samesign ugt i8 %i.ah, 23
  %i.aj = zext nneg i8 %i.ah to i64               ; 2 uses
  %i.ak = add nsw i64 %i.aj, -23
  %i.al = select i1 %i.ai, i64 %i.ak, i64 0
  switch i64 %i.al, label %bb.l [
    i64 0, label %bb.q
    i64 1, label %bb.r
    i64 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit49

bb.r:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1204, !noalias !1205, !nonnull !5, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1204, !noalias !1205, !noundef !5
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit49

bb.s:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !1204, !noalias !1205, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !1204, !noalias !1205, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit49

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit49: ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.42.0.i.i.i.i45 = phi i64 [ %i.aj, %bb.q ], [ %i.aq, %bb.r ], [ %i.au, %bb.s ] ; 2 uses
  %.sroa.01.0.i.i.i.i46 = phi ptr [ %i.am, %bb.q ], [ %i.ao, %bb.r ], [ %i.av, %bb.s ]
  %spec.store.select.i.i.i.i47 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i43, i64 %.sroa.42.0.i.i.i.i45)
  %i.aw = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i44, ptr nonnull %.sroa.01.0.i.i.i.i46, i64 %spec.store.select.i.i.i.i47), !noalias !1196 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %.sroa.4.0.i.i.i.i43, %.sroa.42.0.i.i.i.i45
  %spec.select.i.i.i.i48 = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = icmp sgt i64 %spec.select.i.i.i.i48, -1 ; 2 uses
  %.not85 = icmp eq i64 %i.o, 2                   ; 2 uses
  br i1 %i.ba, label %.preheader59, label %.preheader

.preheader59:                                     ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit49
  br i1 %.not85, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader59
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit49
  br i1 %.not85, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread113, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %.preheader
  %smax92 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 3) ; 2 uses
  br label %.lr.ph73

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %.sroa.01.0.i.i70 = phi i64 [ %i.co, %bb.ab ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.01.0.i.i70 ; 6 uses
  %i.bc = add nsw i64 %.sroa.01.0.i.i70, -1       ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.o
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.bc ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213), !noalias !1196
  %i.bf = load i8, ptr %i.bb, align 8, !range !4, !alias.scope !1214, !noalias !1215, !noundef !5 ; 2 uses
  %i.bg = icmp samesign ugt i8 %i.bf, 23
  %i.bh = zext nneg i8 %i.bf to i64               ; 2 uses
  %i.bi = add nsw i64 %i.bh, -23
  %i.bj = select i1 %i.bg, i64 %i.bi, i64 0
  switch i64 %i.bj, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.t:                                             ; preds = %bb.x, %.lr.ph
  unreachable

bb.u:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !1214, !noalias !1215, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1214, !noalias !1215, !noundef !5
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !1214, !noalias !1215, !nonnull !5, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1214, !noalias !1215, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.4.0.i.i.i.i36 = phi i64 [ %i.bh, %bb.u ], [ %i.bo, %bb.v ], [ %i.bs, %bb.w ] ; 2 uses
  %.sroa.0.0.i.i.i.i37 = phi ptr [ %i.bk, %bb.u ], [ %i.bm, %bb.v ], [ %i.bt, %bb.w ]
  %i.bu = load i8, ptr %i.be, align 8, !range !4, !alias.scope !1216, !noalias !1217, !noundef !5 ; 2 uses
  %i.bv = icmp samesign ugt i8 %i.bu, 23
  %i.bw = zext nneg i8 %i.bu to i64               ; 2 uses
  %i.bx = add nsw i64 %i.bw, -23
  %i.by = select i1 %i.bv, i64 %i.bx, i64 0
  switch i64 %i.by, label %bb.t [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit42

bb.z:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !1216, !noalias !1217, !nonnull !5, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !1216, !noalias !1217, !noundef !5
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit42

bb.aa:                                            ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !1216, !noalias !1217, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1216, !noalias !1217, !noundef !5
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit42

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit42: ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.42.0.i.i.i.i38 = phi i64 [ %i.bw, %bb.y ], [ %i.cd, %bb.z ], [ %i.ch, %bb.aa ] ; 2 uses
  %.sroa.01.0.i.i.i.i39 = phi ptr [ %i.bz, %bb.y ], [ %i.cb, %bb.z ], [ %i.ci, %bb.aa ]
  %spec.store.select.i.i.i.i40 = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i36, i64 %.sroa.42.0.i.i.i.i38)
  %i.cj = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i37, ptr nonnull %.sroa.01.0.i.i.i.i39, i64 %spec.store.select.i.i.i.i40), !noalias !1196 ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = icmp eq i32 %i.cj, 0
  %i.cm = sub i64 %.sroa.4.0.i.i.i.i36, %.sroa.42.0.i.i.i.i38
  %spec.select.i.i.i.i41 = select i1 %i.cl, i64 %i.cm, i64 %i.ck
  %i.cn = icmp slt i64 %spec.select.i.i.i.i41, 0
  br i1 %i.cn, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit42
  %i.co = add nuw nsw i64 %.sroa.01.0.i.i70, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i, label %.lr.ph

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %bb.ak
  %.sroa.01.1.i.i72 = phi i64 [ %i.ec, %bb.ak ], [ 2, %.lr.ph73.preheader ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.01.1.i.i72 ; 6 uses
  %i.cq = add nsw i64 %.sroa.01.1.i.i72, -1       ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.o
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.cq ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224), !noalias !1196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225), !noalias !1196
  %i.ct = load i8, ptr %i.cp, align 8, !range !4, !alias.scope !1226, !noalias !1227, !noundef !5 ; 2 uses
  %i.cu = icmp samesign ugt i8 %i.ct, 23
  %i.cv = zext nneg i8 %i.ct to i64               ; 2 uses
  %i.cw = add nsw i64 %i.cv, -23
  %i.cx = select i1 %i.cu, i64 %i.cw, i64 0
  switch i64 %i.cx, label %bb.ac [
    i64 0, label %bb.ad
    i64 1, label %bb.ae
    i64 2, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ag, %.lr.ph73
  unreachable

bb.ad:                                            ; preds = %.lr.ph73
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  br label %bb.ag

bb.ae:                                            ; preds = %.lr.ph73
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !1226, !noalias !1227, !nonnull !5, !noundef !5
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1226, !noalias !1227, !noundef !5
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !1226, !noalias !1227, !nonnull !5, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !1226, !noalias !1227, !noundef !5
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.cv, %bb.ad ], [ %i.dc, %bb.ae ], [ %i.dg, %bb.af ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.cy, %bb.ad ], [ %i.da, %bb.ae ], [ %i.dh, %bb.af ]
  %i.di = load i8, ptr %i.cs, align 8, !range !4, !alias.scope !1228, !noalias !1229, !noundef !5 ; 2 uses
  %i.dj = icmp samesign ugt i8 %i.di, 23
  %i.dk = zext nneg i8 %i.di to i64               ; 2 uses
  %i.dl = add nsw i64 %i.dk, -23
  %i.dm = select i1 %i.dj, i64 %i.dl, i64 0
  switch i64 %i.dm, label %bb.ac [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
    i64 2, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !1228, !noalias !1229, !nonnull !5, !noundef !5
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !1228, !noalias !1229, !noundef !5
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit

bb.aj:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !1228, !noalias !1229, !nonnull !5, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !1228, !noalias !1229, !noundef !5
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit: ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sroa.42.0.i.i.i.i = phi i64 [ %i.dk, %bb.ah ], [ %i.dr, %bb.ai ], [ %i.dv, %bb.aj ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.dn, %bb.ah ], [ %i.dp, %bb.ai ], [ %i.dw, %bb.aj ]
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i, i64 %.sroa.42.0.i.i.i.i)
  %i.dx = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i.i, ptr nonnull %.sroa.01.0.i.i.i.i, i64 %spec.store.select.i.i.i.i), !noalias !1196 ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp eq i32 %i.dx, 0
  %i.ea = sub i64 %.sroa.4.0.i.i.i.i, %.sroa.42.0.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.dz, i64 %i.ea, i64 %i.dy
  %i.eb = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.eb, label %bb.ak, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i

bb.ak:                                            ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit
  %i.ec = add nuw nsw i64 %.sroa.01.1.i.i72, 1    ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ec, %smax92
  br i1 %exitcond93.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i, label %.lr.ph73

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i: ; preds = %bb.ak, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit, %bb.ab, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit42
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i70, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit42 ], [ %smax, %bb.ab ], [ %.sroa.01.1.i.i72, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit ], [ %smax92, %bb.ak ] ; 5 uses
  %i.ed = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.ed)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.al

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread113: ; preds = %.preheader
  br i1 %.not3.i115, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread: ; preds = %.preheader59
  br i1 %.not3.i110, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit

bb.al:                                            ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i
  %i.ee = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ee, 0
  %or.cond = or i1 %i.ba, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph.preheader.i.i

bb.am:                                            ; preds = %bb.i
  %i.ef = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 288230376151711744) %i.o)
  %i.eg = shl nuw nsw i64 %i.ef, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2U_11collections5btree3mapINtB3H_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4K_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB73_.exit

bb.an:                                            ; preds = %bb.i
  %i.eh = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2W_11collections5btree3mapINtB3J_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB75_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.eh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !1156
  %i.ei = shl nuw nsw i64 %i.eh, 1
  %i.ej = or disjoint i64 %i.ei, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2U_11collections5btree3mapINtB3H_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4K_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB73_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread, %bb.j, %bb.al
  %.sroa.0.0.i.i5457 = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.al ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread ], [ %.sroa.0.0.i.i111118122, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ]
  %i.ek = shl nuw nsw i64 %.sroa.0.0.i.i5457, 1
  %i.el = or disjoint i64 %i.ek, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2U_11collections5btree3mapINtB3H_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4K_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB73_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.al, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread113
  %i.em = phi i64 [ %i.ee, %bb.al ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread113 ]
  %.sroa.0.0.i.i111118122 = phi i64 [ %.sroa.0.0.i.i, %bb.al ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2T_11collections5btree3mapINtB3G_8BTreeMapB13_B1N_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4J_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB72_.exit.i.thread113 ] ; 2 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.0.0.i.i111118122
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.es, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.eo = xor i64 %.sroa.0.017.i.i, -1
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.0.017.i.i
  %i.eq = getelementptr [32 x i8], ptr %i.en, i64 %i.eo
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %i.ep, ptr noundef nonnull %i.eq, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.ao, !noalias !1196

bb.ao:                                            ; preds = %.lr.ph.i.i35
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #27, !noalias !1196
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.es = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.es, %i.em
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2U_11collections5btree3mapINtB3H_8BTreeMapB14_B1O_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4K_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB73_.exit: ; preds = %bb.am, %bb.an, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.0.i32 = phi i64 [ %i.el, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.ej, %bb.an ], [ %i.eg, %bb.am ] ; 2 uses
  %i.et = lshr i64 %.sroa.023.0, 1
  %i.eu = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ev = sub nsw i64 %factor, %i.et
  %i.ew = add nuw nsw i64 %i.eu, %factor
  %i.ex = mul i64 %i.ev, %.sroa.0.0
  %i.ey = mul i64 %i.ew, %.sroa.0.0
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ez, i1 false)
  %i.fb = trunc nuw nsw i64 %i.fa to i8
  br label %bb.g

bb.ap:                                            ; preds = %.lr.ph78, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4N_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB76_.exit
  %.sroa.02.177 = phi i64 [ %.sroa.02.0, %.lr.ph78 ], [ %i.fc, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4N_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB76_.exit ] ; 2 uses
  %.sroa.023.176 = phi i64 [ %.sroa.023.0, %.lr.ph78 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4N_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB76_.exit ] ; 4 uses
  %i.fc = add i64 %.sroa.02.177, -1               ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.fe, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.aq

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4N_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB76_.exit, %bb.ap, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.176, %bb.ap ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4N_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB76_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.177, %bb.ap ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4N_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB76_.exit ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.fg, align 1
  br i1 %i.l, label %bb.bo, label %bb.bp

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fc
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !5 ; 3 uses
  %i.fj = lshr i64 %i.fi, 1                       ; 8 uses
  %i.fk = lshr i64 %.sroa.023.176, 1              ; 6 uses
  %i.fl = add nuw i64 %i.fj, %i.fk                ; 4 uses
  %i.fm = sub i64 %.sroa.09.0, %i.fl
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.fm ; 6 uses
  %i.fo = icmp samesign ugt i64 %i.fl, %3
  %i.fp = trunc i64 %.sroa.023.176 to i1
  %i.fq = or i64 %i.fi, %.sroa.023.176
  %i.fr = trunc i64 %i.fq to i1
  %or.cond3.i = or i1 %i.fo, %i.fr
  br i1 %or.cond3.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fs = trunc i64 %i.fi to i1
  br i1 %i.fs, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.ft = shl nuw nsw i64 %i.fl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB17_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4N_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB76_.exit

bb.at:                                            ; preds = %bb.au, %bb.ar
  br i1 %i.fp, label %bb.aw, label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.fu = or i64 %i.fj, 1
  %i.fv = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fu, i1 true)
  %i.fw = trunc nuw nsw i64 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 1
  %i.fy = xor i32 %i.fx, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2W_11collections5btree3mapINtB3J_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB75_(ptr noalias nofree noundef nonnull align 8 %i.fn, i64 noundef range(i64 0, 288230376151711744) %i.fj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !1157
  br label %bb.at

bb.av:                                            ; preds = %bb.at
  %i.fz = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fj
  %i.ga = or i64 %i.fk, 1
  %i.gb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ga, i1 true)
  %i.gc = trunc nuw nsw i64 %i.gb to i32
  %i.gd = shl nuw nsw i32 %i.gc, 1
  %i.ge = xor i32 %i.gd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2W_11collections5btree3mapINtB3J_8BTreeMapB16_B1Q_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB75_(ptr noalias nofree noundef nonnull align 8 %i.fz, i64 noundef range(i64 0, 288230376151711744) %i.fk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ge, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !1157
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.gf = icmp eq i64 %i.fj, 0
  %i.gg = icmp eq i64 %i.fk, 0
  %or.cond.i = or i1 %i.gg, %i.gf
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2O_11collections5btree3mapINtB3A_8BTreeMapBY_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4C_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB6U_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gh = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.fj, i64 %i.fk) ; 2 uses
  %i.gi = icmp samesign ult i64 %3, %i.gh
  br i1 %i.gi, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2O_11collections5btree3mapINtB3A_8BTreeMapBY_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4C_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0EB6U_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ax
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fj ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.fj, %i.fk  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.gj, ptr %i.fn
  %i.gk = shl nuw nsw i64 %i.gh, 5                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.gk, i1 false), !alias.scope !1232
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 %i.gk ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit.i.i
  %i.gm = phi ptr [ %i.ic, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit.i.i ], [ %i.gl, %.critedge.i ] ; 6 uses
  %i.gn = phi ptr [ %i.ib, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit.i.i ], [ %i.gj, %.critedge.i ] ; 6 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.gq, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_.exit.i.i ], [ %i.n, %.critedge.i ]
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -32 ; 3 uses
  %i.gp = getelementptr inbounds i8, ptr %i.gm, i64 -32 ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.gr = load i8, ptr %i.gp, align 8, !range !4, !alias.scope !1241, !noalias !1242, !noundef !5 ; 2 uses
  %i.gs = icmp samesign ugt i8 %i.gr, 23
  %i.gt = zext nneg i8 %i.gr to i64               ; 2 uses
  %i.gu = add nsw i64 %i.gt, -23
  %i.gv = select i1 %i.gs, i64 %i.gu, i64 0
  switch i64 %i.gv, label %bb.ay [
    i64 0, label %bb.az
    i64 1, label %bb.ba
    i64 2, label %bb.bb
  ]

bb.ay:                                            ; preds = %bb.bc, %.preheader.i
  unreachable

bb.az:                                            ; preds = %.preheader.i
  %i.gw = getelementptr inbounds i8, ptr %i.gm, i64 -31
  br label %bb.bc

bb.ba:                                            ; preds = %.preheader.i
  %i.gx = getelementptr inbounds i8, ptr %i.gm, i64 -24
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !1241, !noalias !1242, !nonnull !5, !noundef !5
  %i.gz = getelementptr inbounds i8, ptr %i.gm, i64 -16
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !1241, !noalias !1242, !noundef !5
  br label %bb.bc

bb.bb:                                            ; preds = %.preheader.i
end_hunk_2
begin_hunk_3_@_RNvXs7_NtNtCsf3Ta7LF998c_4core5slice3cmpTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1i_15NormalizedSpaceEENtB5_8SliceOrd7compareCs2zvA5OmMqFb_10ufo2fontir:bb.a
  %i.q = or i1 %i.o, %i.p
  %i.r = fcmp ord double %.val2.i.i.i, 0.000000e+00
  %i.s = fcmp ult double %.val2.i.i.i, %.val.i.i.i
  %.not4.i.i.i.i.i = and i1 %i.r, %i.s
  %..i.i.i.i.i = zext i1 %.not4.i.i.i.i.i to i8
  br i1 %i.q, label %_RNCNvXs7_NtNtCsf3Ta7LF998c_4core5slice3cmpTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1k_15NormalizedSpaceEENtB7_8SliceOrd7compare0Cs2zvA5OmMqFb_10ufo2fontir.exit.i, label %_RINvNtNtCsf3Ta7LF998c_4core5slice3cmp13chaining_implTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1u_15NormalizedSpaceEENtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2V_s_0ECs2zvA5OmMqFb_10ufo2fontir.exit

_RNCNvXs7_NtNtCsf3Ta7LF998c_4core5slice3cmpTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1k_15NormalizedSpaceEENtB7_8SliceOrd7compare0Cs2zvA5OmMqFb_10ufo2fontir.exit.i: ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.k, %.lr.ph.i ], [ %..i.i.i.i.i, %bb.c ] ; 2 uses
  %i.t = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.t, label %bb.b, label %_RINvNtNtCsf3Ta7LF998c_4core5slice3cmp13chaining_implTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1u_15NormalizedSpaceEENtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2V_s_0ECs2zvA5OmMqFb_10ufo2fontir.exit

_RINvNtNtCsf3Ta7LF998c_4core5slice3cmp13chaining_implTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1u_15NormalizedSpaceEENtNtB6_3cmp8OrderingzNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2V_s_0ECs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %bb.c, %_RNCNvXs7_NtNtCsf3Ta7LF998c_4core5slice3cmpTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1k_15NormalizedSpaceEENtB7_8SliceOrd7compare0Cs2zvA5OmMqFb_10ufo2fontir.exit.i, %._crit_edge.i
  %.sroa.0.0.i = phi i8 [ %i.c, %._crit_edge.i ], [ %.sroa.0.0.i.i.i, %_RNCNvXs7_NtNtCsf3Ta7LF998c_4core5slice3cmpTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1k_15NormalizedSpaceEENtB7_8SliceOrd7compare0Cs2zvA5OmMqFb_10ufo2fontir.exit.i ], [ -1, %bb.c ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB4_8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB8_7set_val9SetValZSTENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_8BTreeSetRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9debug_set(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %0, align 8, !noundef !5   ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.0.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.e, i64 undef ; 2 uses
  %.sroa.0.sroa.0.0 = zext i1 %.not to i64        ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.g, i64 0
  store i64 %.sroa.0.sroa.0.0, ptr %i.a, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.0.sroa.0.0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.h = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_8DebugSet7entriesRRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB13_EECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = call noundef zeroext i1 @_RNvMs5_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB7_7set_val9SetValZSTENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB8_7set_val9SetValZSTE27bulk_build_from_sorted_iterINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterB18_ENCINvMse_NtB8_3setINtB4k_8BTreeSetB18_E16from_sorted_iterB3z_E0EECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB8_7set_val9SetValZSTE27bulk_build_from_sorted_iterINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterB18_ENCINvMse_NtB8_3setINtB4l_8BTreeSetB18_E16from_sorted_iterB3A_E0EECs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsgCecv3eZDcN_5alloc3vec3VecBZ_EECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsgCecv3eZDcN_5alloc3vec3VecBZ_EECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #23

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #24

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCslNOSSXeKrwO_9quick_xml6errors9serialize7DeErrorNtNtCs7N5MyPZKytm_10serde_core2de5Error13missing_fieldCs2zvA5OmMqFb_10ufo2fontir(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1k_CsidwnrrI1Awe_13ordered_floatINtB7_12OrderedFloatdENtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtB2b_5slice4iter4IterNtNtCshMXdXt2UU3C_5norad4name4NameENCNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norads_00EE9from_iterB4c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesBV_BV_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16postscript_namess0_0EE9from_iterB44_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtCsf3Ta7LF998c_4core5arrayAhj4_NtNtB8_4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2zvA5OmMqFb_10ufo2fontir(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtCsbZq13ASDQ8l_10font_types3tagNtB5_3TagNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1t_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB8_7set_val9SetValZSTENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9debug_set(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_8DebugSet7entriesRRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterB13_EECs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB7_7set_val9SetValZSTENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs2zvA5OmMqFb_10ufo2fontir(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #21

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { inlinehint }
attributes #29 = { noinline noreturn }
attributes #30 = { noinline }
attributes #31 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{i8 0, i8 26}
!5 = !{}
!6 = !{!"branch_weights", i32 4001, i32 4000000}
!7 = !{i64 0, i64 2}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_"}
!11 = distinct !{!11, !10, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_: argument 0"}
!12 = distinct !{!12, !10, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_: argument 1"}
!13 = distinct !{!13, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_"}
!14 = distinct !{!14, !13, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_: argument 0"}
!15 = distinct !{!15, !13, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_: argument 1"}
!16 = distinct !{!16, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!17 = distinct !{!17, !16, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!18 = distinct !{!18, !16, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!19 = distinct !{!19, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!20 = distinct !{!20, !19, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!21 = distinct !{!21, !19, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!22 = distinct !{!22, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_"}
!23 = distinct !{!23, !22, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_: argument 0"}
!24 = distinct !{!24, !22, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_: argument 1"}
!25 = distinct !{!25, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_"}
!26 = distinct !{!26, !25, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_: argument 0"}
!27 = distinct !{!27, !25, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_: argument 1"}
!28 = distinct !{!28, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!29 = distinct !{!29, !28, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!30 = distinct !{!30, !28, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!31 = distinct !{!31, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!32 = distinct !{!32, !31, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!33 = distinct !{!33, !31, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!34 = distinct !{!34, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_"}
!35 = distinct !{!35, !34, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_: argument 0"}
!36 = distinct !{!36, !34, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_: argument 1"}
!37 = distinct !{!37, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_"}
!38 = distinct !{!38, !37, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_: argument 0"}
!39 = distinct !{!39, !37, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_: argument 1"}
!40 = distinct !{!40, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!41 = distinct !{!41, !40, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!42 = distinct !{!42, !40, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!43 = distinct !{!43, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!44 = distinct !{!44, !43, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!45 = distinct !{!45, !43, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!46 = !{!11}
!47 = !{!12}
!48 = !{!14}
!49 = !{!15}
!50 = !{!17}
!51 = !{!18}
!52 = !{!20}
!53 = !{!21}
!54 = !{!20, !17, !14, !11}
!55 = !{!21, !18, !15, !12}
!56 = !{!23}
!57 = !{!24}
!58 = !{!26}
!59 = !{!27}
!60 = !{!29}
!61 = !{!30}
!62 = !{!32}
!63 = !{!33}
!64 = !{!32, !29, !26, !23}
!65 = !{!33, !30, !27, !24}
!66 = !{!35}
!67 = !{!36}
!68 = !{!38}
!69 = !{!39}
!70 = !{!41}
!71 = !{!42}
!72 = !{!44}
!73 = !{!45}
!74 = !{!44, !41, !38, !35}
!75 = !{!45, !42, !39, !36}
!76 = distinct !{!76, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_"}
!77 = distinct !{!77, !76, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_: argument 0"}
!78 = distinct !{!78, !76, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_: argument 1"}
!79 = distinct !{!79, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB30_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0B5F_"}
!80 = distinct !{!80, !79, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB30_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0B5F_: argument 0"}
!81 = distinct !{!81, !79, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB30_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0B5F_: argument 1"}
!82 = distinct !{!82, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!83 = distinct !{!83, !82, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!84 = distinct !{!84, !82, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!85 = distinct !{!85, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!86 = distinct !{!86, !85, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!87 = distinct !{!87, !85, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!88 = distinct !{!88, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_"}
!89 = distinct !{!89, !88, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_: argument 0"}
!90 = distinct !{!90, !88, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_: argument 1"}
!91 = distinct !{!91, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB30_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0B5F_"}
!92 = distinct !{!92, !91, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB30_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0B5F_: argument 0"}
!93 = distinct !{!93, !91, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB30_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0B5F_: argument 1"}
!94 = distinct !{!94, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!95 = distinct !{!95, !94, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!96 = distinct !{!96, !94, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!97 = distinct !{!97, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!98 = distinct !{!98, !97, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!99 = distinct !{!99, !97, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!100 = distinct !{!100, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_"}
!101 = distinct !{!101, !100, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_: argument 0"}
!102 = distinct !{!102, !100, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2z_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3A_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0E0B68_: argument 1"}
!103 = distinct !{!103, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB30_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0B5F_"}
!104 = distinct !{!104, !103, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB30_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0B5F_: argument 0"}
!105 = distinct !{!105, !103, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB30_8adapters10filter_map9FilterMapNtNtCsaGmGRvprAGn_5plist10dictionary4IterNCNvNtCs2zvA5OmMqFb_10ufo2fontir6source16glyph_categories0EE0B5F_: argument 1"}
!106 = distinct !{!106, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!107 = distinct !{!107, !106, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!108 = distinct !{!108, !106, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!109 = distinct !{!109, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!110 = distinct !{!110, !109, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!111 = distinct !{!111, !109, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!112 = !{!77}
!113 = !{!78}
!114 = !{!80}
!115 = !{!81}
!116 = !{!83}
!117 = !{!84}
!118 = !{!86}
!119 = !{!87}
!120 = !{!86, !83, !80, !77}
!121 = !{!87, !84, !81, !78}
!122 = !{!89}
!123 = !{!90}
!124 = !{!92}
!125 = !{!93}
!126 = !{!95}
!127 = !{!96}
!128 = !{!98}
!129 = !{!99}
!130 = !{!98, !95, !92, !89}
!131 = !{!99, !96, !93, !90}
!132 = !{!101}
!133 = !{!102}
!134 = !{!104}
!135 = !{!105}
!136 = !{!107}
!137 = !{!108}
!138 = !{!110}
!139 = !{!111}
!140 = !{!110, !107, !104, !101}
!141 = !{!111, !108, !105, !102}
!142 = distinct !{!142, !"_RNvXsY_NtNtCsf3Ta7LF998c_4core3cmp5implstNtB7_10PartialOrd2lt"}
!143 = distinct !{!143, !142, !"_RNvXsY_NtNtCsf3Ta7LF998c_4core3cmp5implstNtB7_10PartialOrd2lt: argument 0"}
!144 = distinct !{!144, !142, !"_RNvXsY_NtNtCsf3Ta7LF998c_4core3cmp5implstNtB7_10PartialOrd2lt: argument 1"}
!145 = !{!143}
!146 = !{!144}
!147 = distinct !{!147, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_"}
!148 = distinct !{!148, !147, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_: argument 0"}
!149 = distinct !{!149, !147, !"_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufE7sort_byNCINvXs1o_NtNtNtB7_11collections5btree3mapINtB2b_8BTreeMapBz_B1j_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3c_8adapters3map3MapINtB2b_8IntoIterNtNtB7_6string6StringB1j_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0E0B5x_: argument 1"}
!150 = distinct !{!150, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_"}
!151 = distinct !{!151, !150, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_: argument 0"}
!152 = distinct !{!152, !150, !"_RNCINvXs1o_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB9_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB1b_B1V_EE9from_iterINtNtNtB2C_8adapters3map3MapINtB9_8IntoIterNtNtBf_6string6StringB1V_ENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source10glif_filess_0EE0B53_: argument 1"}
!153 = distinct !{!153, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!154 = distinct !{!154, !153, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!155 = distinct !{!155, !153, !"_RNvXsk_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_9GlyphNameNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
!156 = distinct !{!156, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp"}
!157 = distinct !{!157, !156, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 0"}
!158 = distinct !{!158, !156, !"_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp: argument 1"}
end_hunk_3
