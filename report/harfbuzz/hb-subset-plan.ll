Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan?download=true
inline.NumInlined: 7106
inline.NumDeleted: 3185
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN16hb_subset_plan_tC2EP9hb_face_tPK17hb_subset_input_t:bb.a
  %i.cez = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.cfa = load i8, ptr %i.cez, align 8, !tbaa !63, !range !64, !noundef !65
  %i.cfb = trunc nuw i8 %i.cfa to i1
  br i1 %i.cfb, label %_ZL20_remove_invalid_gidsP8hb_set_tj.exit116.i, label %bb.ol, !prof !66

bb.ol:                                            ; preds = %_ZNK9hb_face_t14get_num_glyphsEv.exit115.i
  call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ed, i32 noundef %.0.i114.i, i32 noundef -1)
  br label %_ZL20_remove_invalid_gidsP8hb_set_tj.exit116.i

_ZL20_remove_invalid_gidsP8hb_set_tj.exit116.i:   ; preds = %bb.ol, %_ZNK9hb_face_t14get_num_glyphsEv.exit115.i
  %i.cfc = load atomic i32, ptr %i.blr monotonic, align 8 ; 2 uses
  %i.cfd = load i32, ptr %i.blt, align 4, !tbaa !251 ; 3 uses
  %i.cfe = icmp ult i32 %i.cfc, %i.cfd
  %i.cff = load ptr, ptr %i.blw, align 8, !tbaa !150 ; 3 uses
  br i1 %i.cfe, label %bb.om, label %._crit_edge.i.i.i.i.i.i117.i, !prof !68

bb.om:                                            ; preds = %_ZL20_remove_invalid_gidsP8hb_set_tj.exit116.i
  %i.cfg = zext i32 %i.cfc to i64                 ; 2 uses
  %i.cfh = getelementptr inbounds nuw [8 x i8], ptr %i.cff, i64 %i.cfg
  %i.cfi = load i32, ptr %i.cfh, align 4, !tbaa !253
  %.not.i.i.i.i.i.i133.i = icmp eq i32 %i.cfi, 2335266
  br i1 %.not.i.i.i.i.i.i133.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i129.i, label %._crit_edge.i.i.i.i.i.i117.i

._crit_edge.i.i.i.i.i.i117.i:                     ; preds = %bb.om, %_ZL20_remove_invalid_gidsP8hb_set_tj.exit116.i
  %.not1.i.i.i.i.i.i.i.i.i.i118.i = icmp sgt i32 %i.cfd, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i118.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i120.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit134.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i120.i:        ; preds = %._crit_edge.i.i.i.i.i.i117.i
  %i.cfj = add nsw i32 %i.cfd, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i121.i

.lr.ph.i.i.i.i.i.i.i.i.i.i121.i:                  ; preds = %bb.oq, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i120.i
  %.0203.i.i.i.i.i.i.i.i.i.i122.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i126.i, %bb.oq ], [ %i.cfj, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i120.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i123.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i125.i, %bb.oq ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i120.i ] ; 2 uses
  %i.cfk = add i32 %.0212.i.i.i.i.i.i.i.i.i.i123.i, %.0203.i.i.i.i.i.i.i.i.i.i122.i
  %i.cfl = lshr i32 %i.cfk, 1                     ; 4 uses
  %i.cfm = zext nneg i32 %i.cfl to i64            ; 2 uses
  %i.cfn = shl nuw nsw i64 %i.cfm, 3
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cff, i64 %i.cfn
  %i.cfp = load i32, ptr %i.cfo, align 4, !tbaa !253 ; 2 uses
  %i.cfq = icmp sgt i32 %i.cfp, 2335266
  br i1 %i.cfq, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i121.i
  %i.cfr = add nsw i32 %i.cfl, -1
  br label %bb.oq

bb.oo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i121.i
  %.not28.i.i.i.i.i.i.i.i.i.i124.i = icmp eq i32 %i.cfp, 2335266
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i124.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i128.i, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.cfs = add nuw nsw i32 %i.cfl, 1
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.on
  %.223.i.i.i.i.i.i.i.i.i.i125.i = phi i32 [ %i.cfs, %bb.op ], [ %.0212.i.i.i.i.i.i.i.i.i.i123.i, %bb.on ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i126.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i122.i, %bb.op ], [ %i.cfr, %bb.on ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i127.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i125.i, %.2.i.i.i.i.i.i.i.i.i.i126.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i127.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit134.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i121.i, !llvm.loop !6

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i128.i: ; preds = %bb.oo
  store atomic i32 %i.cfl, ptr %i.blr monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i129.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i129.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i128.i, %bb.om
  %i.cft = phi i64 [ %i.cfm, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i128.i ], [ %i.cfg, %bb.om ]
  %.sink.in.i.i.i.i.i.i130.i = getelementptr inbounds nuw i8, ptr %i.biu, i64 56
  %.sink.i.i.i.i.i.i131.i = load ptr, ptr %.sink.in.i.i.i.i.i.i130.i, align 8, !tbaa !254 ; 2 uses
  %.not.i.i.i.i.i132.i = icmp eq ptr %.sink.i.i.i.i.i.i131.i, null
  br i1 %.not.i.i.i.i.i132.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit134.i, label %bb.or

bb.or:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i129.i
  %i.cfu = getelementptr inbounds nuw [8 x i8], ptr %i.cff, i64 %i.cft
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfu, i64 4
  %i.cfw = load i32, ptr %i.cfv, align 4, !tbaa !256
  %i.cfx = zext i32 %i.cfw to i64
  %i.cfy = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i131.i, i64 %i.cfx
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfy, i64 48
  %i.cga = load i64, ptr %i.cfz, align 8, !tbaa !258
  %i.cgb = trunc i64 %i.cga to i8
  %i.cgc = lshr i8 %i.cgb, 6
  %i.cgd = and i8 %i.cgc, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit134.i

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit134.i: ; preds = %bb.oq, %bb.or, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i129.i, %._crit_edge.i.i.i.i.i.i117.i
  %.0.i.i.i.i.i119.i = phi i8 [ %i.cgd, %bb.or ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i129.i ], [ 0, %._crit_edge.i.i.i.i.i.i117.i ], [ 0, %bb.oq ]
  %i.cge = load i8, ptr %i.bmw, align 8, !tbaa !63, !range !64, !noundef !65
  %.not146.i = icmp eq i8 %i.cge, %.0.i.i.i.i.i119.i
  br i1 %.not146.i, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit134.i
  call void @_Z32collect_layout_variation_indicesP16hb_subset_plan_t(ptr noundef nonnull %0) #14
  br label %bb.ot

bb.ot:                                            ; preds = %bb.os, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit134.i
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %40) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #14
  %i.cgf = load ptr, ptr %i.bja, align 8, !tbaa !125 ; 3 uses
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
  %i.cgj = load ptr, ptr %i.cgi, align 8, !tbaa !236
  call void @hb_blob_destroy(ptr noundef %i.cgj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #14
  %i.cgk = load i8, ptr %i.oe, align 8, !tbaa !208, !range !64, !noundef !65
  %i.cgl = trunc nuw i8 %i.cgk to i1
  br i1 %i.cgl, label %bb.ov, label %bb.sk, !prof !68

bb.ov:                                            ; preds = %_ZL24_populate_gids_to_retainP16hb_subset_plan_tP8hb_set_t.exit
  %i.cgm = load i32, ptr %i.of, align 8, !tbaa !555
  %i.cgn = and i32 %i.cgm, 2
  %i.cgo = icmp ne i32 %i.cgn, 0                  ; 2 uses
  %i.cgp = load ptr, ptr %i.qt, align 8, !tbaa !215 ; 4 uses
  %i.cgq = load ptr, ptr %i.qv, align 8, !tbaa !216 ; 4 uses
  %i.cgr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.cgs = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ed) ; 3 uses
  %i.cgt = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.cgq, i32 noundef %i.cgs) ; 0 uses
  %i.cgu = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.cgp, i32 noundef %i.cgs) ; 0 uses
  %i.cgv = call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i32 noundef %i.cgs, i1 noundef zeroext false) ; 0 uses
  %i.cgw = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 2 uses
  %i.cgx = load i32, ptr %i.cgw, align 4, !tbaa !245
  %.not58.i = icmp eq i32 %i.cgx, 0
  br i1 %.not58.i, label %bb.qh, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.cgy = getelementptr i8, ptr %2, i64 164      ; 2 uses
  %.val31.i = load i32, ptr %i.cgy, align 4, !tbaa !244 ; 2 uses
  %i.cgz = getelementptr i8, ptr %2, i64 176      ; 2 uses
  %.val32.i = load ptr, ptr %i.cgz, align 8, !tbaa !147 ; 3 uses
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
  %i.chf = load i32, ptr %i.che, align 4, !noalias !578
  %i.chg = trunc i32 %i.chf to i1
  br i1 %i.chg, label %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i, label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.us.i.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i
  %i.chh = add i32 %.sroa.5.sroa.0.0.i.i.i, -1    ; 2 uses
  %i.chi = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 12
  %i.chj = icmp eq i32 %i.chh, 0
  br i1 %i.chj, label %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.us.i.i.i.i.i.i, !llvm.loop !9

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
  store i8 1, ptr %i.chm, align 8, !tbaa !193
  store i32 0, ptr %i.chn, align 4, !tbaa !194
  store atomic i32 0, ptr %i.cho monotonic, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.chp, i8 0, i64 33, i1 false)
  %.not9.i.i.i.i.i.i = icmp eq i32 %.sroa.5.sroa.0.0.insert.insert.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS6_KFbvERK4$_20LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK4$_28LSI_0ELSD_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEERKSP_.exit.i", label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i
  %i.chq = getelementptr inbounds nuw i8, ptr %13, i64 64
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i", %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i"
  %i.chr = phi i8 [ 0, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i" ], [ %.pre138.i, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i" ]
  %.us-phi5711.i.us.us.i.i.i.i.i = phi i32 [ %.sroa.5.sroa.0.0.insert.insert.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i" ], [ %i.chw, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i" ]
  %.us-phi810.i.us.us.i.i.i.i.i = phi ptr [ %.sroa.02.1.i.i.i, %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.preheader.split.us.i.i.i.i.i" ], [ %i.chy, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i" ] ; 2 uses
  %i.chs = getelementptr inbounds nuw i8, ptr %.us-phi810.i.us.us.i.i.i.i.i, i64 8
  %.val1.i.i.i.us.us.i.i.i.i.i = load i32, ptr %i.chs, align 4, !tbaa !157 ; 2 uses
  %i.cht = trunc nuw i8 %i.chr to i1
  br i1 %i.cht, label %bb.oy, label %bb.ox, !prof !66

