inline.NumInlined: 7106
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN16hb_subset_plan_tC2EP9hb_face_tPK17hb_subset_input_t:bb.a
  %i.aci = load i32, ptr %i.ach, align 4          ; 2 uses
  %i.acj = and i32 %i.aci, 2
  %.not15.i.i.i.i.i.i = icmp eq i32 %i.acj, 0
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i90.i

.lr.ph.i.i.i.i.i90.i:                             ; preds = %bb.bt
  %i.ack = getelementptr inbounds nuw i8, ptr %.val.val.val.i.i, i64 28
  %i.acl = load i32, ptr %i.ack, align 4
  %i.acm = load i32, ptr %i.acg, align 4, !tbaa !162
  %i.acn = icmp eq i32 %i.acm, %i.abx
  br i1 %i.acn, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.aco = load i32, ptr %i.acu, align 4, !tbaa !162
  %i.acp = icmp eq i32 %i.aco, %i.abx
  br i1 %i.acp, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !269

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i90.i, %bb.bu
  %.01016.i20.i.i.i.i.i = phi i32 [ %i.acs, %bb.bu ], [ %i.ace, %.lr.ph.i.i.i.i.i90.i ]
  %.017.i19.i.i.i.i.i = phi i32 [ %i.acq, %bb.bu ], [ 0, %.lr.ph.i.i.i.i.i90.i ]
  %i.acq = add i32 %.017.i19.i.i.i.i.i, 1         ; 2 uses
  %i.acr = add i32 %i.acq, %.01016.i20.i.i.i.i.i
  %i.acs = and i32 %i.acr, %i.acl                 ; 2 uses
  %i.act = zext i32 %i.acs to i64
  %i.acu = getelementptr inbounds nuw [12 x i8], ptr %i.abz, i64 %i.act ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 4
  %i.acw = load i32, ptr %i.acv, align 4          ; 2 uses
  %i.acx = and i32 %i.acw, 2
  %.not.i.i.i.i.i.i = icmp eq i32 %i.acx, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread.i.i.i, label %bb.bu, !llvm.loop !269

_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.i.i.i: ; preds = %bb.bu, %.lr.ph.i.i.i.i.i90.i
  %.lcssa17.i.i.i.i.i = phi i32 [ %i.aci, %.lr.ph.i.i.i.i.i90.i ], [ %i.acw, %bb.bu ]
  %i.acy = trunc i32 %.lcssa17.i.i.i.i.i to i1
  br i1 %i.acy, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread.i.i.i

_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.i.i.i, %bb.bt, %bb.bs
  %i.acz = load ptr, ptr %i.abu, align 8, !tbaa !145 ; 4 uses
  %.not.i1.i.i.i = icmp eq ptr %i.acz, null
  br i1 %.not.i1.i.i.i, label %"_ZZL28_populate_unicodes_to_retainPK8hb_set_tS1_P16hb_subset_plan_tENK3$_4clEj.exit.i.i", label %bb.bv

bb.bv:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread.i.i.i
  %i.ada = mul i32 %i.abx, 506952113
  %i.adb = and i32 %i.ada, 1073741823
  %i.adc = load i32, ptr %i.abv, align 8, !tbaa !268
  %i.add = urem i32 %i.adb, %i.adc                ; 2 uses
  %i.ade = zext nneg i32 %i.add to i64            ; 2 uses
  %i.adf = getelementptr inbounds nuw [12 x i8], ptr %i.acz, i64 %i.ade ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 4
  %i.adh = load i32, ptr %i.adg, align 4          ; 2 uses
  %i.adi = and i32 %i.adh, 2
  %.not15.i.i.i3.i.i.i = icmp eq i32 %i.adi, 0
  br i1 %.not15.i.i.i3.i.i.i, label %"_ZZL28_populate_unicodes_to_retainPK8hb_set_tS1_P16hb_subset_plan_tENK3$_4clEj.exit.i.i", label %.lr.ph.i.i.i4.i.i.i

.lr.ph.i.i.i4.i.i.i:                              ; preds = %bb.bv
  %i.adj = load i32, ptr %i.abw, align 4
  %i.adk = load i32, ptr %i.adf, align 4, !tbaa !162
  %i.adl = icmp eq i32 %i.adk, %i.abx
  br i1 %i.adl, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i

bb.bw:                                            ; preds = %.lr.ph.i.i5.i.i.i
  %i.adm = load i32, ptr %i.adw, align 4, !tbaa !162
  %i.adn = icmp eq i32 %i.adm, %i.abx
  br i1 %i.adn, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i, !llvm.loop !269

._crit_edge.i.i.i.i.i:                            ; preds = %bb.bw, %.lr.ph.i.i.i4.i.i.i
  %.lcssa10.i.i.i.i.i = phi i32 [ %i.adh, %.lr.ph.i.i.i4.i.i.i ], [ %i.ady, %bb.bw ]
  %i.ado = phi i64 [ %i.ade, %.lr.ph.i.i.i4.i.i.i ], [ %i.adv, %bb.bw ]
  %i.adp = getelementptr inbounds nuw [12 x i8], ptr %i.acz, i64 %i.ado
  %i.adq = trunc i32 %.lcssa10.i.i.i.i.i to i1
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %spec.select.i.i.i.i91.i = select i1 %i.adq, ptr %i.adr, ptr @minus_1
  br label %"_ZZL28_populate_unicodes_to_retainPK8hb_set_tS1_P16hb_subset_plan_tENK3$_4clEj.exit.i.i"

.lr.ph.i.i5.i.i.i:                                ; preds = %.lr.ph.i.i.i4.i.i.i, %bb.bw
  %.01016.i13.i.i.i.i.i = phi i32 [ %i.adu, %bb.bw ], [ %i.add, %.lr.ph.i.i.i4.i.i.i ]
  %.017.i12.i.i.i.i.i = phi i32 [ %i.ads, %bb.bw ], [ 0, %.lr.ph.i.i.i4.i.i.i ]
  %i.ads = add i32 %.017.i12.i.i.i.i.i, 1         ; 2 uses
  %i.adt = add i32 %i.ads, %.01016.i13.i.i.i.i.i
  %i.adu = and i32 %i.adt, %i.adj                 ; 2 uses
  %i.adv = zext i32 %i.adu to i64                 ; 2 uses
  %i.adw = getelementptr inbounds nuw [12 x i8], ptr %i.acz, i64 %i.adv ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  %i.ady = load i32, ptr %i.adx, align 4          ; 2 uses
  %i.adz = and i32 %i.ady, 2
  %.not.i.i.i6.i.i.i = icmp eq i32 %i.adz, 0
  br i1 %.not.i.i.i6.i.i.i, label %"_ZZL28_populate_unicodes_to_retainPK8hb_set_tS1_P16hb_subset_plan_tENK3$_4clEj.exit.i.i", label %bb.bw, !llvm.loop !269

"_ZZL28_populate_unicodes_to_retainPK8hb_set_tS1_P16hb_subset_plan_tENK3$_4clEj.exit.i.i": ; preds = %.lr.ph.i.i5.i.i.i, %._crit_edge.i.i.i.i.i, %bb.bv, %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread.i.i.i
  %.0.i7.i.i.i = phi ptr [ @minus_1, %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread.i.i.i ], [ %spec.select.i.i.i.i91.i, %._crit_edge.i.i.i.i.i ], [ @minus_1, %bb.bv ], [ @minus_1, %.lr.ph.i.i5.i.i.i ]
  %i.aea = load i32, ptr %.0.i7.i.i.i, align 4, !tbaa !162 ; 2 uses
  store i32 %i.aea, ptr %i.as, align 4, !tbaa !162
  %i.aeb = icmp eq i32 %i.aea, -1
  br i1 %i.aeb, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %"_ZZL28_populate_unicodes_to_retainPK8hb_set_tS1_P16hb_subset_plan_tENK3$_4clEj.exit.i.i"
  %i.aec = mul i32 %i.abx, -1640531535
  %i.aed = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %.val.val.val.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, i32 noundef %i.aec, ptr noundef nonnull align 4 dereferenceable(4) %i.as, i1 noundef zeroext true) ; 0 uses
  %i.aee = load i32, ptr %i.abq, align 4, !tbaa !265 ; 3 uses
  %i.aef = load i32, ptr %i.bv, align 8, !tbaa !266
  %.not.i.i92.i = icmp slt i32 %i.aee, %i.aef
  br i1 %.not.i.i92.i, label %.critedge.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aeg = add i32 %i.aee, 1
  %i.aeh = call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i32 noundef %i.aeg, i1 noundef zeroext false)
  br i1 %i.aeh, label %..critedge_crit_edge.i.i.i, label %bb.bz, !prof !38

..critedge_crit_edge.i.i.i:                       ; preds = %bb.by
  %.pre.i.i98.i = load i32, ptr %i.abq, align 4, !tbaa !265
  br label %.critedge.i.i.i

