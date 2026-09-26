Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a
  %i.cbv = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIKjETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS9_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tS9_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.bqb, ptr noundef nonnull %0, ptr %.sroa.15645.0734, i64 %.sroa.2.8.insert.ext.i.i.i.i.i339, i32 noundef %i.cbu, i32 noundef 0)
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1I_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1I_Efp_EEEOS1I_OS1N_.exit.i"
  %.sroa.0639.0738 = phi i32 [ %.sroa.0639.0737, %bb.na ], [ %.sroa.0639.2, %"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1I_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1I_Efp_EEEOS1I_OS1N_.exit.i" ]
  %.sroa.15645.0735 = phi ptr [ %.sroa.15645.0734, %bb.na ], [ %.sroa.15645.2, %"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1I_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1I_Efp_EEEOS1I_OS1N_.exit.i" ]
  %.0.i341 = phi i1 [ %i.cbv, %bb.na ], [ false, %"_ZorI13hb_map_iter_tI13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKN3CFF23cff2_font_dict_values_tEEZNS4_22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS4_22cff2_top_dict_values_tERKNSA_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EES3_IKNS4_12table_info_tEEEZNS4_7FDArrayINSA_7NumTypeILb1EtLj2EEEE9serializeIS5_SQ_ST_NS4_29cff_font_dict_op_serializer_tEEEbS9_T1_RT2_EUlRK9hb_pair_tIRS6_RSR_EE_L24hb_function_sortedness_t0ELSO_0EE9hb_sink_tIR11hb_vector_tIjLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1I_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1I_Efp_EEEOS1I_OS1N_.exit.i" ]
  %i.cbw = add i32 %.sroa.0639.0738, -1
  %spec.select.i.i.i.i342 = icmp ult i32 %i.cbw, -2
  br i1 %spec.select.i.i.i.i342, label %bb.nc, label %"_ZN3CFF7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeINS_23cff2_font_dict_values_tENS_12table_info_tE13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKS6_EZNS_22serialize_cff2_to_cff1EP22hb_serialize_context_tRNS1_16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS1_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EESA_IKS7_EENS_29cff_font_dict_op_serializer_tEEEbSE_T1_RT2_.exit"

bb.nc:                                            ; preds = %bb.nb
  call void @hb_free(ptr noundef %.sroa.15645.0735) #16
  br label %"_ZN3CFF7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeINS_23cff2_font_dict_values_tENS_12table_info_tE13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKS6_EZNS_22serialize_cff2_to_cff1EP22hb_serialize_context_tRNS1_16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS1_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EESA_IKS7_EENS_29cff_font_dict_op_serializer_tEEEbSE_T1_RT2_.exit"

"_ZN3CFF7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeINS_23cff2_font_dict_values_tENS_12table_info_tE13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKS6_EZNS_22serialize_cff2_to_cff1EP22hb_serialize_context_tRNS1_16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS1_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EESA_IKS7_EENS_29cff_font_dict_op_serializer_tEEEbSE_T1_RT2_.exit": ; preds = %bb.nb, %bb.nc
  br i1 %.0.i341, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %"_ZN3CFF7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeINS_23cff2_font_dict_values_tENS_12table_info_tE13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKS6_EZNS_22serialize_cff2_to_cff1EP22hb_serialize_context_tRNS1_16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS1_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EESA_IKS7_EENS_29cff_font_dict_op_serializer_tEEEbSE_T1_RT2_.exit"
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.ne:                                            ; preds = %"_ZN3CFF7FDArrayIN2OT7NumTypeILb1EtLj2EEEE9serializeINS_23cff2_font_dict_values_tENS_12table_info_tE13hb_zip_iter_tI16hb_filter_iter_tI10hb_array_tIKS6_EZNS_22serialize_cff2_to_cff1EP22hb_serialize_context_tRNS1_16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS1_4cff220accelerator_subset_tEE3$_0RK3$_8LPv0EESA_IKS7_EENS_29cff_font_dict_op_serializer_tEEEbSE_T1_RT2_.exit"
  %i.cbx = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false)
  %i.cby = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 %i.cbx, ptr %i.cby, align 4, !tbaa !247
  %i.cbz = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.cca = load ptr, ptr %i.cbz, align 8, !tbaa !248
  %.not199 = icmp eq ptr %i.cca, @_hb_NullPool
  %i.ccb = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) ; 0 uses
  br i1 %.not199, label %bb.nh, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.ccc = load i32, ptr %i.l, align 8, !tbaa !96
  %i.ccd = load ptr, ptr %i.cbz, align 8, !tbaa !248
  %i.cce = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ccf = load i32, ptr %i.cce, align 4, !tbaa !249
  %i.ccg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cch = load i32, ptr %i.ccg, align 8, !tbaa !250
  %i.cci = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ccj = load i32, ptr %i.cci, align 4, !tbaa !251
  %i.cck = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ccl = call noundef zeroext i1 @_Z25hb_serialize_cff_fdselectP22hb_serialize_context_tjRKN3CFF8FDSelectEjjjRK11hb_vector_tINS1_11code_pair_tELb0EE(ptr noundef nonnull %0, i32 noundef %i.ccc, ptr noundef nonnull align 1 dereferenceable(6) %i.ccd, i32 noundef %i.ccf, i32 noundef %i.cch, i32 noundef %i.ccj, ptr noundef nonnull align 8 dereferenceable(16) %i.cck) #16
  br i1 %i.ccl, label %bb.nu, label %bb.ng, !prof !97

bb.ng:                                            ; preds = %bb.nf
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.nh:                                            ; preds = %bb.ne
  %i.ccm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.ccn = load i32, ptr %i.ccm, align 4, !tbaa !169
  %.not.i.i.i361 = icmp eq i32 %i.ccn, 0
  br i1 %.not.i.i.i361, label %bb.ni, label %bb.nj, !prof !97

bb.ni:                                            ; preds = %bb.nh
  %i.cco = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ccp = load ptr, ptr %i.cco, align 8, !tbaa !170
  %i.ccq = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 4 uses
  %i.ccr = ptrtoint ptr %i.ccp to i64
  %i.ccs = ptrtoint ptr %i.ccq to i64
  %i.cct = sub i64 %i.ccr, %i.ccs
  %i.ccu = icmp slt i64 %i.cct, 1
  br i1 %i.ccu, label %.critedge.i.i.i364, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i, !prof !99

.critedge.i.i.i364:                               ; preds = %bb.ni
  store i32 4, ptr %i.ccm, align 4, !tbaa !169
  br label %bb.nj

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i: ; preds = %bb.ni
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ccq, i64 1
  store ptr %i.ccv, ptr %i.brr, align 8, !tbaa !171
  %.not.i.i363 = icmp eq ptr %i.ccq, null
  br i1 %.not.i.i363, label %bb.nj, label %bb.nk, !prof !143

bb.nj:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i, %.critedge.i.i.i364, %bb.nh
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.nk:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EhLj1EEEEEPT_mb.exit.i.i
  store i8 3, ptr %i.ccq, align 1, !alias.scope !787
  %i.ccw = load i32, ptr %i.ccm, align 4, !tbaa !169
  %.not.i.i.i365 = icmp eq i32 %i.ccw, 0
  br i1 %.not.i.i.i365, label %bb.nl, label %bb.nm, !prof !97