bb.ox:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i"
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.chm, i32 noundef %.val1.i.i.i.us.us.i.i.i.i.i)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i

bb.oy:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i"
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.chm, i32 noundef %.val1.i.i.i.us.us.i.i.i.i.i)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i: ; preds = %bb.oy, %bb.ox
  %i.chu = add i32 %.us-phi5711.i.us.us.i.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i860 = icmp eq i32 %i.chu, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i860, label %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS6_KFbvERK4$_20LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK4$_28LSI_0ELSD_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEERKSP_.exit.i", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i
  %i.chv = add i32 %i.chw, -1                     ; 2 uses
  %.not.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i = icmp eq i32 %i.chv, 0
  br i1 %.not.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i, label %"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS6_KFbvERK4$_20LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK4$_28LSI_0ELSD_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEERKSP_.exit.i", label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i, !llvm.loop !10

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i: ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i
  %i.chw = phi i32 [ %i.chv, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i ], [ %i.chu, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i ] ; 2 uses
  %i.chx = phi ptr [ %i.chy, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i ], [ %.us-phi810.i.us.us.i.i.i.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i ] ; 2 uses
  %i.chy = getelementptr inbounds nuw i8, ptr %i.chx, i64 12 ; 2 uses
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chx, i64 16
  %i.cia = load i32, ptr %i.chz, align 4
  %i.cib = trunc i32 %i.cia to i1
  br i1 %i.cib, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i, !llvm.loop !10

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS5_KFbvERK4$_20LPv0EEMS5_FRjvEL24hb_function_sortedness_t0ELSC_0EERK4$_28LSH_0ELSC_0EEjEppEv.exit.i.loopexit.us.us.i.i.i.i.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EdeEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i
  %.pre138.i = load i8, ptr %i.chq, align 8, !tbaa !63
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS4_KFbvERK4$_20LPv0EERS4_EdeEv.exit.i.i.i.i.i.us.us.i.i.i.i.i", !llvm.loop !534

"_ZN8hb_set_tC2I13hb_map_iter_tIS1_I16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEEMS6_KFbvERK4$_20LPv0EEMS6_FRjvEL24hb_function_sortedness_t0ELSD_0EERK4$_28LSI_0ELSD_0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSD_0EEERKSP_.exit.i": ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tElsEj.exit.i.us.us.i.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIjjLb1EE6item_tEERS3_EppEv.exit.i.i.i.i.i.i.us.i.us.us.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE6valuesEv.exit.i
  %i.cic = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.chm)
  %i.cid = load i32, ptr %i.cgw, align 4, !tbaa !245
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
  store i8 1, ptr %i.cig, align 8, !tbaa !193
  store i32 0, ptr %i.cih, align 4, !tbaa !194
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
  %i.cit = load ptr, ptr %i.cis, align 8, !tbaa !233 ; 4 uses
  %i.ciu = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 4 uses
  %i.civ = load i32, ptr %i.ciu, align 4, !tbaa !231 ; 3 uses
  %.not.i.i.i.i.i106 = icmp eq i32 %i.civ, 0
  br i1 %.not.i.i.i.i.i106, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i124, label %bb.pa, !prof !66

bb.pa:                                            ; preds = %._crit_edge.i105
  %.sroa.2.8.insert.ext.i.i.i.i107 = zext i32 %i.civ to i64 ; 2 uses
  call fastcc void @_ZL13hb_qsort_loopI9hb_pair_tIjjEZN10hb_array_tIS1_E6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEEUlRKS1_SG_E_EvPS6_mT0_(ptr noundef %i.cit, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i.i.i107)
  %.idx.i.i.i.i.i.i108 = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i107, 3
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.cit, i64 %.idx.i.i.i.i.i.i108
  %.not1.i.i.i.i.i109 = icmp eq i32 %i.civ, 1
  br i1 %.not1.i.i.i.i.i109, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i124, label %.preheader.preheader.i.i.i.i.i.i110

.preheader.preheader.i.i.i.i.i.i110:              ; preds = %bb.pa
  %.01522.i.i.i.i.i.i111 = getelementptr inbounds nuw i8, ptr %i.cit, i64 8
  br label %.preheader.i.i.i.i.i.i112