bb.bz:                                            ; preds = %bb.by
  store i64 %i.abr, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i.i

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %bb.bx
  %i.aei = phi i32 [ %.pre.i.i98.i, %..critedge_crit_edge.i.i.i ], [ %i.aee, %bb.bx ] ; 2 uses
  %i.aej = load ptr, ptr %i.abs, align 8, !tbaa !267
  %i.aek = add i32 %i.aei, 1
  store i32 %i.aek, ptr %i.abq, align 4, !tbaa !265
  %i.ael = zext i32 %i.aei to i64
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.aej, i64 %i.ael
  %i.aen = load i32, ptr %i.ar, align 4, !tbaa !162
  %i.aeo = load i32, ptr %i.as, align 4, !tbaa !162
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i32 %i.aeo to i64
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i32 %i.aen to i64
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i, ptr %i.aem, align 4
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i.i

_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i.i: ; preds = %.critedge.i.i.i, %bb.bz, %"_ZZL28_populate_unicodes_to_retainPK8hb_set_tS1_P16hb_subset_plan_tENK3$_4clEj.exit.i.i", %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #14
  %i.aep = load ptr, ptr %45, align 8, !tbaa !166 ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 48
  %i.aer = load i8, ptr %i.aeq, align 8, !tbaa !33, !range !34, !noundef !35
  %i.aes = trunc nuw i8 %i.aer to i1
  br i1 %i.aes, label %bb.cb, label %bb.ca, !prof !36

bb.ca:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i.i
  %i.aet = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.aep, ptr noundef nonnull %i.abo) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i93.i

bb.cb:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #14
  %i.aeu = load i32, ptr %i.abo, align 8, !tbaa !162 ; 5 uses
  store i32 %i.aeu, ptr %i.ap, align 4, !tbaa !162
  %i.aev = icmp eq i32 %i.aeu, -2
  br i1 %i.aev, label %bb.cc, label %bb.cd, !prof !36

bb.cc:                                            ; preds = %bb.cb
  store i32 -1, ptr %i.abo, align 8, !tbaa !162
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #14
  store i32 %i.aeu, ptr %i.aq, align 4, !tbaa !162
  %i.aew = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.aep, ptr noundef nonnull %i.aq) ; 0 uses
  %i.aex = add i32 %i.aeu, 1                      ; 2 uses
  %i.aey = load i32, ptr %i.aq, align 4, !tbaa !162
  %i.aez = icmp ult i32 %i.aex, %i.aey
  br i1 %i.aez, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i32 %i.aeu, ptr %i.aq, align 4, !tbaa !162
  %i.afa = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.aep, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq) ; 0 uses
  %i.afb = load i32, ptr %i.aq, align 4, !tbaa !162
  %i.afc = add i32 %i.afb, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.sink.i.i.i.i97.i = phi i32 [ %i.afc, %bb.ce ], [ %i.aex, %bb.cd ]
  store i32 %.sink.i.i.i.i97.i, ptr %i.abo, align 8, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #14
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #14
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i93.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i93.i: ; preds = %bb.cg, %bb.ca
  %i.afd = load i32, ptr %i.abt, align 4, !tbaa !167 ; 2 uses
  %.not.i.i8.i.i = icmp eq i32 %i.afd, 0
  br i1 %.not.i.i8.i.i, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i94.i, label %bb.ch, !prof !36

bb.ch:                                            ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i93.i
  %i.afe = add i32 %i.afd, -1
  store i32 %i.afe, ptr %i.abt, align 4, !tbaa !167
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i94.i

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i94.i: ; preds = %bb.ch, %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i93.i
  %i.aff = load i32, ptr %i.abo, align 8, !tbaa !159 ; 2 uses
  %.not.i95.i = icmp eq i32 %i.aff, -1
  br i1 %.not.i95.i, label %"_ZL27_fill_unicode_and_glyph_mapILb0EN23hb_bit_set_invertible_t6iter_tEZL28_populate_unicodes_to_retainPK8hb_set_tS4_P16hb_subset_plan_tE3$_4ZL28_populate_unicodes_to_retainS4_S4_S6_E3$_5TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSA_6item_tEEE5valueEvE4typeELPv0EEvS6_SA_T1_T2_.exit.i", label %bb.bs

"_ZL27_fill_unicode_and_glyph_mapILb0EN23hb_bit_set_invertible_t6iter_tEZL28_populate_unicodes_to_retainPK8hb_set_tS4_P16hb_subset_plan_tE3$_4ZL28_populate_unicodes_to_retainS4_S4_S6_E3$_5TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSA_6item_tEEE5valueEvE4typeELPv0EEvS6_SA_T1_T2_.exit.i": ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i94.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #14
  %i.afg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !267 ; 5 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.afj = load i32, ptr %i.afi, align 4, !tbaa !265 ; 3 uses
  %.not.i.i.i.i99.i = icmp eq i32 %i.afj, 0
  br i1 %.not.i.i.i.i99.i, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i, label %bb.ci, !prof !36

bb.ci:                                            ; preds = %"_ZL27_fill_unicode_and_glyph_mapILb0EN23hb_bit_set_invertible_t6iter_tEZL28_populate_unicodes_to_retainPK8hb_set_tS4_P16hb_subset_plan_tE3$_4ZL28_populate_unicodes_to_retainS4_S4_S6_E3$_5TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSA_6item_tEEE5valueEvE4typeELPv0EEvS6_SA_T1_T2_.exit.i"
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.afj to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopI9hb_pair_tIjjEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_(ptr noundef %i.afh, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i.i)
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i, 3
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afh, i64 %.idx.i.i.i.i.i.i
  %.not1.i.i.i.i.i = icmp eq i32 %i.afj, 1
  br i1 %.not1.i.i.i.i.i, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.ci
  %.01522.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.critedge.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %.01523.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i ], [ %.01522.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i ] ; 4 uses
  %63 = icmp ugt ptr %.01523.i.i.i.i.i.i, %i.afh
  br i1 %63, label %.lr.ph.preheader.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load i32, ptr %.01523.i.i.i.i.i.i, align 4, !tbaa !276 ; 3 uses
  br label %.lr.ph.i.i.i.i.i100.i

.lr.ph.i.i.i.i.i100.i:                            ; preds = %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.019.i.i.i.i.i.i = phi ptr [ %i.afl, %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i ], [ %.01523.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.afl = getelementptr inbounds i8, ptr %.019.i.i.i.i.i.i, i64 -8 ; 4 uses
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !276 ; 3 uses
  %i.afn = icmp ult i32 %i.afm, %.pre.i.i.i.i.i.i
  br i1 %i.afn, label %.critedge.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i.i.i100.i
  %i.afo = icmp ugt i32 %i.afm, %.pre.i.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.019.i.i.i.i.i.i, i64 -4 ; 2 uses
  %.pre24.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !162 ; 2 uses
  %.phi.trans.insert25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i, i64 4 ; 2 uses
  %.pre26.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert25.i.i.i.i.i.i, align 4, !tbaa !162 ; 2 uses
  %i.afp = icmp ugt i32 %.pre24.i.i.i.i.i.i, %.pre26.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = select i1 %i.afo, i1 true, i1 %i.afp
  br i1 %or.cond.i.i.i.i.i.i, label %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i, %bb.cj, %.lr.ph.i.i.i.i.i100.i, %.preheader.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01523.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.afq = icmp ult ptr %.015.i.i.i.i.i.i, %i.afk
  br i1 %i.afq, label %.preheader.i.i.i.i.i.i, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i, !llvm.loop !278

_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i: ; preds = %bb.cj
  store i32 %.pre.i.i.i.i.i.i, ptr %i.afl, align 4, !tbaa !162
  store i32 %i.afm, ptr %.019.i.i.i.i.i.i, align 4, !tbaa !162
  store i32 %.pre26.i.i.i.i.i.i, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !162
  store i32 %.pre24.i.i.i.i.i.i, ptr %.phi.trans.insert25.i.i.i.i.i.i, align 4, !tbaa !162
  %i.afr = icmp ugt ptr %i.afl, %i.afh
  br i1 %i.afr, label %.lr.ph.i.i.i.i.i100.i, label %.critedge.i.i.i.i.i.i, !llvm.loop !279

bb.ck:                                            ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i, %.lr.ph.i
  %i.afs = phi i32 [ %i.abj, %.lr.ph.i ], [ %i.ajm, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i ] ; 3 uses
  %i.aft = call { ptr, i64 } @_ZNK13hb_multimap_t3getEj(ptr noundef nonnull align 8 dereferenceable(96) %i.abh, i32 noundef %i.afs) ; 2 uses
  %i.afu = extractvalue { ptr, i64 } %i.aft, 0    ; 2 uses
  %i.afv = extractvalue { ptr, i64 } %i.aft, 1
  %i.afw = shl i64 %i.afv, 2
  %.idx.i.i = and i64 %i.afw, 17179869180         ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 %.idx.i.i
  %.not4.i.i = icmp samesign eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i, label %"_ZL27_fill_unicode_and_glyph_mapILb1E10hb_array_tIKjEZL28_populate_unicodes_to_retainPK8hb_set_tS5_P16hb_subset_plan_tE3$_2ZL28_populate_unicodes_to_retainS5_S5_S7_E3$_3TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSB_6item_tEEE5valueEvE4typeELPv0EEvS7_SB_T1_T2_.exit.i", label %.lr.ph.i101.i

.lr.ph.i101.i:                                    ; preds = %bb.ck
  %.sroa.2.0.insert.ext.i.i.i.i110.i = zext i32 %i.afs to i64
  %.sroa.2.0.insert.shift.i.i.i.i111.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i110.i, 32
  br label %bb.cl

bb.cl:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i104.i, %.lr.ph.i101.i
  %.05.i.i = phi ptr [ %i.afu, %.lr.ph.i101.i ], [ %i.aiv, %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i104.i ] ; 2 uses
  %i.afy = load i32, ptr %.05.i.i, align 4, !tbaa !162 ; 4 uses
  %i.afz = load ptr, ptr %i.qr, align 8, !tbaa !236 ; 10 uses
  %i.aga = mul i32 %i.afy, 506952113
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  %i.agc = load i8, ptr %i.agb, align 8, !tbaa !205, !range !34, !noundef !35
  %i.agd = trunc nuw i8 %i.agc to i1
  br i1 %i.agd, label %bb.cm, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit.i, !prof !38

bb.cm:                                            ; preds = %bb.cl
  %i.age = getelementptr inbounds nuw i8, ptr %i.afz, i64 24 ; 3 uses
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !280 ; 2 uses
  %i.agg = lshr i32 %i.agf, 1
  %i.agh = add i32 %i.agg, %i.agf
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afz, i64 28 ; 3 uses
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !281
  %.not34.i.i = icmp ult i32 %i.agh, %i.agj
  br i1 %.not34.i.i, label %.critedge.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.agk = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.afz, i32 noundef 0)
  br i1 %i.agk, label %.critedge.i.i, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit.i, !prof !38

