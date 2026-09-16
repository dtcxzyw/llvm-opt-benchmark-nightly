Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.15?download=true
inline.NumInlined: 2339
inline.NumDeleted: 1551
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentENCNCNvMs_NtCshxhuDJfZv4T_6fontbe6glyphsNtB29_12CheckedGlyph3new00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB50_3VecB47_E14extend_trustedBN_E0E0EB2b_:bb.a
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
  %i.g = and i64 %i.d, -16                        ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %scevgep2 = getelementptr i8, ptr %i.h, i64 %i.g
  %scevgep3 = getelementptr i8, ptr %0, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %0, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846974      ; 4 uses
  %3 = add i64 %.sroa.5.0.copyload, %n.vec        ; 2 uses
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
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %3, %middle.block ] ; 3 uses
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
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %3, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ag, %scalar.ph ]
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

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.q, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.r, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.s = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 272
  %.val15.i.epil = load double, ptr %i.t, align 8, !noalias !2012, !noundef !5
  %i.u = getelementptr i8, ptr %i.s, i64 288
  %.val16.i.epil = load i32, ptr %i.u, align 8, !noalias !2012
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store i32 %.val16.i.epil, ptr %i.v, align 8, !noalias !2013
  %.sroa.5.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store double %.val15.i.epil, ptr %.sroa.5.0..sroa_idx.i.i.epil, align 8, !noalias !2013
  %i.w = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_TNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtBU_6coords5CoordNtB3A_9UserSpaceEEuNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars0_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5C_3VecB2U_E14extend_trustedINtB2m_3MapBF_B4b_EE0E0E0EB4h_.exit.loopexit.unr-lcssa ], [ %i.w, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2012
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar19VariationAxisRecordNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB59_3VecB3W_E14extend_trustedBN_E0E0EB29_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar19VariationAxisRecorduNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars1_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5q_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3Z_EE0E0E0EB45_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 296
  %i.k = getelementptr i8, ptr %i.e, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.as, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.at, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [296 x i8], ptr %i.a, i64 %.sroa.01.0.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.m, align 8, !alias.scope !2027, !noalias !2028
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.o = load double, ptr %i.n, align 8, !alias.scope !2027, !noalias !2028, !noundef !5 ; 2 uses
  %i.p = bitcast double %i.o to i64
  %.not.i.i.i = icmp sgt i64 %i.p, -1
  %i.q = uitofp i1 %.not.i.i.i to double
  %i.r = fadd double %i.q, -5.000000e-01
  %i.s = fmul double %i.o, 6.553600e+04
  %i.t = fadd double %i.s, %i.r
  %i.u = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %i.w = load double, ptr %i.v, align 8, !alias.scope !2027, !noalias !2028, !noundef !5 ; 2 uses
  %i.x = bitcast double %i.w to i64
  %.not3.i.i.i = icmp sgt i64 %i.x, -1
  %i.y = uitofp i1 %.not3.i.i.i to double
  %i.z = fadd double %i.y, -5.000000e-01
  %i.aa = fmul double %i.w, 6.553600e+04
  %i.ab = fadd double %i.aa, %i.z
  %i.ac = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 280
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !2027, !noalias !2028, !noundef !5 ; 2 uses
  %i.af = bitcast double %i.ae to i64
  %.not4.i.i.i = icmp sgt i64 %i.af, -1
  %i.ag = uitofp i1 %.not4.i.i.i to double
  %i.ah = fadd double %i.ag, -5.000000e-01
  %i.ai = fmul double %i.ae, 6.553600e+04
  %i.aj = fadd double %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.aj)
  %i.al = invoke { ptr, i64 } @_RNvMs9_NtCsgdm2QMcbaeA_10fontdrasil5typesNtB5_4Axis13ui_label_name(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.l)
          to label %.noexc.i unwind label %bb.e, !noalias !2029 ; 2 uses

.noexc.i:                                         ; preds = %bb.c
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !noalias !2030, !nonnull !5, !align !12, !noundef !5
  %.val5.i.i.i = load ptr, ptr %i.k, align 8, !noalias !2030
  %i.ao = invoke fastcc noundef i16 @_RNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvar0B5_(ptr nonnull %.val.i.i.i, ptr %.val5.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.an, i1 noundef zeroext false) #44
          to label %bb.d unwind label %bb.e, !noalias !2029