.preheader.i.i.i.i.i.i112:                        ; preds = %.critedge.i.loopexit.i.i.i.i.i122, %.preheader.preheader.i.i.i.i.i.i110
  %.01523.i.i.i.i.i.i113 = phi ptr [ %.015.i.i.i.i.i.i123, %.critedge.i.loopexit.i.i.i.i.i122 ], [ %.01522.i.i.i.i.i.i111, %.preheader.preheader.i.i.i.i.i.i110 ] ; 3 uses
  %.pre.i.i.i.i.i.i114 = load i32, ptr %.01523.i.i.i.i.i.i113, align 4, !tbaa !242 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i115

.lr.ph.i.i.i.i.i.i115:                            ; preds = %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i130, %.preheader.i.i.i.i.i.i112
  %.019.i.i.i.i.i.i116 = phi ptr [ %i.cix, %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i130 ], [ %.01523.i.i.i.i.i.i113, %.preheader.i.i.i.i.i.i112 ] ; 4 uses
  %i.cix = getelementptr inbounds i8, ptr %.019.i.i.i.i.i.i116, i64 -8 ; 4 uses
  %i.ciy = load i32, ptr %i.cix, align 4, !tbaa !242 ; 3 uses
  %i.ciz = icmp ult i32 %i.ciy, %.pre.i.i.i.i.i.i114
  br i1 %i.ciz, label %.critedge.i.loopexit.i.i.i.i.i122, label %bb.pb

bb.pb:                                            ; preds = %.lr.ph.i.i.i.i.i.i115
  %i.cja = icmp ugt i32 %i.ciy, %.pre.i.i.i.i.i.i114
  %.phi.trans.insert.i.i.i.i.i.i117 = getelementptr inbounds i8, ptr %.019.i.i.i.i.i.i116, i64 -4 ; 2 uses
  %.pre24.i.i.i.i.i.i118 = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i117, align 4, !tbaa !157 ; 2 uses
  %.phi.trans.insert25.i.i.i.i.i.i119 = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.i116, i64 4 ; 2 uses
  %.pre26.i.i.i.i.i.i120 = load i32, ptr %.phi.trans.insert25.i.i.i.i.i.i119, align 4, !tbaa !157 ; 2 uses
  %i.cjb = icmp ugt i32 %.pre24.i.i.i.i.i.i118, %.pre26.i.i.i.i.i.i120
  %or.cond.i.i.i.i.i.i121 = select i1 %i.cja, i1 true, i1 %i.cjb
  br i1 %or.cond.i.i.i.i.i.i121, label %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i130, label %.critedge.i.loopexit.i.i.i.i.i122

.critedge.i.loopexit.i.i.i.i.i122:                ; preds = %_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i130, %bb.pb, %.lr.ph.i.i.i.i.i.i115
  %.015.i.i.i.i.i.i123 = getelementptr inbounds nuw i8, ptr %.01523.i.i.i.i.i.i113, i64 8 ; 2 uses
  %i.cjc = icmp ult ptr %.015.i.i.i.i.i.i123, %i.ciw
  br i1 %i.cjc, label %.preheader.i.i.i.i.i.i112, label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i124, !llvm.loop !503

_ZZN10hb_array_tI9hb_pair_tIjjEE6_qsortIS1_TnPN12hb_enable_ifIXsr3std18is_move_assignableIT_EE5valueEvE4typeELPv0EEE17hb_sorted_array_tIS1_E11hb_priorityILj1EEENKUlRKS1_SF_E_clESF_SF_.exit.thread17.i.i.i.i.i.i130: ; preds = %bb.pb
  store i32 %.pre.i.i.i.i.i.i114, ptr %i.cix, align 4, !tbaa !157
  store i32 %i.ciy, ptr %.019.i.i.i.i.i.i116, align 4, !tbaa !157
  store i32 %.pre26.i.i.i.i.i.i120, ptr %.phi.trans.insert.i.i.i.i.i.i117, align 4, !tbaa !157
  store i32 %.pre24.i.i.i.i.i.i118, ptr %.phi.trans.insert25.i.i.i.i.i.i119, align 4, !tbaa !157
  %i.cjd = icmp ugt ptr %i.cix, %i.cit
  br i1 %i.cjd, label %.lr.ph.i.i.i.i.i.i115, label %.critedge.i.loopexit.i.i.i.i.i122, !llvm.loop !504

_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i124: ; preds = %.critedge.i.loopexit.i.i.i.i.i122, %bb.pa, %._crit_edge.i105
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(49) %i.cig, i1 noundef zeroext true)
  %.fca.0.load.i.i.i.i125 = load ptr, ptr %11, align 8
  %.fca.1.gep.i.i.i.i126 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.fca.1.load.i.i.i.i127 = load i64, ptr %.fca.1.gep.i.i.i.i126, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  store ptr %.fca.0.load.i.i.i.i125, ptr %16, align 8
  %i.cje = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i64 %.fca.1.load.i.i.i.i127, ptr %i.cje, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(49) %i.cig, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cjf = trunc i64 %.fca.1.load.i.i.i.i127 to i32 ; 2 uses
  %.not6071.i = icmp eq i32 %i.cjf, -1
  br i1 %.not6071.i, label %._crit_edge73.i, label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5qsortEv.exit.i124
  %i.cjg = load i64, ptr @_hb_NullPool, align 16
  %i.cjh = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  br label %bb.pw

bb.pc:                                            ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i104, %.lr.ph.i97
  %i.cji = phi i32 [ %i.cil, %.lr.ph.i97 ], [ %i.clx, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i104 ] ; 7 uses
  %spec.store.select6769.i = phi i32 [ 0, %.lr.ph.i97 ], [ %spec.store.select66.i, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit.i104 ] ; 5 uses
  %i.cjj = icmp eq i32 %i.cji, 0
  br i1 %i.cjj, label %bb.pd, label %bb.pg

bb.pd:                                            ; preds = %bb.pc
  %i.cjk = load i32, ptr %i.cin, align 4, !tbaa !231 ; 3 uses
  %i.cjl = load i32, ptr %i.bw, align 8, !tbaa !232
  %.not.i.i132 = icmp slt i32 %i.cjk, %i.cjl
  br i1 %.not.i.i132, label %.critedge.i.i134, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.cjm = add i32 %i.cjk, 1
  %i.cjn = call noundef zeroext i1 @_ZN11hb_vector_tI9hb_pair_tIjjELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i32 noundef %i.cjm, i1 noundef zeroext false)
  br i1 %i.cjn, label %..critedge_crit_edge.i.i, label %bb.pf, !prof !68

..critedge_crit_edge.i.i:                         ; preds = %bb.pe
  %.pre.i.i133 = load i32, ptr %i.cin, align 4, !tbaa !231
  br label %.critedge.i.i134

bb.pf:                                            ; preds = %bb.pe
  store i64 %i.cio, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i

.critedge.i.i134:                                 ; preds = %..critedge_crit_edge.i.i, %bb.pd
  %i.cjo = phi i32 [ %.pre.i.i133, %..critedge_crit_edge.i.i ], [ %i.cjk, %bb.pd ] ; 2 uses
  %i.cjp = load ptr, ptr %i.cip, align 8, !tbaa !233
  %i.cjq = add i32 %i.cjo, 1
  store i32 %i.cjq, ptr %i.cin, align 4, !tbaa !231
  %i.cjr = zext i32 %i.cjo to i64
  %i.cjs = getelementptr inbounds nuw [8 x i8], ptr %i.cjp, i64 %i.cjr
  store i64 0, ptr %i.cjs, align 4, !tbaa !157
  br label %_ZN11hb_vector_tI9hb_pair_tIjjELb1EE4pushIJS1_EEEPS1_DpOT_.exit.i