.critedge.i.i:                                    ; preds = %bb.cn, %bb.cm
  %i.agl = and i32 %i.aga, 1073741823             ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afz, i64 32
  %i.agn = load i32, ptr %i.agm, align 8, !tbaa !268
  %i.ago = urem i32 %i.agl, %i.agn                ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.afz, i64 40
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !145 ; 3 uses
  %i.agr = zext nneg i32 %i.ago to i64
  %i.ags = getelementptr inbounds nuw [12 x i8], ptr %i.agq, i64 %i.agr ; 3 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 4 ; 2 uses
  %i.agu = load i32, ptr %i.agt, align 4          ; 2 uses
  %i.agv = and i32 %i.agu, 2
  %.not44.i.i = icmp eq i32 %i.agv, 0
  br i1 %.not44.i.i, label %.loopexit.thread.i.thread.i, label %.lr.ph.i175.i

.lr.ph.i175.i:                                    ; preds = %.critedge.i.i, %bb.co
  %i.agw = phi i32 [ %i.ahj, %bb.co ], [ %i.agu, %.critedge.i.i ]
  %i.agx = phi ptr [ %i.ahh, %bb.co ], [ %i.ags, %.critedge.i.i ]
  %.048.i.i = phi i32 [ %i.ahc, %bb.co ], [ 0, %.critedge.i.i ] ; 2 uses
  %.02946.i.i = phi i32 [ %i.ahf, %bb.co ], [ %i.ago, %.critedge.i.i ] ; 3 uses
  %.03045.i.i = phi i32 [ %spec.select.i.i, %bb.co ], [ -1, %.critedge.i.i ] ; 3 uses
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !162
  %i.agz = icmp eq i32 %i.agy, %i.afy
  br i1 %i.agz, label %.loopexit.thread.i.i, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i175.i
  %i.aha = trunc i32 %i.agw to i1
  %i.ahb = icmp ne i32 %.03045.i.i, -1
  %or.cond.not.i.i = select i1 %i.aha, i1 true, i1 %i.ahb
  %spec.select.i.i = select i1 %or.cond.not.i.i, i32 %.03045.i.i, i32 %.02946.i.i ; 2 uses
  %i.ahc = add i32 %.048.i.i, 1                   ; 3 uses
  %i.ahd = add i32 %i.ahc, %.02946.i.i
  %i.ahe = load i32, ptr %i.agi, align 4, !tbaa !281
  %i.ahf = and i32 %i.ahe, %i.ahd                 ; 3 uses
  %i.ahg = zext i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds nuw [12 x i8], ptr %i.agq, i64 %i.ahg ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 4
  %i.ahj = load i32, ptr %i.ahi, align 4          ; 2 uses
  %i.ahk = and i32 %i.ahj, 2
  %.not.i176.i = icmp eq i32 %i.ahk, 0
  br i1 %.not.i176.i, label %.loopexit.thread.i.i, label %.lr.ph.i175.i, !llvm.loop !282

.loopexit.thread.i.i:                             ; preds = %bb.co, %.lr.ph.i175.i
  %.03043.i.i = phi i32 [ %spec.select.i.i, %bb.co ], [ %.03045.i.i, %.lr.ph.i175.i ]
  %.02941.i.i = phi i32 [ %i.ahf, %bb.co ], [ %.02946.i.i, %.lr.ph.i175.i ]
  %.02839.i.i = phi i32 [ %i.ahc, %bb.co ], [ %.048.i.i, %.lr.ph.i175.i ] ; 2 uses
  %.03043.fr.i.i = freeze i32 %.03043.i.i         ; 2 uses
  %i.ahl = icmp eq i32 %.03043.fr.i.i, -1
  %spec.select67.i.i = select i1 %i.ahl, i32 %.02941.i.i, i32 %.03043.fr.i.i
  %.phi.trans.insert484.i.a = zext i32 %spec.select67.i.i to i64
  %.phi.trans.insert485.i.a = getelementptr inbounds nuw [12 x i8], ptr %i.agq, i64 %.phi.trans.insert484.i.a ; 3 uses
  %.phi.trans.insert486.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert485.i.a, i64 4 ; 4 uses
  %.pre487.i = load i32, ptr %.phi.trans.insert486.i, align 4
  %.pre501.i = and i32 %.pre487.i, 2
  %i.ahm = icmp eq i32 %.pre501.i, 0
  br i1 %i.ahm, label %.loopexit.thread.i.thread.i, label %bb.cp

bb.cp:                                            ; preds = %.loopexit.thread.i.i
  %i.ahn = load i32, ptr %i.age, align 8, !tbaa !280
  %i.aho = add i32 %i.ahn, -1
  store i32 %i.aho, ptr %i.age, align 8, !tbaa !280
  %i.ahp = load i32, ptr %.phi.trans.insert486.i, align 4
  %i.ahq = and i32 %i.ahp, 1
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.afz, i64 20 ; 2 uses
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !283
  %i.aht = sub i32 %i.ahs, %i.ahq
  store i32 %i.aht, ptr %i.ahr, align 4, !tbaa !283
  br label %.loopexit.thread.i.thread.i

.loopexit.thread.i.thread.i:                      ; preds = %.critedge.i.i, %bb.cp, %.loopexit.thread.i.i
  %i.ahu = phi ptr [ %.phi.trans.insert486.i, %.loopexit.thread.i.i ], [ %.phi.trans.insert486.i, %bb.cp ], [ %i.agt, %.critedge.i.i ]
  %i.ahv = phi ptr [ %.phi.trans.insert485.i.a, %.loopexit.thread.i.i ], [ %.phi.trans.insert485.i.a, %bb.cp ], [ %i.ags, %.critedge.i.i ] ; 2 uses
  %.0283961.i644.i = phi i32 [ %.02839.i.i, %.loopexit.thread.i.i ], [ %.02839.i.i, %bb.cp ], [ 0, %.critedge.i.i ]
  store i32 %i.afy, ptr %i.ahv, align 4, !tbaa !284
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  store i32 %i.afs, ptr %i.ahw, align 4, !tbaa !286
  %i.ahx = shl nuw i32 %i.agl, 2
  %i.ahy = or disjoint i32 %i.ahx, 3
  store i32 %i.ahy, ptr %i.ahu, align 4
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.afz, i64 20 ; 2 uses
  %i.aia = load <2 x i32>, ptr %i.ahz, align 4, !tbaa !162
  %i.aib = add <2 x i32> %i.aia, splat (i32 1)    ; 2 uses
  store <2 x i32> %i.aib, ptr %i.ahz, align 4, !tbaa !162
  %i.aic = getelementptr inbounds nuw i8, ptr %i.afz, i64 18
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !287
  %i.aie = zext i16 %i.aid to i32
  %i.aif = icmp ugt i32 %.0283961.i644.i, %i.aie
  br i1 %i.aif, label %bb.cq, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit.i, !prof !36

bb.cq:                                            ; preds = %.loopexit.thread.i.thread.i
  %i.aig = extractelement <2 x i32> %i.aib, i64 1
  %i.aih = shl i32 %i.aig, 3
  %i.aii = load i32, ptr %i.agi, align 4, !tbaa !281 ; 2 uses
  %i.aij = icmp ugt i32 %i.aih, %i.aii
  br i1 %i.aij, label %bb.cr, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit.i

bb.cr:                                            ; preds = %bb.cq
  %i.aik = add i32 %i.aii, -8
  %i.ail = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.afz, i32 noundef %i.aik) ; 0 uses
  br label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit.i

_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit.i: ; preds = %bb.cr, %bb.cq, %.loopexit.thread.i.thread.i, %bb.cn, %bb.cl
  %i.aim = load i32, ptr %i.abk, align 4, !tbaa !265 ; 3 uses
  %i.ain = load i32, ptr %i.bv, align 8, !tbaa !266
  %.not.i.i103.i = icmp slt i32 %i.aim, %i.ain
  br i1 %.not.i.i103.i, label %.critedge.i.i109.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit.i
  %i.aio = add i32 %i.aim, 1
  %i.aip = call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i32 noundef %i.aio, i1 noundef zeroext false)
  br i1 %i.aip, label %..critedge_crit_edge.i.i107.i, label %bb.ct, !prof !38