bb.nl:                                            ; preds = %bb.nk
  %i.ccx = load ptr, ptr %i.cco, align 8, !tbaa !170
  %i.ccy = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 4 uses
  %i.ccz = ptrtoint ptr %i.ccx to i64
  %i.cda = ptrtoint ptr %i.ccy to i64
  %i.cdb = sub i64 %i.ccz, %i.cda
  %i.cdc = icmp slt i64 %i.cdb, 2
  br i1 %i.cdc, label %.critedge.i.i.i368, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i, !prof !99

.critedge.i.i.i368:                               ; preds = %bb.nl
  store i32 4, ptr %i.ccm, align 4, !tbaa !169
  br label %bb.nm

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i: ; preds = %bb.nl
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.ccy, i64 2
  store ptr %i.cdd, ptr %i.brr, align 8, !tbaa !171
  %.not.i.i367 = icmp eq ptr %i.ccy, null
  br i1 %.not.i.i367, label %bb.nm, label %bb.nn, !prof !143

bb.nm:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i, %.critedge.i.i.i368, %bb.nk
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.nn:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i
  store i16 256, ptr %i.ccy, align 1, !alias.scope !788
  %i.cde = load i32, ptr %i.ccm, align 4, !tbaa !169
  %.not.i.i.i369 = icmp eq i32 %i.cde, 0
  br i1 %.not.i.i.i369, label %bb.no, label %bb.np, !prof !97

bb.no:                                            ; preds = %bb.nn
  %i.cdf = load ptr, ptr %i.cco, align 8, !tbaa !170
  %i.cdg = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 5 uses
  %i.cdh = ptrtoint ptr %i.cdf to i64
  %i.cdi = ptrtoint ptr %i.cdg to i64
  %i.cdj = sub i64 %i.cdh, %i.cdi
  %i.cdk = icmp slt i64 %i.cdj, 3
  br i1 %i.cdk, label %.critedge.i.i.i372, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i.i, !prof !99

.critedge.i.i.i372:                               ; preds = %bb.no
  store i32 4, ptr %i.ccm, align 4, !tbaa !169
  br label %bb.np

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i.i: ; preds = %bb.no
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdg, i64 3
  store ptr %i.cdl, ptr %i.brr, align 8, !tbaa !171
  %.not.i.i371 = icmp eq ptr %i.cdg, null
  br i1 %.not.i.i371, label %bb.np, label %bb.nq, !prof !143

bb.np:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i.i, %.critedge.i.i.i372, %bb.nn
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.nq:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEEEPT_mb.exit.i.i
  store i16 0, ptr %i.cdg, align 1, !alias.scope !789
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cdg, i64 2
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1, !alias.scope !789
  %i.cdm = load i32, ptr %i.l, align 8, !tbaa !96
  %i.cdn = trunc i32 %i.cdm to i16
  %i.cdo = call i16 @llvm.bswap.i16(i16 %i.cdn)
  %i.cdp = load i32, ptr %i.ccm, align 4, !tbaa !169
  %.not.i.i.i373 = icmp eq i32 %i.cdp, 0
  br i1 %.not.i.i.i373, label %bb.nr, label %bb.ns, !prof !97

bb.nr:                                            ; preds = %bb.nq
  %i.cdq = load ptr, ptr %i.cco, align 8, !tbaa !170
  %i.cdr = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 4 uses
  %i.cds = ptrtoint ptr %i.cdq to i64
  %i.cdt = ptrtoint ptr %i.cdr to i64
  %i.cdu = sub i64 %i.cds, %i.cdt
  %i.cdv = icmp slt i64 %i.cdu, 2
  br i1 %i.cdv, label %.critedge.i.i.i377, label %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i375, !prof !99

.critedge.i.i.i377:                               ; preds = %bb.nr
  store i32 4, ptr %i.ccm, align 4, !tbaa !169
  br label %bb.ns

_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i375: ; preds = %bb.nr
  %i.cdw = getelementptr inbounds nuw i8, ptr %i.cdr, i64 2
  store ptr %i.cdw, ptr %i.brr, align 8, !tbaa !171
  %.not.i.i376 = icmp eq ptr %i.cdr, null
  br i1 %.not.i.i376, label %bb.ns, label %bb.nt, !prof !143

bb.ns:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i375, %.critedge.i.i.i377, %bb.nq
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.nt:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT7NumTypeILb1EtLj2EEEEEPT_mb.exit.i.i375
  store i16 %i.cdo, ptr %i.cdr, align 1, !alias.scope !790
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nf, %bb.nt
  %i.cdx = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext true)
  %i.cdy = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.cdx, ptr %i.cdy, align 8, !tbaa !252
  %i.cdz = load i32, ptr %i.l, align 8, !tbaa !96 ; 2 uses
  %i.cea = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) ; 0 uses
  %i.ceb = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 2 uses
  %i.cec = icmp ugt i32 %i.cdz, 1
  br i1 %i.cec, label %.thread.i.i383, label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i

.thread.i.i383:                                   ; preds = %bb.nu
  %i.ced = call ptr @hb_realloc(ptr noundef null, i64 noundef 64) #16 ; 3 uses
  %.not22.i.i384 = icmp eq ptr %i.ced, null
  br i1 %.not22.i.i384, label %bb.nv, label %.critedge.i.i385, !prof !100

bb.nv:                                            ; preds = %.thread.i.i383
  %i.cee = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cee, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i

.critedge.i.i385:                                 ; preds = %.thread.i.i383
  %i.cef = add i32 %i.cdz, -2
  %.sroa.4.0.insert.ext.i = zext i32 %i.cef to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ced, align 4
  br label %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i

_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i: ; preds = %.critedge.i.i385, %bb.nv, %bb.nu
  %spec.select.i.i.i.i379 = phi i1 [ false, %bb.nu ], [ true, %.critedge.i.i385 ], [ false, %bb.nv ]
  %.not.i13.i = phi i1 [ true, %bb.nu ], [ false, %.critedge.i.i385 ], [ true, %bb.nv ]
  %.sroa.8.0.i = phi i64 [ 0, %bb.nu ], [ 4, %.critedge.i.i385 ], [ 0, %bb.nv ] ; 2 uses
  %.sroa.15.0.i = phi ptr [ null, %bb.nu ], [ %i.ced, %.critedge.i.i385 ], [ null, %bb.nv ] ; 3 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 14 uses
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !169
  %.not11.i.i.i.i = icmp eq i32 %i.ceh, 0
  br i1 %.not11.i.i.i.i, label %bb.nw, label %bb.ob, !prof !97

bb.nw:                                            ; preds = %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ceb, i64 1 ; 2 uses
  %i.cej = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 4 uses
  %i.cek = ptrtoint ptr %i.cei to i64
  %i.cel = ptrtoint ptr %i.cej to i64             ; 2 uses
  %i.cem = sub i64 %i.cek, %i.cel                 ; 4 uses
  %i.cen = icmp ugt i64 %i.cem, 2147483647
  br i1 %i.cen, label %.sink.split.i382, label %bb.nx, !prof !99