bb.pg:                                            ; preds = %bb.pc
  %i.cjt = load ptr, ptr %i.cgz, align 8, !tbaa !147 ; 4 uses
  %.not.i59.i = icmp eq ptr %i.cjt, null
  br i1 %.not.i59.i, label %.loopexit.i101, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.cju = mul i32 %i.cji, 506952113
  %i.cjv = and i32 %i.cju, 1073741823
  %i.cjw = load i32, ptr %i.cim, align 8, !tbaa !234
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
  %i.cke = load i32, ptr %i.cjz, align 4, !tbaa !157
  %i.ckf = icmp eq i32 %i.cke, %i.cji
  br i1 %i.ckf, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i, label %.lr.ph.i.i.i99

bb.pi:                                            ; preds = %.lr.ph.i.i.i99
  %i.ckg = load i32, ptr %i.ckm, align 4, !tbaa !157
  %i.ckh = icmp eq i32 %i.ckg, %i.cji
  br i1 %i.ckh, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i, label %.lr.ph.i.i.i99, !llvm.loop !0

.lr.ph.i.i.i99:                                   ; preds = %.lr.ph.i.i.i.i98, %bb.pi
  %.01016.i20.i.i.i = phi i32 [ %i.ckk, %bb.pi ], [ %i.cjx, %.lr.ph.i.i.i.i98 ]
  %.017.i19.i.i.i = phi i32 [ %i.cki, %bb.pi ], [ 0, %.lr.ph.i.i.i.i98 ]
  %i.cki = add i32 %.017.i19.i.i.i, 1             ; 2 uses
  %i.ckj = add i32 %i.cki, %.01016.i20.i.i.i
  %i.ckk = and i32 %i.ckj, %i.ckd                 ; 2 uses
  %i.ckl = zext i32 %i.ckk to i64                 ; 2 uses
  %i.ckm = getelementptr inbounds nuw [12 x i8], ptr %i.cjt, i64 %i.ckl ; 2 uses
  %i.ckn = getelementptr inbounds nuw i8, ptr %i.ckm, i64 4
end_hunk_0
begin_hunk_1_@_ZNK2OT19CmapSubtableTrimmedINS_7NumTypeILb1EtLj2EEEE15collect_mappingEP8hb_set_tP8hb_map_t:bb.a

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.f, %bb.g
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !157
  %i.ad = mul i32 %.val.i, -1640531535
  %i.ae = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !652
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT19CmapSubtableTrimmedINS_7NumTypeILb1EjLj4EEEE15collect_mappingEP8hb_set_tP8hb_map_t(ptr noundef nonnull align 1 dereferenceable(22) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 1, !tbaa !39
  %i.e = tail call noundef i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !39   ; 2 uses
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = tail call noundef i32 @llvm.bswap.i32(i32 %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 6 uses
  %i.l = load i32, ptr %i.f, align 1, !tbaa !39
  %i.m = call noundef i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = zext i32 %i.m to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %.not.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit, !prof !68

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !69
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit

_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.o, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.p = load i16, ptr %.0.i, align 1, !tbaa !74
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.q = trunc nuw i64 %indvars.iv to i32
  %i.r = add i32 %i.e, %i.q                       ; 2 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.s = load i32, ptr %i.f, align 1, !tbaa !39
  %i.t = call noundef i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = zext i32 %i.t to i64
  %.not.i9 = icmp samesign ult i64 %indvars.iv, %i.u
  br i1 %.not.i9, label %bb.e, label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit11, !prof !68

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !69
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  %.pre = load i32, ptr %i.a, align 4, !tbaa !157
  br label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit11

_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit11: ; preds = %bb.d, %bb.e
  %i.w = phi i32 [ %.pre, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %.0.i10 = phi ptr [ %i.v, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %i.x = load i16, ptr %.0.i10, align 1, !tbaa !74
  %i.y = call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  store i32 %i.z, ptr %i.b, align 4, !tbaa !157
  %i.aa = load i8, ptr %i.k, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g, !prof !66

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit11
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.j, i32 noundef %i.w)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit11
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.j, i32 noundef %i.w)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.f, %bb.g
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !157
  %i.ac = mul i32 %.val.i, -1640531535
  %i.ad = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEEixEi.exit, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !653
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat12EE15collect_mappingEP8hb_set_tP8hb_map_tj(ptr noundef nonnull align 1 dereferenceable(28) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 1, !tbaa !39   ; 2 uses
  %.not62 = icmp eq i32 %i.b, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph61, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.03059 = phi i32 [ 0, %.lr.ph61 ], [ %.1, %.loopexit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.o = load i32, ptr %i.n, align 1, !tbaa !39
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 1, !tbaa !39
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %i.r)
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.s, i32 1114111) ; 7 uses
  %i.t = icmp ugt i32 %i.p, %.sroa.speculated
  %i.u = icmp ult i32 %i.p, %.03059
  %i.v = select i1 %i.t, i1 true, i1 %i.u, !prof !66
  br i1 %i.v, label %.loopexit, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load i32, ptr %i.w, align 1, !tbaa !39   ; 2 uses
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %i.x)
  %.not = icmp eq i32 %i.x, 0                     ; 2 uses
  %spec.select = select i1 %.not, i32 1, i32 %i.y ; 4 uses
  %i.z = zext i1 %.not to i32
  %spec.select40 = add nuw nsw i32 %i.p, %i.z     ; 7 uses
  %.not36 = icmp ult i32 %spec.select, %3
  br i1 %.not36, label %bb.d, label %.loopexit, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.aa = add i32 %spec.select, %.sroa.speculated
  %i.ab = sub i32 %i.aa, %spec.select40
  %.not37 = icmp ult i32 %i.ab, %3
  br i1 %.not37, label %bb.f, label %bb.e, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.ac = sub i32 %3, %spec.select
  %i.ad = add i32 %i.ac, %spec.select40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.ad, %bb.e ], [ %.sroa.speculated, %bb.d ] ; 5 uses
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !245
  %reass.sub = sub i32 %.0, %spec.select40
  %i.af = add i32 %reass.sub, 1
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ag) ; 0 uses
  %i.ai = load i8, ptr %i.g, align 8, !tbaa !63, !range !64, !noundef !65
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !66

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %spec.select40, i32 noundef %.0)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %spec.select40, i32 noundef %.0) ; 0 uses
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit: ; preds = %bb.g, %bb.h
  %.not3954 = icmp ugt i32 %spec.select40, %.0
  br i1 %.not3954, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit
  %i.al = load i8, ptr %i.h, align 8, !tbaa !195, !range !64, !noundef !65
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.lr.ph.split, label %.loopexit, !prof !68

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit
  %4 = add i32 %.05255, 1
  %.pr = load i8, ptr %i.h, align 8, !tbaa !195
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %5 = phi i8 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %.05255.a = phi i32 [ %i.do, %.lr.ph.splitthread-pre-split ], [ %spec.select40, %.lr.ph ] ; 4 uses
  %.05255 = phi i32 [ %4, %.lr.ph.splitthread-pre-split ], [ %spec.select, %.lr.ph ] ; 2 uses
  %6 = mul i32 %.05255.a, 506952113
  %i.an = trunc nuw i8 %5 to i1
  br i1 %i.an, label %bb.i, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit, !prof !68