..critedge_crit_edge.i.i107.i:                    ; preds = %bb.cs
  %.pre.i.i108.i = load i32, ptr %i.abk, align 4, !tbaa !265
  br label %.critedge.i.i109.i

bb.ct:                                            ; preds = %bb.cs
  store i64 %i.abl, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i104.i

.critedge.i.i109.i:                               ; preds = %..critedge_crit_edge.i.i107.i, %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit.i
  %i.aiq = phi i32 [ %.pre.i.i108.i, %..critedge_crit_edge.i.i107.i ], [ %i.aim, %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit.i ] ; 2 uses
  %i.air = load ptr, ptr %i.abm, align 8, !tbaa !267
  %i.ais = add i32 %i.aiq, 1
  store i32 %i.ais, ptr %i.abk, align 4, !tbaa !265
  %i.ait = zext i32 %i.aiq to i64
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %i.ait
  %.sroa.0.0.insert.ext.i.i.i.i112.i = zext i32 %i.afy to i64
  %.sroa.0.0.insert.insert.i.i.i.i113.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i111.i, %.sroa.0.0.insert.ext.i.i.i.i112.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i113.i, ptr %i.aiu, align 4
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i104.i

_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i104.i: ; preds = %.critedge.i.i109.i, %bb.ct
  %i.aiv = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i105.i = icmp eq ptr %i.aiv, %i.afx
  br i1 %.not.i105.i, label %"_ZL27_fill_unicode_and_glyph_mapILb1E10hb_array_tIKjEZL28_populate_unicodes_to_retainPK8hb_set_tS5_P16hb_subset_plan_tE3$_2ZL28_populate_unicodes_to_retainS5_S5_S7_E3$_3TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSB_6item_tEEE5valueEvE4typeELPv0EEvS7_SB_T1_T2_.exit.i", label %bb.cl

"_ZL27_fill_unicode_and_glyph_mapILb1E10hb_array_tIKjEZL28_populate_unicodes_to_retainPK8hb_set_tS5_P16hb_subset_plan_tE3$_2ZL28_populate_unicodes_to_retainS5_S5_S7_E3$_3TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSB_6item_tEEE5valueEvE4typeELPv0EEvS7_SB_T1_T2_.exit.i": ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS0_IRjS4_EEEEPS1_DpOT_.exit.i104.i, %bb.ck
  %i.aiw = load ptr, ptr %60, align 8, !tbaa !166 ; 4 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 48
  %i.aiy = load i8, ptr %i.aix, align 8, !tbaa !33, !range !34, !noundef !35
  %i.aiz = trunc nuw i8 %i.aiy to i1
  br i1 %i.aiz, label %bb.cv, label %bb.cu, !prof !36

bb.cu:                                            ; preds = %"_ZL27_fill_unicode_and_glyph_mapILb1E10hb_array_tIKjEZL28_populate_unicodes_to_retainPK8hb_set_tS5_P16hb_subset_plan_tE3$_2ZL28_populate_unicodes_to_retainS5_S5_S7_E3$_3TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT0_NSB_6item_tEEE5valueEvE4typeELPv0EEvS7_SB_T1_T2_.exit.i"
  %i.aja = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.aiw, ptr noundef nonnull %i.abi) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i

end_hunk_0
begin_hunk_1_@_ZN16hb_subset_plan_tC2EP9hb_face_tPK17hb_subset_input_t:bb.a
  %.not146.i = icmp eq i8 %i.cge, %.0.i.i.i.i.i119.i
  br i1 %.not146.i, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit134.i
  call void @_Z32collect_layout_variation_indicesP16hb_subset_plan_t(ptr noundef nonnull %0) #14
  br label %bb.ot

bb.ot:                                            ; preds = %bb.os, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit134.i
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %40) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  %i.cgf = load ptr, ptr %i.bja, align 8, !tbaa !97 ; 3 uses
  %.not.i135.i = icmp eq ptr %i.cgf, null
  br i1 %.not.i135.i, label %_ZN2OT4cff120accelerator_subset_tD2Ev.exit.i, label %_ZN3CFF24cff_subset_accelerator_t7destroyEPv.exit.i.i

_ZN3CFF24cff_subset_accelerator_t7destroyEPv.exit.i.i: ; preds = %bb.ot
  call void @_ZN3CFF24cff_subset_accelerator_tD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cgf) #14
  call void @hb_free(ptr noundef nonnull %i.cgf) #14
  br label %_ZN2OT4cff120accelerator_subset_tD2Ev.exit.i

_ZN2OT4cff120accelerator_subset_tD2Ev.exit.i:     ; preds = %_ZN3CFF24cff_subset_accelerator_t7destroyEPv.exit.i.i, %bb.ot
  call void @_ZN2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(312) %39) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #14
  %i.cgg = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.cgh = load atomic ptr, ptr %i.cgg monotonic, align 8 ; 3 uses
  %.not.i136.i = icmp eq ptr %i.cgh, null
  br i1 %.not.i136.i, label %_ZL24_populate_gids_to_retainP16hb_subset_plan_tP8hb_set_t.exit, label %bb.ou

bb.ou:                                            ; preds = %_ZN2OT4cff120accelerator_subset_tD2Ev.exit.i
  call void @_ZN17hb_glyf_scratch_tD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.cgh) #14
  call void @hb_free(ptr noundef nonnull %i.cgh) #14
  br label %_ZL24_populate_gids_to_retainP16hb_subset_plan_tP8hb_set_t.exit

_ZL24_populate_gids_to_retainP16hb_subset_plan_tP8hb_set_t.exit: ; preds = %_ZN2OT4cff120accelerator_subset_tD2Ev.exit.i, %bb.ou
  %i.cgi = getelementptr inbounds nuw i8, ptr %38, i64 40
  %i.cgj = load ptr, ptr %i.cgi, align 8, !tbaa !271
  call void @hb_blob_destroy(ptr noundef %i.cgj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #14
  %i.cgk = load i8, ptr %i.oe, align 8, !tbaa !227, !range !34, !noundef !35
  %i.cgl = trunc nuw i8 %i.cgk to i1
  br i1 %i.cgl, label %bb.ov, label %bb.sk, !prof !38

bb.ov:                                            ; preds = %_ZL24_populate_gids_to_retainP16hb_subset_plan_tP8hb_set_t.exit
  %i.cgm = load i32, ptr %i.of, align 8, !tbaa !228
  %i.cgn = and i32 %i.cgm, 2
  %i.cgo = icmp ne i32 %i.cgn, 0                  ; 2 uses
  %i.cgp = load ptr, ptr %i.qt, align 8, !tbaa !237 ; 4 uses
  %i.cgq = load ptr, ptr %i.qv, align 8, !tbaa !238 ; 4 uses
  %i.cgr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.cgs = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ed) ; 3 uses
  %i.cgt = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.cgq, i32 noundef %i.cgs) ; 0 uses
  %i.cgu = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.cgp, i32 noundef %i.cgs) ; 0 uses
  %i.cgv = call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i32 noundef %i.cgs, i1 noundef zeroext false) ; 0 uses
  %i.cgw = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 2 uses
  %i.cgx = load i32, ptr %i.cgw, align 4, !tbaa !283
  %.not58.i = icmp eq i32 %i.cgx, 0
  br i1 %.not58.i, label %bb.qh, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.cgy = getelementptr i8, ptr %2, i64 164      ; 2 uses
  %.val31.i = load i32, ptr %i.cgy, align 4, !tbaa !281 ; 2 uses
  %i.cgz = getelementptr i8, ptr %2, i64 176      ; 2 uses
  %.val32.i = load ptr, ptr %i.cgz, align 8, !tbaa !145 ; 3 uses
  %i.cha = add i32 %.val31.i, 1                   ; 2 uses
  %.not15.i.i.i.i.i.i.i92 = icmp ult i32 %i.cha, 2
  br i1 %.not15.i.i.i.i.i.i.i92, label %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i: ; preds = %bb.ow
  %i.chb = zext i32 %.val31.i to i64
  %i.chc = mul nuw nsw i64 %i.chb, 12
  %i.chd = getelementptr i8, ptr %.val32.i, i64 %i.chc
  %scevgep.i.i.i = getelementptr i8, ptr %i.chd, i64 12
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i
  %.sroa.5.sroa.0.0.i.i.i = phi i32 [ %i.chh, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ], [ %i.cha, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i = phi ptr [ %i.chi, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ], [ %.val32.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.che = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 4
  %i.chf = load i32, ptr %i.che, align 4, !noalias !358
  %i.chg = trunc i32 %i.chf to i1
  br i1 %i.chg, label %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i
  %i.chh = add i32 %.sroa.5.sroa.0.0.i.i.i, -1    ; 2 uses
  %i.chi = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 12
  %i.chj = icmp eq i32 %i.chh, 0
  br i1 %i.chj, label %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i, !llvm.loop !369

_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i:       ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i, %bb.ow
  %.sroa.02.1.i.i.i = phi ptr [ %.val32.i, %bb.ow ], [ %scevgep.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i ]
  %.sroa.5.sroa.0.0.insert.insert.i.i.i = phi i32 [ 0, %bb.ow ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i ], [ %.sroa.5.sroa.0.0.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i ] ; 2 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.chl = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.chm = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.chn = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.cho = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.chp = getelementptr inbounds nuw i8, ptr %13, i64 32
  store atomic i32 1, ptr %13 monotonic, align 8
  store atomic i8 1, ptr %i.chk monotonic, align 4
  store atomic ptr null, ptr %i.chl monotonic, align 8
  store i8 1, ptr %i.chm, align 8, !tbaa !203
  store i32 0, ptr %i.chn, align 4, !tbaa !204
  store atomic i32 0, ptr %i.cho monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.chp, i8 0, i64 33, i1 false)
  %.not9.i.i.i.i.i.i = icmp eq i32 %.sroa.5.sroa.0.0.insert.insert.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS6_KFbvERK4$_20LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK4$_28LSI_0ELSD_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEERKSP_.exit.i", label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i
  %i.chq = getelementptr inbounds nuw i8, ptr %13, i64 64
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i", %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i"
  %i.chr = phi i8 [ %.pre139.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i" ], [ 0, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i" ]
  %.us-phi5711.i.us.us.i.i.i.i.i = phi i32 [ %i.chw, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i" ], [ %.sroa.5.sroa.0.0.insert.insert.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i" ]
  %.us-phi810.i.us.us.i.i.i.i.i = phi ptr [ %i.chy, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i" ], [ %.sroa.02.1.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i" ] ; 2 uses
  %i.chs = getelementptr inbounds nuw i8, ptr %.us-phi810.i.us.us.i.i.i.i.i, i64 8
  %.val1.i.i.i.us.us.i.i.i.i.i = load i32, ptr %i.chs, align 4, !tbaa !162 ; 2 uses
  %i.cht = trunc nuw i8 %i.chr to i1
  br i1 %i.cht, label %bb.oy, label %bb.ox, !prof !36

bb.ox:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i"
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.chm, i32 noundef %.val1.i.i.i.us.us.i.i.i.i.i)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i