bb.d:                                             ; preds = %.noexc.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 292
  %i.aq = load i8, ptr %i.ap, align 4, !range !13, !alias.scope !2027, !noalias !2028, !noundef !5
  %spec.select.i.i = zext nneg i8 %i.aq to i16
  %i.ar = getelementptr inbounds nuw [20 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 6 uses
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %i.ar, align 4, !noalias !2031
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 %i.u, ptr %.sroa.42.0..sroa_idx.i.i, align 4, !noalias !2031
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %i.ac, ptr %.sroa.53.0..sroa_idx.i.i, align 4, !noalias !2031
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 %i.ak, ptr %.sroa.64.0..sroa_idx.i.i, align 4, !noalias !2031
  %.sroa.75.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i16 %spec.select.i.i, ptr %.sroa.75.0..sroa_idx.i.i, align 4, !noalias !2031
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 18
  store i16 %i.ao, ptr %.sroa.8.0..sroa_idx.i.i, align 2, !noalias !2031
  %i.as = add i64 %.val10.i, 1                    ; 2 uses
  %i.at = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.j
  br i1 %i.au, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar19VariationAxisRecorduNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars1_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5q_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3Z_EE0E0E0EB45_.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2029
  resume { ptr, i32 } %i.av

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar19VariationAxisRecorduNCNvNtCshxhuDJfZv4T_6fontbe4fvar13generate_fvars1_0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5q_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3Z_EE0E0E0EB45_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.as, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2029
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENCNvXNtCshxhuDJfZv4T_6fontbe4gvarNtB28_8GvarWorkINtNtB1r_13orchestration4WorkNtNtB2a_13orchestration7ContextNtB3k_9AnyWorkIdNtNtB2a_5error5ErrorE4exec0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4v_8for_each4callNtNtCsbZq13ASDQ8l_10font_types3tag3TagNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6j_3VecB5y_E14extend_trustedBN_E0E0EB2a_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types3tag3TaguNCNvXNtCshxhuDJfZv4T_6fontbe4gvarNtB3C_8GvarWorkINtNtBU_13orchestration4WorkNtNtB3E_13orchestration7ContextNtB4N_9AnyWorkIdNtNtB3E_5error5ErrorE4exec0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6z_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3x_EE0E0E0EB3E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 296                       ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 4736
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = add i64 %.sroa.5.0.copyload, %i.e
  %i.h = shl i64 %i.g, 2
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %scevgep3 = getelementptr i8, ptr %0, i64 288
  %i.i = getelementptr i8, ptr %0, i64 %i.d
  %scevgep4 = getelementptr i8, ptr %i.i, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 72057594037927928        ; 4 uses
  %3 = add i64 %.sroa.5.0.copyload, %n.vec        ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.k = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %index
  %i.l = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %index
  %i.m = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %index
  %i.s = getelementptr i8, ptr %i.k, i64 288
  %i.t = getelementptr i8, ptr %i.l, i64 584
  %i.u = getelementptr i8, ptr %i.m, i64 880
  %i.v = getelementptr i8, ptr %i.n, i64 1176
  %i.w = getelementptr i8, ptr %i.o, i64 1472
  %i.x = getelementptr i8, ptr %i.p, i64 1768
  %i.y = getelementptr i8, ptr %i.q, i64 2064
  %i.z = getelementptr i8, ptr %i.r, i64 2360
  %i.aa = load i32, ptr %i.s, align 8, !alias.scope !2046, !noalias !2047
  %i.ab = load i32, ptr %i.t, align 8, !alias.scope !2046, !noalias !2047
  %i.ac = load i32, ptr %i.u, align 8, !alias.scope !2046, !noalias !2047
  %i.ad = load i32, ptr %i.v, align 8, !alias.scope !2046, !noalias !2047
  %i.ae = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 1
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 2
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 3
  %i.ai = load i32, ptr %i.w, align 8, !alias.scope !2046, !noalias !2047
  %i.aj = load i32, ptr %i.x, align 8, !alias.scope !2046, !noalias !2047
  %i.ak = load i32, ptr %i.y, align 8, !alias.scope !2046, !noalias !2047
  %i.al = load i32, ptr %i.z, align 8, !alias.scope !2046, !noalias !2047
  %i.am = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 1
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 2
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 3
  %i.aq = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %i.ah, ptr %i.aq, align 1, !alias.scope !2048, !noalias !2049
  store <4 x i32> %i.ap, ptr %i.ar, align 1, !alias.scope !2048, !noalias !2049
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !2043

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types3tag3TaguNCNvXNtCshxhuDJfZv4T_6fontbe4gvarNtB3C_8GvarWorkINtNtBU_13orchestration4WorkNtNtB3E_13orchestration7ContextNtB4N_9AnyWorkIdNtNtB3E_5error5ErrorE4exec0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6z_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3x_EE0E0E0EB3E_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %3, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.at = phi i64 [ %i.ax, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ay, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.au = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.av = getelementptr i8, ptr %i.au, i64 288
  %.val15.i.prol = load i32, ptr %i.av, align 8, !noalias !2047
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.at
  store i32 %.val15.i.prol, ptr %i.aw, align 1, !noalias !2050
  %i.ax = add i64 %i.at, 1                        ; 3 uses
  %i.ay = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2044

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ax, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ax, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ay, %scalar.ph.prol ]
  %i.az = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ba = icmp ugt i64 %i.az, -4
  br i1 %i.ba, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types3tag3TaguNCNvXNtCshxhuDJfZv4T_6fontbe4gvarNtB3C_8GvarWorkINtNtBU_13orchestration4WorkNtNtB3E_13orchestration7ContextNtB4N_9AnyWorkIdNtNtB3E_5error5ErrorE4exec0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6z_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3x_EE0E0E0EB3E_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bb = phi i64 [ %i.br, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bs, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 288
  %.val15.i = load i32, ptr %i.bd, align 8, !noalias !2047
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bb
  store i32 %.val15.i, ptr %i.be, align 1, !noalias !2050
  %i.bf = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 584
  %.val15.i.1 = load i32, ptr %i.bg, align 8, !noalias !2047
  %i.bh = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bb
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  store i32 %.val15.i.1, ptr %i.bi, align 1, !noalias !2050
  %i.bj = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 880
  %.val15.i.2 = load i32, ptr %i.bk, align 8, !noalias !2047
  %i.bl = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bb
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  store i32 %.val15.i.2, ptr %i.bm, align 1, !noalias !2050
  %i.bn = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 1176
  %.val15.i.3 = load i32, ptr %i.bo, align 8, !noalias !2047
  %i.bp = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.bb
  %i.bq = getelementptr i8, ptr %i.bp, i64 12
  store i32 %.val15.i.3, ptr %i.bq, align 1, !noalias !2050
  %i.br = add i64 %i.bb, 4                        ; 2 uses
  %i.bs = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.e
  br i1 %i.bt, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types3tag3TaguNCNvXNtCshxhuDJfZv4T_6fontbe4gvarNtB3C_8GvarWorkINtNtBU_13orchestration4WorkNtNtB3E_13orchestration7ContextNtB4N_9AnyWorkIdNtNtB3E_5error5ErrorE4exec0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6z_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3x_EE0E0E0EB3E_.exit, label %scalar.ph, !llvm.loop !2045

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types3tag3TaguNCNvXNtCshxhuDJfZv4T_6fontbe4gvarNtB3C_8GvarWorkINtNtBU_13orchestration4WorkNtNtB3E_13orchestration7ContextNtB4N_9AnyWorkIdNtNtB3E_5error5ErrorE4exec0NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6z_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3x_EE0E0E0EB3E_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %3, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.br, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2047
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_mapENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2O_8for_each4callNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar11SegmentMapsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4W_3VecB3R_E14extend_trustedBN_E0E0EB27_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar11SegmentMapsuNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_mapNCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5d_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3R_EE0E0E0EB3V_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 296
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [296 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2060
  invoke void @_RNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_map(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !2061

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2062
  %i.i = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2060
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar11SegmentMapsuNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_mapNCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5d_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3R_EE0E0E0EB3V_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2061
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types4AxisENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar11SegmentMapsuNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_mapNCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5d_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3R_EE0E0E0EB3V_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2061
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12SubstitutionENCNvMNtNtCshxhuDJfZv4T_6fontbe8features18feature_variationsNtB2s_25FeatureVariationsProvider3news0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB40_8for_each4callTNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB54_ENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB62_3VecB53_E14extend_trustedBN_E0E0EB2w_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata12SubstitutionENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_TNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB3f_EuNCNvMNtNtCshxhuDJfZv4T_6fontbe8features18feature_variationsNtB4a_25FeatureVariationsProvider3news0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6j_3VecB3e_E14extend_trustedINtB2G_3MapBF_B45_EE0E0E0EB4e_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.d:                                             ; preds = %bb.m, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.z, %bb.m ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aa, %bb.m ] ; 2 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2083
  %i.m = load i8, ptr %i.l, align 8, !range !6, !alias.scope !2084, !noalias !2085, !noundef !5
  %i.n = icmp eq i8 %i.m, 25
  br i1 %i.n, label %bb.f, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.l, i64 24, i1 false), !noalias !2085
  br label %.noexc.i

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l) #38
          to label %.noexc.i unwind label %bb.c, !noalias !2086

.noexc.i:                                         ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2083
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !range !6, !alias.scope !2084, !noalias !2085, !noundef !5
  %i.q = icmp eq i8 %i.p, 25
  br i1 %i.q, label %bb.h, label %bb.g, !prof !17

bb.g:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !2085
  br label %bb.m

bb.h:                                             ; preds = %.noexc.i
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.m unwind label %bb.i, !noalias !2085

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2089)
  %i.s = load i8, ptr %i.c, align 8, !range !6, !alias.scope !2090, !noalias !2083, !noundef !5
  %switch.i.i.i.i.i.i = icmp samesign ult i8 %i.s, 25
  br i1 %switch.i.i.i.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENCNvB1p_11kerned_maps0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2C_8for_each4callINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB68_3VecB3F_E14extend_trustedBN_E0E0EB1t_:bb.a
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.z, %bb.g ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.k unwind label %bb.i, !noalias !2132

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !2129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2133
  %i.w = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41)
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !2132 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !2133
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2133
  store i64 %i.y, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.i.i.i, i64 40, i1 false), !noalias !2134
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !noalias !2134
  invoke void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBP_B1A_EE6extendINtNtNtB38_8adapters3map3MapINtNtB4g_6filter6FilterINtNtNtNtB2j_11collections4hash3map4IterBP_B1A_ENCNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern11kerned_maps00ENCB5O_s_0EEB5W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern11kerned_maps0B7_.exit.i.i unwind label %bb.g, !noalias !2135

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.body.i.i.i unwind label %bb.h, !noalias !2135

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2135
  unreachable