bb.i:                                             ; preds = %.lr.ph.split
  %i.ao = load i32, ptr %i.i, align 8, !tbaa !243 ; 2 uses
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = add i32 %i.ap, %i.ao
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !244
  %.not34.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not34.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr %i.e, align 4, !tbaa !245
  %i.at = shl i32 %i.as, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.at, i32 4)
  %i.au = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated.i, i1 true) ; 2 uses
  %narrow.i.i = sub nuw nsw i32 32, %i.au         ; 3 uses
  %i.av = zext nneg i32 %narrow.i.i to i64        ; 2 uses
  %i.aw = shl nuw nsw i64 12, %i.av               ; 2 uses
  %i.ax = tail call noundef ptr @hb_malloc(i64 noundef %i.aw) #14, !inline_history !259 ; 3 uses
  %.not29.not.i = icmp eq ptr %i.ax, null
  br i1 %.not29.not.i, label %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit, label %bb.k, !prof !66

bb.k:                                             ; preds = %bb.j
  %i.ay = and i64 %i.aw, 4294967288               ; 2 uses
  %.not.i31.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i31.i, label %_ZL9hb_memsetPvij.exit.i, label %bb.l, !prof !66

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 0, i64 %i.ay, i1 false)
  br label %_ZL9hb_memsetPvij.exit.i

_ZL9hb_memsetPvij.exit.i:                         ; preds = %bb.l, %bb.k
  %i.az = load i32, ptr %i.j, align 4, !tbaa !244 ; 2 uses
  %.not.i32.i = icmp eq i32 %i.az, 0
  %i.ba = add i32 %i.az, 1
  %spec.select.i.i = select i1 %.not.i32.i, i32 0, i32 %i.ba ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !147 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !243
  store i32 0, ptr %i.e, align 4, !tbaa !245
  %notmask.i = shl nsw i32 -1, %narrow.i.i
  %i.bc = xor i32 %notmask.i, -1
  store i32 %i.bc, ptr %i.j, align 4, !tbaa !244
  %i.bd = icmp eq i32 %i.au, 0
  br i1 %i.bd, label %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i, label %bb.m, !prof !66

bb.m:                                             ; preds = %_ZL9hb_memsetPvij.exit.i
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIj6TripleLb0EE9prime_forEj.prime_mod, i64 %i.av
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !157
  br label %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i

_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i:     ; preds = %bb.m, %_ZL9hb_memsetPvij.exit.i
  %.0.i.i = phi i32 [ %i.bf, %bb.m ], [ 2147483647, %_ZL9hb_memsetPvij.exit.i ]
  store i32 %.0.i.i, ptr %i.l, align 8, !tbaa !234
  %.tr.i = trunc nuw nsw i32 %narrow.i.i to i16
  %i.bg = shl nuw nsw i16 %.tr.i, 1
  store i16 %i.bg, ptr %i.m, align 2, !tbaa !249
  store ptr %i.ax, ptr %i.k, align 8, !tbaa !147
  %.not43.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not43.i, label %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i
  %wide.trip.count.i = zext i32 %spec.select.i.i to i64
  br label %.lr.ph.i42

_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit.thread:    ; preds = %bb.o, %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i
  tail call void @hb_free(ptr noundef %i.bb) #14, !inline_history !259
  br label %.critedge.i

.lr.ph.i42:                                       ; preds = %bb.o, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %indvars.iv.i ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = trunc i32 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i42
  %i.bl = lshr i32 %i.bj, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIjjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bh, i32 noundef %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, i1 noundef zeroext true) #15, !inline_history !259 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit.thread, label %.lr.ph.i42, !llvm.loop !7

_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit:           ; preds = %bb.j
  store i8 0, ptr %i.h, align 8, !tbaa !195
  br label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit

.critedge.i:                                      ; preds = %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit.thread, %bb.i
  %i.bo = and i32 %6, 1073741823                  ; 2 uses
  %i.bp = load i32, ptr %i.l, align 8, !tbaa !234
  %i.bq = urem i32 %i.bo, %i.bp                   ; 2 uses
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !147 ; 5 uses
  %i.bs = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = and i32 %i.bv, 2
  %.not44.i = icmp eq i32 %i.bw, 0
  br i1 %.not44.i, label %.loopexit.thread.i.thread, label %.lr.ph.i

.loopexit.thread.i.thread:                        ; preds = %.critedge.i
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  br label %bb.r

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.p
  %i.bz = phi i32 [ %i.cm, %bb.p ], [ %i.bv, %.critedge.i ]
  %i.ca = phi ptr [ %i.ck, %bb.p ], [ %i.bt, %.critedge.i ]
  %.048.i = phi i32 [ %i.cf, %bb.p ], [ 0, %.critedge.i ] ; 2 uses
  %.02946.i = phi i32 [ %i.ci, %bb.p ], [ %i.bq, %.critedge.i ] ; 3 uses
  %.03045.i = phi i32 [ %spec.select.i, %bb.p ], [ -1, %.critedge.i ] ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !157
  %i.cc = icmp eq i32 %i.cb, %.05255.a
  br i1 %i.cc, label %.loopexit.thread.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.cd = trunc i32 %i.bz to i1
  %i.ce = icmp ne i32 %.03045.i, -1
  %or.cond.not.i = select i1 %i.cd, i1 true, i1 %i.ce
  %spec.select.i = select i1 %or.cond.not.i, i32 %.03045.i, i32 %.02946.i ; 2 uses
  %i.cf = add i32 %.048.i, 1                      ; 3 uses
  %i.cg = add i32 %i.cf, %.02946.i
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !244
  %i.ci = and i32 %i.ch, %i.cg                    ; 3 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4            ; 2 uses
  %i.cn = and i32 %i.cm, 2
  %.not.i41 = icmp eq i32 %i.cn, 0
  br i1 %.not.i41, label %.loopexit.thread.i, label %.lr.ph.i, !llvm.loop !1

.loopexit.thread.i:                               ; preds = %bb.p, %.lr.ph.i
  %.03043.i = phi i32 [ %spec.select.i, %bb.p ], [ %.03045.i, %.lr.ph.i ]
  %.02941.i = phi i32 [ %i.ci, %bb.p ], [ %.02946.i, %.lr.ph.i ]
  %.02839.i = phi i32 [ %i.cf, %bb.p ], [ %.048.i, %.lr.ph.i ] ; 2 uses
  %.03043.fr.i = freeze i32 %.03043.i             ; 2 uses
  %i.co = icmp eq i32 %.03043.fr.i, -1
  %spec.select67.i = select i1 %i.co, i32 %.02941.i, i32 %.03043.fr.i
  %.phi.trans.insert = zext i32 %spec.select67.i to i64 ; 2 uses
  %.phi.trans.insert65 = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %.phi.trans.insert
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert65, i64 4
  %.pre = load i32, ptr %.phi.trans.insert66, align 4
  %.pre67 = and i32 %.pre, 2
  %i.cp = icmp eq i32 %.pre67, 0
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %.phi.trans.insert ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 3 uses
  br i1 %i.cp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit.thread.i
  %i.cs = load i32, ptr %i.i, align 8, !tbaa !243
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr %i.i, align 8, !tbaa !243
  %i.cu = load i32, ptr %i.cr, align 4
  %i.cv = and i32 %i.cu, 1
  %i.cw = load i32, ptr %i.e, align 4, !tbaa !245
  %i.cx = sub i32 %i.cw, %i.cv
  store i32 %i.cx, ptr %i.e, align 4, !tbaa !245
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.thread.i.thread, %bb.q, %.loopexit.thread.i
  %i.cy = phi ptr [ %i.by, %.loopexit.thread.i.thread ], [ %i.cr, %bb.q ], [ %i.cr, %.loopexit.thread.i ]
  %i.cz = phi ptr [ %i.bx, %.loopexit.thread.i.thread ], [ %i.cq, %bb.q ], [ %i.cq, %.loopexit.thread.i ] ; 2 uses
  %.0283961.i79 = phi i32 [ 0, %.loopexit.thread.i.thread ], [ %.02839.i, %bb.q ], [ %.02839.i, %.loopexit.thread.i ]
  store i32 %.05255.a, ptr %i.cz, align 4, !tbaa !247
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %.05255, ptr %i.da, align 4, !tbaa !248
  %i.db = shl nuw i32 %i.bo, 2
  %i.dc = or disjoint i32 %i.db, 3
  store i32 %i.dc, ptr %i.cy, align 4
  %i.dd = load <2 x i32>, ptr %i.e, align 4, !tbaa !157
  %i.de = add <2 x i32> %i.dd, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.de, ptr %i.e, align 4, !tbaa !157
  %i.df = load i16, ptr %i.m, align 2, !tbaa !249
  %i.dg = zext i16 %i.df to i32
  %i.dh = icmp ugt i32 %.0283961.i79, %i.dg
  br i1 %i.dh, label %bb.s, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit, !prof !66