bb.oy:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i"
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.chm, i32 noundef %.val1.i.i.i.us.us.i.i.i.i.i)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i: ; preds = %bb.oy, %bb.ox
  %i.chu = add i32 %.us-phi5711.i.us.us.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i863 = icmp eq i32 %i.chu, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i863, label %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS6_KFbvERK4$_20LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK4$_28LSI_0ELSD_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEERKSP_.exit.i", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i
  %i.chv = add i32 %i.chw, -1                     ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i = icmp eq i32 %i.chv, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i, label %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS6_KFbvERK4$_20LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK4$_28LSI_0ELSD_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEERKSP_.exit.i", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i, !llvm.loop !370

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i: ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i
  %i.chw = phi i32 [ %i.chv, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i ], [ %i.chu, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i ] ; 2 uses
  %i.chx = phi ptr [ %i.chy, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i ], [ %.us-phi810.i.us.us.i.i.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i ] ; 2 uses
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chx, i64 12 ; 2 uses
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chx, i64 16
  %i.cia = load i32, ptr %i.chz, align 4
  %i.cib = trunc i32 %i.cia to i1
  br i1 %i.cib, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i, !llvm.loop !370

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i
  %.pre139.i = load i8, ptr %i.chq, align 8, !tbaa !33, !range !34
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i", !llvm.loop !371

"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS6_KFbvERK4$_20LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK4$_28LSI_0ELSD_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEERKSP_.exit.i": ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i
  %i.cic = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.chm)
  %i.cid = load i32, ptr %i.cgw, align 4, !tbaa !283
  %.not.i93 = icmp ne i32 %i.cic, %i.cid
  %brmerge.i = or i1 %i.cgo, %.not.i93
  br i1 %brmerge.i, label %_ZL30_create_old_gid_to_new_gid_mapPK9hb_face_tbPK8hb_set_tPK8hb_map_tPS5_S8_P11hb_vector_tI9hb_pair_tIjjELb1EEPj.exit.thread, label %bb.oz

bb.oz:                                            ; preds = %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS6_KFbvERK4$_20LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK4$_28LSI_0ELSD_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEERKSP_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.cie = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.cif = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cig = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.cii = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.cij = getelementptr inbounds nuw i8, ptr %14, i64 32
  store atomic i32 1, ptr %14 monotonic, align 8
  store atomic i8 1, ptr %i.cie monotonic, align 4
  store atomic ptr null, ptr %i.cif monotonic, align 8
  store i8 1, ptr %i.cig, align 8, !tbaa !203
  store i32 0, ptr %i.cih, align 4, !tbaa !204
  store atomic i32 0, ptr %i.cii monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.cij, i8 0, i64 33, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(49) %i.ed, i1 noundef zeroext true)
  %.fca.0.load.i.i94 = load ptr, ptr %12, align 8
  %.fca.1.gep.i.i95 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.fca.1.load.i.i96 = load i64, ptr %.fca.1.gep.i.i95, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  store ptr %.fca.0.load.i.i94, ptr %15, align 8
  %i.cik = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  store i64 %.fca.1.load.i.i96, ptr %i.cik, align 8
  %i.cil = trunc i64 %.fca.1.load.i.i96 to i32    ; 2 uses
  %.not5968.i = icmp eq i32 %i.cil, -1
  br i1 %.not5968.i, label %._crit_edge.i105, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.oz
  %i.cim = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.cin = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 6 uses
  %i.cio = load i64, ptr @_hb_NullPool, align 16  ; 2 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ciq = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.cir = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  br label %bb.pc

._crit_edge.i105:                                 ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i104, %bb.oz
  %spec.store.select67.lcssa.i = phi i32 [ 0, %bb.oz ], [ %spec.store.select66.i, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i104 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.cis = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.cit = load ptr, ptr %i.cis, align 8, !tbaa !267 ; 5 uses
  %i.ciu = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 4 uses
  %i.civ = load i32, ptr %i.ciu, align 4, !tbaa !265 ; 3 uses
  %.not.i.i.i.i.i106 = icmp eq i32 %i.civ, 0
  br i1 %.not.i.i.i.i.i106, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i116, label %bb.pa, !prof !36

bb.pa:                                            ; preds = %._crit_edge.i105
  %.sroa.2.8.insert.ext.i.i.i.i107 = zext i32 %i.civ to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopI9hb_pair_tIjjEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_(ptr noundef %i.cit, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i.i107)
  %.idx.i.i.i.i.i.i108 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i107, 3
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.cit, i64 %.idx.i.i.i.i.i.i108
  %.not1.i.i.i.i.i109 = icmp eq i32 %i.civ, 1
  br i1 %.not1.i.i.i.i.i109, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i116, label %.preheader.preheader.i.i.i.i.i.i110

.preheader.preheader.i.i.i.i.i.i110:              ; preds = %bb.pa
  %.01522.i.i.i.i.i.i111 = getelementptr inbounds nuw i8, ptr %i.cit, i64 8
  br label %.preheader.i.i.i.i.i.i112

.preheader.i.i.i.i.i.i112:                        ; preds = %.critedge.i.i.i.i.i.i114, %.preheader.preheader.i.i.i.i.i.i110
  %.01523.i.i.i.i.i.i113 = phi ptr [ %.015.i.i.i.i.i.i115, %.critedge.i.i.i.i.i.i114 ], [ %.01522.i.i.i.i.i.i111, %.preheader.preheader.i.i.i.i.i.i110 ] ; 4 uses
  %64 = icmp ugt ptr %.01523.i.i.i.i.i.i113, %i.cit
  br i1 %64, label %.lr.ph.preheader.i.i.i.i.i.i122, label %.critedge.i.i.i.i.i.i114

.lr.ph.preheader.i.i.i.i.i.i122:                  ; preds = %.preheader.i.i.i.i.i.i112
  %.pre.i.i.i.i.i.i123 = load i32, ptr %.01523.i.i.i.i.i.i113, align 4, !tbaa !276 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i124

.lr.ph.i.i.i.i.i.i124:                            ; preds = %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i131, %.lr.ph.preheader.i.i.i.i.i.i122
  %.019.i.i.i.i.i.i125 = phi ptr [ %i.cix, %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i131 ], [ %.01523.i.i.i.i.i.i113, %.lr.ph.preheader.i.i.i.i.i.i122 ] ; 4 uses
  %i.cix = getelementptr inbounds i8, ptr %.019.i.i.i.i.i.i125, i64 -8 ; 4 uses
  %i.ciy = load i32, ptr %i.cix, align 4, !tbaa !276 ; 3 uses
  %i.ciz = icmp ult i32 %i.ciy, %.pre.i.i.i.i.i.i123
  br i1 %i.ciz, label %.critedge.i.i.i.i.i.i114, label %bb.pb

bb.pb:                                            ; preds = %.lr.ph.i.i.i.i.i.i124
  %i.cja = icmp ugt i32 %i.ciy, %.pre.i.i.i.i.i.i123
  %.phi.trans.insert.i.i.i.i.i.i126 = getelementptr inbounds i8, ptr %.019.i.i.i.i.i.i125, i64 -4 ; 2 uses
  %.pre24.i.i.i.i.i.i127 = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i126, align 4, !tbaa !162 ; 2 uses
  %.phi.trans.insert25.i.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i125, i64 4 ; 2 uses
  %.pre26.i.i.i.i.i.i129 = load i32, ptr %.phi.trans.insert25.i.i.i.i.i.i128, align 4, !tbaa !162 ; 2 uses
  %i.cjb = icmp ugt i32 %.pre24.i.i.i.i.i.i127, %.pre26.i.i.i.i.i.i129
  %or.cond.i.i.i.i.i.i130 = select i1 %i.cja, i1 true, i1 %i.cjb
  br i1 %or.cond.i.i.i.i.i.i130, label %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i131, label %.critedge.i.i.i.i.i.i114

.critedge.i.i.i.i.i.i114:                         ; preds = %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i131, %bb.pb, %.lr.ph.i.i.i.i.i.i124, %.preheader.i.i.i.i.i.i112
  %.015.i.i.i.i.i.i115 = getelementptr inbounds nuw i8, ptr %.01523.i.i.i.i.i.i113, i64 8 ; 2 uses
  %i.cjc = icmp ult ptr %.015.i.i.i.i.i.i115, %i.ciw
  br i1 %i.cjc, label %.preheader.i.i.i.i.i.i112, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i116, !llvm.loop !278

_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i131: ; preds = %bb.pb
  store i32 %.pre.i.i.i.i.i.i123, ptr %i.cix, align 4, !tbaa !162
  store i32 %i.ciy, ptr %.019.i.i.i.i.i.i125, align 4, !tbaa !162
  store i32 %.pre26.i.i.i.i.i.i129, ptr %.phi.trans.insert.i.i.i.i.i.i126, align 4, !tbaa !162
  store i32 %.pre24.i.i.i.i.i.i127, ptr %.phi.trans.insert25.i.i.i.i.i.i128, align 4, !tbaa !162
  %i.cjd = icmp ugt ptr %i.cix, %i.cit
  br i1 %i.cjd, label %.lr.ph.i.i.i.i.i.i124, label %.critedge.i.i.i.i.i.i114, !llvm.loop !279

_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i116: ; preds = %.critedge.i.i.i.i.i.i114, %bb.pa, %._crit_edge.i105
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(49) %i.cig, i1 noundef zeroext true)
  %.fca.0.load.i.i.i.i117 = load ptr, ptr %11, align 8
  %.fca.1.gep.i.i.i.i118 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.fca.1.load.i.i.i.i119 = load i64, ptr %.fca.1.gep.i.i.i.i118, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store ptr %.fca.0.load.i.i.i.i117, ptr %16, align 8
  %i.cje = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i64 %.fca.1.load.i.i.i.i119, ptr %i.cje, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(49) %i.cig, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cjf = trunc i64 %.fca.1.load.i.i.i.i119 to i32 ; 2 uses
  %.not6071.i = icmp eq i32 %i.cjf, -1
  br i1 %.not6071.i, label %._crit_edge73.i, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i116
  %i.cjg = load i64, ptr @_hb_NullPool, align 16
  %i.cjh = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  br label %bb.pw