bb.nx:                                            ; preds = %bb.nw
  %i.ceo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cep = load ptr, ptr %i.ceo, align 8, !tbaa !170
  %i.ceq = ptrtoint ptr %i.cep to i64
  %i.cer = sub i64 %i.ceq, %i.cel
  %i.ces = icmp slt i64 %i.cer, %i.cem
  br i1 %i.ces, label %.sink.split.i382, label %bb.ny, !prof !99

bb.ny:                                            ; preds = %bb.nx
  %.not.i.i.i.not.i.i.i = icmp eq ptr %i.cei, %i.cej
  br i1 %.not.i.i.i.not.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i.i, label %bb.nz, !prof !236

bb.nz:                                            ; preds = %bb.ny
  call void @llvm.memset.p0.i64(ptr align 1 %i.cej, i8 0, i64 %i.cem, i1 false)
  %.pre.i.i.i.i.i380 = load ptr, ptr %i.brr, align 8, !tbaa !171
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i.i:                 ; preds = %bb.nz, %bb.ny
  %i.cet = phi ptr [ %.pre.i.i.i.i.i380, %bb.nz ], [ %i.cej, %bb.ny ] ; 2 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cet, i64 %i.cem
  store ptr %i.ceu, ptr %i.brr, align 8, !tbaa !171
  %i.cev = icmp eq ptr %i.cet, null
  br i1 %i.cev, label %bb.ob, label %_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit.i.i, !prof !99

_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i
  store i8 2, ptr %i.ceb, align 1, !tbaa !148
  %i.cew = load i32, ptr %i.ceg, align 4, !tbaa !169
  %.not.i81.i.i = icmp eq i32 %i.cew, 0
  br i1 %.not.i81.i.i, label %bb.oa, label %bb.ob, !prof !97

bb.oa:                                            ; preds = %_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit.i.i
  %i.cex = load ptr, ptr %i.ceo, align 8, !tbaa !170
  %i.cey = load ptr, ptr %i.brr, align 8, !tbaa !171 ; 5 uses
  %i.cez = ptrtoint ptr %i.cex to i64
  %i.cfa = ptrtoint ptr %i.cey to i64
  %i.cfb = sub i64 %i.cez, %i.cfa
  %i.cfc = icmp slt i64 %i.cfb, %.sroa.8.0.i
  br i1 %i.cfc, label %.sink.split.i382, label %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i, !prof !99

_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i: ; preds = %bb.oa
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.cey, i64 %.sroa.8.0.i
  store ptr %i.cfd, ptr %i.brr, align 8, !tbaa !171
  %.not74.i.i = icmp eq ptr %i.cey, null
  br i1 %.not74.i.i, label %bb.ob, label %.preheader111.i.i, !prof !143

.preheader111.i.i:                                ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i
  br i1 %.not.i13.i, label %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %.preheader111.i.i
  %i.cfe = getelementptr inbounds nuw i8, ptr %.sroa.15.0.i, i64 4 ; 2 uses
  %i.cff = load i32, ptr %i.cfe, align 4, !tbaa !792
  %i.cfg = load i32, ptr %.sroa.15.0.i, align 4, !tbaa !793
  %i.cfh = trunc i32 %i.cfg to i16
  %i.cfi = call i16 @llvm.bswap.i16(i16 %i.cfh)
  store i16 %i.cfi, ptr %i.cey, align 1, !tbaa !148
  %i.cfj = load i32, ptr %i.cfe, align 4, !tbaa !792
  %i.cfk = trunc i32 %i.cfj to i16
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cey, i64 2
  %i.cfm = call i16 @llvm.bswap.i16(i16 %i.cfk)
  store i16 %i.cfm, ptr %i.cfl, align 1, !tbaa !148
  %i.cfn = icmp ult i32 %i.cff, 65536
  br i1 %i.cfn, label %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i, label %bb.ob, !prof !794

.sink.split.i382:                                 ; preds = %bb.oa, %bb.nx, %bb.nw
  store i32 4, ptr %i.ceg, align 4, !tbaa !169
  br label %bb.ob

bb.ob:                                            ; preds = %.sink.split.i382, %.lr.ph.i.i381, %_ZN22hb_serialize_context_t13allocate_sizeIN3CFF10Charset1_2IN2OT7NumTypeILb1EtLj2EEEEEEEPT_mb.exit.i.i, %_ZN22hb_serialize_context_t10extend_minIN3CFF7CharsetEEEPT_S4_.exit.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i, %_ZN11hb_vector_tIN3CFF11code_pair_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit.i
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  br label %bb.oc

_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i: ; preds = %.lr.ph.i.i381, %.preheader111.i.i
  %i.cfo = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext true)
  br label %bb.oc

bb.oc:                                            ; preds = %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i, %bb.ob
  %.0657 = phi i32 [ undef, %bb.ob ], [ %i.cfo, %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i ] ; 2 uses
  %.5.i41.i = phi i1 [ false, %bb.ob ], [ true, %_ZN3CFF7Charset9serializeEP22hb_serialize_context_thjRK11hb_vector_tINS_11code_pair_tELb0EE.exit.i ]
  br i1 %spec.select.i.i.i.i379, label %bb.od, label %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit

bb.od:                                            ; preds = %bb.oc
  call void @hb_free(ptr noundef %.sroa.15.0.i) #16
  br label %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit

_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit: ; preds = %bb.oc, %bb.od
  br i1 %.5.i41.i, label %bb.oe, label %_ZN11hb_vector_tIN3CFF12table_info_tELb0EE6resizeEi.exit

bb.oe:                                            ; preds = %_ZL23_serialize_cff1_charsetP22hb_serialize_context_tjRj.exit
  %i.cfp = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN3CFF5SubrsIN2OT7NumTypeILb1EtLj2EEEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0)
  %i.cfq = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.val.i.i386 = load i32, ptr %i.cfq, align 4, !tbaa !154 ; 2 uses
  %.not41.i.i387 = icmp eq i32 %.val.i.i386, 0    ; 2 uses
  br i1 %.not41.i.i387, label %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge, label %.lr.ph.preheader.i.i388

._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge: ; preds = %bb.oe
  %.phi.trans.insert1084 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val46.i400.pre = load ptr, ptr %.phi.trans.insert1084, align 8, !tbaa !155
  br label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397

.lr.ph.preheader.i.i388:                          ; preds = %bb.oe
  %.sroa.2.8.insert.ext.i.i.i.i.i.i389 = zext i32 %.val.i.i386 to i64 ; 3 uses
  %i.cfr = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val21.i.i390 = load ptr, ptr %i.cfr, align 8, !tbaa !155 ; 4 uses
  %i.cfs = add nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i.i389, 1152921504606846975
  %i.cft = and i64 %i.cfs, 1152921504606846975    ; 2 uses
  %i.cfu = add nuw nsw i64 %i.cft, 1              ; 2 uses
  %xtraiter1881 = and i64 %i.cfu, 7               ; 3 uses
  %i.cfv = icmp samesign ult i64 %i.cft, 7
  br i1 %i.cfv, label %.lr.ph.i.i392.epil.preheader, label %.lr.ph.preheader.i.i388.new