bb.s:                                             ; preds = %bb.r
  %i.di = extractelement <2 x i32> %i.de, i64 1
  %i.dj = shl i32 %i.di, 3
  %i.dk = load i32, ptr %i.j, align 4, !tbaa !244 ; 2 uses
  %i.dl = icmp ugt i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.t, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit

bb.t:                                             ; preds = %bb.s
  %i.dm = add i32 %i.dk, -8
  %i.dn = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.dm) ; 0 uses
  br label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit

_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit: ; preds = %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit, %.lr.ph.split, %bb.r, %bb.s, %bb.t
  %i.do = add i32 %.05255.a, 1                    ; 2 uses
  %.not39 = icmp ugt i32 %i.do, %.0
  br i1 %.not39, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !654

.loopexit:                                        ; preds = %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit, %.lr.ph, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit, %bb.c, %bb.b
  %.1 = phi i32 [ %.03059, %bb.b ], [ %.sroa.speculated, %bb.c ], [ %.sroa.speculated, %.lr.ph ], [ %.sroa.speculated, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit ], [ %.sroa.speculated, %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !655
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT25CmapSubtableLongSegmentedINS_20CmapSubtableFormat13EE15collect_mappingEP8hb_set_tP8hb_map_tj(ptr noundef nonnull align 1 dereferenceable(28) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 1, !tbaa !39   ; 2 uses
  %.not55 = icmp eq i32 %i.b, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.a
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 2 uses
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph54, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.02852 = phi i32 [ 0, %.lr.ph54 ], [ %.1, %.loopexit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.o = load i32, ptr %i.n, align 1, !tbaa !39
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 1, !tbaa !39
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %i.r)
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.s, i32 1114111) ; 7 uses
  %i.t = icmp ugt i32 %i.p, %.sroa.speculated
  %i.u = icmp ult i32 %i.p, %.02852
  %i.v = select i1 %i.t, i1 true, i1 %i.u, !prof !66
  br i1 %i.v, label %.loopexit, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load i32, ptr %i.w, align 1, !tbaa !39   ; 2 uses
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %i.x) ; 4 uses
  %.not = icmp ne i32 %i.x, 0
  %.not33 = icmp ult i32 %i.y, %3
  %or.cond = and i1 %.not, %.not33
  br i1 %or.cond, label %bb.d, label %.loopexit, !prof !349

bb.d:                                             ; preds = %bb.c
  %i.z = sub nsw i32 %.sroa.speculated, %i.p      ; 2 uses
  %i.aa = add i32 %i.z, %i.y
  %.not34 = icmp ult i32 %i.aa, %3
  br i1 %.not34, label %bb.f, label %bb.e, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %i.p, %3
  %i.ac = sub i32 %i.ab, %i.y                     ; 2 uses
  %.pre60 = sub i32 %i.ac, %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %reass.sub.pre-phi = phi i32 [ %.pre60, %bb.e ], [ %i.z, %bb.d ]
  %.0 = phi i32 [ %i.ac, %bb.e ], [ %.sroa.speculated, %bb.d ] ; 4 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !245
  %i.ae = add i32 %reass.sub.pre-phi, 1
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.af) ; 0 uses
  %i.ah = load i8, ptr %i.g, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !66

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.p, i32 noundef %.0)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.f, i32 noundef %i.p, i32 noundef %.0) ; 0 uses
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit: ; preds = %bb.g, %bb.h
  %.not3548 = icmp ugt i32 %i.p, %.0
  br i1 %.not3548, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit
  %i.ak = load i8, ptr %i.h, align 8, !tbaa !195, !range !64, !noundef !65
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.loopexit, !prof !68

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit
  %.pr = load i8, ptr %i.h, align 8, !tbaa !195
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %4 = phi i8 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %storemerge49 = phi i32 [ %i.dn, %.lr.ph.splitthread-pre-split ], [ %i.p, %.lr.ph ] ; 4 uses
  %5 = mul i32 %storemerge49, 506952113
  %i.am = trunc nuw i8 %4 to i1
  br i1 %i.am, label %bb.i, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit, !prof !68

bb.i:                                             ; preds = %.lr.ph.split
  %i.an = load i32, ptr %i.i, align 8, !tbaa !243 ; 2 uses
  %i.ao = lshr i32 %i.an, 1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !244
  %.not34.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not34.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !245
  %i.as = shl i32 %i.ar, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.as, i32 4)
  %i.at = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.speculated.i, i1 true) ; 2 uses
  %narrow.i.i = sub nuw nsw i32 32, %i.at         ; 3 uses
  %i.au = zext nneg i32 %narrow.i.i to i64        ; 2 uses
  %i.av = shl nuw nsw i64 12, %i.au               ; 2 uses
  %i.aw = tail call noundef ptr @hb_malloc(i64 noundef %i.av) #14, !inline_history !259 ; 3 uses
  %.not29.not.i = icmp eq ptr %i.aw, null
  br i1 %.not29.not.i, label %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit, label %bb.k, !prof !66

bb.k:                                             ; preds = %bb.j
  %i.ax = and i64 %i.av, 4294967288               ; 2 uses
  %.not.i31.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i31.i, label %_ZL9hb_memsetPvij.exit.i, label %bb.l, !prof !66

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 0, i64 %i.ax, i1 false)
  br label %_ZL9hb_memsetPvij.exit.i

_ZL9hb_memsetPvij.exit.i:                         ; preds = %bb.l, %bb.k
  %i.ay = load i32, ptr %i.j, align 4, !tbaa !244 ; 2 uses
  %.not.i32.i = icmp eq i32 %i.ay, 0
  %i.az = add i32 %i.ay, 1
  %spec.select.i.i = select i1 %.not.i32.i, i32 0, i32 %i.az ; 2 uses
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !147 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !243
  store i32 0, ptr %i.e, align 4, !tbaa !245
  %notmask.i = shl nsw i32 -1, %narrow.i.i
  %i.bb = xor i32 %notmask.i, -1
  store i32 %i.bb, ptr %i.j, align 4, !tbaa !244
  %i.bc = icmp eq i32 %i.at, 0
  br i1 %i.bc, label %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i, label %bb.m, !prof !66

bb.m:                                             ; preds = %_ZL9hb_memsetPvij.exit.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN12hb_hashmap_tIj6TripleLb0EE9prime_forEj.prime_mod, i64 %i.au
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !157
  br label %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i