bb.pc:                                            ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i104, %.lr.ph.i97
  %i.cji = phi i32 [ %i.cil, %.lr.ph.i97 ], [ %i.clx, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i104 ] ; 7 uses
  %spec.store.select6769.i = phi i32 [ 0, %.lr.ph.i97 ], [ %spec.store.select66.i, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i104 ] ; 5 uses
  %i.cjj = icmp eq i32 %i.cji, 0
  br i1 %i.cjj, label %bb.pd, label %bb.pg

bb.pd:                                            ; preds = %bb.pc
  %i.cjk = load i32, ptr %i.cin, align 4, !tbaa !265 ; 3 uses
  %i.cjl = load i32, ptr %i.bw, align 8, !tbaa !266
  %.not.i.i133 = icmp slt i32 %i.cjk, %i.cjl
  br i1 %.not.i.i133, label %.critedge.i.i135, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.cjm = add i32 %i.cjk, 1
  %i.cjn = call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i32 noundef %i.cjm, i1 noundef zeroext false)
  br i1 %i.cjn, label %..critedge_crit_edge.i.i, label %bb.pf, !prof !38

..critedge_crit_edge.i.i:                         ; preds = %bb.pe
  %.pre.i.i134 = load i32, ptr %i.cin, align 4, !tbaa !265
  br label %.critedge.i.i135

bb.pf:                                            ; preds = %bb.pe
  store i64 %i.cio, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i

.critedge.i.i135:                                 ; preds = %..critedge_crit_edge.i.i, %bb.pd
  %i.cjo = phi i32 [ %.pre.i.i134, %..critedge_crit_edge.i.i ], [ %i.cjk, %bb.pd ] ; 2 uses
  %i.cjp = load ptr, ptr %i.cip, align 8, !tbaa !267
  %i.cjq = add i32 %i.cjo, 1
  store i32 %i.cjq, ptr %i.cin, align 4, !tbaa !265
  %i.cjr = zext i32 %i.cjo to i64
  %i.cjs = getelementptr inbounds nuw [8 x i8], ptr %i.cjp, i64 %i.cjr
  store i64 0, ptr %i.cjs, align 4
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i

bb.pg:                                            ; preds = %bb.pc
  %i.cjt = load ptr, ptr %i.cgz, align 8, !tbaa !145 ; 4 uses
  %.not.i59.i = icmp eq ptr %i.cjt, null
  br i1 %.not.i59.i, label %.loopexit.i101, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.cju = mul i32 %i.cji, 506952113
  %i.cjv = and i32 %i.cju, 1073741823
  %i.cjw = load i32, ptr %i.cim, align 8, !tbaa !268
  %i.cjx = urem i32 %i.cjv, %i.cjw                ; 2 uses
  %i.cjy = zext nneg i32 %i.cjx to i64            ; 2 uses
  %i.cjz = getelementptr inbounds nuw [12 x i8], ptr %i.cjt, i64 %i.cjy ; 2 uses
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 4
  %i.ckb = load i32, ptr %i.cka, align 4          ; 2 uses
  %i.ckc = and i32 %i.ckb, 2
  %.not15.i.i.i.i = icmp eq i32 %i.ckc, 0
  br i1 %.not15.i.i.i.i, label %.loopexit.i101, label %.lr.ph.i.i.i.i98

.lr.ph.i.i.i.i98:                                 ; preds = %bb.ph
  %i.ckd = load i32, ptr %i.cgy, align 4
  %i.cke = load i32, ptr %i.cjz, align 4, !tbaa !162
  %i.ckf = icmp eq i32 %i.cke, %i.cji
  br i1 %i.ckf, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i, label %.lr.ph.i.i.i99

bb.pi:                                            ; preds = %.lr.ph.i.i.i99
  %i.ckg = load i32, ptr %i.ckm, align 4, !tbaa !162
  %i.ckh = icmp eq i32 %i.ckg, %i.cji
  br i1 %i.ckh, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i, label %.lr.ph.i.i.i99, !llvm.loop !269

.lr.ph.i.i.i99:                                   ; preds = %.lr.ph.i.i.i.i98, %bb.pi
  %.01016.i20.i.i.i = phi i32 [ %i.ckk, %bb.pi ], [ %i.cjx, %.lr.ph.i.i.i.i98 ]
  %.017.i19.i.i.i = phi i32 [ %i.cki, %bb.pi ], [ 0, %.lr.ph.i.i.i.i98 ]
  %i.cki = add i32 %.017.i19.i.i.i, 1             ; 2 uses
  %i.ckj = add i32 %i.cki, %.01016.i20.i.i.i
  %i.ckk = and i32 %i.ckj, %i.ckd                 ; 2 uses
  %i.ckl = zext i32 %i.ckk to i64                 ; 2 uses
  %i.ckm = getelementptr inbounds nuw [12 x i8], ptr %i.cjt, i64 %i.ckl ; 2 uses
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.ckm, i64 4
  %i.cko = load i32, ptr %i.ckn, align 4          ; 2 uses
  %i.ckp = and i32 %i.cko, 2
  %.not.i.i.i.i100 = icmp eq i32 %i.ckp, 0
  br i1 %.not.i.i.i.i100, label %.loopexit.i101, label %bb.pi, !llvm.loop !269

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i: ; preds = %bb.pi, %.lr.ph.i.i.i.i98
  %.lcssa17.i.i.i = phi i32 [ %i.ckb, %.lr.ph.i.i.i.i98 ], [ %i.cko, %bb.pi ]
  %i.ckq = phi i64 [ %i.cjy, %.lr.ph.i.i.i.i98 ], [ %i.ckl, %bb.pi ]
  %i.ckr = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.ckr, label %bb.pl, label %.loopexit.i101

.loopexit.i101:                                   ; preds = %.lr.ph.i.i.i99, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i, %bb.ph, %bb.pg
  %i.cks = load i8, ptr %i.ciq, align 8, !tbaa !33, !range !34, !noundef !35
  %i.ckt = trunc nuw i8 %i.cks to i1
  br i1 %i.ckt, label %bb.pj, label %bb.pk, !prof !36

bb.pj:                                            ; preds = %.loopexit.i101
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.cig, i32 noundef %i.cji)
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i

bb.pk:                                            ; preds = %.loopexit.i101
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.cig, i32 noundef %i.cji)
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i