.lr.ph.preheader.i.i388.new:                      ; preds = %.lr.ph.preheader.i.i388
  %unroll_iter1886 = and i64 %i.cfu, 2305843009213693944
  br label %.lr.ph.i.i392

.lr.ph.i.i392:                                    ; preds = %.lr.ph.i.i392, %.lr.ph.preheader.i.i388.new
  %.01644.i.i393 = phi ptr [ %.val21.i.i390, %.lr.ph.preheader.i.i388.new ], [ %i.cgm, %.lr.ph.i.i392 ] ; 9 uses
  %.01743.i.i394 = phi i32 [ 0, %.lr.ph.preheader.i.i388.new ], [ %i.cgl, %.lr.ph.i.i392 ]
  %niter1887 = phi i64 [ 0, %.lr.ph.preheader.i.i388.new ], [ %niter1887.next.7, %.lr.ph.i.i392 ]
  %i.cfw = getelementptr i8, ptr %.01644.i.i393, i64 4
  %.016.val.i.i395 = load i32, ptr %i.cfw, align 4, !tbaa !132
  %i.cfx = add i32 %.016.val.i.i395, %.01743.i.i394
  %i.cfy = getelementptr i8, ptr %.01644.i.i393, i64 20
  %.016.val.i.i395.1 = load i32, ptr %i.cfy, align 4, !tbaa !132
  %i.cfz = add i32 %.016.val.i.i395.1, %i.cfx
  %i.cga = getelementptr i8, ptr %.01644.i.i393, i64 36
  %.016.val.i.i395.2 = load i32, ptr %i.cga, align 4, !tbaa !132
  %i.cgb = add i32 %.016.val.i.i395.2, %i.cfz
  %i.cgc = getelementptr i8, ptr %.01644.i.i393, i64 52
  %.016.val.i.i395.3 = load i32, ptr %i.cgc, align 4, !tbaa !132
  %i.cgd = add i32 %.016.val.i.i395.3, %i.cgb
  %i.cge = getelementptr i8, ptr %.01644.i.i393, i64 68
  %.016.val.i.i395.4 = load i32, ptr %i.cge, align 4, !tbaa !132
  %i.cgf = add i32 %.016.val.i.i395.4, %i.cgd
  %i.cgg = getelementptr i8, ptr %.01644.i.i393, i64 84
  %.016.val.i.i395.5 = load i32, ptr %i.cgg, align 4, !tbaa !132
  %i.cgh = add i32 %.016.val.i.i395.5, %i.cgf
  %i.cgi = getelementptr i8, ptr %.01644.i.i393, i64 100
  %.016.val.i.i395.6 = load i32, ptr %i.cgi, align 4, !tbaa !132
  %i.cgj = add i32 %.016.val.i.i395.6, %i.cgh
  %i.cgk = getelementptr i8, ptr %.01644.i.i393, i64 116
  %.016.val.i.i395.7 = load i32, ptr %i.cgk, align 4, !tbaa !132
  %i.cgl = add i32 %.016.val.i.i395.7, %i.cgj     ; 3 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %.01644.i.i393, i64 128 ; 2 uses
  %niter1887.next.7 = add i64 %niter1887, 8       ; 2 uses
  %niter1887.ncmp.7 = icmp eq i64 %niter1887.next.7, %unroll_iter1886
  br i1 %niter1887.ncmp.7, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa, label %.lr.ph.i.i392

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i392
  %lcmp.mod1883.not = icmp eq i64 %xtraiter1881, 0
  br i1 %lcmp.mod1883.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397, label %.lr.ph.i.i392.epil.preheader

.lr.ph.i.i392.epil.preheader:                     ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa, %.lr.ph.preheader.i.i388
  %.01644.i.i393.epil.init = phi ptr [ %.val21.i.i390, %.lr.ph.preheader.i.i388 ], [ %i.cgm, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ]
  %.01743.i.i394.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i388 ], [ %i.cgl, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ]
  %lcmp.mod1885 = icmp ne i64 %xtraiter1881, 0
  call void @llvm.assume(i1 %lcmp.mod1885)
  br label %.lr.ph.i.i392.epil

.lr.ph.i.i392.epil:                               ; preds = %.lr.ph.i.i392.epil, %.lr.ph.i.i392.epil.preheader
  %.01644.i.i393.epil = phi ptr [ %i.cgp, %.lr.ph.i.i392.epil ], [ %.01644.i.i393.epil.init, %.lr.ph.i.i392.epil.preheader ] ; 2 uses
  %.01743.i.i394.epil = phi i32 [ %i.cgo, %.lr.ph.i.i392.epil ], [ %.01743.i.i394.epil.init, %.lr.ph.i.i392.epil.preheader ]
  %epil.iter1882 = phi i64 [ %epil.iter1882.next, %.lr.ph.i.i392.epil ], [ 0, %.lr.ph.i.i392.epil.preheader ]
  %i.cgn = getelementptr i8, ptr %.01644.i.i393.epil, i64 4
  %.016.val.i.i395.epil = load i32, ptr %i.cgn, align 4, !tbaa !132
  %i.cgo = add i32 %.016.val.i.i395.epil, %.01743.i.i394.epil ; 2 uses
  %i.cgp = getelementptr inbounds nuw i8, ptr %.01644.i.i393.epil, i64 16
  %epil.iter1882.next = add i64 %epil.iter1882, 1 ; 2 uses
  %epil.iter1882.cmp.not = icmp eq i64 %epil.iter1882.next, %xtraiter1881
  br i1 %epil.iter1882.cmp.not, label %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397, label %.lr.ph.i.i392.epil, !llvm.loop !741

_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397: ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa, %.lr.ph.i.i392.epil, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge
  %.sroa.2.8.insert.ext.i.i.i.i.i401.pre-phi = phi i64 [ 0, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i389, %.lr.ph.i.i392.epil ], [ %.sroa.2.8.insert.ext.i.i.i.i.i.i389, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ] ; 2 uses
  %.val46.i400 = phi ptr [ %.val46.i400.pre, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge ], [ %.val21.i.i390, %.lr.ph.i.i392.epil ], [ %.val21.i.i390, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ] ; 3 uses
  %.066.i399 = phi i32 [ 0, %._ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397_crit_edge ], [ %i.cgl, %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397.loopexit.unr-lcssa ], [ %i.cgo, %.lr.ph.i.i392.epil ] ; 4 uses
  %i.cgq = call noundef zeroext i1 @_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE16serialize_headerI10hb_array_tIK11hb_vector_tIhLb0EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSB_6item_tEEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSB_jj(ptr noundef nonnull align 1 dereferenceable(4) %i.cfp, ptr noundef nonnull %0, ptr %.val46.i400, i64 %.sroa.2.8.insert.ext.i.i.i.i.i401.pre-phi, i32 noundef %.066.i399, i32 noundef 0)
  br i1 %i.cgq, label %bb.of, label %bb.oo, !prof !97