bb.i:                                             ; preds = %.body.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2132
  unreachable

_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern11kerned_maps0B7_.exit.i.i: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !2136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.j unwind label %bb.c, !noalias !2130

bb.j:                                             ; preds = %_RNCNvNtNtCshxhuDJfZv4T_6fontbe8features4kern11kerned_maps0B7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2129
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !2137
  %i.ad = add i64 %.val10.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.o
  br i1 %i.af, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupEuNCNvBS_11kerned_maps0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6o_3VecB36_E14extend_trustedINtB2y_3MapBF_B5r_EE0E0E0EBW_.exit, label %bb.d

bb.k:                                             ; preds = %.body.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.c ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2130
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameRNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupEuNCNvBS_11kerned_maps0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6o_3VecB36_E14extend_trustedINtB2y_3MapBF_B5r_EE0E0E0EBW_.exit: ; preds = %bb.j, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ad, %bb.j ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2130
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENCNvB1p_12resolve_pair0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4callTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3K_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5M_3VecB3G_E14extend_trustedBN_E0E0EB1t_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.01.i.i = alloca [24 x i8], align 8       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !12, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_TINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3a_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvBS_12resolve_pair0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB62_3VecB36_E14extend_trustedINtB2y_3MapBF_B54_EE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 112
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.w, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.x, %bb.g ] ; 2 uses
  %i.m = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2152
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2153, !noalias !2154, !nonnull !5, !align !12, !noundef !5
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc.i unwind label %bb.c, !noalias !2155

.noexc.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2153, !noalias !2154, !nonnull !5, !align !12, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.s = invoke noundef double @_RNvNtNtCshxhuDJfZv4T_6fontbe8features4kern20lookup_kerning_value(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r)
          to label %bb.g unwind label %bb.e, !noalias !2154

bb.e:                                             ; preds = %.noexc.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #40
          to label %bb.h unwind label %bb.f, !noalias !2154

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2154
  unreachable

bb.g:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2152
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i.i, i64 24, i1 false), !noalias !2157
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store double %i.s, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2157
  %i.w = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i)
  %i.x = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.k
  br i1 %i.y, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_TINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3a_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvBS_12resolve_pair0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB62_3VecB36_E14extend_trustedINtB2y_3MapBF_B54_EE0E0E0EBW_.exit, label %bb.d