_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i:     ; preds = %bb.m, %_ZL9hb_memsetPvij.exit.i
  %.0.i.i = phi i32 [ %i.be, %bb.m ], [ 2147483647, %_ZL9hb_memsetPvij.exit.i ]
  store i32 %.0.i.i, ptr %i.l, align 8, !tbaa !234
  %.tr.i = trunc nuw nsw i32 %narrow.i.i to i16
  %i.bf = shl nuw nsw i16 %.tr.i, 1
  store i16 %i.bf, ptr %i.m, align 2, !tbaa !249
  store ptr %i.aw, ptr %i.k, align 8, !tbaa !147
  %.not43.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not43.i, label %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i
  %wide.trip.count.i = zext i32 %spec.select.i.i to i64
  br label %.lr.ph.i37

_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit.thread:    ; preds = %bb.o, %_ZN12hb_hashmap_tIjjLb1EE9prime_forEj.exit.i
  tail call void @hb_free(ptr noundef %i.ba) #14, !inline_history !259
  br label %.critedge.i

.lr.ph.i37:                                       ; preds = %bb.o, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %indvars.iv.i ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = trunc i32 %i.bi to i1
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i37
  %i.bk = lshr i32 %i.bi, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIjjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bg, i32 noundef %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, i1 noundef zeroext true) #15, !inline_history !259 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit.thread, label %.lr.ph.i37, !llvm.loop !7

_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit:           ; preds = %bb.j
  store i8 0, ptr %i.h, align 8, !tbaa !195
  br label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit

.critedge.i:                                      ; preds = %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit.thread, %bb.i
  %i.bn = and i32 %5, 1073741823                  ; 2 uses
  %i.bo = load i32, ptr %i.l, align 8, !tbaa !234
  %i.bp = urem i32 %i.bn, %i.bo                   ; 2 uses
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !147 ; 5 uses
  %i.br = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bv = and i32 %i.bu, 2
  %.not44.i = icmp eq i32 %i.bv, 0
  br i1 %.not44.i, label %.loopexit.thread.i.thread, label %.lr.ph.i

.loopexit.thread.i.thread:                        ; preds = %.critedge.i
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  br label %bb.r

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.p
  %i.by = phi i32 [ %i.cl, %bb.p ], [ %i.bu, %.critedge.i ]
  %i.bz = phi ptr [ %i.cj, %bb.p ], [ %i.bs, %.critedge.i ]
  %.048.i = phi i32 [ %i.ce, %bb.p ], [ 0, %.critedge.i ] ; 2 uses
  %.02946.i = phi i32 [ %i.ch, %bb.p ], [ %i.bp, %.critedge.i ] ; 3 uses
  %.03045.i = phi i32 [ %spec.select.i, %bb.p ], [ -1, %.critedge.i ] ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !157
  %i.cb = icmp eq i32 %i.ca, %storemerge49
  br i1 %i.cb, label %.loopexit.thread.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.cc = trunc i32 %i.by to i1
  %i.cd = icmp ne i32 %.03045.i, -1
  %or.cond.not.i = select i1 %i.cc, i1 true, i1 %i.cd
  %spec.select.i = select i1 %or.cond.not.i, i32 %.03045.i, i32 %.02946.i ; 2 uses
  %i.ce = add i32 %.048.i, 1                      ; 3 uses
  %i.cf = add i32 %i.ce, %.02946.i
  %i.cg = load i32, ptr %i.j, align 4, !tbaa !244
  %i.ch = and i32 %i.cg, %i.cf                    ; 3 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.bq, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = and i32 %i.cl, 2
  %.not.i36 = icmp eq i32 %i.cm, 0
  br i1 %.not.i36, label %.loopexit.thread.i, label %.lr.ph.i, !llvm.loop !1

.loopexit.thread.i:                               ; preds = %bb.p, %.lr.ph.i
  %.03043.i = phi i32 [ %spec.select.i, %bb.p ], [ %.03045.i, %.lr.ph.i ]
  %.02941.i = phi i32 [ %i.ch, %bb.p ], [ %.02946.i, %.lr.ph.i ]
  %.02839.i = phi i32 [ %i.ce, %bb.p ], [ %.048.i, %.lr.ph.i ] ; 2 uses
  %.03043.fr.i = freeze i32 %.03043.i             ; 2 uses
  %i.cn = icmp eq i32 %.03043.fr.i, -1
  %spec.select67.i = select i1 %i.cn, i32 %.02941.i, i32 %.03043.fr.i
  %.phi.trans.insert = zext i32 %spec.select67.i to i64 ; 2 uses
  %.phi.trans.insert58 = getelementptr inbounds nuw [12 x i8], ptr %i.bq, i64 %.phi.trans.insert
  %.phi.trans.insert59 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert58, i64 4
  %.pre = load i32, ptr %.phi.trans.insert59, align 4
  %.pre61 = and i32 %.pre, 2
  %i.co = icmp eq i32 %.pre61, 0
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.bq, i64 %.phi.trans.insert ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 3 uses
  br i1 %i.co, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit.thread.i
  %i.cr = load i32, ptr %i.i, align 8, !tbaa !243
  %i.cs = add i32 %i.cr, -1
  store i32 %i.cs, ptr %i.i, align 8, !tbaa !243
  %i.ct = load i32, ptr %i.cq, align 4
  %i.cu = and i32 %i.ct, 1
  %i.cv = load i32, ptr %i.e, align 4, !tbaa !245
  %i.cw = sub i32 %i.cv, %i.cu
  store i32 %i.cw, ptr %i.e, align 4, !tbaa !245
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.thread.i.thread, %bb.q, %.loopexit.thread.i
  %i.cx = phi ptr [ %i.bx, %.loopexit.thread.i.thread ], [ %i.cq, %bb.q ], [ %i.cq, %.loopexit.thread.i ]
  %i.cy = phi ptr [ %i.bw, %.loopexit.thread.i.thread ], [ %i.cp, %bb.q ], [ %i.cp, %.loopexit.thread.i ] ; 2 uses
  %.0283961.i74 = phi i32 [ 0, %.loopexit.thread.i.thread ], [ %.02839.i, %bb.q ], [ %.02839.i, %.loopexit.thread.i ]
  store i32 %storemerge49, ptr %i.cy, align 4, !tbaa !247
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.y, ptr %i.cz, align 4, !tbaa !248
  %i.da = shl nuw i32 %i.bn, 2
  %i.db = or disjoint i32 %i.da, 3
  store i32 %i.db, ptr %i.cx, align 4
  %i.dc = load <2 x i32>, ptr %i.e, align 4, !tbaa !157
  %i.dd = add <2 x i32> %i.dc, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.dd, ptr %i.e, align 4, !tbaa !157
  %i.de = load i16, ptr %i.m, align 2, !tbaa !249
  %i.df = zext i16 %i.de to i32
  %i.dg = icmp ugt i32 %.0283961.i74, %i.df
  br i1 %i.dg, label %bb.s, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit, !prof !66

bb.s:                                             ; preds = %bb.r
  %i.dh = extractelement <2 x i32> %i.dd, i64 1
  %i.di = shl i32 %i.dh, 3
  %i.dj = load i32, ptr %i.j, align 4, !tbaa !244 ; 2 uses
  %i.dk = icmp ugt i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.t, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit

bb.t:                                             ; preds = %bb.s
  %i.dl = add i32 %i.dj, -8
  %i.dm = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.dl) ; 0 uses
  br label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit

_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit: ; preds = %_ZN12hb_hashmap_tIjjLb1EE5allocEj.exit, %.lr.ph.split, %bb.r, %bb.s, %bb.t
  %i.dn = add i32 %storemerge49, 1                ; 2 uses
  %.not35 = icmp ugt i32 %i.dn, %.0
  br i1 %.not35, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !656

.loopexit:                                        ; preds = %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit, %.lr.ph, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit, %bb.c, %bb.b
  %.1 = phi i32 [ %.02852, %bb.b ], [ %.sroa.speculated, %bb.c ], [ %.sroa.speculated, %.lr.ph ], [ %.sroa.speculated, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit ], [ %.sroa.speculated, %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !657
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT19CmapSubtableFormat413accelerator_t15collect_mappingEP8hb_set_tP8hb_map_t(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !329  ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !331
  %i.e = add i32 %i.b, -1                         ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 1, !tbaa !74
  %i.i = icmp eq i16 %i.h, -1
  br i1 %i.i, label %bb.c, label %.lr.ph393

bb.c:                                             ; preds = %bb.b
  %.not394 = icmp eq i32 %i.e, 0
  br i1 %.not394, label %._crit_edge, label %.lr.ph393

.lr.ph393:                                        ; preds = %bb.b, %bb.c
  %.027513 = phi i32 [ %i.e, %bb.c ], [ %i.b, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 16 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 4 uses
  %wide.trip.count = zext i32 %.027513 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit122, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph393, %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit122
  %indvars.iv = phi i64 [ 0, %.lr.ph393 ], [ %indvars.iv.next, %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit122 ] ; 8 uses
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !331
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !74
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 2 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !330
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 1, !tbaa !74
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am) ; 2 uses
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !333
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !74 ; 2 uses
  %i.as = icmp eq i16 %i.ar, 0
  %.not37386 = icmp ugt i16 %i.ai, %i.an          ; 2 uses
  br i1 %i.as, label %.preheader, label %.preheader358

.preheader358:                                    ; preds = %bb.d
  br i1 %.not37386, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit122, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader358
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.au = lshr i16 %i.at, 1
  %i.av = zext nneg i16 %i.au to i32
  %i.aw = trunc nuw i64 %indvars.iv to i32
  %i.ax = add i32 %i.aw, %i.av
  br label %bb.bk

.preheader:                                       ; preds = %bb.d
  br i1 %.not37386, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit122, label %.lr.ph390

.lr.ph390:                                        ; preds = %.preheader, %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit
  %storemerge36387 = phi i32 [ %i.mc, %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit ], [ %i.aj, %.preheader ] ; 12 uses
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !332
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !74
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %storemerge36.tr = trunc nuw i32 %storemerge36387 to i16
  %.narrow354 = add i16 %i.bb, %storemerge36.tr   ; 2 uses
  %i.bc = zext i16 %.narrow354 to i32
  %.not38 = icmp eq i16 %.narrow354, 0
  br i1 %.not38, label %_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b.exit, label %bb.e, !prof !66

bb.e:                                             ; preds = %.lr.ph390
  %i.bd = load i8, ptr %i.p, align 8, !tbaa !63, !range !64, !noundef !65
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = load i8, ptr %i.o, align 8, !tbaa !193, !range !64, !noundef !65
  %i.bg = trunc nuw i8 %i.bf to i1                ; 2 uses
  br i1 %i.be, label %bb.f, label %bb.n, !prof !66

bb.f:                                             ; preds = %bb.e
  br i1 %i.bg, label %bb.g, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, !prof !68

bb.g:                                             ; preds = %bb.f
  %i.bh = lshr i32 %storemerge36387, 9            ; 3 uses
  %i.bi = load atomic i32, ptr %i.r monotonic, align 8 ; 2 uses
  %i.bj = load i32, ptr %i.s, align 4, !tbaa !251 ; 3 uses
  %i.bk = icmp ult i32 %i.bi, %i.bj
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !150 ; 3 uses
  br i1 %i.bk, label %bb.h, label %._crit_edge.i.i41, !prof !68

bb.h:                                             ; preds = %bb.g
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !253
  %.not.i.i56 = icmp eq i32 %i.bo, %i.bh
  br i1 %.not.i.i56, label %_ZN12hb_bit_set_t8page_forEjb.exit.i52, label %._crit_edge.i.i41

._crit_edge.i.i41:                                ; preds = %bb.h, %bb.g
  %.not1.i.i.i.i.i.i42 = icmp sgt i32 %i.bj, 0
  br i1 %.not1.i.i.i.i.i.i42, label %.lr.ph.preheader.i.i.i.i.i.i43, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

.lr.ph.preheader.i.i.i.i.i.i43:                   ; preds = %._crit_edge.i.i41
  %i.bp = add nsw i32 %i.bj, -1
  br label %.lr.ph.i.i.i.i.i.i44

.lr.ph.i.i.i.i.i.i44:                             ; preds = %bb.l, %.lr.ph.preheader.i.i.i.i.i.i43
  %.0203.i.i.i.i.i.i45 = phi i32 [ %.2.i.i.i.i.i.i49, %bb.l ], [ %i.bp, %.lr.ph.preheader.i.i.i.i.i.i43 ] ; 2 uses
  %.0212.i.i.i.i.i.i46 = phi i32 [ %.223.i.i.i.i.i.i48, %bb.l ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i43 ] ; 2 uses
  %i.bq = add i32 %.0212.i.i.i.i.i.i46, %.0203.i.i.i.i.i.i45
  %i.br = lshr i32 %i.bq, 1                       ; 4 uses
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !253 ; 2 uses
  %i.bw = icmp slt i32 %i.bh, %i.bv
  br i1 %i.bw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i44
  %i.bx = add nsw i32 %i.br, -1
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i44
  %.not28.i.i.i.i.i.i47 = icmp eq i32 %i.bh, %i.bv
  br i1 %.not28.i.i.i.i.i.i47, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i51, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = add nuw nsw i32 %i.br, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.223.i.i.i.i.i.i48 = phi i32 [ %i.by, %bb.k ], [ %.0212.i.i.i.i.i.i46, %bb.i ] ; 2 uses
  %.2.i.i.i.i.i.i49 = phi i32 [ %.0203.i.i.i.i.i.i45, %bb.k ], [ %i.bx, %bb.i ] ; 2 uses
  %.not.not.i.i.i.i.i.i50 = icmp sgt i32 %.223.i.i.i.i.i.i48, %.2.i.i.i.i.i.i49
  br i1 %.not.not.i.i.i.i.i.i50, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %.lr.ph.i.i.i.i.i.i44, !llvm.loop !6

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i51: ; preds = %bb.j
  store atomic i32 %i.br, ptr %i.r monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i52

_ZN12hb_bit_set_t8page_forEjb.exit.i52:           ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i51, %bb.h
  %i.bz = phi i64 [ %i.bs, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i51 ], [ %i.bm, %bb.h ]
  %.sink.i.i54 = load ptr, ptr %i.w, align 8, !tbaa !254 ; 2 uses
  %.not.i55 = icmp eq ptr %.sink.i.i54, null
  br i1 %.not.i55, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i52
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !256
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i54, i64 %i.cd ; 2 uses
  store i32 -1, ptr %i.q, align 4, !tbaa !194
  %i.cf = and i32 %storemerge36387, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = xor i64 %i.ch, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = lshr i32 %storemerge36387, 6
  %i.cl = and i32 %i.ck, 7
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !258
  %i.cp = and i64 %i.co, %i.ci
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !258
  store i32 -1, ptr %i.ce, align 8, !tbaa !312
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

end_hunk_1