bb.of:                                            ; preds = %_ZN2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE10total_sizeI11hb_vector_tIS5_IhLb0EELb0EETnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEEjRKS9_Pjj.exit.i397
  %i.cgr = zext i32 %.066.i399 to i64             ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2OT13tuple_delta_t27change_tuple_var_axis_limitEj6Triple15TripleDistancesR11hb_vector_tIS0_Lb0EER9hb_pair_tIS3_IS6_IdS1_ELb0EES8_EP15hb_alloc_pool_t:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 84 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 100 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 116 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 132 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.eo = mul i32 %1, -1640531535
  %i.ep = load i32, ptr @_hb_NullPool, align 16   ; 6 uses
  %i.eq = bitcast i32 %i.ep to float              ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit48
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit48 ] ; 3 uses
  %i.es = phi i32 [ %i.cq, %.lr.ph ], [ %i.lu, %_ZN11hb_vector_tIN2OT13tuple_delta_tELb0EE4pushIJS1_EEEPS1_DpOT_.exit48 ]
  %i.et = load ptr, ptr %i.cr, align 8, !tbaa !594
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %indvars.iv ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store atomic i32 1, ptr %9 monotonic, align 8
  store atomic i8 1, ptr %i.cs monotonic, align 4
  store atomic ptr null, ptr %i.ct monotonic, align 8
  store i8 1, ptr %i.cu, align 8, !tbaa !452
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.cv, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cw, i8 0, i64 120, i1 false)
  %i.ev = add i32 %i.es, -1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = icmp samesign ult i64 %indvars.iv, %i.ew
  br i1 %i.ex, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZN2OT13tuple_delta_t9copy_fromERKS0_P15hb_alloc_pool_t(ptr noundef nonnull align 8 dereferenceable(160) %9, ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %7)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ey = load i8, ptr %i.cx, align 8, !range !121
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit, !prof !97

bb.w:                                             ; preds = %bb.v
  %i.fa = load i16, ptr %i.cy, align 2, !tbaa !469
  store i16 %i.fa, ptr %i.cv, align 2, !tbaa !469
  store i16 0, ptr %i.cy, align 2, !tbaa !469
  %i.fb = load <4 x i32>, ptr %i.da, align 4, !tbaa !101
  store <4 x i32> %i.fb, ptr %i.cz, align 4, !tbaa !101
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !101
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !470
  store ptr %i.fc, ptr %i.cw, align 8, !tbaa !470
  store ptr null, ptr %i.m, align 8, !tbaa !470
  br label %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit

_ZN2OT4swapERNS_13tuple_delta_tES1_.exit:         ; preds = %bb.v, %bb.w
  %i.fd = load <2 x i32>, ptr %i.df, align 8, !tbaa !101
  store i32 0, ptr %i.df, align 8, !tbaa !101
  store <2 x i32> %i.fd, ptr %i.de, align 8, !tbaa !101
  store i32 0, ptr %i.dh, align 4, !tbaa !101
  %i.fe = load ptr, ptr %i.dj, align 8, !tbaa !471
  store ptr %i.fe, ptr %i.di, align 8, !tbaa !471
  store ptr null, ptr %i.dj, align 8, !tbaa !471
  %i.ff = load <2 x i32>, ptr %i.dl, align 8, !tbaa !101
  store i32 0, ptr %i.dl, align 8, !tbaa !101
  store <2 x i32> %i.ff, ptr %i.dk, align 8, !tbaa !101
  store i32 0, ptr %i.dn, align 4, !tbaa !101
  %i.fg = load ptr, ptr %i.dp, align 8, !tbaa !472
  store ptr %i.fg, ptr %i.do, align 8, !tbaa !472
  store ptr null, ptr %i.dp, align 8, !tbaa !472
  %i.fh = load <2 x i32>, ptr %i.dr, align 8, !tbaa !101
  store i32 0, ptr %i.dr, align 8, !tbaa !101
  store <2 x i32> %i.fh, ptr %i.dq, align 8, !tbaa !101
  store i32 0, ptr %i.dt, align 4, !tbaa !101
  %i.fi = load ptr, ptr %i.dv, align 8, !tbaa !472
  store ptr %i.fi, ptr %i.du, align 8, !tbaa !472
  store ptr null, ptr %i.dv, align 8, !tbaa !472
  %i.fj = load <2 x i32>, ptr %i.dx, align 8, !tbaa !101
  store i32 0, ptr %i.dx, align 8, !tbaa !101
  store <2 x i32> %i.fj, ptr %i.dw, align 8, !tbaa !101
  store i32 0, ptr %i.dz, align 4, !tbaa !101
  %i.fk = load ptr, ptr %i.eb, align 8, !tbaa !267
  store ptr %i.fk, ptr %i.ea, align 8, !tbaa !267
  store ptr null, ptr %i.eb, align 8, !tbaa !267
  %i.fl = load <2 x i32>, ptr %i.ed, align 8, !tbaa !101
  store i32 0, ptr %i.ed, align 8, !tbaa !101
  store <2 x i32> %i.fl, ptr %i.ec, align 8, !tbaa !101
  store i32 0, ptr %i.ef, align 4, !tbaa !101
  %i.fm = load ptr, ptr %i.eh, align 8, !tbaa !267
  store ptr %i.fm, ptr %i.eg, align 8, !tbaa !267
  store ptr null, ptr %i.eh, align 8, !tbaa !267
  %i.fn = load <2 x i32>, ptr %i.ej, align 8, !tbaa !101
  store i32 0, ptr %i.ej, align 8, !tbaa !101
  store <2 x i32> %i.fn, ptr %i.ei, align 8, !tbaa !101
  store i32 0, ptr %i.el, align 4, !tbaa !101
  %i.fo = load ptr, ptr %i.en, align 8, !tbaa !473
  store ptr %i.fo, ptr %i.em, align 8, !tbaa !473
  store ptr null, ptr %i.en, align 8, !tbaa !473
  br label %bb.x

bb.x:                                             ; preds = %_ZN2OT4swapERNS_13tuple_delta_tES1_.exit, %bb.u
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !524
  %i.fr = fcmp oeq double %i.fq, 0.000000e+00
  br i1 %i.fr, label %bb.y, label %_ZNK6TripleeqERKS_.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !525
  %i.fu = fcmp oeq double %i.ft, 0.000000e+00
  br i1 %i.fu, label %_ZNK6TripleeqERKS_.exit, label %_ZNK6TripleeqERKS_.exit.thread

_ZNK6TripleeqERKS_.exit:                          ; preds = %bb.y
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !442
  %i.fx = fcmp oeq double %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.z, label %_ZNK6TripleeqERKS_.exit.thread

bb.z:                                             ; preds = %_ZNK6TripleeqERKS_.exit
  %i.fy = load ptr, ptr %i.cw, align 8, !tbaa !439 ; 4 uses
  %.not.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i, label %_ZN2OT13tuple_delta_t11remove_axisEj.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fz = load i32, ptr %i.dd, align 8, !tbaa !440
  %i.ga = urem i32 %i.p, %i.fz                    ; 2 uses
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
  %i.gf = and i32 %i.ge, 2
  %.not15.i.i.i35 = icmp eq i32 %i.gf, 0
  br i1 %.not15.i.i.i35, label %_ZN2OT13tuple_delta_t11remove_axisEj.exit, label %.lr.ph.i.i.i36

