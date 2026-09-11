Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-layout?download=true
inline.NumInlined: 8393
inline.NumDeleted: 3725
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE:bb.a
  %i.vm = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vn, i8 0, i64 64, i1 false), !tbaa !86
  store i32 0, ptr %i.vm, align 8, !tbaa !183
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter707.next = add i64 %prol.iter707, 1   ; 2 uses
  %prol.iter707.cmp.not = icmp eq i64 %prol.iter707.next, %xtraiter705
  br i1 %prol.iter707.cmp.not, label %.prol.loopexit704, label %.prol.preheader703, !llvm.loop !707

.prol.loopexit704:                                ; preds = %.prol.preheader703, %.lr.ph.i.i205
  %indvars.iv.i.i.unr = phi i64 [ %i.vk, %.lr.ph.i.i205 ], [ %indvars.iv.next.i.i.prol, %.prol.preheader703 ]
  %i.vo = sub nsw i64 %i.vk, %wide.trip.count.i.i
  %i.vp = icmp ugt i64 %i.vo, -4
  br i1 %i.vp, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i205.new

.lr.ph.i.i205.new:                                ; preds = %.prol.loopexit704, %.lr.ph.i.i205.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i205.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit704 ] ; 5 uses
  %i.vq = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vr, i8 0, i64 64, i1 false), !tbaa !86
  store i32 0, ptr %i.vq, align 8, !tbaa !183
  %i.vs = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 72
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vu, i8 0, i64 64, i1 false), !tbaa !86
  store i32 0, ptr %i.vt, align 8, !tbaa !183
  %i.vv = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 144
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vx, i8 0, i64 64, i1 false), !tbaa !86
  store i32 0, ptr %i.vw, align 8, !tbaa !183
  %i.vy = getelementptr inbounds nuw [72 x i8], ptr %i.vj, i64 %indvars.iv.i.i ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 216
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.wa, i8 0, i64 64, i1 false), !tbaa !86
  store i32 0, ptr %i.vz, align 8, !tbaa !183
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i205.new, !llvm.loop !10

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %.prol.loopexit704, %.lr.ph.i.i205.new, %bb.cw
  store i32 %i.vd, ptr %i.rs, align 4, !tbaa !76
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit

_ZN12hb_bit_set_t6resizeEjbb.exit:                ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, %bb.cv, %.critedge.i189
  store i8 0, ptr %i.pm, align 8, !tbaa !63
  br label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