bb.h:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.t, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2155
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtCshxhuDJfZv4T_6fontbe8features4kern10KernSourceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1O_8adapters3map8map_foldRBQ_TINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB3a_15NormalizedSpaceEINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvBS_12resolve_pair0NCINvNvB1I_8for_each4callB36_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB62_3VecB36_E14extend_trustedINtB2y_3MapBF_B54_EE0E0E0EBW_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.w, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2155
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB2B_10MaxBuilder6updates_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3L_8for_each4callNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5K_3VecB4O_E14extend_trustedBN_E0E0EB2D_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 22                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 352
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 1
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = add i64 %.sroa.5.0.copyload, %i.e
  %i.h = shl i64 %i.g, 1
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %scevgep3 = getelementptr i8, ptr %0, i64 6
  %i.i = getelementptr i8, ptr %0, i64 %i.d
  %scevgep4 = getelementptr i8, ptr %i.i, i64 -14
  %bound0 = icmp ult ptr %scevgep, %scevgep4
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 1152921504606846968      ; 4 uses
  %3 = add i64 %.sroa.5.0.copyload, %n.vec        ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.k = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.l = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.m = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %index
  %i.s = getelementptr i8, ptr %i.k, i64 6
  %i.t = getelementptr i8, ptr %i.l, i64 28
  %i.u = getelementptr i8, ptr %i.m, i64 50
  %i.v = getelementptr i8, ptr %i.n, i64 72
  %i.w = getelementptr i8, ptr %i.o, i64 94
  %i.x = getelementptr i8, ptr %i.p, i64 116
  %i.y = getelementptr i8, ptr %i.q, i64 138
  %i.z = getelementptr i8, ptr %i.r, i64 160
  %i.aa = load i16, ptr %i.s, align 2, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.ab = load i16, ptr %i.t, align 2, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.ac = load i16, ptr %i.u, align 2, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.ad = load i16, ptr %i.v, align 2, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.ae = load i16, ptr %i.w, align 2, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.af = load i16, ptr %i.x, align 2, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.ag = load i16, ptr %i.y, align 2, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.ah = load i16, ptr %i.z, align 2, !alias.scope !2172, !noalias !2173, !noundef !5
  %i.ai = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.ab, i64 1
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 2
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 3
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 4
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 5
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 6
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 7
  %i.aq = getelementptr [2 x i8], ptr %i.j, i64 %index
  store <8 x i16> %i.ap, ptr %i.aq, align 2, !alias.scope !2174, !noalias !2175
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !2169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %3, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.as = phi i64 [ %i.aw, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.ax, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.at = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.au = getelementptr i8, ptr %i.at, i64 6
  %.val15.i.prol = load i16, ptr %i.au, align 2, !noalias !2173, !noundef !5
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.as
  store i16 %.val15.i.prol, ptr %i.av, align 2, !noalias !2176
  %i.aw = add i64 %i.as, 1                        ; 3 uses
  %i.ax = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2170

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ax, %scalar.ph.prol ]
  %i.ay = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ba = phi i64 [ %i.bq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.br, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 6
  %.val15.i = load i16, ptr %i.bc, align 2, !noalias !2173, !noundef !5
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ba
  store i16 %.val15.i, ptr %i.bd, align 2, !noalias !2176
  %i.be = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bf = getelementptr i8, ptr %i.be, i64 28
  %.val15.i.1 = load i16, ptr %i.bf, align 2, !noalias !2173, !noundef !5
  %i.bg = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ba
  %i.bh = getelementptr i8, ptr %i.bg, i64 2
  store i16 %.val15.i.1, ptr %i.bh, align 2, !noalias !2176
  %i.bi = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 50
  %.val15.i.2 = load i16, ptr %i.bj, align 2, !noalias !2173, !noundef !5
  %i.bk = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ba
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  store i16 %.val15.i.2, ptr %i.bl, align 2, !noalias !2176
  %i.bm = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 72
  %.val15.i.3 = load i16, ptr %i.bn, align 2, !noalias !2173, !noundef !5
  %i.bo = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ba
  %i.bp = getelementptr i8, ptr %i.bo, i64 6
  store i16 %.val15.i.3, ptr %i.bp, align 2, !noalias !2176
  %i.bq = add i64 %i.ba, 4                        ; 2 uses
  %i.br = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.e
  br i1 %i.bs, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit, label %scalar.ph, !llvm.loop !2171

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldRBQ_NtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16uNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4g_10MaxBuilder6updates_0NCINvNvB1W_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3k_E14extend_trustedINtB2M_3MapBF_B48_EE0E0E0EB4i_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %3, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bq, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2173
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, ptr } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENCNvMs1_B1p_NtB1p_6U32Set10iter_pages0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_7flatten15try_flatten_oneINtNtBc_6option6OptionTmRNtNtB1r_7bitpage7BitPageEEuINtNtNtBc_3ops12control_flow11ControlFlowB4N_ENCINvNvB3a_4find5checkB4N_QNCNvB2B_20iter_non_empty_pages0E0E0B5h_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !2189
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !noalias !2189
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2190, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !2190 ; 2 uses
  %i.g = icmp eq ptr %.promoted.i, %i.f
  br i1 %i.g, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionTmRNtNtBN_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB3M_ENCNvMs1_BL_NtBL_6U32Set10iter_pages0NCINvNtB2P_7flatten15try_flatten_oneB3q_uB4f_NCINvNvB1T_4find5checkB3M_QNCNvB53_20iter_non_empty_pages0E0E0E0B4f_ECshxhuDJfZv4T_6fontbe.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i, %.lr.ph.i
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.j, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !2190
  %.val.i = load i32, ptr %i.i, align 4, !noalias !2189, !noundef !5
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %.val9.i = load i32, ptr %i.k, align 4, !noalias !2189 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !2191, !noalias !2189, !nonnull !5, !align !12, !noundef !5
  %.val.i.i = load ptr, ptr %i.l, align 8, !noalias !2192, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !2192, !noundef !5
  %i.o = zext i32 %.val.i to i64                  ; 2 uses
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2192, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.r, i64 %i.o ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2193
  store i32 %.val9.i, ptr %i.a, align 8, !noalias !2194
  store ptr %i.s, ptr %i.h, align 8, !noalias !2194
  %i.t = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs1_NtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitsetNtBW_6U32Set20iter_non_empty_pages0INtB7_5FnMutTRTmRNtNtBY_7bitpage7BitPageEEE8call_mutCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2193
  br i1 %i.t, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionTmRNtNtBN_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB3M_ENCNvMs1_BL_NtBL_6U32Set10iter_pages0NCINvNtB2P_7flatten15try_flatten_oneB3q_uB4f_NCINvNvB1T_4find5checkB3M_QNCNvB53_20iter_non_empty_pages0E0E0E0B4f_ECshxhuDJfZv4T_6fontbe.exit, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.c, %bb.b
  %i.u = icmp eq ptr %i.j, %i.f
  br i1 %i.u, label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionTmRNtNtBN_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB3M_ENCNvMs1_BL_NtBL_6U32Set10iter_pages0NCINvNtB2P_7flatten15try_flatten_oneB3q_uB4f_NCINvNvB1T_4find5checkB3M_QNCNvB53_20iter_non_empty_pages0E0E0E0B4f_ECshxhuDJfZv4T_6fontbe.exit, label %bb.b

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Z_8adapters3map12map_try_foldRBJ_INtNtBa_6option6OptionTmRNtNtBN_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB3M_ENCNvMs1_BL_NtBL_6U32Set10iter_pages0NCINvNtB2P_7flatten15try_flatten_oneB3q_uB4f_NCINvNvB1T_4find5checkB3M_QNCNvB53_20iter_non_empty_pages0E0E0E0B4f_ECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.c, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i, %bb.a
  %.sroa.3.0.i = phi ptr [ null, %bb.a ], [ null, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i ], [ %i.s, %bb.c ]
  %.sroa.0.0.i = phi i32 [ undef, %bb.a ], [ undef, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs8n5UXKvQVD9_10read_fonts11collections7int_set6bitset8PageInfoINtNtBa_6option6OptionTmRNtNtB14_7bitpage7BitPageEEuINtNtNtBa_3ops12control_flow11ControlFlowB2v_ENCNvMs1_B12_NtB12_6U32Set10iter_pages0NCINvNtB6_7flatten15try_flatten_oneB29_uB2Z_NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2v_QNCNvB3N_20iter_non_empty_pages0E0E0E0CshxhuDJfZv4T_6fontbe.exit.i ], [ %.val9.i, %bb.c ]
  %i.v = insertvalue { i32, ptr } poison, i32 %.sroa.0.0.i, 0
  %i.w = insertvalue { i32, ptr } %i.v, ptr %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i32, ptr } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2L_8for_each4callNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayerNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4M_3VecB3O_E14extend_trustedBN_E0E0EB29_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !12, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !12, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.j = icmp eq ptr %i.c, %i.e
  br i1 %i.j, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1C_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4colr5LayeruNCNvNtCshxhuDJfZv4T_6fontbe4colr9new_colr00NCINvNvB1w_8for_each4callB2U_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecB2U_E14extend_trustedINtB2m_3MapBF_B3K_EE0E0E0EB3Q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.al, %bb.i ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.am, %bb.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.01.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2208
  store ptr %i.o, ptr %i.b, align 8, !noalias !2209
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2210, !noalias !2211, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !range !19, !noalias !2211, !noundef !5
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !2211, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !13, !noalias !2211, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2209
  store ptr %i.b, ptr %i.a, align 8, !noalias !2209
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRRNtNtCs3v5ql5U6hxj_6fontir2ir10PaintGlyphNtB6_5Debug3fmtCshxhuDJfZv4T_6fontbe, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !2209
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !2212

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.w, align 1, !noalias !2211
  %i.x = invoke { i64, i64 } @_RNvMsu_NtCs3v5ql5U6hxj_6fontir2irNtB5_13ColorPalettes8index_of(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i32 noundef %.sroa.01.0.copyload.i.i.i)
          to label %.noexc15.i unwind label %.loopexit.i, !noalias !2212 ; 2 uses