.lr.ph.i.i.i36:                                   ; preds = %bb.aa
  %i.gg = load i32, ptr %i.dc, align 4
  %i.gh = load i32, ptr %i.gc, align 4, !tbaa !101
  %i.gi = icmp eq i32 %i.gh, %1
  br i1 %i.gi, label %._crit_edge.i.i, label %.lr.ph.i.i37

bb.ab:                                            ; preds = %.lr.ph.i.i37
  %i.gj = load i32, ptr %i.gs, align 4, !tbaa !101
  %i.gk = icmp eq i32 %i.gj, %1
  br i1 %i.gk, label %._crit_edge.i.i, label %.lr.ph.i.i37, !llvm.loop !18

._crit_edge.i.i:                                  ; preds = %bb.ab, %.lr.ph.i.i.i36
  %i.gl = phi i32 [ %i.ge, %.lr.ph.i.i.i36 ], [ %i.gu, %bb.ab ] ; 2 uses
  %i.gm = phi i64 [ %i.gb, %.lr.ph.i.i.i36 ], [ %i.gr, %bb.ab ]
  %i.gn = trunc i32 %i.gl to i1
  br i1 %i.gn, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i39, label %_ZN2OT13tuple_delta_t11remove_axisEj.exit

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i.i36, %bb.ab
  %.01016.i12.i.i = phi i32 [ %i.gq, %bb.ab ], [ %i.ga, %.lr.ph.i.i.i36 ]
  %.017.i11.i.i = phi i32 [ %i.go, %bb.ab ], [ 0, %.lr.ph.i.i.i36 ]
  %i.go = add i32 %.017.i11.i.i, 1                ; 2 uses
  %i.gp = add i32 %i.go, %.01016.i12.i.i
  %i.gq = and i32 %i.gp, %i.gg                    ; 2 uses
  %i.gr = zext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.gr ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4            ; 2 uses
  %i.gv = and i32 %i.gu, 2
  %.not.i.i.i38 = icmp eq i32 %i.gv, 0
  br i1 %.not.i.i.i38, label %_ZN2OT13tuple_delta_t11remove_axisEj.exit, label %bb.ab, !llvm.loop !18

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i39: ; preds = %._crit_edge.i.i
  %i.gw = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.gm
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = and i32 %i.gl, -2
  store i32 %i.gy, ptr %i.gx, align 4
  %i.gz = load i32, ptr %i.cz, align 4, !tbaa !521
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr %i.cz, align 4, !tbaa !521
  br label %_ZN2OT13tuple_delta_t11remove_axisEj.exit

_ZNK6TripleeqERKS_.exit.thread:                   ; preds = %bb.x, %bb.y, %_ZNK6TripleeqERKS_.exit
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.fp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <3 x double> %.sroa.0.0.copyload, ptr %8, align 8
  store i32 %1, ptr %i.a, align 4, !tbaa !101
  %i.hb = call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE13set_with_hashIRKjRS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(160) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2OT13tuple_delta_t11remove_axisEj.exit

_ZN2OT13tuple_delta_t11remove_axisEj.exit:        ; preds = %.lr.ph.i.i37, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i39, %._crit_edge.i.i, %bb.aa, %bb.z, %_ZNK6TripleeqERKS_.exit.thread
  %i.hc = load double, ptr %i.eu, align 8, !tbaa !1219
  %i.hd = fptrunc double %i.hc to float           ; 6 uses
  %i.he = fcmp oeq float %i.hd, 1.000000e+00
  br i1 %i.he, label %_ZN2OT13tuple_delta_tmLEf.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN2OT13tuple_delta_t11remove_axisEj.exit
  %i.hf = load i32, ptr %i.dg, align 4, !tbaa !595 ; 5 uses
  %i.hg = load i32, ptr %i.ds, align 4, !tbaa !230 ; 2 uses
  %.not.i40 = icmp eq i32 %i.hg, 0
  %.not31.i = icmp eq i32 %i.hf, 0                ; 2 uses
  br i1 %.not.i40, label %.preheader.i, label %.preheader25.i

.preheader25.i:                                   ; preds = %bb.ac
  br i1 %.not31.i, label %_ZN2OT13tuple_delta_tmLEf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader25.i
  %i.hh = load ptr, ptr %i.di, align 8, !tbaa !461
  %i.hi = load i32, ptr %i.dm, align 4
  %i.hj = load ptr, ptr %i.do, align 8
  %i.hk = load ptr, ptr %i.du, align 8
  %i.hl = zext i32 %i.hg to i64
  %i.hm = zext i32 %i.hi to i64
  %wide.trip.count.i = zext i32 %i.hf to i64
  br label %bb.ad

.preheader.i:                                     ; preds = %bb.ac
  br i1 %.not31.i, label %_ZN2OT13tuple_delta_tmLEf.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.preheader.i
  %i.hn = load ptr, ptr %i.di, align 8, !tbaa !461 ; 3 uses
  %i.ho = load i32, ptr %i.dm, align 4
  %i.hp = load ptr, ptr %i.do, align 8            ; 3 uses
  %i.hq = zext i32 %i.ho to i64                   ; 3 uses
  %wide.trip.count37.i = zext i32 %i.hf to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count37.i, 1
  %i.hr = icmp eq i32 %i.hf, 1
  br i1 %i.hr, label %.epil.preheader, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %unroll_iter = and i64 %wide.trip.count37.i, 4294967294
  br label %bb.ak

bb.ad:                                            ; preds = %bb.aj, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aj ] ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv.i
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !347, !range !121, !noundef !122
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i41 = icmp samesign ult i64 %indvars.iv.i, %i.hm
  br i1 %.not.i.i41, label %bb.ag, label %bb.af, !prof !97

bb.af:                                            ; preds = %bb.ae
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i ; 2 uses
  %.pre.i42 = load float, ptr %i.hv, align 4, !tbaa !463
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit.i

_ZN11hb_vector_tIfLb0EEixEi.exit.i:               ; preds = %bb.ag, %bb.af
  %i.hw = phi float [ %i.eq, %bb.af ], [ %.pre.i42, %bb.ag ]
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.hv, %bb.ag ]
  %i.hx = fmul float %i.hw, %i.hd
  store float %i.hx, ptr %.0.i.i, align 4, !tbaa !463
  %.not.i19.i = icmp samesign ult i64 %indvars.iv.i, %i.hl
  br i1 %.not.i19.i, label %bb.ai, label %bb.ah, !prof !97

bb.ah:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit.i
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit21.i

bb.ai:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit.i
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv.i ; 2 uses
  %.pre39.i = load float, ptr %i.hy, align 4, !tbaa !463
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit21.i

