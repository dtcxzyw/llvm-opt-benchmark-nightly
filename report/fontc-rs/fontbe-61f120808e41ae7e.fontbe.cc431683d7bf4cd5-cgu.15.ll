Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.15?download=true
inline.NumInlined: 2339
inline.NumDeleted: 1551
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMs_NtCshxhuDJfZv4T_6fontbe6glyphsNtB29_12CheckedGlyph3new00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB50_3VecB47_E14extend_trustedBN_E0E0EB2b_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 96
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.k, %bb.f ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.f ] ; 2 uses
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1941
  %i.h = load i8, ptr %i.g, align 8, !range !6, !alias.scope !1942, !noalias !1943, !noundef !5
  %i.i = icmp eq i8 %i.h, 25
  br i1 %i.i, label %bb.e, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.g, i64 24, i1 false), !noalias !1944
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g) #38
          to label %bb.f unwind label %bb.g, !noalias !1941

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1944
  %i.k = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1941
  %i.l = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.f
  br i1 %i.m, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuNCNCNvMs_NtCshxhuDJfZv4T_6fontbe6glyphsNtB3L_12CheckedGlyph3new00NCINvNvB1t_8for_each4callB2R_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5h_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3C_EE0E0E0EB3N_.exit, label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1941
  resume { ptr, i32 } %i.n

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuNCNCNvMs_NtCshxhuDJfZv4T_6fontbe6glyphsNtB3L_12CheckedGlyph3new00NCINvNvB1t_8for_each4callB2R_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5h_3VecB2R_E14extend_trustedINtB2j_3MapBF_B3C_EE0E0E0EB3N_.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.k, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1941
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB2l_10MaxBuilder23update_composite_limitss_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3O_8for_each4callINtNtBc_6option6OptionNtB2l_11GlyphLimitsENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5G_3VecB4R_E14extend_trustedBN_E0E0EB2n_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEuNCNCNvMs1_B3q_NtB3q_10MaxBuilder23update_composite_limitss_00NCINvNvB1E_8for_each4callB32_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5X_3VecB32_E14extend_trustedINtB2u_3MapBF_B4m_EE0E0E0EB3s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ar, %bb.h ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.as, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  %i.o = load i64, ptr %i.k, align 8, !alias.scope !1966, !noalias !1967, !noundef !5
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %select.unfold.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.n), !noalias !1968 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = load i64, ptr %i.m, align 8, !alias.scope !1971, !noalias !1972, !noundef !5 ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !alias.scope !1971, !noalias !1972, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.an, %bb.g ]
  %.pn.i.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %i.ao, %bb.g ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.t ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 1, !noalias !1973 ; 2 uses
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.w
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.am, %bb.f ], [ %i.z, %bb.e ] ; 3 uses
  %i.aa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ab
  %i.ad = and i64 %i.ac, %i.t
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [40 x i8], ptr %i.u, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -40
  %i.ah = invoke noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtB2_10EquivalentBq_E10equivalentCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1974

.noexc.i:                                         ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ah, label %bb.h, label %bb.f, !prof !16

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %bb.e
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %select.unfold.i.i.i, !prof !17

bb.f:                                             ; preds = %.noexc.i
  %i.al = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.an = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ao = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.an
  br label %bb.e

select.unfold.i.i.i:                              ; preds = %bb.c, %._crit_edge.i.i.i.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #41
          to label %.noexc15.i unwind label %.loopexit.split-lp.i, !noalias !1974

.noexc15.i:                                       ; preds = %select.unfold.i.i.i
  unreachable

