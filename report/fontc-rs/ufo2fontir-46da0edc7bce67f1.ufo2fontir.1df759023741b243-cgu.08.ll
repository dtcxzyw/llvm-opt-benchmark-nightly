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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.jo, %bb.bm ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.jm, %bb.bm ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit
  %.sroa.021.0 = phi i8 [ %i.ax, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.o = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
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
  br i1 %.not91, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not91, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120, label %.lr.ph78

.lr.ph:                                           ; preds = %.preheader61, %bb.l
  %.sroa.01.0.i.i74 = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader61 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.01.0.i.i74
  %6 = add nsw i64 %.sroa.01.0.i.i74, -1          ; 2 uses
  %7 = icmp ult i64 %6, %i.o
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %6
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %8) #28, !noalias !894, !inline_history !851
  br i1 %i.u, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.v = add nuw i64 %.sroa.01.0.i.i74, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.o
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i, label %.lr.ph

.lr.ph78:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i77 = phi i64 [ %i.y, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.01.1.i.i77
  %9 = add nsw i64 %.sroa.01.1.i.i77, -1          ; 2 uses
  %10 = icmp ult i64 %9, %i.o
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %9
  %i.x = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %11) #28, !noalias !894, !inline_history !851
  br i1 %i.x, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i

bb.m:                                             ; preds = %.lr.ph78
  %i.y = add nuw i64 %.sroa.01.1.i.i77, 1         ; 2 uses
  %exitcond98.not = icmp eq i64 %i.y, %i.o
  br i1 %exitcond98.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i, label %.lr.ph78

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph78
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i77, %.lr.ph78 ], [ %i.o, %bb.m ], [ %.sroa.01.0.i.i74, %.lr.ph ], [ %i.o, %bb.l ] ; 5 uses
  %i.z = icmp samesign ule i64 %.sroa.0.0.i.i, %i.o
  tail call void @llvm.assume(i1 %i.z)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120: ; preds = %.preheader
  br i1 %.not3.i122, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread: ; preds = %.preheader61
  br i1 %.not3.i117, label %bb.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i
  %i.aa = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp ne i64 %i.aa, 0
  %or.cond.not = and i1 %.not.i.i, %i.s
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit

bb.o:                                             ; preds = %bb.i
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 164703072086692426) %i.o)
  %i.ac = shl nuw nsw i64 %i.ab, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit

bb.p:                                             ; preds = %bb.i
  %i.ad = tail call i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.o, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1R_5sliceSB15_7sort_byNCINvXs1o_NtB1N_3mapINtB48_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4O_8adapters10filter_map9FilterMapIB5H_INtB48_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1R_3vec3VecB6D_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7A_s_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.p, i64 noundef %i.ad, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !851
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i5659 = phi i64 [ %i.o, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread ], [ %.sroa.0.0.i.i118125129, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i5659, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120
  %i.ai = phi i64 [ %i.aa, %bb.n ], [ 1, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120 ]
  %.sroa.0.0.i.i118125129 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1O_5sliceSB12_7sort_byNCINvXs1o_NtB1K_3mapINtB45_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4L_8adapters10filter_map9FilterMapIB5E_INtB45_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1O_3vec3VecB6A_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7x_s_0EE0E0EB7B_.exit.i.thread120 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.0.0.i.i118125129
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ao, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.017.i.i, -1
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.sroa.0.017.i.i
  %i.am = getelementptr [56 x i8], ptr %i.aj, i64 %i.ak
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2zvA5OmMqFb_10ufo2fontir(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, i64 noundef 7)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i unwind label %bb.q, !noalias !894

bb.q:                                             ; preds = %.lr.ph.i.i35
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #27, !noalias !894
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEECs2zvA5OmMqFb_10ufo2fontir.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.ao = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1P_5sliceSB13_7sort_byNCINvXs1o_NtB1L_3mapINtB46_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4M_8adapters10filter_map9FilterMapIB5F_INtB46_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1P_3vec3VecB6B_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7y_s_0EE0E0EB7C_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7reverseCs2zvA5OmMqFb_10ufo2fontir.exit ], [ %i.af, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ap = lshr i64 %.sroa.023.0, 1
  %i.aq = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ar = sub nsw i64 %factor, %i.ap
  %i.as = add nuw nsw i64 %i.aq, %factor
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = xor i64 %i.au, %i.at
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph84, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit
  %.sroa.02.183 = phi i64 [ %.sroa.02.0, %.lr.ph84 ], [ %i.ay, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit ] ; 2 uses
  %.sroa.023.182 = phi i64 [ %.sroa.023.0, %.lr.ph84 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit ] ; 4 uses
  %i.ay = add i64 %.sroa.02.183, -1               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ba, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.182, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.183, %bb.r ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bc, align 1
  br i1 %i.l, label %bb.bm, label %bb.bn

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ay
  %i.be = load i64, ptr %i.bd, align 8, !noundef !5 ; 3 uses
  %i.bf = lshr i64 %i.be, 1                       ; 8 uses
  %i.bg = lshr i64 %.sroa.023.182, 1              ; 6 uses
  %i.bh = add nuw i64 %i.bf, %i.bg                ; 4 uses
  %i.bi = sub i64 %.sroa.09.0, %i.bh
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bi ; 6 uses
  %i.bk = icmp samesign ugt i64 %i.bh, %3
  %i.bl = trunc i64 %.sroa.023.182 to i1
  %i.bm = or i64 %i.be, %.sroa.023.182
  %i.bn = trunc i64 %i.bm to i1
  %or.cond3.i = or i1 %i.bk, %i.bn
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bo = trunc i64 %i.be to i1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bp = shl nuw nsw i64 %i.bh, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bl, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bq = or i64 %i.bf, 1
  %i.br = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = xor i32 %i.bt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1R_5sliceSB15_7sort_byNCINvXs1o_NtB1N_3mapINtB48_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4O_8adapters10filter_map9FilterMapIB5H_INtB48_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1R_3vec3VecB6D_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7A_s_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.bj, i64 noundef range(i64 0, 164703072086692426) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !852
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bf
  %i.bw = or i64 %i.bg, 1
  %i.bx = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1R_5sliceSB15_7sort_byNCINvXs1o_NtB1N_3mapINtB48_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4O_8adapters10filter_map9FilterMapIB5H_INtB48_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1R_3vec3VecB6D_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7A_s_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %i.bv, i64 noundef range(i64 0, 164703072086692426) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !852
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %i.cb = icmp eq i64 %i.bf, 0
  %i.cc = icmp eq i64 %i.bg, 0
  %or.cond.i = or i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.bf, i64 %i.bg) ; 2 uses
  %i.ce = icmp samesign ult i64 %3, %i.cd
  br i1 %i.ce, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.bj, i64 %i.bf ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bf, %i.bg  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cf, ptr %i.bj
  %i.cg = mul nuw nsw i64 %i.cd, 56               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cg, i1 false), !alias.scope !895
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51
  %i.ci = phi ptr [ %i.fs, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.ch, %.critedge.i ] ; 12 uses
  %i.cj = phi ptr [ %i.fq, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.cf, %.critedge.i ] ; 12 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cm, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.n, %.critedge.i ]
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -56 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 -56 ; 3 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898), !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900), !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901), !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902), !noalias !899
  %i.cn = load i64, ptr %i.cl, align 8, !range !7, !alias.scope !903, !noalias !904, !noundef !5 ; 3 uses
  %i.co = load i64, ptr %i.ck, align 8, !range !7, !alias.scope !905, !noalias !906, !noundef !5 ; 2 uses
  %i.cp = sub nsw i64 %i.cn, %i.co
  %i.cq = trunc nsw i64 %i.cp to i8
  %i.cr = icmp eq i64 %i.cn, %i.co
  br i1 %i.cr, label %bb.aa, label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51

bb.aa:                                            ; preds = %.preheader.i
  %i.cs = trunc nuw i64 %i.cn to i1
  %i.ct = getelementptr inbounds i8, ptr %i.ci, i64 -48 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cj, i64 -48 ; 2 uses
  br i1 %i.cs, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907), !noalias !899
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908), !noalias !899
  %i.cv = load i8, ptr %i.ct, align 8, !range !4, !alias.scope !909, !noalias !910, !noundef !5 ; 2 uses
  %i.cw = icmp samesign ugt i8 %i.cv, 23
  %i.cx = zext nneg i8 %i.cv to i64               ; 2 uses
  %i.cy = add nsw i64 %i.cx, -23
  %i.cz = select i1 %i.cw, i64 %i.cy, i64 0
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1I_5sliceSBW_7sort_byNCINvXs1o_NtB1E_3mapINtB3Y_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4D_8adapters10filter_map9FilterMapIB5v_INtB3Y_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1I_3vec3VecB6r_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7o_s_0EE0E0EB7s_:bb.a
    i64 0, label %bb.bf
    i64 1, label %bb.bg
    i64 2, label %bb.bh
  ]