_ZN11hb_vector_tIfLb0EEixEi.exit21.i:             ; preds = %bb.ai, %bb.ah
  %i.hz = phi float [ %i.eq, %bb.ah ], [ %.pre39.i, %bb.ai ]
  %.0.i20.i = phi ptr [ @_hb_CrapPool, %bb.ah ], [ %i.hy, %bb.ai ]
  %i.ia = fmul float %i.hz, %i.hd
  store float %i.ia, ptr %.0.i20.i, align 4, !tbaa !463
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit21.i, %bb.ad
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2OT13tuple_delta_tmLEf.exit, label %bb.ad, !llvm.loop !1215

bb.ak:                                            ; preds = %bb.as, %.lr.ph29.i.new
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %indvars.iv.next35.i.1, %bb.as ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter.next.1, %bb.as ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv34.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !347, !range !121, !noundef !122
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not.i22.i = icmp samesign ult i64 %indvars.iv34.i, %i.hq
  br i1 %.not.i22.i, label %bb.an, label %bb.am, !prof !97

bb.am:                                            ; preds = %bb.al
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i

bb.an:                                            ; preds = %bb.al
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv34.i ; 2 uses
  %.pre40.i = load float, ptr %i.ie, align 4, !tbaa !463
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i

_ZN11hb_vector_tIfLb0EEixEi.exit24.i:             ; preds = %bb.an, %bb.am
  %i.if = phi float [ %i.eq, %bb.am ], [ %.pre40.i, %bb.an ]
  %.0.i23.i = phi ptr [ @_hb_CrapPool, %bb.am ], [ %i.ie, %bb.an ]
  %i.ig = fmul float %i.if, %i.hd
  store float %i.ig, ptr %.0.i23.i, align 4, !tbaa !463
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit24.i, %bb.ak
  %indvars.iv.next35.i = or disjoint i64 %indvars.iv34.i, 1 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.next35.i
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !347, !range !121, !noundef !122
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.not.i22.i.1 = icmp samesign ult i64 %indvars.iv.next35.i, %i.hq
  br i1 %.not.i22.i.1, label %bb.ar, label %bb.aq, !prof !97

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.1

bb.ar:                                            ; preds = %bb.ap
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.next35.i ; 2 uses
  %.pre40.i.1 = load float, ptr %i.ik, align 4, !tbaa !463
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.1

_ZN11hb_vector_tIfLb0EEixEi.exit24.i.1:           ; preds = %bb.ar, %bb.aq
  %i.il = phi float [ %i.eq, %bb.aq ], [ %.pre40.i.1, %bb.ar ]
  %.0.i23.i.1 = phi ptr [ @_hb_CrapPool, %bb.aq ], [ %i.ik, %bb.ar ]
  %i.im = fmul float %i.il, %i.hd
  store float %i.im, ptr %.0.i23.i.1, align 4, !tbaa !463
  br label %bb.as

bb.as:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.1, %bb.ao
  %indvars.iv.next35.i.1 = add nuw nsw i64 %indvars.iv34.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !1216

_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa: ; preds = %bb.as
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2OT13tuple_delta_tmLEf.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa, %.lr.ph29.i
  %indvars.iv34.i.epil.init = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next35.i.1, %_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod108 = trunc i32 %i.hf to i1
  call void @llvm.assume(i1 %lcmp.mod108)
  %i.in = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv34.i.epil.init
  %i.io = load i8, ptr %i.in, align 1, !tbaa !347, !range !121, !noundef !122
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.at, label %_ZN2OT13tuple_delta_tmLEf.exit

bb.at:                                            ; preds = %.epil.preheader
  %.not.i22.i.epil = icmp samesign ult i64 %indvars.iv34.i.epil.init, %i.hq
  br i1 %.not.i22.i.epil, label %bb.av, label %bb.au, !prof !97

bb.au:                                            ; preds = %bb.at
  store i32 %i.ep, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.epil

bb.av:                                            ; preds = %bb.at
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv34.i.epil.init ; 2 uses
  %.pre40.i.epil = load float, ptr %i.iq, align 4, !tbaa !463
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.epil

_ZN11hb_vector_tIfLb0EEixEi.exit24.i.epil:        ; preds = %bb.av, %bb.au
  %i.ir = phi float [ %i.eq, %bb.au ], [ %.pre40.i.epil, %bb.av ]
  %.0.i23.i.epil = phi ptr [ @_hb_CrapPool, %bb.au ], [ %i.iq, %bb.av ]
  %i.is = fmul float %i.ir, %i.hd
  store float %i.is, ptr %.0.i23.i.epil, align 4, !tbaa !463
  br label %_ZN2OT13tuple_delta_tmLEf.exit

_ZN2OT13tuple_delta_tmLEf.exit:                   ; preds = %bb.aj, %_ZN2OT13tuple_delta_tmLEf.exit.loopexit.unr-lcssa, %_ZN11hb_vector_tIfLb0EEixEi.exit24.i.epil, %.epil.preheader, %_ZN2OT13tuple_delta_t11remove_axisEj.exit, %.preheader25.i, %.preheader.i
  %i.it = load i32, ptr %i.e, align 4, !tbaa !466 ; 3 uses
  %i.iu = load i32, ptr %5, align 8, !tbaa !467
  %.not.i43 = icmp slt i32 %i.it, %i.iu
  br i1 %.not.i43, label %.critedge.i47, label %bb.aw
end_hunk_1
begin_hunk_2_@_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE5allocEjb:bb.a
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !99

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !587
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1284
  br label %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.138, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #16 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, !prof !100

_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !585   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !587
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !585
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE14realloc_vectorIS4_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS4_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE13set_with_hashIRKjRS0_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !452, !range !121, !noundef !122
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !583  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !517
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !97

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !440
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !439  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !101
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !517
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !1285

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !583
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !583
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !521
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !521
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !101
  store i32 %i.az, ptr %i.ao, align 8, !tbaa !523
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !589
  %i.bb = shl nuw i32 %i.k, 2
  %i.bc = or disjoint i32 %i.bb, 3
  store i32 %i.bc, ptr %i.ap, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !101
  %i.bf = add <2 x i32> %i.be, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !101
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !584
  %i.bi = zext i16 %i.bh to i32
  %i.bj = icmp ugt i32 %.0283961, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.k, !prof !99

bb.i:                                             ; preds = %bb.h
  %i.bk = extractelement <2 x i32> %i.bf, i64 1
  %i.bl = shl i32 %i.bk, 3
  %i.bm = load i32, ptr %i.h, align 4, !tbaa !517 ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = add i32 %i.bm, -8
  %i.bp = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIj6TripleLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bo) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !300, !range !121, !noundef !122
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp ne i32 %1, -1
  %or.cond.not = and i1 %i.c, %i.b
  br i1 %or.cond.not, label %bb.b, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !601

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.d, align 4, !tbaa !301
  %i.e = lshr i32 %1, 9                           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !602  ; 3 uses
  %i.j = icmp ult i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !534  ; 3 uses
  br i1 %i.j, label %bb.c, label %._crit_edge.i, !prof !97