bb.h:                                             ; preds = %.noexc.i
  %i.ap = getelementptr inbounds i8, ptr %i.af, i64 -8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ap, align 8, !noalias !1968
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.aq, align 2, !noalias !1975
  %i.ar = add i64 %.val10.i, 1                    ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.j
  br i1 %i.at, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEuNCNCNvMs1_B3q_NtB3q_10MaxBuilder23update_composite_limitss_00NCINvNvB1E_8for_each4callB32_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5X_3VecB32_E14extend_trustedINtB2u_3MapBF_B4m_EE0E0E0EB3s_.exit, label %bb.c

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %select.unfold.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1974
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEuNCNCNvMs1_B3q_NtB3q_10MaxBuilder23update_composite_limitss_00NCINvNvB1E_8for_each4callB32_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5X_3VecB32_E14extend_trustedINtB2u_3MapBF_B4m_EE0E0E0EB3s_.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ar, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1974
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2ENCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs14compute_deltass_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callNtNtB1r_5point5PointNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4n_3VecB3U_E14extend_trustedBN_E0E0EB24_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldRBQ_NtNtBU_5point5PointuNCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs14compute_deltass_00NCINvNvB1p_8for_each4callB2N_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4D_3VecB2N_E14extend_trustedINtB2f_3MapBF_B37_EE0E0E0EB3f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 4 uses
  %i.e = lshr i64 %i.d, 4                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.d, 160
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 4           ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %3 = and i64 %i.d, -16                          ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.g, i64 %3
  %scevgep3 = getelementptr i8, ptr %0, i64 %3
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 4 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %index      ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x double>, ptr %i.j, align 8, !alias.scope !1989, !noalias !1990
  %wide.load4 = load <2 x double>, ptr %i.l, align 8, !alias.scope !1989, !noalias !1990
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  %i.n = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.i
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store <2 x double> %wide.load, ptr %i.m, align 8, !alias.scope !1991, !noalias !1992
  store <2 x double> %wide.load4, ptr %i.o, align 8, !alias.scope !1991, !noalias !1992
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1987

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldRBQ_NtNtBU_5point5PointuNCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs14compute_deltass_00NCINvNvB1p_8for_each4callB2N_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4D_3VecB2N_E14extend_trustedINtB2f_3MapBF_B37_EE0E0E0EB3f_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.h, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.q = and i64 %i.d, 16
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.ph
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  %i.t = load <2 x double>, ptr %i.r, align 8, !noalias !1990
  store <2 x double> %i.t, ptr %i.s, align 8, !noalias !1993
  %i.u = add i64 %.ph, 1                          ; 2 uses
  %i.v = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp eq i64 %i.e, %.neg
  br i1 %i.w, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldRBQ_NtNtBU_5point5PointuNCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs14compute_deltass_00NCINvNvB1p_8for_each4callB2N_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4D_3VecB2N_E14extend_trustedINtB2f_3MapBF_B37_EE0E0E0EB3f_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.x = phi i64 [ %i.ag, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ah, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.x
  %i.aa = load <2 x double>, ptr %i.y, align 8, !noalias !1990
  store <2 x double> %i.aa, ptr %i.z, align 8, !noalias !1993
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.x
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load <2 x double>, ptr %i.ac, align 8, !noalias !1990
  store <2 x double> %i.af, ptr %i.ae, align 8, !noalias !1993
  %i.ag = add i64 %i.x, 2                         ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.e
  br i1 %i.ai, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldRBQ_NtNtBU_5point5PointuNCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs14compute_deltass_00NCINvNvB1p_8for_each4callB2N_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4D_3VecB2N_E14extend_trustedINtB2f_3MapBF_B37_EE0E0E0EB3f_.exit, label %scalar.ph, !llvm.loop !1988

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1v_8adapters3map8map_foldRBQ_NtNtBU_5point5PointuNCNCNvNtCshxhuDJfZv4T_6fontbe6glyphs14compute_deltass_00NCINvNvB1p_8for_each4callB2N_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4D_3VecB2N_E14extend_trustedINtB2f_3MapBF_B37_EE0E0E0EB3f_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.h, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ag, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1990
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENCNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars2_0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callNtNtCsbZq13ASDQ8l_10font_types5fixed5FixedNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Q_3VecB41_E14extend_trustedBN_E0E0EB2b_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types5fixed5FixeduNCNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars2_0s_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3B_EE0E0E0EB3J_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !12, !noundef !5
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 296
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [296 x i8], ptr %i.a, i64 %.sroa.01.0.i ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 272
  %.val15.i = load double, ptr %i.m, align 8, !noalias !2002
  %i.n = getelementptr i8, ptr %i.l, i64 288
  %.val16.i = load i32, ptr %i.n, align 8, !noalias !2002
  %i.o = invoke { i64, double } @_RNvMs8_NtCsgdm2QMcbaeA_10fontdrasil6coordsINtB5_8LocationNtB5_9UserSpaceE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, i32 noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !noalias !2002 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = extractvalue { i64, double } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = extractvalue { i64, double } %i.o, 1
  %.sroa.04.0.i.i.i = select i1 %i.q, double %i.r, double %.val15.i ; 2 uses
  %i.s = bitcast double %.sroa.04.0.i.i.i to i64
  %.not.i.i.i = icmp sgt i64 %i.s, -1
  %i.t = uitofp i1 %.not.i.i.i to double
  %i.u = fadd double %i.t, -5.000000e-01
  %i.v = fmul double %.sroa.04.0.i.i.i, 6.553600e+04
  %i.w = fadd double %i.v, %i.u
  %i.x = tail call noundef i32 @llvm.fptosi.sat.i32.f64(double %i.w)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i32 %i.x, ptr %i.y, align 4, !noalias !2003
  %i.z = add i64 %.val10.i, 1                     ; 2 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.j
  br i1 %i.ab, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types5fixed5FixeduNCNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars2_0s_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3B_EE0E0E0EB3J_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2002
  resume { ptr, i32 } %i.ac

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types5fixed5FixeduNCNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars2_0s_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3B_EE0E0E0EB3J_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.z, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2002
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtB1r_6coords5CoordNtB4C_9UserSpaceEENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5m_3VecB3W_E14extend_trustedBN_E0E0EB29_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv exact i64 %i.d, 296                 ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.d, 296
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 72057594037927934
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.q, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.r, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 272
  %.val15.i = load double, ptr %i.i, align 8, !noalias !2012, !noundef !5
  %i.j = getelementptr i8, ptr %i.h, i64 288
  %.val16.i = load i32, ptr %i.j, align 8, !noalias !2012
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  store i32 %.val16.i, ptr %i.k, align 8, !noalias !2013
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store double %.val15.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2013
  %i.l = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 568
  %.val15.i.1 = load double, ptr %i.m, align 8, !noalias !2012, !noundef !5
  %i.n = getelementptr i8, ptr %i.l, i64 584
  %.val16.i.1 = load i32, ptr %i.n, align 8, !noalias !2012
  %i.o = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i32 %.val16.i.1, ptr %i.p, align 8, !noalias !2013
  %.sroa.5.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.o, i64 24
  store double %.val15.i.1, ptr %.sroa.5.0..sroa_idx.i.i.1, align 8, !noalias !2013
  %i.q = add i64 %i.g, 2                          ; 3 uses
  %i.r = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit.loopexit.unr-lcssa, label %bb.c

end_hunk_0