bb.pl:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i
  %i.cku = getelementptr inbounds nuw [12 x i8], ptr %i.cjt, i64 %i.ckq
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.cku, i64 8 ; 2 uses
  %i.ckw = load i32, ptr %i.ckv, align 4, !tbaa !162
  %spec.store.select.i = call i32 @llvm.umax.i32(i32 %i.ckw, i32 %spec.store.select6769.i) ; 2 uses
  %i.ckx = load i32, ptr %i.cin, align 4, !tbaa !265 ; 3 uses
  %i.cky = load i32, ptr %i.bw, align 8, !tbaa !266
  %.not.i63.i = icmp slt i32 %i.ckx, %i.cky
  br i1 %.not.i63.i, label %.critedge.i67.i, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.ckz = add i32 %i.ckx, 1
  %i.cla = call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i32 noundef %i.ckz, i1 noundef zeroext false)
  br i1 %i.cla, label %..critedge_crit_edge.i65.i, label %bb.pn, !prof !38

..critedge_crit_edge.i65.i:                       ; preds = %bb.pm
  %.pre.i66.i = load i32, ptr %i.cin, align 4, !tbaa !265
  br label %.critedge.i67.i

bb.pn:                                            ; preds = %bb.pm
  store i64 %i.cio, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i

.critedge.i67.i:                                  ; preds = %..critedge_crit_edge.i65.i, %bb.pl
  %i.clb = phi i32 [ %.pre.i66.i, %..critedge_crit_edge.i65.i ], [ %i.ckx, %bb.pl ] ; 2 uses
  %i.clc = load ptr, ptr %i.cip, align 8, !tbaa !267
  %i.cld = add i32 %i.clb, 1
  store i32 %i.cld, ptr %i.cin, align 4, !tbaa !265
  %i.cle = zext i32 %i.clb to i64
  %i.clf = getelementptr inbounds nuw [8 x i8], ptr %i.clc, i64 %i.cle
  %i.clg = load i32, ptr %i.ckv, align 4, !tbaa !162
  %.sroa.2.0.insert.ext.i.i.i.i = zext i32 %i.cji to i64
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.clg to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.clf, align 4
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i

_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i: ; preds = %.critedge.i67.i, %bb.pn, %bb.pk, %bb.pj, %.critedge.i.i135, %bb.pf
  %spec.store.select66.i = phi i32 [ %spec.store.select6769.i, %bb.pj ], [ %spec.store.select6769.i, %bb.pk ], [ %spec.store.select.i, %bb.pn ], [ %spec.store.select.i, %.critedge.i67.i ], [ %spec.store.select6769.i, %.critedge.i.i135 ], [ %spec.store.select6769.i, %bb.pf ] ; 2 uses
  %i.clh = load ptr, ptr %15, align 8, !tbaa !166 ; 4 uses
  %i.cli = getelementptr inbounds nuw i8, ptr %i.clh, i64 48
  %i.clj = load i8, ptr %i.cli, align 8, !tbaa !33, !range !34, !noundef !35
  %i.clk = trunc nuw i8 %i.clj to i1
  br i1 %i.clk, label %bb.pp, label %bb.po, !prof !36

bb.po:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i
  %i.cll = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.clh, ptr noundef nonnull %i.cik) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i.i102

bb.pp:                                            ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.clm = load i32, ptr %i.cik, align 8, !tbaa !162 ; 5 uses
  store i32 %i.clm, ptr %i.h, align 4, !tbaa !162
  %i.cln = icmp eq i32 %i.clm, -2
  br i1 %i.cln, label %bb.pq, label %bb.pr, !prof !36

bb.pq:                                            ; preds = %bb.pp
  store i32 -1, ptr %i.cik, align 8, !tbaa !162
  br label %bb.pu

bb.pr:                                            ; preds = %bb.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store i32 %i.clm, ptr %i.i, align 4, !tbaa !162
  %i.clo = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.clh, ptr noundef nonnull %i.i) ; 0 uses
  %i.clp = add i32 %i.clm, 1                      ; 2 uses
  %i.clq = load i32, ptr %i.i, align 4, !tbaa !162
  %i.clr = icmp ult i32 %i.clp, %i.clq
  br i1 %i.clr, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  store i32 %i.clm, ptr %i.i, align 4, !tbaa !162
  %i.cls = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.clh, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) ; 0 uses
  %i.clt = load i32, ptr %i.i, align 4, !tbaa !162
end_hunk_1
begin_hunk_2_@_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE5allocEjb:bb.a
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #14 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !310

_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !668   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !670
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !668
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN3CFF19cff1_top_dict_val_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF7Charset8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !515
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.k = load i8, ptr %0, align 1, !tbaa !10
  switch i8 %i.k, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit [
    i8 0, label %bb.c
    i8 1, label %bb.h
    i8 2, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !344  ; 2 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.m, ptr %2, align 4, !tbaa !162
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = add i32 %i.m, -1                         ; 2 uses
  %i.o = shl nuw i32 %i.n, 1                      ; 2 uses
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.f, !prof !518

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.d, %i.r
  %i.t = load i32, ptr %i.g, align 8, !tbaa !515
  %i.u = zext i32 %i.t to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.g, !prof !518

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !513
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.d
  %i.y = trunc i64 %i.x to i32
  %.not12.i.i.i.i.i = icmp ugt i32 %i.o, %i.y
  br i1 %.not12.i.i.i.i.i, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i, !prof !518

_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !516
  %i.ab = sub i32 %i.aa, %i.o                     ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !516
  %i.ac = icmp sgt i32 %i.ab, 0
  br label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit

bb.h:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !344
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  %.not23.i = icmp eq i32 %i.af, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %.025.i = phi i32 [ %i.at, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.01424.i = phi i32 [ %i.as, %bb.j ], [ %i.af, %bb.h ] ; 2 uses
  %i.ag = zext i32 %.025.i to i64
  %i.ah = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = load i32, ptr %i.g, align 8, !tbaa !515
  %i.ao = zext i32 %i.an to i64
  %.not18.i = icmp ugt i64 %i.am, %i.ao
  br i1 %.not18.i, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.i, !prof !36

bb.i:                                             ; preds = %.lr.ph.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %.not19.i = icmp ugt i32 %.01424.i, %i.ar
  br i1 %.not19.i, label %bb.j, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, !prof !38

bb.j:                                             ; preds = %bb.i
  %.neg.i = xor i32 %i.ar, -1
  %i.as = add i32 %.01424.i, %.neg.i              ; 2 uses
  %i.at = add i32 %.025.i, 1                      ; 2 uses
  %.not.i12 = icmp eq i32 %i.as, 0
  br i1 %.not.i12, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !700

._crit_edge.i:                                    ; preds = %bb.j, %bb.h
  %.0.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.at, %bb.j ]
  %.not16.i = icmp eq ptr %2, null
  br i1 %.not16.i, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  store i32 %.0.lcssa.i, ptr %2, align 4, !tbaa !162
  br label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit

bb.l:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !344
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  %.not23.i13 = icmp eq i32 %i.aw, 0
  br i1 %.not23.i13, label %._crit_edge.i22, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.l, %bb.n
  %.025.i15 = phi i32 [ %i.bl, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.01424.i16 = phi i32 [ %i.bk, %bb.n ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ax = zext i32 %.025.i15 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = load i32, ptr %i.g, align 8, !tbaa !515
  %i.bf = zext i32 %i.be to i64
  %.not18.i17 = icmp ugt i64 %i.bd, %i.bf
  br i1 %.not18.i17, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.m, !prof !36

bb.m:                                             ; preds = %.lr.ph.i14
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !44
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bj = zext i16 %i.bi to i32                   ; 2 uses
  %.not19.i18 = icmp ugt i32 %.01424.i16, %i.bj
  br i1 %.not19.i18, label %bb.n, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, !prof !38

bb.n:                                             ; preds = %bb.m
  %.neg.i20 = xor i32 %i.bj, -1
  %i.bk = add i32 %.01424.i16, %.neg.i20          ; 2 uses
  %i.bl = add i32 %.025.i15, 1                    ; 2 uses
  %.not.i21 = icmp eq i32 %i.bk, 0
  br i1 %.not.i21, label %._crit_edge.i22, label %.lr.ph.i14, !llvm.loop !701

._crit_edge.i22:                                  ; preds = %bb.n, %bb.l
  %.0.lcssa.i23 = phi i32 [ 0, %bb.l ], [ %i.bl, %bb.n ]
  %.not16.i24 = icmp eq ptr %2, null
  br i1 %.not16.i24, label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i22
  store i32 %.0.lcssa.i23, ptr %2, align 4, !tbaa !162
  br label %_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit

_ZNK3CFF8Charset08sanitizeEP21hb_sanitize_context_tjPj.exit: ; preds = %bb.m, %.lr.ph.i14, %bb.i, %.lr.ph.i, %bb.o, %._crit_edge.i22, %bb.k, %._crit_edge.i, %_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i, %bb.g, %bb.f, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ true, %._crit_edge.i22 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.f ], [ %i.ac, %_ZNK2OT14UnsizedArrayOfINS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i ], [ false, %bb.e ], [ true, %bb.k ], [ true, %._crit_edge.i ], [ false, %bb.i ], [ true, %bb.o ], [ false, %.lr.ph.i ], [ false, %.lr.ph.i14 ], [ false, %bb.m ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !515
  %i.i = zext i32 %i.h to i64
  %.not43 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not43, label %.critedge, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.k = load i16, ptr %0, align 1, !tbaa !44
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i32
  %i.n = mul nuw nsw i32 %i.m, 3                  ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.d, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !515
  %i.s = zext i32 %i.r to i64
  %.not.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i.i, label %.critedge, label %bb.c, !prof !518

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !513
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.d
  %i.w = trunc i64 %i.v to i32
  %.not12.i.i.i = icmp ugt i32 %i.n, %i.w
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !518

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !516
  %i.z = sub i32 %i.y, %i.n                       ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !516
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %.critedge, !prof !519

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.ab = load i16, ptr %0, align 1, !tbaa !44    ; 2 uses
  %.not.i48.not = icmp eq i16 %i.ab, 0
  br i1 %.not.i48.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %wide.trip.count = zext i16 %i.ac to i64
  br label %bb.f

bb.e:                                             ; preds = %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.f, !llvm.loop !702

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !515
  %i.al = zext i32 %i.ak to i64
  %.not.i.i.i17 = icmp ugt i64 %i.aj, %i.al
  br i1 %.not.i.i.i17, label %.critedge, label %bb.g, !prof !518

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.am = load i16, ptr %i.ae, align 1, !tbaa !44
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i32
  %i.ap = load i32, ptr %i.ad, align 8, !tbaa !344
  %i.aq = icmp ugt i32 %i.ap, %i.ao
  br i1 %i.aq, label %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, label %.critedge, !prof !442

_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.at = zext i8 %i.as to i32
  %i.au = icmp ugt i32 %2, %i.at
  br i1 %i.au, label %bb.e, label %.critedge, !prof !519

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %.sroa.0.0.copyload.i = load i16, ptr %0, align 1, !tbaa !73
  %.not = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit, !prof !36

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.av = load i16, ptr %i.a, align 1, !tbaa !44
  %.not44 = icmp eq i16 %i.av, 0
  br i1 %.not44, label %.preheader, label %.critedge, !prof !38

.preheader:                                       ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit
  %.sroa.0.0.copyload.i2050 = load i16, ptr %0, align 1, !tbaa !73 ; 3 uses
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i2050) ; 2 uses
  %.not1351 = icmp ugt i16 %i.aw, 1
  br i1 %.not1351, label %.lr.ph53, label %._crit_edge

bb.h:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %.sroa.0.0.copyload.i20 = load i16, ptr %0, align 1, !tbaa !73 ; 3 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i20) ; 2 uses
  %i.ay = zext i16 %i.ax to i64
  %.not13 = icmp samesign ult i64 %indvars.iv.next57, %i.ay
  br i1 %.not13, label %.lr.ph53, label %._crit_edge, !llvm.loop !703

.lr.ph53:                                         ; preds = %.preheader, %bb.h
  %3 = phi i16 [ %.sroa.0.0.copyload.i20, %bb.h ], [ %.sroa.0.0.copyload.i2050, %.preheader ]
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %bb.h ], [ 1, %.preheader ] ; 4 uses
  %.in = phi i16 [ %i.ax, %bb.h ], [ %i.aw, %.preheader ]
  %4 = add nsw i64 %indvars.iv56, -1              ; 2 uses
  %5 = zext i16 %.in to i64
  %.not.i21 = icmp samesign ult i64 %4, %5
  br i1 %.not.i21, label %6, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, !prof !38