.noexc15.i:                                       ; preds = %bb.f
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.h, label %.invoke, !prof !16
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENCNvMs5_NtNtB1s_8features4kernNtB2k_16KernSplitContext25split_base_and_mark_pairs0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3x_8for_each4callINtNtCsgCecv3eZDcN_5alloc6borrow3CowB1o_ENCINvMsk_NtB4F_3vecINtB5o_3VecB4A_E14extend_trustedBN_E0E0EB1s_:bb.a
  %i.p = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %i.p, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load ptr, ptr %i.q, align 8, !noalias !2243, !nonnull !5, !align !12, !noundef !5
  %i.r = getelementptr inbounds nuw [304 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init ; 2 uses
  store i64 -1, ptr %i.r, align 8, !noalias !2244
  %.sroa.42.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.val15.i.epil, ptr %.sroa.42.0..sroa_idx.i.i.epil, align 8, !noalias !2244
  %i.s = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCshxhuDJfZv4T_6fontbe13orchestration8KernPairENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_INtNtCsgCecv3eZDcN_5alloc6borrow3CowBR_EuNCNvMs5_NtNtBV_8features4kernNtB3Q_16KernSplitContext25split_base_and_mark_pairs0NCINvNvB1F_8for_each4callB33_NCINvMsk_NtB38_3vecINtB5D_3VecB33_E14extend_trustedINtB2v_3MapBF_B3I_EE0E0E0EBV_.exit.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2243
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1r_15NormalizedSpaceEB1o_EENCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3r_8for_each4callNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar12AxisValueMapNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5A_3VecB4u_E14extend_trustedBN_E0E0EB2G_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar12AxisValueMapuNCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps2_0NCINvNvB21_8for_each4callB3p_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5P_3VecB3p_E14extend_trustedINtB2R_3MapBF_B4n_EE0E0E0EB4t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i ; 2 uses
  %.val15.i = load double, ptr %i.g, align 8, !noalias !2253, !noundef !5 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val16.i = load double, ptr %i.h, align 8, !noalias !2253, !noundef !5 ; 2 uses
  %i.i = bitcast double %.val15.i to i64
  %.not.i.i.i = icmp sgt i64 %i.i, -1
  %i.j = uitofp i1 %.not.i.i.i to double
  %i.k = fadd double %i.j, -5.000000e-01
  %i.l = fmul double %.val15.i, 1.638400e+04
  %i.m = fadd double %i.l, %i.k
  %i.n = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.m)
  %i.o = bitcast double %.val16.i to i64
  %.not1.i.i.i = icmp sgt i64 %i.o, -1
  %i.p = uitofp i1 %.not1.i.i.i to double
  %i.q = fadd double %i.p, -5.000000e-01
  %i.r = fmul double %.val16.i, 1.638400e+04
  %i.s = fadd double %i.r, %i.q
  %i.t = tail call i16 @llvm.fptosi.sat.i16.f64(double %i.s)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.f ; 2 uses
  store i16 %i.n, ptr %i.u, align 2, !noalias !2254
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i16 %i.t, ptr %i.v, align 2, !noalias !2254
  %i.w = add i64 %i.f, 1                          ; 2 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.e
  br i1 %i.y, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar12AxisValueMapuNCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps2_0NCINvNvB21_8for_each4callB3p_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5P_3VecB3p_E14extend_trustedINtB2R_3MapBF_B4n_EE0E0E0EB4t_.exit, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB27_8adapters3map8map_foldRBQ_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables4avar12AxisValueMapuNCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps2_0NCINvNvB21_8for_each4callB3p_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5P_3VecB3p_E14extend_trustedINtB2R_3MapBF_B4n_EE0E0E0EB4t_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2253
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { double, double } @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1r_15NormalizedSpaceEB1o_EENCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0ENtNtNtBa_6traits8iterator8Iterator4foldTddENCB2C_s0_0EB2G_(ptr noundef nonnull %0, ptr noundef %1, double noundef %2, double noundef %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtB27_8adapters3map8map_foldRBQ_B2L_B2L_NCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0NCB3C_s0_0E0EB3G_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr exact i64 %i.d, 4                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 1152921504606846972      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %3, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat7 = shufflevector <2 x double> %broadcast.splatinsert6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi8 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi9 = phi <2 x double> [ %broadcast.splat7, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi10 = phi <2 x double> [ %broadcast.splat7, %vector.ph ], [ %i.j, %vector.body ]
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %wide.vec = load <4 x double>, ptr %i.f, align 8 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec11 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec12 = load <4 x double>, ptr %i.h, align 8 ; 2 uses
  %strided.vec13 = shufflevector <4 x double> %wide.vec12, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec14 = shufflevector <4 x double> %wide.vec12, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.i = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %vec.phi9, <2 x double> %strided.vec) ; 2 uses
  %i.j = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %vec.phi10, <2 x double> %strided.vec13) ; 2 uses
  %i.k = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi, <2 x double> %strided.vec11) ; 2 uses
  %i.l = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %vec.phi8, <2 x double> %strided.vec14) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !2255

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %i.k, <2 x double> %i.l)
  %i.n = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %rdx.minmax15 = tail call nsz <2 x double> @llvm.minimumnum.v2f64(<2 x double> %i.i, <2 x double> %i.j)
  %i.o = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax15) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtB27_8adapters3map8map_foldRBQ_B2L_B2L_NCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0NCB3C_s0_0E0EB3G_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.6.0.i.ph = phi double [ %3, %bb.b ], [ %i.n, %middle.block ]
  %.sroa.02.0.i.ph = phi double [ %2, %bb.b ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.t, %scalar.ph ], [ %.sroa.05.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.6.0.i = phi double [ %i.s, %scalar.ph ], [ %.sroa.6.0.i.ph, %scalar.ph.preheader ]
  %.sroa.02.0.i = phi double [ %i.r, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.0.i ; 2 uses
  %.val.i = load double, ptr %i.p, align 8, !noundef !5
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val14.i = load double, ptr %i.q, align 8, !noundef !5
  %i.r = tail call nsz double @llvm.minimumnum.f64(double %.sroa.02.0.i, double %.val.i) ; 2 uses
  %i.s = tail call nsz double @llvm.maximumnum.f64(double %.sroa.6.0.i, double %.val14.i) ; 2 uses
  %i.t = add nuw i64 %.sroa.05.0.i, 1             ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.e
  br i1 %i.u, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtB27_8adapters3map8map_foldRBQ_B2L_B2L_NCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0NCB3C_s0_0E0EB3G_.exit, label %scalar.ph, !llvm.loop !2256

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtBU_15NormalizedSpaceEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTddENCINvNtNtB27_8adapters3map8map_foldRBQ_B2L_B2L_NCNvNtCshxhuDJfZv4T_6fontbe4avar14to_segment_maps_0NCB3C_s0_0E0EB3G_.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.pn17.i = phi double [ %2, %bb.a ], [ %i.o, %middle.block ], [ %i.r, %scalar.ph ]
  %.pn15.i = phi double [ %3, %bb.a ], [ %i.n, %middle.block ], [ %i.s, %scalar.ph ]
  %.pn.i = insertvalue { double, double } poison, double %.pn17.i, 0
  %.merged.i = insertvalue { double, double } %.pn.i, double %.pn15.i, 1
  ret { double, double } %.merged.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB1s_2ir12GlyphAnchorsEEENCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB3h_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB3l_13orchestration7ContextNtB51_9AnyWorkIdNtNtB3l_5error5ErrorE4exec0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6c_8for_each4callRB2H_NCINvMsk_NtB2e_3vecINtB7t_3VecB7f_E14extend_trustedBN_E0E0EB3l_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir12GlyphAnchorsEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2H_8adapters3map8map_foldRBQ_RB2a_uNCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB4d_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4h_13orchestration7ContextNtB5X_9AnyWorkIdNtNtB4h_5error5ErrorE4exec0NCINvNvB2B_8for_each4callB3Z_NCINvMsk_NtB1H_3vecINtB7J_3VecB3Z_E14extend_trustedINtB3r_3MapBF_B45_EE0E0E0EB4h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = udiv i64 %i.d, 40                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.d, 520
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3
  %scevgep = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.f
  %i.g = add i64 %.sroa.5.0.copyload, %i.e
  %i.h = shl i64 %i.g, 3
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %scevgep3 = getelementptr i8, ptr %0, i64 32
  %bound0 = icmp ult ptr %scevgep, %1
  %bound1 = icmp ult ptr %scevgep3, %scevgep2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.i = and i64 %i.e, 3                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 4, i64 %i.i
  %n.vec = sub nsw i64 %i.e, %i.k                 ; 3 uses
  %3 = add i64 %.sroa.5.0.copyload, %n.vec
  %i.l = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %index
  %i.q = getelementptr i8, ptr %i.m, i64 32
  %i.r = getelementptr i8, ptr %i.n, i64 72
  %i.s = getelementptr i8, ptr %i.o, i64 112
  %i.t = getelementptr i8, ptr %i.p, i64 152
  %i.u = load ptr, ptr %i.q, align 8, !alias.scope !2273, !noalias !2274, !nonnull !5, !noundef !5
  %i.v = load ptr, ptr %i.r, align 8, !alias.scope !2273, !noalias !2274, !nonnull !5, !noundef !5
  %i.w = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %i.x = insertelement <2 x ptr> %i.w, ptr %i.v, i64 1
  %i.y = load ptr, ptr %i.s, align 8, !alias.scope !2273, !noalias !2274, !nonnull !5, !noundef !5
  %i.z = load ptr, ptr %i.t, align 8, !alias.scope !2273, !noalias !2274, !nonnull !5, !noundef !5
  %i.aa = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %i.ab = insertelement <2 x ptr> %i.aa, ptr %i.z, i64 1
  %wide.gep = getelementptr inbounds nuw i8, <2 x ptr> %i.x, i64 16
  %wide.gep5 = getelementptr inbounds nuw i8, <2 x ptr> %i.ab, i64 16
  %i.ac = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x ptr> %wide.gep, ptr %i.ac, align 8, !alias.scope !2275, !noalias !2276
  store <2 x ptr> %wide.gep5, ptr %i.ad, align 8, !alias.scope !2275, !noalias !2276
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2270

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %3, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.af = sub nsw i64 %i.e, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ag = phi i64 [ %i.al, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.am, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %i.ai = getelementptr i8, ptr %i.ah, i64 32
  %.val15.i.prol = load ptr, ptr %i.ai, align 8, !noalias !2274, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %.val15.i.prol, i64 16
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag
  store ptr %i.aj, ptr %i.ak, align 8, !noalias !2277, !captures !20
  %i.al = add i64 %i.ag, 1                        ; 3 uses
  %i.am = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2271

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir12GlyphAnchorsEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2H_8adapters3map8map_foldRBQ_RB2a_uNCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB4d_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4h_13orchestration7ContextNtB5X_9AnyWorkIdNtNtB4h_5error5ErrorE4exec0NCINvNvB2B_8for_each4callB3Z_NCINvMsk_NtB1H_3vecINtB7J_3VecB3Z_E14extend_trustedINtB3r_3MapBF_B45_EE0E0E0EB4h_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ap = phi i64 [ %i.bj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.bk, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %.val15.i = load ptr, ptr %i.ar, align 8, !noalias !2274, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %.val15.i, i64 16
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ap
  store ptr %i.as, ptr %i.at, align 8, !noalias !2277, !captures !20
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.av = getelementptr i8, ptr %i.au, i64 72
  %.val15.i.1 = load ptr, ptr %i.av, align 8, !noalias !2274, !nonnull !5, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %.val15.i.1, i64 16
  %i.ax = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ap
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %i.ay, align 8, !noalias !2277, !captures !20
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ba = getelementptr i8, ptr %i.az, i64 112
  %.val15.i.2 = load ptr, ptr %i.ba, align 8, !noalias !2274, !nonnull !5, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %.val15.i.2, i64 16
  %i.bc = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ap
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  store ptr %i.bb, ptr %i.bd, align 8, !noalias !2277, !captures !20
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.bf = getelementptr i8, ptr %i.be, i64 152
  %.val15.i.3 = load ptr, ptr %i.bf, align 8, !noalias !2274, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %.val15.i.3, i64 16
  %i.bh = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ap
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  store ptr %i.bg, ptr %i.bi, align 8, !noalias !2277, !captures !20
  %i.bj = add i64 %i.ap, 4                        ; 2 uses
  %i.bk = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.e
  br i1 %i.bl, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir12GlyphAnchorsEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2H_8adapters3map8map_foldRBQ_RB2a_uNCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB4d_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4h_13orchestration7ContextNtB5X_9AnyWorkIdNtNtB4h_5error5ErrorE4exec0NCINvNvB2B_8for_each4callB3Z_NCINvMsk_NtB1H_3vecINtB7J_3VecB3Z_E14extend_trustedINtB3r_3MapBF_B45_EE0E0E0EB4h_.exit, label %scalar.ph, !llvm.loop !2272

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir12GlyphAnchorsEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2H_8adapters3map8map_foldRBQ_RB2a_uNCNvXs3_NtNtCshxhuDJfZv4T_6fontbe8features5marksNtB4d_8MarkWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4h_13orchestration7ContextNtB5X_9AnyWorkIdNtNtB4h_5error5ErrorE4exec0NCINvNvB2B_8for_each4callB3Z_NCINvMsk_NtB1H_3vecINtB7J_3VecB3Z_E14extend_trustedINtB3r_3MapBF_B45_EE0E0E0EB4h_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bj, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !2274
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB1s_2ir15KerningInstanceEEENCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB3h_19GatherIrKerningWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB3l_13orchestration7ContextNtB5c_9AnyWorkIdNtNtB3l_5error5ErrorE4exec0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6n_8for_each4callTINtNtB4q_6coords8LocationNtB7u_15NormalizedSpaceEB2H_ENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8t_7HashMapB7r_B2H_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB6r_7collect6ExtendB7q_E6extendBN_E0E0EB3l_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [72 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %0, %1
  br i1 %i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtBV_2ir15KerningInstanceEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2K_8adapters3map8map_foldRBQ_TINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB46_15NormalizedSpaceEB2a_EuNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB5n_19GatherIrKerningWorkINtNtB48_13orchestration4WorkNtNtB5r_13orchestration7ContextNtB6W_9AnyWorkIdNtNtB5r_5error5ErrorE4exec0NCINvNvB2E_8for_each4callB42_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8J_7HashMapB43_B2a_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB2I_7collect6ExtendB42_E6extendINtB3u_3MapBF_B5i_EE0E0E0EB5r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB10_2ir15KerningInstanceEETINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2N_15NormalizedSpaceEB2f_EuNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB44_19GatherIrKerningWorkINtNtB2P_13orchestration4WorkNtNtB48_13orchestration7ContextNtB5D_9AnyWorkIdNtNtB48_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2J_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7U_7HashMapB2K_B2f_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB6Y_7collect6ExtendB2J_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3Z_EE0E0E0B48_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aj, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB10_2ir15KerningInstanceEETINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2N_15NormalizedSpaceEB2f_EuNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB44_19GatherIrKerningWorkINtNtB2P_13orchestration4WorkNtNtB48_13orchestration7ContextNtB5D_9AnyWorkIdNtNtB48_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2J_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7U_7HashMapB2K_B2f_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB6Y_7collect6ExtendB2J_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3Z_EE0E0E0B48_.exit.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val8.i = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2289
  %i.u = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16 ; 2 uses
  call void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u), !noalias !2289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2290
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.u)
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !2289

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2290
  %i.v = getelementptr inbounds nuw i8, ptr %.val8.i, i64 40
  invoke void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB18_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.e unwind label %bb.d, !noalias !2291

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i: ; preds = %bb.f, %bb.d
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.w, %bb.d ], [ %i.y, %bb.f ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #40
          to label %.body.i.i.i unwind label %bb.g, !noalias !2291

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i

bb.e:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2290
  %i.x = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  invoke void @_RNvXs0_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtB7_3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %_RNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB4_19GatherIrKerningWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB8_13orchestration7ContextNtB1Y_9AnyWorkIdNtNtB8_5error5ErrorE4exec0B8_.exit.i.i unwind label %bb.f, !noalias !2291

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB15_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i unwind label %bb.g, !noalias !2291

bb.g:                                             ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2291
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %.pn.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #40
          to label %common.resume.i.i unwind label %bb.i, !noalias !2289

bb.i:                                             ; preds = %.body.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2289
  unreachable

common.resume.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %.pn.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1B_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB4_19GatherIrKerningWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB8_13orchestration7ContextNtB1Y_9AnyWorkIdNtNtB8_5error5ErrorE4exec0B8_.exit.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2293
  call void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBQ_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir15KerningInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.b)
  %i.ac = load i64, ptr %i.a, align 8, !range !7, !alias.scope !2294, !noalias !2293, !noundef !5
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRTNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtB10_2ir15KerningInstanceEETINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2N_15NormalizedSpaceEB2f_EuNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB44_19GatherIrKerningWorkINtNtB2P_13orchestration4WorkNtNtB48_13orchestration7ContextNtB5D_9AnyWorkIdNtNtB48_5error5ErrorE4exec0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2J_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7U_7HashMapB2K_B2f_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB6Y_7collect6ExtendB2J_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3Z_EE0E0E0B48_.exit.i, label %bb.j

bb.j:                                             ; preds = %_RNCNvXNtNtCshxhuDJfZv4T_6fontbe8features4kernNtB4_19GatherIrKerningWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB8_13orchestration7ContextNtB1Y_9AnyWorkIdNtNtB8_5error5ErrorE4exec0B8_.exit.i.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1O_15NormalizedSpaceEEEECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i unwind label %bb.k, !noalias !2293

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1s_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.body.i.i.i.i.i.i unwind label %bb.l, !noalias !2293

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #39, !noalias !2293
  unreachable
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe:bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.08 ; 6 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.08 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3930)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.e = load i16, ptr %i.d, align 2, !alias.scope !3931, !noalias !3932, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  %i.g = load i16, ptr %i.f, align 2, !alias.scope !3932, !noalias !3931, !noundef !5
  %i.h = icmp eq i16 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.j = load i16, ptr %i.i, align 4, !alias.scope !3931, !noalias !3932, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.l = load i16, ptr %i.k, align 4, !alias.scope !3932, !noalias !3931, !noundef !5
  %i.m = icmp eq i16 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !3931, !noalias !3932, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3932, !noalias !3931, !noundef !5
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3932, !noalias !3931, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3931, !noalias !3932, !nonnull !5, !noundef !5
  %i.w = icmp eq i64 %i.o, 0
  br i1 %i.w, label %.loopexit.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.x = add nuw i64 %.sroa.01.06.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %i.o
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.01.06.i.i.i = phi i64 [ %i.x, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.01.06.i.i.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.01.06.i.i.i
  %.val.i.i.i = load i32, ptr %i.y, align 4, !noalias !3933, !noundef !5
  %.val5.i.i.i = load i32, ptr %i.z, align 4, !noalias !3933, !noundef !5
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, %.val5.i.i.i
  br i1 %.not.i.i.i, label %bb.e, label %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread

.loopexit.i.i:                                    ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = load i16, ptr %i.aa, align 8, !range !3934, !alias.scope !3931, !noalias !3932, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ad = load i16, ptr %i.ac, align 8, !range !3934, !alias.scope !3932, !noalias !3931, !noundef !5 ; 2 uses
  %i.ae = and i16 %i.ad, %i.ab
  %.not2.i = icmp eq i16 %i.ae, 0
  br i1 %.not2.i, label %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit, label %.split

.split:                                           ; preds = %.loopexit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.ah = load i16, ptr %i.af, align 2, !alias.scope !3931, !noalias !3932, !noundef !5
  %i.ai = load i16, ptr %i.ag, align 2, !alias.scope !3932, !noalias !3931, !noundef !5
  %.not = icmp eq i16 %i.ah, %i.ai
  br i1 %.not, label %bb.f, label %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread

_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit: ; preds = %.loopexit.i.i
  %i.aj = or i16 %i.ad, %i.ab
  %.mux.i.not = icmp eq i16 %i.aj, 0
  br i1 %.mux.i.not, label %bb.f, label %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread

_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread: ; preds = %bb.f, %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit, %.split, %bb.b, %bb.c, %.lr.ph, %.lr.ph.i.i.i, %bb.a
  %i.ak = phi i1 [ false, %.lr.ph.i.i.i ], [ true, %bb.a ], [ true, %bb.f ], [ false, %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit ], [ false, %.split ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph ]
  ret i1 %i.ak

bb.f:                                             ; preds = %.split, %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit
  %i.al = add nuw i64 %.sroa.01.08, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4fvar15instance_record14InstanceRecordNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpTINtNtNtB9_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !3938, !noalias !3939, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i = load i64, ptr %i.e, align 8, !alias.scope !3938, !noalias !3939
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !3939, !noalias !3938, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !3939, !noalias !3938
  %i.g = icmp ne i64 %.val.i, %.val2.i
  %i.h = icmp ne i64 %.val1.i, %.val3.i
  %spec.select.i.not.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %spec.select.i.not.i.i, label %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread, label %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit

_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val4.i = load i32, ptr %i.i, align 8, !range !31, !alias.scope !3938, !noalias !3939, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val5.i = load i64, ptr %i.k, align 8, !alias.scope !3938, !noalias !3939
  %.val6.i = load i32, ptr %i.j, align 8, !range !31, !alias.scope !3939, !noalias !3938, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val7.i = load i64, ptr %i.l, align 8, !alias.scope !3939, !noalias !3938
  %i.m = icmp ne i32 %.val4.i, %.val6.i
  %i.n = icmp ne i64 %.val5.i, %.val7.i
  %spec.select.i.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %spec.select.i.i, label %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread, label %bb.b

_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit.thread: ; preds = %bb.b, %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvXs8_NtCsf3Ta7LF998c_4core5tupleTINtNtNtB7_3ops5range5RangejETNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdjEENtNtB7_3cmp9PartialEq2neCshxhuDJfZv4T_6fontbe.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 3 uses
  %i.i = icmp samesign ugt i64 %i.h, 3
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !3948
  %i.j = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.k = or disjoint i64 %.sroa.03.0.i, 1
  %i.l = icmp samesign ult i64 %i.k, %i.h
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.m, align 1, !alias.scope !3948
  %i.n = zext i16 %.sroa.015.0.copyload.i to i64
  %i.o = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.p = shl nuw nsw i64 %i.n, %i.o
  %i.q = or i64 %i.p, %.sroa.0.0.i
  %i.r = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.r, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.03.1.i, %i.h
  br i1 %i.s, label %bb.g, label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !3948, !noundef !5
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.x = shl nuw nsw i64 %i.v, %i.w
  %i.y = or i64 %i.x, %.sroa.0.1.i
  br label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit

_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.y, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.z = shl i64 %i.e, 3
  %i.aa = and i64 %i.z, 56
  %i.ab = shl i64 %.sroa.0.2.i, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  %i.ae = or i64 %i.ad, %i.ab                     ; 3 uses
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = icmp ult i64 %2, %i.g
  br i1 %i.af, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.ag = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %3 = and i64 %i.ag, 7                           ; 4 uses
  %i.ah = and i64 %i.ag, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !3949
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !3949
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !5
  %i.ao = xor i64 %i.an, %i.ae                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !3950, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !3950, !noundef !5 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !3950, !noundef !5
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !3950
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !3950
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !3950
  %i.bi = xor i64 %i.bc, %i.ae
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !3949
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !3949
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %3, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i16 = load i32, ptr %i.bl, align 1, !alias.scope !3951
  %i.bm = zext i32 %.sroa.014.0.copyload.i16 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10, 1
  %i.bo = icmp samesign ult i64 %i.bn, %3
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10
  %.sroa.015.0.copyload.i15 = load i16, ptr %i.bq, align 1, !alias.scope !3951
  %i.br = zext i16 %.sroa.015.0.copyload.i15 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11
  %i.bv = or disjoint i64 %.sroa.03.0.i10, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10, %bb.m ] ; 3 uses
  %.sroa.0.1.i13 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12, %3
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !3951, !noundef !5
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13
  br label %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %3, %_RNvNtNtCsf3Ta7LF998c_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtBb_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eqCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 15 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %.not = icmp eq i64 %i.f, %i.h
  br i1 %.not, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtNtNtBR_4hash6random11RandomStateE4iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = icmp eq i64 %i.f, 0
  %i.m = load <2 x i64>, ptr %i.i, align 8        ; 3 uses
  %i.n = shufflevector <2 x i64> %i.m, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.o = xor <2 x i64> %i.n, <i64 8317987319222330741, i64 7816392313619706465>
  %i.p = shufflevector <2 x i64> %i.m, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.q = xor <2 x i64> %i.p, <i64 7237128888997146477, i64 8387220255154660723>
  %i.r = load i64, ptr %i.k, align 8              ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !nonnull !5   ; 2 uses
  br i1 %i.l, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b
  %i.t = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %.not.not.not.not.i.not.us = icmp eq ptr %i.u, null
  br label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit

.split:                                           ; preds = %bb.b, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs5Xr050g3D4S_3std4path7PathBufRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENCNvXs4_NtNtNtB1h_11collections4hash3mapINtB2H_7HashMapB1d_B1N_ENtNtBe_3cmp9PartialEq2eq0E0CshxhuDJfZv4T_6fontbe.exit.i
  %i.v = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %i.w, null ; 3 uses
  br i1 %.not.not.not.not.i.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterNtNtBc_4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB21_3all5checkTRBV_RB1f_ENCNvXs4_B6_INtB6_7HashMapBV_B1f_ENtNtB29_3cmp9PartialEq2eq0E0INtNtNtB29_3ops12control_flow11ControlFlowuEECshxhuDJfZv4T_6fontbe.exit, label %bb.c

bb.c:                                             ; preds = %.split
  %i.x = extractvalue { ptr, ptr } %i.v, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val6.i = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5 ; 13 uses
  %i.z = getelementptr i8, ptr %i.w, i64 16
  %.val7.i = load i64, ptr %i.z, align 8          ; 13 uses
  %.val8.i = load i32, ptr %i.x, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3983
  store <2 x i64> %i.o, ptr %i.b, align 16, !alias.scope !3984, !noalias !3983
  store <2 x i64> %i.q, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !3984, !noalias !3983
  store <2 x i64> %i.m, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i, align 16, !alias.scope !3984, !noalias !3983
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !3984, !noalias !3983
  call void @llvm.experimental.noalias.scope.decl(metadata !3985)
  switch i64 %.val7.i, label %.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i [
    i64 0, label %._crit_edge.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i.i.i.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i
  ]

.lr.ph.preheader.split.i.split.i.i.i.i.i.i.i:     ; preds = %bb.c
  %i.aa = add i64 %.val7.i, -3                    ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.ab = add i64 %.val7.i, -1                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %i.bz
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !3985, !noalias !3986, !noundef !5
  %i.ae = icmp eq i8 %i.ad, 47
  br i1 %i.ae, label %bb.d, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.af = load i8, ptr %.val6.i, align 1, !alias.scope !3985, !noalias !3986, !noundef !5
  %i.ag = icmp eq i8 %i.af, 47
  br i1 %i.ag, label %.thread.i.i.i.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i.i.i.i: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i
  %i.ah = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %i.ab, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ] ; 2 uses
  %i.ai = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %i.bz, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ]
  %i.aj = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %.sroa.012.2.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ]
  %i.ak = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i ]
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %i.ah
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 1, !alias.scope !3985, !noalias !3986
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.aa, %.sroa.0.1.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = sub nuw i64 %i.bz, %.sroa.0.1.i.i.i.i.i.i.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %.sroa.0.1.i.i.i.i.i.i.i.i
  %i.an = add i64 %i.al, %.sroa.012.2.i.i.i.i.i.i.i.i ; 2 uses
  %i.ao = call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 62)
  call fastcc void @_RNvXs3_NtNtCsf3Ta7LF998c_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef range(i64 0, -9223372036854775808) %i.al) #44, !noalias !3987
  br label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.e, %bb.d, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i
  %i.ap = phi i64 [ %i.bz, %bb.e ], [ %i.bz, %bb.d ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ]
  %i.aq = phi i64 [ %i.ab, %bb.e ], [ %i.ab, %bb.d ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.012.3.i.peel.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.e ], [ %.sroa.012.2.i.i.i.i.i.i.i.i, %bb.d ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i.i.i.i ]
  %i.ar = sub nuw i64 %.val7.i, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.val6.i, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %i.ar, 1
  %i.au = load i8, ptr %i.as, align 1, !alias.scope !3985, !noalias !3986, !noundef !5 ; 2 uses
end_hunk_3