bb.be:                                            ; preds = %bb.bi, %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 9
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bd
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !938, !noalias !939, !nonnull !5, !noundef !5
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !938, !noalias !939, !noundef !5
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !938, !noalias !939, !nonnull !5, !noundef !5
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !938, !noalias !939, !noundef !5
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %.sroa.4.0.i2.i.i.i = phi i64 [ %i.hq, %bb.bf ], [ %i.hx, %bb.bg ], [ %i.ib, %bb.bh ] ; 2 uses
  %.sroa.0.0.i3.i.i.i = phi ptr [ %i.ht, %bb.bf ], [ %i.hv, %bb.bg ], [ %i.ic, %bb.bh ]
  %i.id = load i8, ptr %i.ge, align 8, !range !4, !alias.scope !940, !noalias !941, !noundef !5 ; 2 uses
  %i.ie = icmp samesign ugt i8 %i.id, 23
  %i.if = zext nneg i8 %i.id to i64               ; 2 uses
  %i.ig = add nsw i64 %i.if, -23
  %i.ih = select i1 %i.ie, i64 %i.ig, i64 0
  switch i64 %i.ih, label %bb.be [
    i64 0, label %bb.bj
    i64 1, label %bb.bk
    i64 2, label %bb.bl
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fw, i64 9
  br label %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !940, !noalias !941, !nonnull !5, !noundef !5
  %i.il = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !940, !noalias !941, !noundef !5
  br label %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i

bb.bl:                                            ; preds = %bb.bi
  %i.in = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !940, !noalias !941, !nonnull !5, !noundef !5
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !940, !noalias !941, !noundef !5
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  br label %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i

_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %.sroa.42.0.i4.i.i.i = phi i64 [ %i.if, %bb.bj ], [ %i.im, %bb.bk ], [ %i.iq, %bb.bl ] ; 2 uses
  %.sroa.01.0.i5.i.i.i = phi ptr [ %i.ii, %bb.bj ], [ %i.ik, %bb.bk ], [ %i.ir, %bb.bl ]
  %spec.store.select.i6.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.i2.i.i.i, i64 %.sroa.42.0.i4.i.i.i)
  %i.is = tail call i32 @memcmp(ptr nonnull %.sroa.0.0.i3.i.i.i, ptr nonnull %.sroa.01.0.i5.i.i.i, i64 %spec.store.select.i6.i.i.i), !noalias !922 ; 2 uses
  %i.it = sext i32 %i.is to i64
  %i.iu = icmp eq i32 %i.is, 0
  %i.iv = sub i64 %.sroa.4.0.i2.i.i.i, %.sroa.42.0.i4.i.i.i
  %spec.select.i7.i.i.i = select i1 %i.iu, i64 %i.iv, i64 %i.it
  %i.iw = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i7.i.i.i, i64 0)
  br label %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit

_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit: ; preds = %.lr.ph.i.i, %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.hn, %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit.i.i.i ], [ %i.iw, %_RNvXsc_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit8.i.i.i ], [ %i.ga, %.lr.ph.i.i ]
  %i.ix = icmp eq i8 %.sroa.0.0.i.i.i, -1         ; 3 uses
  %i.iy = xor i1 %i.ix, true
  %.sroa.05.0.i.i = select i1 %i.ix, ptr %.sroa.0.02.i.i, ptr %i.fw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fv, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05.0.i.i, i64 56, i1 false), !alias.scope !895, !noalias !922
  %i.iz = zext i1 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [56 x i8], ptr %i.fw, i64 %i.iz ; 3 uses
  %i.jb = zext i1 %i.ix to i64
  %i.jc = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.fv, i64 56 ; 2 uses
  %i.je = icmp ne ptr %i.ja, %i.ch
  %i.jf = icmp ne ptr %i.jc, %i.n
  %or.cond.i18.i = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %or.cond.i18.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE10merge_downNCINvMNtB1W_5sliceSB1a_7sort_byNCINvXs1o_NtB1S_3mapINtB4q_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB56_8adapters10filter_map9FilterMapIB5Z_INtB4q_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1W_3vec3VecB6V_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7S_s_0EE0E0EB7W_.exit.i

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE10merge_downNCINvMNtB1W_5sliceSB1a_7sort_byNCINvXs1o_NtB1S_3mapINtB4q_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB56_8adapters10filter_map9FilterMapIB5Z_INtB4q_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1W_3vec3VecB6V_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7S_s_0EE0E0EB7W_.exit.i: ; preds = %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51
  %.sroa.13.1.i = phi ptr [ %i.fq, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.jd, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit ]
  %.sroa.7.0.i = phi ptr [ %i.fs, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.ch, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit51 ], [ %i.ja, %_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtB7_11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE7sort_byNCINvXs1o_NtB1g_3mapINtB2X_8BTreeMapBz_B1b_EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBy_E9from_iterINtNtNtB3C_8adapters10filter_map9FilterMapIB4K_INtB2X_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB7_3vec3VecB5G_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB6C_s_0EE0E0B6G_.exit ] ; 2 uses
  %i.jg = ptrtoint ptr %.sroa.7.0.i to i64
  %i.jh = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ji = sub nuw i64 %i.jg, %i.jh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ji, i1 false), !alias.scope !895, !noalias !942
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEE10merge_downNCINvMNtB1W_5sliceSB1a_7sort_byNCINvXs1o_NtB1S_3mapINtB4q_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB56_8adapters10filter_map9FilterMapIB5Z_INtB4q_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1W_3vec3VecB6V_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7S_s_0EE0E0EB7W_.exit.i
  %i.jj = shl nuw nsw i64 %i.bh, 1
  %i.jk = or disjoint i64 %i.jj, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1S_5sliceSB16_7sort_byNCINvXs1o_NtB1O_3mapINtB49_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4P_8adapters10filter_map9FilterMapIB5I_INtB49_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1S_3vec3VecB6E_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7B_s_0EE0E0EB7F_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit
  %.sroa.0.0.i = phi i64 [ %i.jk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1J_5sliceSBX_7sort_byNCINvXs1o_NtB1F_3mapINtB3Z_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4E_8adapters10filter_map9FilterMapIB5w_INtB3Z_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1J_3vec3VecB6s_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7p_s_0EE0E0EB7t_.exit ], [ %i.bp, %bb.u ] ; 2 uses
  %i.jl = icmp ugt i64 %i.ay, 1
  br i1 %i.jl, label %bb.r, label %._crit_edge

