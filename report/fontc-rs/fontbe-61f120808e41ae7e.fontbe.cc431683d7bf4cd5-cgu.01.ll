Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.01?download=true
inline.NumInlined: 5575
inline.NumDeleted: 3074
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNCINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB7_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB1K_10MaxBuilder23update_composite_limitss_0E0B1M_:bb.a
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !3252, !noalias !3253, !noundef !4 ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !3252, !noalias !3253, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.o = shufflevector <16 x i8> %i.n, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.h, %bb.b ], [ %i.ag, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.l  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !3254 ; 2 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.o
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.ae, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.01.0.i.i.i.i, %i.t
  %i.v = and i64 %i.u, %i.l
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [40 x i8], ptr %i.m, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -40
  %i.z = tail call noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16INtB2_10EquivalentBq_E10equivalentCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y), !noalias !3255
  br i1 %i.z, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EB1F_.exit.i, label %bb.d, !prof !5

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %select.unfold.i, !prof !9

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.ae = and i16 %i.ad, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.af = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ag = add i64 %.sroa.01.0.i.i.i.i, %i.af
  br label %bb.c

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EB1F_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !3246, !noalias !3247, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  store i64 0, ptr %i.ak, align 8, !noalias !3246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3256
  %i.al = load i64, ptr %i.ah, align 8, !range !17, !noalias !3246, !noundef !4
  %.not25.i = icmp eq i64 %i.al, -1
  br i1 %.not25.i, label %bb.i, label %bb.f, !prof !9

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24, !noalias !3246
  unreachable

bb.f:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EB1F_.exit.i
  %i.am = getelementptr inbounds i8, ptr %i.x, i64 -24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !3246, !nonnull !4, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !3246, !noundef !4 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ap
  store ptr %i.an, ptr %i.b, align 8, !noalias !3256
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !noalias !3256
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.as, align 8, !noalias !3256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3257)
  %i.at = load i64, ptr %i.aj, align 8, !range !10, !alias.scope !3258, !noalias !3259, !noundef !4
  %i.au = icmp samesign ugt i64 %i.ap, %i.at
  br i1 %i.au, label %bb.g, label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_B1k_NtB1k_10MaxBuilder23update_composite_limitss_00EEB1m_.exit.i, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 0, i64 noundef %i.ap, i64 noundef 2, i64 noundef 8), !noalias !3259
  %.pre.i.i = load i64, ptr %i.ak, align 8, !alias.scope !3257, !noalias !3259
  br label %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_B1k_NtB1k_10MaxBuilder23update_composite_limitss_00EEB1m_.exit.i