bb.cx:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit.thread, %bb.ct, %bb.cu
  store i32 %i.se, ptr %i.rk, align 4, !tbaa !73
  %i.wb = getelementptr inbounds nuw i8, ptr %i.pj, i64 56
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !83
  %i.wd = zext i32 %i.rt to i64                   ; 2 uses
  %i.we = getelementptr inbounds nuw [72 x i8], ptr %i.wc, i64 %i.wd ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.wf, i8 0, i64 64, i1 false), !tbaa !86
  store i32 0, ptr %i.we, align 8, !tbaa !183
  %i.wg = load ptr, ptr %i.rn, align 8, !tbaa !184
  %i.wh = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i to i64 ; 3 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.wh ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = sub i32 %i.rt, %storemerge.i.i.ph.sink.i.i.ph.i.i
  %i.wl = shl i32 %i.wk, 3
  %i.wm = zext i32 %i.wl to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wj, ptr align 4 %i.wi, i64 %i.wm, i1 false)
  %i.wn = load ptr, ptr %i.rn, align 8, !tbaa !184
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %i.wh
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %i.wd, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.rh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.wo, align 4
  %.pre20.i.i = load ptr, ptr %i.rn, align 8, !tbaa !184
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i: ; preds = %bb.cc, %bb.cx
  %.pre-phi.i.i = phi i64 [ %i.wh, %bb.cx ], [ %i.rx, %bb.cc ]
  %i.wp = phi ptr [ %.pre20.i.i, %bb.cx ], [ %i.ro, %bb.cc ]
  %storemerge.i.i.ph.sink.i.i17.i.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i, %bb.cx ], [ %i.rw, %bb.cc ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i, ptr %i.ri monotonic, align 8
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %.pre-phi.i.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i

_ZN12hb_bit_set_t8page_forEjb.exit.i:             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, %bb.ca
  %.sink30.i.i = phi ptr [ %i.wq, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i ], [ %i.rq, %bb.ca ]
  %.sink.in.i.i = getelementptr inbounds nuw i8, ptr %i.pj, i64 56
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i126 = icmp eq ptr %.sink.i.i, null
  br i1 %.not.i126, label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, label %bb.cy, !prof !187

bb.cy:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i
  %i.wr = getelementptr inbounds nuw i8, ptr %.sink30.i.i, i64 4
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !84
  %i.wt = zext i32 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i, i64 %i.wt ; 2 uses
  %i.wv = and i32 %i.pl, 63
  %i.ww = zext nneg i32 %i.wv to i64
  %i.wx = shl nuw i64 1, %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.wz = lshr i32 %i.pl, 6
  %i.xa = and i32 %i.wz, 7
  %i.xb = zext nneg i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %i.xb ; 2 uses
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !86
  %i.xe = or i64 %i.xd, %i.wx
  store i64 %i.xe, ptr %i.xc, align 8, !tbaa !86
  store i32 -1, ptr %i.wu, align 8, !tbaa !183
  br label %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i

_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i: ; preds = %bb.bw, %_ZNK2OT6Device25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %bb.bq, %._crit_edge.i.i129, %_ZN12hb_bit_set_t8page_forEjb.exit.i140, %bb.bx, %_ZN12hb_bit_set_t6resizeEjbb.exit, %bb.by, %_ZN12hb_bit_set_t8page_forEjb.exit.i, %bb.cy, %bb.ad
  %i.xf = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i102 = icmp eq ptr %i.xf, %i.gm
  br i1 %.not.i102, label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, label %bb.ad

_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit: ; preds = %_ZNK2OT6Layout9GPOS_impl6Anchor25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE.exit.i, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit98
  br i1 %.sroa.0.0.lcssa, label %bb.cz, label %_ZN11hb_vector_tIjLb1EED2Ev.exit

bb.cz:                                            ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit
  call void @hb_free(ptr noundef %.sroa.14.0.lcssa) #10
  br label %_ZN11hb_vector_tIjLb1EED2Ev.exit

_ZN11hb_vector_tIjLb1EED2Ev.exit:                 ; preds = %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix25collect_variation_indicesI17hb_sorted_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEvPNS_38hb_collect_variation_indices_context_tES8_.exit, %bb.cz
  %i.xg = call fastcc noundef nonnull align 8 dereferenceable(72) ptr @"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEERPK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSI_0EEjEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %11) ; 0 uses
  br label %bb.t

.lr.ph:                                           ; preds = %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit"
  %.sroa.0313.0.extract.trunc471 = phi i32 [ %.sroa.0313.0.extract.trunc, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ 0, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ]
  %.sroa.0313.0470 = phi i64 [ %i.aai, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ 0, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ]
  %.sroa.14.0469 = phi ptr [ %.sroa.14.4, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ null, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ] ; 4 uses
  %.sroa.8.0468 = phi i32 [ %.sroa.8.3, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ 0, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ] ; 4 uses
  %.sroa.0.0467 = phi i32 [ %.sroa.0.4, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit" ], [ 0, %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit ] ; 4 uses
  %i.xh = load i16, ptr %i.eq, align 1, !tbaa !56 ; 2 uses
  %i.xi = call noundef i16 @llvm.bswap.i16(i16 %i.xh)
  %i.xj = zext i16 %i.xi to i32                   ; 5 uses
  %.not6.i.i.i = icmp eq i16 %i.xh, 0
  br i1 %.not6.i.i.i, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %i.xk = load ptr, ptr %i.ca, align 8, !tbaa !89, !noalias !732 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.xk, null
  %i.xl = load i32, ptr %i.er, align 8, !noalias !732
  br i1 %.not.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %i.xm = load i32, ptr %i.es, align 4
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.preheader, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i"
  %.sroa.0306.sroa.0.0 = phi i32 [ %i.yi, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ], [ 0, %.lr.ph.split.i.i.i.preheader ] ; 5 uses
  %i.xn = mul i32 %.sroa.0306.sroa.0.0, 506952113
  %i.xo = and i32 %i.xn, 1073741823
  %i.xp = urem i32 %i.xo, %i.xl                   ; 2 uses
  %i.xq = zext nneg i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw [12 x i8], ptr %i.xk, i64 %i.xq ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !noalias !732 ; 2 uses
  %i.xu = and i32 %i.xt, 2
  %.not15.i.i.i.i.i.i.i.i = icmp eq i32 %i.xu, 0
  br i1 %.not15.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i
  %i.xv = load i32, ptr %i.xr, align 4, !tbaa !91, !noalias !732
  %i.xw = icmp eq i32 %i.xv, %.sroa.0306.sroa.0.0
  br i1 %i.xw, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.xx = load i32, ptr %i.yd, align 4, !tbaa !91, !noalias !732
  %i.xy = icmp eq i32 %i.xx, %.sroa.0306.sroa.0.0
  br i1 %i.xy, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.da
  %.01016.i20.i.i.i.i.i.i.i = phi i32 [ %i.yb, %bb.da ], [ %i.xp, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i = phi i32 [ %i.xz, %bb.da ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.xz = add i32 %.017.i19.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.ya = add i32 %i.xz, %.01016.i20.i.i.i.i.i.i.i
  %i.yb = and i32 %i.ya, %i.xm                    ; 2 uses
  %i.yc = zext i32 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [12 x i8], ptr %i.xk, i64 %i.yc ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !noalias !732 ; 2 uses
  %i.yg = and i32 %i.yf, 2
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.yg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", label %bb.da, !llvm.loop !1

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i": ; preds = %bb.da, %.lr.ph.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i = phi i32 [ %i.xt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.yf, %bb.da ]
  %i.yh = trunc i32 %.lcssa17.i.i.i.i.i.i.i to i1
  br i1 %i.yh, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i"

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", %.lr.ph.split.i.i.i
  %i.yi = add i32 %.sroa.0306.sroa.0.0, 1         ; 2 uses
  %.not.i.i.i114 = icmp eq i32 %i.yi, %i.xj
  br i1 %.not.i.i.i114, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i, !llvm.loop !13

"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", %.lr.ph
  %.sroa.0306.sroa.0.1 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0306.sroa.0.0, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i" ] ; 2 uses
  %.not4.i.i = icmp eq i32 %.sroa.0306.sroa.0.1, %i.xj
  br i1 %.not4.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i"
  %.sroa.0.1 = phi i32 [ %.sroa.0.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.0.0467, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 10 uses
  %.sroa.8.1 = phi i32 [ %.sroa.8.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.8.0468, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 5 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.14.0469, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 6 uses
  %i.yj = phi i32 [ %i.zl, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.0306.sroa.0.1, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ] ; 2 uses
  %.val2.val.i.i.i.i = load i16, ptr %i.eq, align 1, !tbaa !56
  %i.yk = call noundef i16 @llvm.bswap.i16(i16 %.val2.val.i.i.i.i)
  %i.yl = zext i16 %i.yk to i32
  %i.ym = mul i32 %.sroa.0313.0.extract.trunc471, %i.yl
  %i.yn = add i32 %i.ym, %i.yj
  %.not.i.i.i.i117 = icmp slt i32 %.sroa.8.1, %.sroa.0.1
  %.pre = add i32 %.sroa.8.1, 1                   ; 3 uses
  br i1 %.not.i.i.i.i117, label %.critedge.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph.i.i
  %i.yo = icmp slt i32 %.sroa.0.1, 0
  br i1 %i.yo, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit, label %bb.dc, !prof !65

bb.dc:                                            ; preds = %bb.db
  %.not.i123 = icmp ugt i32 %.pre, %.sroa.0.1
  br i1 %.not.i123, label %.preheader.i, label %.critedge.i.i.i.i, !prof !65

.preheader.i:                                     ; preds = %bb.dc, %.preheader.i
  %.043.i = phi i32 [ %i.yr, %.preheader.i ], [ %.sroa.0.1, %bb.dc ] ; 2 uses
  %i.yp = lshr i32 %.043.i, 1
  %i.yq = add i32 %.043.i, 8
  %i.yr = add i32 %i.yq, %i.yp                    ; 7 uses
  %i.ys = icmp ugt i32 %.pre, %i.yr
  br i1 %i.ys, label %.preheader.i, label %.thread.i, !llvm.loop !15

.thread.i:                                        ; preds = %.preheader.i
  %i.yt = icmp ugt i32 %i.yr, 1073741823
  br i1 %i.yt, label %.critedge.i, label %bb.dd, !prof !65

.critedge.i:                                      ; preds = %.thread.i
  %i.yu = xor i32 %.sroa.0.1, -1
  br label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit

bb.dd:                                            ; preds = %.thread.i
  %.not49.i = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not49.i, label %bb.de, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.de:                                            ; preds = %bb.dd
  %.not9.i.i.i = icmp eq ptr %.sroa.14.1, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.yv = shl nuw i32 %i.yr, 2
  %i.yw = zext i32 %i.yv to i64
  %i.yx = call ptr @hb_malloc(i64 noundef %i.yw) #10 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.yx, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %bb.dg, !prof !65

bb.dg:                                            ; preds = %bb.df
  %i.yy = zext i32 %.sroa.8.1 to i64
  %i.yz = shl nuw nsw i64 %i.yy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yx, ptr nonnull readonly align 1 %.sroa.14.1, i64 range(i64 0, 309237645241) %i.yz, i1 false), !alias.scope !733
  br label %.critedge.i.i.i.i

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.de, %bb.dd
  %i.za = phi ptr [ null, %bb.de ], [ %.sroa.14.1, %bb.dd ]
  %i.zb = shl nuw i32 %i.yr, 2
  %i.zc = zext i32 %i.zb to i64
  %i.zd = call ptr @hb_realloc(ptr noundef %i.za, i64 noundef %i.zc) #10 ; 2 uses
  %.not22.i = icmp eq ptr %i.zd, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i.i.i.i, !prof !93

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %bb.df, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.ze = xor i32 %.sroa.0.1, -1
  br label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit

_ZN11hb_vector_tIjLb1EE5allocEjb.exit:            ; preds = %bb.db, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.critedge.i
  %.sroa.0.5 = phi i32 [ %.sroa.0.1, %bb.db ], [ %i.ze, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.yu, %.critedge.i ]
  store i32 %i.et, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i, %bb.dg, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.dc
  %.sroa.0.3 = phi i32 [ %i.yr, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.0.1, %bb.dc ], [ %i.yr, %bb.dg ], [ %.sroa.0.1, %.lr.ph.i.i ]
  %.sroa.14.3 = phi ptr [ %i.zd, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.14.1, %bb.dc ], [ %i.yx, %bb.dg ], [ %.sroa.14.1, %.lr.ph.i.i ] ; 2 uses
  %i.zf = zext i32 %.sroa.8.1 to i64
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.3, i64 %i.zf
  store i32 %i.yn, ptr %i.zg, align 4, !tbaa !91
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i:    ; preds = %.critedge.i.i.i.i, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit
  %.sroa.0.2 = phi i32 [ %.sroa.0.3, %.critedge.i.i.i.i ], [ %.sroa.0.5, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit ] ; 5 uses
  %.sroa.8.2 = phi i32 [ %.pre, %.critedge.i.i.i.i ], [ %.sroa.8.1, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit ] ; 5 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.3, %.critedge.i.i.i.i ], [ %.sroa.14.1, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit ] ; 5 uses
  %i.zh = add i32 %i.yj, 1                        ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.zh, %i.xj
  br i1 %.not2.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i
  %i.zi = load ptr, ptr %i.ca, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.zi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i
  %i.zj = load i32, ptr %i.er, align 8, !tbaa !90
  %i.zk = load i32, ptr %i.es, align 4
  br label %bb.dh

bb.dh:                                            ; preds = %.backedge.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i
  %i.zl = phi i32 [ %i.zh, %.lr.ph.split.i.i.i.i.i.i ], [ %i.aah, %.backedge.i.i.i.i.i.i ] ; 6 uses
  %i.zm = mul i32 %i.zl, 506952113
  %i.zn = and i32 %i.zm, 1073741823
  %i.zo = urem i32 %i.zn, %i.zj                   ; 2 uses
  %i.zp = zext nneg i32 %i.zo to i64
  %i.zq = getelementptr inbounds nuw [12 x i8], ptr %i.zi, i64 %i.zp ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.zs = load i32, ptr %i.zr, align 4            ; 2 uses
  %i.zt = and i32 %i.zs, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.zt, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.dh
  %i.zu = load i32, ptr %i.zq, align 4, !tbaa !91
  %i.zv = icmp eq i32 %i.zu, %i.zl
  br i1 %i.zv, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.di:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.zw = load i32, ptr %i.aac, align 4, !tbaa !91
  %i.zx = icmp eq i32 %i.zw, %i.zl
  br i1 %i.zx, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.di
  %.01016.i20.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aaa, %bb.di ], [ %i.zo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.zy, %bb.di ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.zy = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.zz = add i32 %i.zy, %.01016.i20.i.i.i.i.i.i.i.i.i.i
  %i.aaa = and i32 %i.zz, %i.zk                   ; 2 uses
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [12 x i8], ptr %i.zi, i64 %i.aab ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  %i.aae = load i32, ptr %i.aad, align 4          ; 2 uses
  %i.aaf = and i32 %i.aae, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i118 = icmp eq i32 %i.aaf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i118, label %.backedge.i.i.i.i.i.i, label %bb.di, !llvm.loop !1

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.di, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.zs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aae, %bb.di ]
  %i.aag = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.aag, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, %bb.dh
  %i.aah = add i32 %i.zl, 1                       ; 2 uses
  %.not.i.i.i.i.i.i119 = icmp eq i32 %i.aah, %i.xj
  br i1 %.not.i.i.i.i.i.i119, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %bb.dh, !llvm.loop !14

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i
  %.not.i.i120 = icmp eq i32 %i.zl, %i.xj
  br i1 %.not.i.i120, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i, !llvm.loop !715

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i", %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i, %.lr.ph.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", %.backedge.i.i.i.i.i.i, %.lr.ph.i.i.i, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit"
  %.sroa.0.4 = phi i32 [ %.sroa.0.0467, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ], [ %.sroa.0.2, %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i ], [ %.sroa.0.2, %.backedge.i.i.i.i.i.i ], [ %.sroa.0.0467, %.lr.ph.i.i.i ], [ %.sroa.0.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.0.2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0467, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ] ; 2 uses
  %.sroa.8.3 = phi i32 [ %.sroa.8.0468, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ], [ %.sroa.8.2, %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i ], [ %.sroa.8.2, %.backedge.i.i.i.i.i.i ], [ %.sroa.8.0468, %.lr.ph.i.i.i ], [ %.sroa.8.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.8.2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.8.0468, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ] ; 2 uses
  %.sroa.14.4 = phi ptr [ %.sroa.14.0469, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit" ], [ %.sroa.14.2, %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i ], [ %.sroa.14.2, %.backedge.i.i.i.i.i.i ], [ %.sroa.14.0469, %.lr.ph.i.i.i ], [ %.sroa.14.2, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INSC_10SmallTypesEE25collect_variation_indicesEPNSB_38hb_collect_variation_indices_context_tEEUljE_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.14.2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.14.0469, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i" ] ; 2 uses
  %i.aai = add i64 %.sroa.0313.0470, 1            ; 2 uses
  %.sroa.0313.0.extract.trunc = trunc i64 %i.aai to i32 ; 2 uses
  %.not432 = icmp eq i32 %.sroa.0313.0.extract.trunc, %.sroa.0311.0.extract.trunc
  br i1 %.not432, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS0_10SmallTypesEE25collect_variation_indicesEPNS_38hb_collect_variation_indices_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_zip_iter_t.202, align 8  ; 6 uses
  %3 = alloca %struct.hb_filter_iter_t.198, align 8 ; 7 uses
  %4 = alloca %struct.hb_zip_iter_t.202, align 8  ; 12 uses
  %5 = alloca %struct.hb_map_iter_t.269, align 8  ; 11 uses
  %6 = alloca %struct.hb_filter_iter_t.271, align 8 ; 4 uses
  %7 = alloca %struct.hb_zip_iter_t.275, align 8  ; 12 uses
  %8 = alloca %struct.hb_map_t, align 8           ; 12 uses
  %9 = alloca %struct.hb_map_iter_t.206, align 8  ; 10 uses
  %10 = alloca %struct.hb_filter_iter_t.198, align 8 ; 4 uses
  %11 = alloca %struct.hb_vector_t.287, align 8   ; 8 uses
  %12 = alloca %struct.hb_map_iter_t.206, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !56   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !65 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i16, ptr %i.g, align 1, !tbaa !56   ; 2 uses
  %i.i = icmp eq i16 %i.h, 0
  %i.j = tail call i16 @llvm.bswap.i16(i16 %i.h)
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %.0.i.i33 = select i1 %i.i, ptr @_hb_NullPool, ptr %i.l, !prof !65 ; 2 uses
  %i.m = load i16, ptr %.0.i.i, align 1, !tbaa !56, !noalias !772
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m) ; 2 uses
  switch i16 %i.n, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !772, !srcloc !53
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !772, !srcloc !53
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !56, !noalias !772
  %.not.i.i.i.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !772, !srcloc !53
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !56, !noalias !772
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32                     ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !56, !noalias !772
  %i.u = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !193

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.11.0.i = phi i32 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.v = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !56, !noalias !772
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !772, !srcloc !53
  %.pre11.i.i.i.i.i = load i16, ptr %i.o, align 1, !tbaa !56, !noalias !772
  %i.x = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.y = load i16, ptr %i.q, align 1, !tbaa !56, !noalias !772
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y) ; 2 uses
  br i1 %i.x, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !193

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !noalias !772, !srcloc !53
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i
  %.sroa.11.1.i = phi i32 [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.t, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.t, %bb.e ]
  %i.aa = phi i16 [ %i.w, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ %i.z, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.z, %bb.e ]
  %.0.i6.i.i.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ %i.q, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !56, !noalias !772
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = icmp ugt i16 %i.aa, %i.ad
  br i1 %i.ae, label %bb.f, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit", !prof !65

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.af = load i16, ptr %i.o, align 1, !tbaa !56, !noalias !772
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS2_9GPOS_impl9MarkArrayETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISC_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISD_EEE4iterEEEOSC_OSD_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.11.2.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.1.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ah, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ai = zext i16 %i.n to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 2
  %i.ak = load i16, ptr %.0.i.i33, align 1, !tbaa !56, !noalias !773
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.al to i64
  store i32 %i.ai, ptr %7, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %.sroa.4142.0..sroa_idx, align 4
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5143.0..sroa_idx, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6144.0..sroa_idx, align 8
  %.sroa.7145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %.sroa.7145.0..sroa_idx, align 4
  %.sroa.8146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.11.2.i, ptr %.sroa.8146.0..sroa_idx, align 8
  %.sroa.9147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %.sroa.9147.0..sroa_idx, align 4
  %.sroa.10148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.aj, ptr %.sroa.10148.0..sroa_idx, align 8
  %.sroa.11149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11149.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_9GPOS_impl10MarkRecordEEE24hb_filter_iter_factory_tIRPK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_"(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nonnull %i.am, ptr nonnull @_ZL8hb_first)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 64, i1 false)
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr @_ZL9hb_second, ptr %.sroa.4151.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_ZL21remap_feature_indicesRK8hb_set_tRK8hb_map_tRK12hb_hashmap_tIj9hb_pair_tIPKvS8_ELb0EEPS2_SD_:bb.a
bb.r:                                             ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i:   ; preds = %bb.r, %bb.l
  %i.dv = load i32, ptr %i.q, align 4, !tbaa !171 ; 2 uses
  %.not.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, label %bb.s, !prof !65

bb.s:                                             ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i
  %i.dw = add i32 %i.dv, -1
  store i32 %i.dw, ptr %i.q, align 4, !tbaa !171
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i, %bb.s
  %i.dx = load i32, ptr %i.f, align 8, !tbaa !165 ; 2 uses
  %.not = icmp eq i32 %i.dx, -1
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL16_filter_tag_listP11hb_vector_tIjLb0EEPK8hb_set_t(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hb_set_t, align 8           ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !140  ; 2 uses
  %i.c = shl i32 %i.b, 2
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.043.i = phi i32 [ %i.f, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = lshr i32 %.043.i, 1
  %i.e = add i32 %.043.i, 8
  %i.f = add i32 %i.e, %i.d                       ; 5 uses
  %.not136 = icmp ult i32 %i.c, %i.f
  br i1 %.not136, label %.thread.i, label %.preheader.i, !llvm.loop !2

.thread.i:                                        ; preds = %.preheader.i
  %i.g = icmp ugt i32 %i.f, 1073741823
  br i1 %i.g, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !65

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.h = shl nuw i32 %i.f, 2
  %i.i = zext i32 %i.h to i64
  %i.j = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.i) #10 ; 2 uses
  %.not22.i = icmp eq ptr %i.j, null
  %spec.select135 = select i1 %.not22.i, i32 -1, i32 %i.f, !prof !93
  %.pre = load i32, ptr %i.a, align 4, !tbaa !140
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %.thread.i
  %i.k = phi i32 [ %i.b, %.thread.i ], [ %.pre, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ] ; 2 uses
  %.sroa.29.2 = phi ptr [ null, %.thread.i ], [ %i.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ] ; 2 uses
  %.sink.i = phi i32 [ -1, %.thread.i ], [ %spec.select135, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store atomic i32 1, ptr %2 monotonic, align 8
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  store i8 1, ptr %i.n, align 8, !tbaa !63
  store i32 0, ptr %i.o, align 4, !tbaa !64
  store atomic i32 0, ptr %i.p monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.q, i8 0, i64 33, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138  ; 2 uses
  %i.t = zext i32 %i.k to i64
  %.idx = shl nuw nsw i64 %i.t, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.not149 = icmp eq i32 %i.k, 0
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sink.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sink.in.i.i.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i32, ptr @_hb_NullPool, align 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  %.sroa.0.0.lcssa = phi i32 [ %.sink.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ], [ %.sroa.0.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 10 uses
  %.sroa.17.0.lcssa = phi i32 [ 0, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ], [ %.sroa.17.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 6 uses
  %.sroa.29.0.lcssa = phi ptr [ %.sroa.29.2, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ], [ %.sroa.29.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 6 uses
  %.010.lcssa = phi i1 [ false, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ], [ %.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ]
  %.not.i13 = icmp slt i32 %.sroa.17.0.lcssa, %.sroa.0.0.lcssa
  %.pre168 = add i32 %.sroa.17.0.lcssa, 1         ; 6 uses
  br i1 %.not.i13, label %.critedge.i14, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ad = icmp slt i32 %.sroa.0.0.lcssa, 0
  br i1 %i.ad, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit58, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  %.not.i38 = icmp ugt i32 %.pre168, %.sroa.0.0.lcssa
  br i1 %.not.i38, label %.preheader.i40, label %.critedge.i14, !prof !65

.preheader.i40:                                   ; preds = %bb.c, %.preheader.i40
  %.043.i41 = phi i32 [ %i.ag, %.preheader.i40 ], [ %.sroa.0.0.lcssa, %bb.c ] ; 2 uses
  %i.ae = lshr i32 %.043.i41, 1
  %i.af = add i32 %.043.i41, 8
  %i.ag = add i32 %i.af, %i.ae                    ; 8 uses
  %i.ah = icmp ugt i32 %.pre168, %i.ag
  br i1 %i.ah, label %.preheader.i40, label %.thread.i42, !llvm.loop !2

.thread.i42:                                      ; preds = %.preheader.i40
  %i.ai = icmp ugt i32 %i.ag, 1073741823
  br i1 %i.ai, label %.critedge.i57, label %bb.d, !prof !65

.critedge.i57:                                    ; preds = %.thread.i42
  %i.aj = xor i32 %.sroa.0.0.lcssa, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit58

bb.d:                                             ; preds = %.thread.i42
  %.not49.i44 = icmp eq i32 %.sroa.0.0.lcssa, 0
  br i1 %.not49.i44, label %bb.e, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i45

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i54 = icmp eq ptr %.sroa.29.0.lcssa, null
  br i1 %.not9.i.i.i54, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i45, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = shl nuw i32 %i.ag, 2
  %i.al = zext i32 %i.ak to i64
  %i.am = call ptr @hb_malloc(i64 noundef %i.al) #10 ; 4 uses
  %.not10.i.i.i55 = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i55, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i52, label %bb.g, !prof !65

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i56 = icmp eq i32 %.sroa.17.0.lcssa, 0
  br i1 %.not.i.i.i.i56, label %.critedge.i14, label %bb.h, !prof !65

bb.h:                                             ; preds = %bb.g
  %i.an = zext i32 %.sroa.17.0.lcssa to i64
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %.sroa.29.0.lcssa, i64 range(i64 0, 309237645241) %i.ao, i1 false), !alias.scope !867
  br label %.critedge.i14

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i45: ; preds = %bb.e, %bb.d
  %i.ap = phi ptr [ null, %bb.e ], [ %.sroa.29.0.lcssa, %bb.d ]
  %i.aq = shl nuw i32 %i.ag, 2
  %i.ar = zext i32 %i.aq to i64
  %i.as = call ptr @hb_realloc(ptr noundef %i.ap, i64 noundef %i.ar) #10 ; 2 uses
  %.not22.i46 = icmp eq ptr %i.as, null
  br i1 %.not22.i46, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i52, label %.critedge.i14, !prof !93

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i52: ; preds = %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i45
  %i.at = xor i32 %.sroa.0.0.lcssa, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit58

_ZN11hb_vector_tIjLb0EE5allocEjb.exit58:          ; preds = %bb.b, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i52, %.critedge.i57
  %.sroa.0.7 = phi i32 [ %.sroa.0.0.lcssa, %bb.b ], [ %i.at, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i52 ], [ %i.aj, %.critedge.i57 ]
  %i.au = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.au, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

.critedge.i14:                                    ; preds = %._crit_edge, %bb.g, %bb.h, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i45, %bb.c
  %.pre-phi = phi i32 [ %.pre168, %bb.c ], [ 1, %bb.g ], [ %.pre168, %bb.h ], [ %.pre168, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i45 ], [ %.pre168, %._crit_edge ]
  %.sroa.0.3 = phi i32 [ %.sroa.0.0.lcssa, %bb.c ], [ %i.ag, %bb.g ], [ %i.ag, %bb.h ], [ %i.ag, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i45 ], [ %.sroa.0.0.lcssa, %._crit_edge ]
  %.sroa.29.4 = phi ptr [ %.sroa.29.0.lcssa, %bb.c ], [ %i.am, %bb.g ], [ %i.am, %bb.h ], [ %i.as, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i45 ], [ %.sroa.29.0.lcssa, %._crit_edge ] ; 2 uses
  %i.av = zext i32 %.sroa.17.0.lcssa to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.29.4, i64 %i.av
  store i32 0, ptr %i.aw, align 4, !tbaa !91
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit:   ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit58, %.critedge.i14
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %.critedge.i14 ], [ %.sroa.0.7, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit58 ]
  %.sroa.17.2 = phi i32 [ %.pre-phi, %.critedge.i14 ], [ %.sroa.17.0.lcssa, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit58 ]
  %.sroa.29.5 = phi ptr [ %.sroa.29.4, %.critedge.i14 ], [ %.sroa.29.0.lcssa, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit58 ]
  %i.ax = load i32, ptr %0, align 8, !tbaa !91
  store i32 %.sroa.0.4, ptr %0, align 8, !tbaa !91
  store i32 %.sroa.17.2, ptr %i.a, align 4, !tbaa !91
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !304
  store ptr %.sroa.29.5, ptr %i.r, align 8, !tbaa !304
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.az = add i32 %i.ax, -1
  %spec.select.i.i.i = icmp ult i32 %i.az, -2
  br i1 %spec.select.i.i.i, label %bb.i, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.i:                                             ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit
  call void @hb_free(ptr noundef %i.ay) #10
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit, %bb.i
  ret i1 %.010.lcssa

bb.j:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %.0154 = phi ptr [ %i.s, %.lr.ph ], [ %i.eo, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 2 uses
  %.010153 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 4 uses
  %.sroa.29.0152 = phi ptr [ %.sroa.29.2, %.lr.ph ], [ %.sroa.29.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 9 uses
  %.sroa.17.0151 = phi i32 [ 0, %.lr.ph ], [ %.sroa.17.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 8 uses
  %.sroa.0.0150 = phi i32 [ %.sink.i, %.lr.ph ], [ %.sroa.0.1, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit ] ; 13 uses
  %i.ba = load i32, ptr %.0154, align 4, !tbaa !91 ; 9 uses
  %.not12 = icmp eq i32 %i.ba, 0
  br i1 %.not12, label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = lshr i32 %i.ba, 9                       ; 6 uses
  %i.bc = load atomic i32, ptr %i.p monotonic, align 8 ; 2 uses
  %i.bd = load i32, ptr %i.v, align 4, !tbaa !78  ; 3 uses
  %i.be = icmp ult i32 %i.bc, %i.bd
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !74  ; 3 uses
  br i1 %i.be, label %bb.l, label %._crit_edge.i.i.i.i.i.i, !prof !79

bb.l:                                             ; preds = %bb.k
  %i.bg = zext i32 %i.bc to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !81
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bi, %i.bb
  br i1 %.not.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.l, %bb.k
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bd, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bj = add nsw i32 %i.bd, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.p, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.bj, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bk = add i32 %.0212.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i
  %i.bl = lshr i32 %i.bk, 1                       ; 4 uses
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !81 ; 2 uses
  %i.bq = icmp slt i32 %i.bb, %i.bp
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.br = add nsw i32 %i.bl, -1
  br label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bb, %i.bp
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = add nuw nsw i32 %i.bl, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.223.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bs, %bb.o ], [ %.0212.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.br, %bb.m ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i: ; preds = %bb.n
  store atomic i32 %i.bl, ptr %i.p monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i:     ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i, %bb.l
  %i.bt = phi i64 [ %i.bm, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i ], [ %i.bg, %bb.l ]
  %.sink.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !84
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = lshr i32 %i.ba, 6
  %i.cb = and i32 %i.ca, 7
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !86
  %i.cf = and i32 %i.ba, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 %i.ce, %i.cg
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = and i8 %i.ci, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit: ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i, %bb.q
  %.0.i.i.i.i.i = phi i8 [ %i.cj, %bb.q ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %i.ck = load i8, ptr %i.x, align 8, !tbaa !69, !range !70, !noundef !71
  %.not137 = icmp eq i8 %i.ck, %.0.i.i.i.i.i
  br i1 %.not137, label %bb.r, label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

bb.r:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit
  %i.cl = load atomic i32, ptr %i.y monotonic, align 4 ; 2 uses
  %i.cm = load i32, ptr %i.z, align 4, !tbaa !78  ; 3 uses
  %i.cn = icmp ult i32 %i.cl, %i.cm
  %i.co = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 3 uses
  br i1 %i.cn, label %bb.s, label %._crit_edge.i.i.i.i.i.i15, !prof !79

bb.s:                                             ; preds = %bb.r
  %i.cp = zext i32 %i.cl to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !81
  %.not.i.i.i.i.i.i31 = icmp eq i32 %i.cr, %i.bb
  br i1 %.not.i.i.i.i.i.i31, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i27, label %._crit_edge.i.i.i.i.i.i15

._crit_edge.i.i.i.i.i.i15:                        ; preds = %bb.s, %bb.r
  %.not1.i.i.i.i.i.i.i.i.i.i16 = icmp sgt i32 %i.cm, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i16, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i18, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i18:           ; preds = %._crit_edge.i.i.i.i.i.i15
  %i.cs = add nsw i32 %i.cm, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i.i.i.i.i19:                     ; preds = %bb.w, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i18
  %.0203.i.i.i.i.i.i.i.i.i.i20 = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i24, %bb.w ], [ %i.cs, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i18 ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i21 = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i23, %bb.w ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i18 ] ; 2 uses
  %i.ct = add i32 %.0212.i.i.i.i.i.i.i.i.i.i21, %.0203.i.i.i.i.i.i.i.i.i.i20
  %i.cu = lshr i32 %i.ct, 1                       ; 4 uses
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !81 ; 2 uses
  %i.cz = icmp slt i32 %i.bb, %i.cy
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i19
  %i.da = add nsw i32 %i.cu, -1
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i19
  %.not28.i.i.i.i.i.i.i.i.i.i22 = icmp eq i32 %i.bb, %i.cy
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i22, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i26, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = add nuw nsw i32 %i.cu, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.223.i.i.i.i.i.i.i.i.i.i23 = phi i32 [ %i.db, %bb.v ], [ %.0212.i.i.i.i.i.i.i.i.i.i21, %bb.t ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i24 = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i20, %bb.v ], [ %i.da, %bb.t ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i25 = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i23, %.2.i.i.i.i.i.i.i.i.i.i24
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i25, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32, label %.lr.ph.i.i.i.i.i.i.i.i.i.i19, !llvm.loop !0

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i26: ; preds = %bb.u
  store atomic i32 %i.cu, ptr %i.y monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i27

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i27:   ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i26, %bb.s
  %i.dc = phi i64 [ %i.cv, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i26 ], [ %i.cp, %bb.s ]
  %.sink.i.i.i.i.i.i29 = load ptr, ptr %.sink.in.i.i.i.i.i.i28, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %.sink.i.i.i.i.i.i29, null
  br i1 %.not.i.i.i.i.i30, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32, label %bb.x

bb.x:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i27
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !84
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i29, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = lshr i32 %i.ba, 6
  %i.dk = and i32 %i.dj, 7
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !86
  %i.do = and i32 %i.ba, 63
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = lshr i64 %i.dn, %i.dp
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = and i8 %i.dr, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32: ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i15, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i27, %bb.x
  %.0.i.i.i.i.i17 = phi i8 [ %i.ds, %bb.x ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i27 ], [ 0, %._crit_edge.i.i.i.i.i.i15 ], [ 0, %bb.w ]
  %i.dt = load i8, ptr %i.ab, align 8, !tbaa !69, !range !70, !noundef !71
  %.not138 = icmp eq i8 %i.dt, %.0.i.i.i.i.i17
  br i1 %.not138, label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32
  %i.du = trunc nuw i8 %.0.i.i.i.i.i to i1
  br i1 %i.du, label %bb.z, label %bb.aa, !prof !65

bb.z:                                             ; preds = %bb.y
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.n, i32 noundef %i.ba)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.aa:                                            ; preds = %bb.y
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.n, i32 noundef %i.ba)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.z, %bb.aa
  %.not.i33 = icmp slt i32 %.sroa.17.0151, %.sroa.0.0150
  %.pre169 = add i32 %.sroa.17.0151, 1            ; 3 uses
  br i1 %.not.i33, label %.critedge.i37, label %bb.ab

bb.ab:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.dv = icmp slt i32 %.sroa.0.0150, 0
  br i1 %i.dv, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit79, label %bb.ac, !prof !65

bb.ac:                                            ; preds = %bb.ab
  %.not.i59 = icmp ugt i32 %.pre169, %.sroa.0.0150
  br i1 %.not.i59, label %.preheader.i61, label %.critedge.i37, !prof !65

.preheader.i61:                                   ; preds = %bb.ac, %.preheader.i61
  %.043.i62 = phi i32 [ %i.dy, %.preheader.i61 ], [ %.sroa.0.0150, %bb.ac ] ; 2 uses
  %i.dw = lshr i32 %.043.i62, 1
  %i.dx = add i32 %.043.i62, 8
  %i.dy = add i32 %i.dx, %i.dw                    ; 7 uses
  %i.dz = icmp ugt i32 %.pre169, %i.dy
  br i1 %i.dz, label %.preheader.i61, label %.thread.i63, !llvm.loop !2

.thread.i63:                                      ; preds = %.preheader.i61
  %i.ea = icmp ugt i32 %i.dy, 1073741823
  br i1 %i.ea, label %.critedge.i78, label %bb.ad, !prof !65

.critedge.i78:                                    ; preds = %.thread.i63
  %i.eb = xor i32 %.sroa.0.0150, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit79

bb.ad:                                            ; preds = %.thread.i63
  %.not49.i65 = icmp eq i32 %.sroa.0.0150, 0
  br i1 %.not49.i65, label %bb.ae, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i66

bb.ae:                                            ; preds = %bb.ad
  %.not9.i.i.i75 = icmp eq ptr %.sroa.29.0152, null
  br i1 %.not9.i.i.i75, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i66, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ec = shl nuw i32 %i.dy, 2
  %i.ed = zext i32 %i.ec to i64
  %i.ee = call ptr @hb_malloc(i64 noundef %i.ed) #10 ; 3 uses
  %.not10.i.i.i76 = icmp eq ptr %i.ee, null
  br i1 %.not10.i.i.i76, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i73, label %bb.ag, !prof !65

bb.ag:                                            ; preds = %bb.af
  %i.ef = zext i32 %.sroa.17.0151 to i64
  %i.eg = shl nuw nsw i64 %i.ef, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr nonnull readonly align 1 %.sroa.29.0152, i64 range(i64 0, 309237645241) %i.eg, i1 false), !alias.scope !868
  br label %.critedge.i37

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i66: ; preds = %bb.ae, %bb.ad
  %i.eh = phi ptr [ null, %bb.ae ], [ %.sroa.29.0152, %bb.ad ]
  %i.ei = shl nuw i32 %i.dy, 2
  %i.ej = zext i32 %i.ei to i64
  %i.ek = call ptr @hb_realloc(ptr noundef %i.eh, i64 noundef %i.ej) #10 ; 2 uses
  %.not22.i67 = icmp eq ptr %i.ek, null
  br i1 %.not22.i67, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i73, label %.critedge.i37, !prof !93

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i73: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i66, %bb.af
  %i.el = xor i32 %.sroa.0.0150, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit79

_ZN11hb_vector_tIjLb0EE5allocEjb.exit79:          ; preds = %bb.ab, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i73, %.critedge.i78
  %.sroa.0.8 = phi i32 [ %.sroa.0.0150, %bb.ab ], [ %i.el, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i73 ], [ %i.eb, %.critedge.i78 ]
  store i32 %i.ac, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i37:                                    ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, %bb.ag, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i66, %bb.ac
  %.sroa.0.5 = phi i32 [ %i.dy, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i66 ], [ %.sroa.0.0150, %bb.ac ], [ %i.dy, %bb.ag ], [ %.sroa.0.0150, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit ]
  %.sroa.29.6 = phi ptr [ %i.ek, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i66 ], [ %.sroa.29.0152, %bb.ac ], [ %i.ee, %bb.ag ], [ %.sroa.29.0152, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit ] ; 2 uses
  %i.em = zext i32 %.sroa.17.0151 to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.29.6, i64 %i.em
  store i32 %i.ba, ptr %i.en, align 4, !tbaa !91
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %.critedge.i37, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit79, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit, %bb.j
  %.sroa.0.1 = phi i32 [ %.sroa.0.0150, %bb.j ], [ %.sroa.0.0150, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ %.sroa.0.0150, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32 ], [ %.sroa.0.5, %.critedge.i37 ], [ %.sroa.0.8, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit79 ] ; 2 uses
  %.sroa.17.1 = phi i32 [ %.sroa.17.0151, %bb.j ], [ %.sroa.17.0151, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ %.sroa.17.0151, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32 ], [ %.pre169, %.critedge.i37 ], [ %.sroa.17.0151, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit79 ] ; 2 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0152, %bb.j ], [ %.sroa.29.0152, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ %.sroa.29.0152, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32 ], [ %.sroa.29.6, %.critedge.i37 ], [ %.sroa.29.0152, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit79 ] ; 2 uses
  %.1 = phi i1 [ %.010153, %bb.j ], [ %.010153, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit ], [ true, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit32 ], [ %.010153, %.critedge.i37 ], [ %.010153, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit79 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0154, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.eo, %i.u
  br i1 %.not, label %._crit_edge, label %bb.j
}

declare void @hb_ot_layout_collect_features(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT17FeatureVariations43collect_feature_substitutes_with_variationsEPNS_49hb_collect_feature_substitutes_with_var_context_tE(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 1, !tbaa !67   ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZNK2OT22FeatureVariationRecord43collect_feature_substitutes_with_variationsEPNS_49hb_collect_feature_substitutes_with_var_context_tEPKv.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = tail call noundef i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 49 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 50
  %wide.trip.count = zext i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %_ZNK2OT22FeatureVariationRecord43collect_feature_substitutes_with_variationsEPNS_49hb_collect_feature_substitutes_with_var_context_tEPKv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT22FeatureVariationRecord43collect_feature_substitutes_with_variationsEPNS_49hb_collect_feature_substitutes_with_var_context_tEPKv.exit._crit_edge.thread25, label %bb.c, !llvm.loop !869

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.n = trunc nuw i64 %indvars.iv to i32
  store i32 %i.n, ptr %i.f, align 4, !tbaa !161
  %i.o = load i32, ptr %i.c, align 1, !tbaa !67
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = zext i32 %i.p to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.q
  br i1 %.not.i, label %bb.d, label %_ZNK2OT7ArrayOfINS_22FeatureVariationRecordENS_7NumTypeILb1EjLj4EEEEixEi.exit, !prof !79

bb.d:                                             ; preds = %bb.c
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !53
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_22FeatureVariationRecordENS_7NumTypeILb1EjLj4EEEEixEi.exit

_ZNK2OT7ArrayOfINS_22FeatureVariationRecordENS_7NumTypeILb1EjLj4EEEEixEi.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.r, %bb.d ], [ @_hb_NullPool, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %.0.i, align 1, !tbaa !67  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  %i.u = call i32 @llvm.bswap.i32(i32 %i.s)
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %.0.i.i.i = select i1 %i.t, ptr @_hb_NullPool, ptr %i.w, !prof !65
  call void @_ZNK2OT12ConditionSet20keep_with_variationsEPNS_49hb_collect_feature_substitutes_with_var_context_tE(ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i.i, ptr noundef nonnull %1)
  %i.x = load i8, ptr %i.h, align 8, !tbaa !158, !range !70, !noundef !71
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %_ZNK2OT22FeatureVariationRecord43collect_feature_substitutes_with_variationsEPNS_49hb_collect_feature_substitutes_with_var_context_tEPKv.exit

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_22FeatureVariationRecordENS_7NumTypeILb1EjLj4EEEEixEi.exit
  %i.z = load i8, ptr %i.i, align 1, !tbaa !159, !range !70, !noundef !71
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZNK2OT22FeatureVariationRecord43collect_feature_substitutes_with_variationsEPNS_49hb_collect_feature_substitutes_with_var_context_tEPKv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !67 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %.0.i.i6.i = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.ag, !prof !65 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i6.i, i64 6 ; 2 uses
  %i.aj = load i16, ptr %i.ah, align 1, !tbaa !56 ; 2 uses
  %i.ak = call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i64
  %.idx.i.i = mul nuw nsw i64 %i.al, 6
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i
  %.not11.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not11.i.i, label %_ZNK2OT24FeatureTableSubstitution43collect_feature_substitutes_with_variationsEPNS_49hb_collect_feature_substitutes_with_var_context_tE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZNK2OT30FeatureTableSubstitutionRecord43collect_feature_substitutes_with_variationsEP12hb_hashmap_tIjPKNS_7FeatureELb0EER8hb_set_tPKS7_PKv.exit
  %.012.i.i = phi ptr [ %i.cz, %_ZNK2OT30FeatureTableSubstitutionRecord43collect_feature_substitutes_with_variationsEP12hb_hashmap_tIjPKNS_7FeatureELb0EER8hb_set_tPKS7_PKv.exit ], [ %i.ai, %bb.f ] ; 5 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !155
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !870, !nonnull !71, !align !305 ; 2 uses
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !157 ; 5 uses
  %i.aq = load i16, ptr %.012.i.i, align 1, !tbaa !56
  %i.ar = call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i32                   ; 3 uses
  %i.at = lshr i32 %i.as, 9                       ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.av = load atomic i32, ptr %i.au monotonic, align 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !78 ; 3 uses
  %i.ay = icmp ult i32 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !74 ; 3 uses
  br i1 %i.ay, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i, !prof !79

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bb = zext i32 %i.av to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !81
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bd, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.g, %.lr.ph.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ax, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.be = add nsw i32 %i.ax, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.k, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %i.be, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bf = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = lshr i32 %i.bf, 1                       ; 4 uses
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !81 ; 2 uses
  %i.bl = icmp slt i32 %i.at, %i.bk
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = add nsw i32 %i.bg, -1
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.at, %i.bk
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = add nuw nsw i32 %i.bg, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.223.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.j ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i, %bb.j ], [ %i.bm, %bb.h ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  store atomic i32 %i.bg, ptr %i.au monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i:   ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i, %bb.g
  %i.bo = phi i64 [ %i.bh, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i ], [ %i.bb, %bb.g ]
  %.sink.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.sink.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !84
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = lshr i32 %i.as, 6
  %i.bw = and i32 %i.bv, 7
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !86
  %i.ca = and i32 %i.as, 63
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = lshr i64 %i.bz, %i.cb
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = and i8 %i.cd, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i: ; preds = %bb.k, %bb.l, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i8 [ %i.ce, %bb.l ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %bb.k ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !69, !range !70, !noundef !71
  %.not.i11 = icmp eq i8 %i.cg, %.0.i.i.i.i.i.i
  br i1 %.not.i11, label %_ZNK2OT30FeatureTableSubstitutionRecord43collect_feature_substitutes_with_variationsEP12hb_hashmap_tIjPKNS_7FeatureELb0EER8hb_set_tPKS7_PKv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ch = load i16, ptr %.012.i.i, align 1, !tbaa !56
  %i.ci = call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  store i32 %i.cj, ptr %i.a, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 2
  %i.cl = load i32, ptr %i.ck, align 1, !tbaa !67 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  %i.cn = call i32 @llvm.bswap.i32(i32 %i.cl)
  %i.co = zext i32 %i.cn to i64
end_hunk_1