6:                                                ; preds = %.lr.ph53
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %7 = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %4
  %.pre = load i16, ptr %0, align 1, !tbaa !44
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23: ; preds = %.lr.ph53, %6
  %8 = phi i16 [ %.pre, %6 ], [ %3, %.lr.ph53 ]
  %.0.i22 = phi ptr [ %7, %6 ], [ @_hb_NullPool, %.lr.ph53 ]
  %i.az = load i16, ptr %.0.i22, align 1, !tbaa !44
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %8)
  %i.bc = zext i16 %i.bb to i64
  %.not.i24 = icmp samesign ult i64 %indvars.iv56, %i.bc
  br i1 %.not.i24, label %bb.i, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26, !prof !38

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %9 = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %indvars.iv56
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, %bb.i
  %.0.i25 = phi ptr [ %9, %bb.i ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23 ]
  %i.bd = load i16, ptr %.0.i25, align 1, !tbaa !44
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %.not12 = icmp ult i16 %i.ba, %i.be
  br i1 %.not12, label %bb.h, label %.critedge, !prof !38

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.sroa.0.0.copyload.i.i = phi i16 [ %.sroa.0.0.copyload.i2050, %.preheader ], [ %.sroa.0.0.copyload.i20, %bb.h ] ; 2 uses
  %.not.i.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit, label %bb.j, !prof !36

bb.j:                                             ; preds = %._crit_edge
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i)
  %i.bg = zext i16 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.bg, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.bi = and i64 %i.bh, 4294967295
  %i.bj = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bi
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit: ; preds = %._crit_edge, %bb.j
  %.0.i.i = phi ptr [ %i.bj, %bb.j ], [ @_hb_NullPool, %._crit_edge ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 5
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = load i32, ptr %i.g, align 8, !tbaa !515
  %i.bq = zext i32 %i.bp to i64
  %.not45 = icmp ugt i64 %i.bo, %i.bq
  br i1 %.not45, label %.critedge, label %bb.k, !prof !36

bb.k:                                             ; preds = %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %.sroa.0.0.copyload.i.i27 = load i16, ptr %0, align 1, !tbaa !73 ; 2 uses
  %.not.i.not.i28 = icmp eq i16 %.sroa.0.0.copyload.i.i27, 0
  br i1 %.not.i.not.i28, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i27)
  %i.bs = zext i16 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bs, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bu
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30: ; preds = %bb.k, %bb.l
  %.0.i.i29 = phi ptr [ %i.bv, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 3
  %i.bx = load i16, ptr %i.bw, align 1, !tbaa !44
  %i.by = tail call noundef i16 @llvm.bswap.i16(i16 %i.bx)
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !344
  %.not46 = icmp eq i32 %i.cb, %i.bz
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30, %bb.b, %bb.c, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit, %bb.a, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  %.1 = phi i1 [ false, %bb.b ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26 ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.a ], [ %.not46, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30 ], [ false, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.c ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF8Encoding8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !515
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.k = load i8, ptr %0, align 1, !tbaa !10
  %i.l = and i8 %i.k, 127
  switch i8 %i.l, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread [
    i8 0, label %bb.c
    i8 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !515
  %i.s = zext i32 %i.r to i64
  %.not.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.d, !prof !518

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.t = load i8, ptr %i.a, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.o, %i.w
  %i.y = load i32, ptr %i.g, align 8, !tbaa !515
  %i.z = zext i32 %i.y to i64
  %.not.i.i.i.i = icmp ugt i64 %i.x, %i.z
  br i1 %.not.i.i.i.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.e, !prof !518

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !513
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.o
  %i.ad = trunc i64 %i.ac to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.u, %i.ad
  br i1 %.not12.i.i.i.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit, !prof !518

_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !516
  %i.ag = sub i32 %i.af, %i.u                     ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !516
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, !prof !519

bb.f:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.ak = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = load i32, ptr %i.g, align 8, !tbaa !515
  %i.ao = zext i32 %i.an to i64
  %.not.i.i6 = icmp ugt i64 %i.am, %i.ao
  br i1 %.not.i.i6, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.g, !prof !518

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.ap = load i8, ptr %i.a, align 1, !tbaa !10
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !514
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.ak, %i.at
  %i.av = load i32, ptr %i.g, align 8, !tbaa !515
  %i.aw = zext i32 %i.av to i64
  %.not.i.i.i.i7 = icmp ugt i64 %i.au, %i.aw
  br i1 %.not.i.i.i.i7, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.h, !prof !518

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !513
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ak
  %i.ba = trunc i64 %i.az to i32
  %.not12.i.i.i.i8 = icmp ugt i32 %i.ar, %i.ba
  br i1 %.not12.i.i.i.i8, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, label %_ZNK3CFF9Encoding18sanitizeEP21hb_sanitize_context_t.exit, !prof !518

_ZNK3CFF9Encoding18sanitizeEP21hb_sanitize_context_t.exit: ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !516
  %i.bd = sub i32 %i.bc, %i.ar                    ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !516
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.i, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread, !prof !519

bb.i:                                             ; preds = %_ZNK3CFF9Encoding18sanitizeEP21hb_sanitize_context_t.exit, %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit
  %i.bf = load i8, ptr %0, align 1, !tbaa !10     ; 2 uses
  %i.bg = icmp slt i8 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %_ZNK3CFF9Encoding08sanitizeEP21hb_sanitize_context_t.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bh = and i8 %i.bf, 127
  switch i8 %i.bh, label %_ZNK3CFF8Encoding11suppEncDataEv.exit [
    i8 0, label %bb.k
    i8 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.a, align 1, !tbaa !73 ; 2 uses
  %.not.i.not.i = icmp eq i8 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  %i.bi = zext i8 %.sroa.0.0.copyload.i.i to i64
  %i.bj = add nuw nsw i64 %i.bi, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !39
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bl = and i64 %i.bj, 4294967295
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i

_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i10 = phi ptr [ %i.bm, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 1
  br label %_ZNK3CFF8Encoding11suppEncDataEv.exit

end_hunk_2