_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_B1k_NtB1k_10MaxBuilder23update_composite_limitss_00EEB1m_.exit.i: ; preds = %bb.g, %bb.f
  %i.av = phi i64 [ 0, %bb.f ], [ %.pre.i.i, %bb.g ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !3257, !noalias !3259, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3260
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !noalias !3260
  store ptr %i.ak, ptr %i.a, align 8, !noalias !3260
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.av, ptr %i.az, align 8, !noalias !3260
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB2l_10MaxBuilder23update_composite_limitss_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3O_8for_each4callINtNtBc_6option6OptionNtB2l_11GlyphLimitsENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5G_3VecB4R_E14extend_trustedBN_E0E0EB2n_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !noalias !3246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3256
  %i.ba = load ptr, ptr %i.aw, align 8, !noalias !3246, !nonnull !4, !noundef !4 ; 5 uses
  %i.bb = load i64, ptr %i.ak, align 8, !noalias !3246, !noundef !4 ; 6 uses
  %.idx.i = shl nuw nsw i64 %i.bb, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i
  %cond = icmp eq i64 %i.bb, 0
  br i1 %cond, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.not.not.i.not.not.not.not, label %.preheader.i.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_B1k_NtB1k_10MaxBuilder23update_composite_limitss_00EEB1m_.exit.i, %bb.h
  %i.be = phi ptr [ %i.bd, %bb.h ], [ %i.ba, %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_B1k_NtB1k_10MaxBuilder23update_composite_limitss_00EEB1m_.exit.i ] ; 2 uses
  %.val.i27.i = load i16, ptr %i.be, align 2, !range !33, !noalias !3261, !noundef !4
  %.not.i28.i = icmp eq i16 %.val.i27.i, 0
  br i1 %.not.i28.i, label %_RNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_10MaxBuilder23update_composite_limitss_0B9_.exit, label %bb.h

bb.i:                                             ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE3getBO_EB1F_.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !3246
  unreachable

.preheader.i.preheader:                           ; preds = %bb.h
  %xtraiter = and i64 %i.bb, 1
  %i.bf = icmp eq i64 %i.bb, 1
  br i1 %i.bf, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.bb, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.1, %.preheader.i.preheader.new
  %.sroa.05.0.off32.i.i = phi i16 [ 0, %.preheader.i.preheader.new ], [ %i.bx, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.1 ]
  %.sroa.07.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.by, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.1 ] ; 3 uses
  %i.bg = phi <2 x i16> [ zeroinitializer, %.preheader.i.preheader.new ], [ %i.bv, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.1 ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.07.0.i.i ; 2 uses
  %.val.i29.i = load i16, ptr %i.bh, align 2, !noalias !3246
  %i.bi = trunc i16 %.val.i29.i to i1
  br i1 %i.bi, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i, label %.loopexit, !prof !5

.loopexit:                                        ; preds = %.preheader.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i, %.preheader.i.epil.preheader
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24, !noalias !3246
  unreachable

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i: ; preds = %.preheader.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.07.0.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val.i29.i.1 = load i16, ptr %i.bk, align 2, !noalias !3246
  %i.bl = trunc i16 %.val.i29.i.1 to i1
  br i1 %i.bl, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.1, label %.loopexit, !prof !5

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.1: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i
  %i.bm = getelementptr i8, ptr %i.bh, i64 2
  %.val22.i.i = load i48, ptr %i.bm, align 2, !noalias !3246 ; 2 uses
  %.sroa.05.4.extract.shift.i.i.i.i = lshr i48 %.val22.i.i, 32
  %.sroa.05.4.extract.trunc.i.i.i.i = trunc nuw i48 %.sroa.05.4.extract.shift.i.i.i.i to i16
  %i.bn = add i16 %.sroa.05.4.extract.trunc.i.i.i.i, 1
  %i.bo = tail call i16 @llvm.umax.i16(i16 %.sroa.05.0.off32.i.i, i16 %i.bn)
  %i.bp = bitcast i48 %.val22.i.i to <3 x i16>
  %i.bq = shufflevector <3 x i16> %i.bp, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.br = add <2 x i16> %i.bg, %i.bq
  %i.bs = getelementptr i8, ptr %i.bj, i64 10
  %.val22.i.i.1 = load i48, ptr %i.bs, align 2, !noalias !3246 ; 2 uses
  %.sroa.05.4.extract.shift.i.i.i.i.1 = lshr i48 %.val22.i.i.1, 32
  %.sroa.05.4.extract.trunc.i.i.i.i.1 = trunc nuw i48 %.sroa.05.4.extract.shift.i.i.i.i.1 to i16
  %i.bt = bitcast i48 %.val22.i.i.1 to <3 x i16>
  %i.bu = shufflevector <3 x i16> %i.bt, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.bv = add <2 x i16> %i.br, %i.bu              ; 3 uses
  %i.bw = add i16 %.sroa.05.4.extract.trunc.i.i.i.i.1, 1
  %i.bx = tail call i16 @llvm.umax.i16(i16 %i.bo, i16 %i.bw) ; 3 uses
  %i.by = add nuw i64 %.sroa.07.0.i.i, 2          ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i.loopexit.unr-lcssa, label %.preheader.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i.loopexit.unr-lcssa: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.05.0.off32.i.i.epil.init = phi i16 [ 0, %.preheader.i.preheader ], [ %i.bx, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.by, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x i16> [ zeroinitializer, %.preheader.i.preheader ], [ %i.bv, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.07.0.i.i.epil.init ; 2 uses
  %.val.i29.i.epil = load i16, ptr %i.bz, align 2, !noalias !3246
  %i.ca = trunc i16 %.val.i29.i.epil to i1
  br i1 %i.ca, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.epil, label %.loopexit, !prof !5

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.epil: ; preds = %.preheader.i.epil.preheader
  %i.cb = getelementptr i8, ptr %i.bz, i64 2
  %.val22.i.i.epil = load i48, ptr %i.cb, align 2, !noalias !3246 ; 2 uses
  %.sroa.05.4.extract.shift.i.i.i.i.epil = lshr i48 %.val22.i.i.epil, 32
  %.sroa.05.4.extract.trunc.i.i.i.i.epil = trunc nuw i48 %.sroa.05.4.extract.shift.i.i.i.i.epil to i16
  %i.cc = bitcast i48 %.val22.i.i.epil to <3 x i16>
  %i.cd = shufflevector <3 x i16> %i.cc, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.ce = add <2 x i16> %.epil.init, %i.cd
  %i.cf = add i16 %.sroa.05.4.extract.trunc.i.i.i.i.epil, 1
  %i.cg = tail call i16 @llvm.umax.i16(i16 %.sroa.05.0.off32.i.i.epil.init, i16 %i.cf)
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.epil, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i.loopexit.unr-lcssa, %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_B1k_NtB1k_10MaxBuilder23update_composite_limitss_00EEB1m_.exit.i
  %.sroa.03.0.i.off32.i = phi i16 [ 0, %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_B1k_NtB1k_10MaxBuilder23update_composite_limitss_00EEB1m_.exit.i ], [ %i.bx, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i.loopexit.unr-lcssa ], [ %i.cg, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.epil ] ; 2 uses
  %i.ch = phi <2 x i16> [ zeroinitializer, %_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEE14extend_trustedINtNtNtNtBL_4iter8adapters3map3MapINtNtNtBL_5slice4iter4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENCNCNvMs1_B1k_NtB1k_10MaxBuilder23update_composite_limitss_00EEB1m_.exit.i ], [ %i.bv, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i.loopexit.unr-lcssa ], [ %i.ce, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRINtNtBa_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEB1h_B1h_NCNCNvMs1_B1j_NtB1j_10MaxBuilder23update_composite_limitss_0s0_0NCB2o_s1_0E0B1l_.exit.i.i.epil ] ; 2 uses
  %i.ci = tail call noundef align 8 ptr @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE7get_mutBO_EB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0), !noalias !3246 ; 4 uses
  %.not26.i = icmp eq ptr %i.ci, null
  br i1 %.not26.i, label %bb.k, label %bb.j, !prof !9

bb.j:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i16 1, ptr %i.cj, align 8, !noalias !3246
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 26
  store <2 x i16> %i.ch, ptr %.sroa.413.0..sroa_idx.i, align 2, !noalias !3246
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 30
  store i16 %.sroa.03.0.i.off32.i, ptr %.sroa.615.0..sroa_idx.i, align 2, !noalias !3246
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !3246, !noalias !3247, !nonnull !4, !align !3262, !noundef !4 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !noalias !3246, !noundef !4
  %i.co = tail call i16 @llvm.umax.i16(i16 %i.cn, i16 %.sroa.03.0.i.off32.i)
  %i.cp = load <2 x i16>, ptr %i.cl, align 2, !noalias !3246
  %i.cq = tail call <2 x i16> @llvm.umax.v2i16(<2 x i16> %i.cp, <2 x i16> %i.ch)
  store <2 x i16> %i.cq, ptr %i.cl, align 2, !noalias !3246
  store i16 %i.co, ptr %i.cm, align 2, !noalias !3246
  br label %_RNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_10MaxBuilder23update_composite_limitss_0B9_.exit

bb.k:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldB1c_NCINvNtNtB2g_8adapters3map8map_foldRBQ_B1c_B1c_NCNCNvMs1_B1e_NtB1e_10MaxBuilder23update_composite_limitss_0s0_0NCB3L_s1_0E0EB1g_.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #24, !noalias !3246
  unreachable

_RNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_10MaxBuilder23update_composite_limitss_0B9_.exit: ; preds = %.lr.ph, %bb.j
  %.not.not.not.i.not.not.not28 = phi i1 [ false, %bb.j ], [ true, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not28
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEE11extend_withCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3267, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !alias.scope !3267, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEE7reserveCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEE7reserveCshxhuDJfZv4T_6fontbe.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEE7reserveCshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEE7reserveCshxhuDJfZv4T_6fontbe.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -4                       ; 4 uses
  %i.m = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8
  store <2 x ptr> %broadcast.splat, ptr %i.q, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !3265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.022.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.021.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtCsf3Ta7LF998c_4core6option6OptionRNtNtCs3v5ql5U6hxj_6fontir2ir6AnchorEE7reserveCshxhuDJfZv4T_6fontbe.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa29 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa28 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store ptr %2, ptr %.sroa.0.0.lcssa29, align 8
  %i.u = add i64 %storemerge.lcssa28, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge19 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge19, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %.sroa.0.022 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.022.ph, %.lr.ph.preheader31 ] ; 2 uses
  %.sroa.03.021 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.021.ph, %.lr.ph.preheader31 ]
  %i.v = add nuw i64 %.sroa.03.021, 1             ; 2 uses
  store ptr %2, ptr %.sroa.0.022, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !3266
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E7reserveCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 2, i64 noundef 2)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointE7reserveCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 16)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8truncateCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !10, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  br label %bb.b
}
end_hunk_0