bb.c:                                             ; preds = %bb.b
  %i.m = zext i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !512
  %.not.i = icmp eq i32 %i.o, %i.e
  br i1 %.not.i, label %_ZN12hb_bit_set_t8page_forEjb.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4, !tbaa !603  ; 2 uses
  %.not1.i.i.i.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.r = add nsw i32 %i.i, -1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.g ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.g ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.s = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.t = lshr i32 %i.s, 1                         ; 4 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !512  ; 2 uses
  %i.y = icmp slt i32 %i.e, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = add nsw i32 %i.t, -1
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.not28.i.i.i.i.i = icmp eq i32 %i.e, %i.x
  br i1 %.not28.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nuw nsw i32 %i.t, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.223.i.i.i.i.i = phi i32 [ %i.aa, %bb.f ], [ %.0212.i.i.i.i.i, %bb.d ] ; 3 uses
  %.2.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i, %bb.f ], [ %i.z, %bb.d ] ; 2 uses
  %.not.not.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i, %.2.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

.loopexit.i:                                      ; preds = %bb.g, %._crit_edge.i
  %storemerge.i.i.ph.sink.i.i.ph.i = phi i32 [ 0, %._crit_edge.i ], [ %.223.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.ab = add i32 %i.q, 1
  %i.ac = tail call noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ab, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.ac, label %bb.h, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, !prof !97

bb.h:                                             ; preds = %.loopexit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !604
  %i.af = zext i32 %i.q to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i8 0, i64 64, i1 false), !tbaa !515
  store i32 0, ptr %i.ag, align 8, !tbaa !607
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !608
  %i.aj = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i to i64 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.h, align 4, !tbaa !602
  %i.an = xor i32 %storemerge.i.i.ph.sink.i.i.ph.i, -1
  %i.ao = add i32 %i.am, %i.an
  %i.ap = shl i32 %i.ao, 3
  %i.aq = zext i32 %i.ap to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %i.ak, i64 %i.aq, i1 false)
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !608
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aj
  %.sroa.5.0.insert.shift.i = shl nuw i64 %i.af, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.e to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 4
  %.pre20.i = load ptr, ptr %i.k, align 8, !tbaa !608
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i: ; preds = %bb.e, %bb.h
  %.pre-phi.i = phi i64 [ %i.aj, %bb.h ], [ %i.u, %bb.e ]
  %i.at = phi ptr [ %.pre20.i, %bb.h ], [ %i.l, %bb.e ]
  %storemerge.i.i.ph.sink.i.i17.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i, %bb.h ], [ %i.t, %bb.e ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i, ptr %i.f monotonic, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.pre-phi.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit

_ZN12hb_bit_set_t8page_forEjb.exit:               ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %bb.c
  %.sink30.i = phi ptr [ %i.au, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i ], [ %i.n, %bb.c ]
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !604 ; 2 uses
  %.not = icmp eq ptr %.sink.i, null
  br i1 %.not, label %_ZN12hb_bit_set_t8page_forEjb.exit.thread, label %bb.i, !prof !1286

bb.i:                                             ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.sink30.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !513
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [72 x i8], ptr %.sink.i, i64 %i.ax ; 2 uses
  %i.az = and i32 %1, 63
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = lshr i32 %1, 6
  %i.be = and i32 %i.bd, 7
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !515
  %i.bi = or i64 %i.bh, %i.bb
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !515
  store i32 -1, ptr %i.ay, align 8, !tbaa !607
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.thread

_ZN12hb_bit_set_t8page_forEjb.exit.thread:        ; preds = %.loopexit.i, %bb.i, %_ZN12hb_bit_set_t8page_forEjb.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_bit_set_t6resizeEjbb(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !300, !range !121, !noundef !122
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.j, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !603
  %i.f = icmp ult i32 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !1288
  %i.h = icmp ult i32 %i.g, %1
  %i.i = icmp ult i32 %1, 3
  %or.cond = and i1 %i.i, %i.h
  %spec.select = or i1 %3, %or.cond
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.shrunk = phi i1 [ %3, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.j = icmp slt i32 %1, 0
  br i1 %i.j, label %.critedge, label %bb.e, !prof !99

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %1, i1 noundef zeroext %.0.shrunk)
  br i1 %i.k, label %bb.f, label %.critedge, !prof !153

bb.f:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.d, align 4, !tbaa !536  ; 2 uses
  %i.m = icmp ugt i32 %1, %i.l
  %brmerge.not.i = and i1 %2, %i.m
  br i1 %brmerge.not.i, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !537  ; 5 uses
  %i.p = zext i32 %i.l to i64                     ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %1 to i64  ; 3 uses
  %i.q = sub nsw i64 %wide.trip.count.i.i, %i.p
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i, %.prol.preheader
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.prol.preheader ], [ %i.p, %.lr.ph.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, i8 0, i64 64, i1 false), !tbaa !515
  store i32 0, ptr %i.r, align 8, !tbaa !607
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1287

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.prol, %.prol.preheader ]
  %i.t = sub nsw i64 %i.p, %wide.trip.count.i.i
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i8 0, i64 64, i1 false), !tbaa !515
  store i32 0, ptr %i.v, align 8, !tbaa !607
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, i8 0, i64 64, i1 false), !tbaa !515
  store i32 0, ptr %i.y, align 8, !tbaa !607
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i8 0, i64 64, i1 false), !tbaa !515
  store i32 0, ptr %i.ab, align 8, !tbaa !607
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i.i ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false), !tbaa !515
  store i32 0, ptr %i.ae, align 8, !tbaa !607
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %.loopexit, label %.lr.ph.i.i.new, !llvm.loop !34

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.f
  store i32 %1, ptr %i.d, align 4, !tbaa !536
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = tail call noundef zeroext i1 @_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i32 noundef %1, i1 noundef zeroext false)
  br i1 %i.ah, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.loopexit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !533 ; 3 uses
  %i.ak = icmp ugt i32 %1, %i.aj
  %brmerge.not.i15 = and i1 %2, %i.ak
  br i1 %brmerge.not.i15, label %bb.h, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit

bb.h:                                             ; preds = %bb.g
  %i.al = sub nuw nsw i32 %1, %i.aj
  %i.am = shl i32 %i.al, 3                        ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit, label %bb.i, !prof !99

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !534
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = zext i32 %i.am to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.ar, i1 false)
  br label %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit

_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit: ; preds = %bb.g, %bb.h, %bb.i
  store i32 %1, ptr %i.ai, align 4, !tbaa !533
  br label %bb.j

.critedge:                                        ; preds = %.loopexit, %bb.e, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !602
  %i.au = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.at, i1 noundef zeroext %2, i1 noundef zeroext %.0.shrunk) ; 0 uses
  store i8 0, ptr %0, align 8, !tbaa !300
  br label %bb.j

bb.j:                                             ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit, %bb.a, %.critedge
  %.012 = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE11resize_fullEibb.exit ]
  ret i1 %.012
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %3)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !536  ; 2 uses
  %i.e = icmp ugt i32 %1, %i.d
  %brmerge.not = and i1 %i.e, %2
  br i1 %brmerge.not, label %.lr.ph.i, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !537  ; 5 uses
  %i.h = zext i32 %i.d to i64                     ; 4 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.i = sub nsw i64 %wide.trip.count.i, %i.h
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
end_hunk_2