bb.bm:                                            ; preds = %._crit_edge
  %i.jm = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.jn = lshr i64 %.sroa.018.0, 1
  %i.jo = add nuw nsw i64 %i.jn, %.sroa.09.0
  br label %bb.f

bb.bn:                                            ; preds = %._crit_edge
  %i.jp = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.jp, 0
  br i1 %.not30, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jq = or i64 %1, 1
  %i.jr = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.jq, i1 true)
  %i.js = trunc nuw nsw i64 %i.jr to i32
  %i.jt = shl nuw nsw i32 %i.js, 1
  %i.ju = xor i32 %i.jt, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCINvMNtB1R_5sliceSB15_7sort_byNCINvXs1o_NtB1N_3mapINtB48_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4O_8adapters10filter_map9FilterMapIB5H_INtB48_4IterNtNtCshMXdXt2UU3C_5norad4name4NameINtNtB1R_3vec3VecB6D_EENCNvNtCs2zvA5OmMqFb_10ufo2fontir6source22kern_groups_from_norad0ENCB7A_s_0EE0E0EB7E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ju, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #30, !inline_history !852
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
  %i.y = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
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
  br i1 %.not67, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not67, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i.thread93, label %.lr.ph54

.lr.ph:                                           ; preds = %.preheader45, %bb.l
  %.val6.i = phi i32 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader45 ]
  %.sroa.01.0.i.i50 = phi i64 [ %i.an, %bb.l ], [ 2, %.preheader45 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.01.0.i.i50
  %6 = add nsw i64 %.sroa.01.0.i.i50, -1
  %7 = icmp ult i64 %6, %i.y
  tail call void @llvm.assume(i1 %7)
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
  %i.an = add nuw i64 %.sroa.01.0.i.i50, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.y
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %.lr.ph

.lr.ph54:                                         ; preds = %.preheader, %bb.m
  %.val4.i = phi i32 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader ]
  %.sroa.01.1.i.i53 = phi i64 [ %i.au, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.01.1.i.i53
  %8 = add nsw i64 %.sroa.01.1.i.i53, -1
  %9 = icmp ult i64 %8, %i.y
  tail call void @llvm.assume(i1 %9)
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
  %i.au = add nuw i64 %.sroa.01.1.i.i53, 1        ; 2 uses
  %exitcond74.not = icmp eq i64 %i.au, %i.y
  br i1 %exitcond74.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i, label %.lr.ph54

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1I_11DesignSpaceEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyB13_NCNvXs7_B1I_INtB1I_8LocationB2n_EINtNtB8_7convert4FromINtNtB2Q_3vec3VecB12_EE4from0E0ECs2zvA5OmMqFb_10ufo2fontir.exit.i: ; preds = %bb.m, %.lr.ph54, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i50, %.lr.ph ], [ %i.y, %bb.l ], [ %.sroa.01.1.i.i53, %.lr.ph54 ], [ %i.y, %bb.m ] ; 5 uses
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
end_hunk_1
