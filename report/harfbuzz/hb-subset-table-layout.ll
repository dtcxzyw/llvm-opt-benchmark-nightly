Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZNK2OT6Layout9GSUB_impl22LigatureSubstFormat1_2INS0_10SmallTypesEE6subsetEP19hb_subset_context_t:bb.a
  %.not6.us.not.i.not.i.i.i = icmp eq i8 %i.my, %.0.i.i.i.i.i.i.i.i.i.us.i.i.i.i
  br i1 %.not6.us.not.i.not.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_20intersects_lig_glyphEPK8hb_set_tEUlRKS8_E_LSN_0ELSO_0EEbEppEv.exit.i.i.i.i.i", label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.us.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.us.i.i.i.i: ; preds = %"_ZNK4$_22clIRPK8hb_set_tRKN2OT11HBGlyphID16EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.us.i.i.i.i"
  %i.qb = add nuw nsw i64 %.sroa.6.012.us.i.i.i.i, 4294967295
  %.sroa.6.8.insert.ext.us.i.i.i.i = and i64 %i.qb, 4294967295 ; 2 uses
  %.sroa.0.0.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.013.us.i.i.i.i, i64 2
  %.not.us.i.i.i.i = icmp eq i64 %.sroa.6.8.insert.ext.us.i.i.i.i, 0
  br i1 %.not.us.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS1_I13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tES0_I10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNSA_22LigatureSubstFormat1_2ISC_EEEL24hb_function_sortedness_t0ELPv0EEERK8hb_set_tRK3$_6LST_0EEZNKSO_6subsetEP19hb_subset_context_tEUlRKSD_E_RK3$_7LST_0EES11_LSS_0ELST_0EEjEppEv.exit.i.i", label %.lr.ph.split.us.i.i.i.i, !llvm.loop !76

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.i
  %.sroa.0.013.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.i ], [ %.sroa.0.010.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.6.012.i.i.i.i = phi i64 [ %.sroa.6.8.insert.ext.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.i ], [ %i.or, %.lr.ph.i.i.i.i ]
  %i.qc = load i16, ptr %.sroa.0.013.i.i.i.i, align 1, !tbaa !211
  %i.qd = call noundef i16 @llvm.bswap.i16(i16 %i.qc)
  %i.qe = zext i16 %i.qd to i32                   ; 3 uses
  %i.qf = load atomic i32, ptr %i.bn monotonic, align 8 ; 2 uses
  %i.qg = icmp ult i32 %i.qf, %.fr.i.i.i.i
  br i1 %i.qg, label %bb.cb, label %"_ZNK4$_22clIRPK8hb_set_tRKN2OT11HBGlyphID16EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i", !prof !219

bb.cb:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.qh = lshr i32 %i.qe, 9
  %i.qi = zext i32 %i.qf to i64
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %.pre163.i.i, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !412
  %.not.i.i.i.i.i.i.i.i.i.i.i.i8.i.i = icmp eq i32 %i.qk, %i.qh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i8.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_22clIRPK8hb_set_tRKN2OT11HBGlyphID16EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i"

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_22clIRPK8hb_set_tRKN2OT11HBGlyphID16EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i", label %bb.cc

bb.cc:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !414
  %i.qn = zext i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = lshr i32 %i.qe, 6
  %i.qr = and i32 %i.qq, 7
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.qs
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !266
  %i.qv = and i32 %i.qe, 63
  %i.qw = zext nneg i32 %i.qv to i64
  %i.qx = lshr i64 %i.qu, %i.qw
  %i.qy = trunc i64 %i.qx to i8
  %i.qz = and i8 %i.qy, 1
  br label %"_ZNK4$_22clIRPK8hb_set_tRKN2OT11HBGlyphID16EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i"

"_ZNK4$_22clIRPK8hb_set_tRKN2OT11HBGlyphID16EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i": ; preds = %bb.cc, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cb, %.lr.ph.split.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i6.i.i = phi i8 [ %i.qz, %bb.cc ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.cb ], [ 0, %.lr.ph.split.i.i.i.i ]
  %.not6.not.i.not.i.i.i = icmp eq i8 %i.my, %.0.i.i.i.i.i.i.i.i.i.i.i6.i.i
  br i1 %.not6.not.i.not.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_20intersects_lig_glyphEPK8hb_set_tEUlRKS8_E_LSN_0ELSO_0EEbEppEv.exit.i.i.i.i.i", label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.i: ; preds = %"_ZNK4$_22clIRPK8hb_set_tRKN2OT11HBGlyphID16EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i"
  %i.ra = add nuw nsw i64 %.sroa.6.012.i.i.i.i, 4294967295
  %.sroa.6.8.insert.ext.i.i.i.i = and i64 %i.ra, 4294967295 ; 2 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i.i.i.i, i64 2
  %.not.i.i7.i.i = icmp eq i64 %.sroa.6.8.insert.ext.i.i.i.i, 0
  br i1 %.not.i.i7.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS1_I13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tES0_I10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNSA_22LigatureSubstFormat1_2ISC_EEEL24hb_function_sortedness_t0ELPv0EEERK8hb_set_tRK3$_6LST_0EEZNKSO_6subsetEP19hb_subset_context_tEUlRKSD_E_RK3$_7LST_0EES11_LSS_0ELST_0EEjEppEv.exit.i.i", label %.lr.ph.split.i.i.i.i, !llvm.loop !76

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_20intersects_lig_glyphEPK8hb_set_tEUlRKS8_E_LSN_0ELSO_0EEbEppEv.exit.i.i.i.i.i": ; preds = %"_ZNK4$_22clIRPK8hb_set_tRKN2OT11HBGlyphID16EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.i.i.i.i", %"_ZNK4$_22clIRPK8hb_set_tRKN2OT11HBGlyphID16EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSB_.exit.us.i.i.i.i", %_ZNK2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE20intersects_lig_glyphEPK8hb_set_t.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rb = add i32 %.sroa.6.010.i.i.i.i.i, -1      ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %i.rb, 0
  br i1 %.not.not.i.i.i.i.i, label %.split.backedge, label %bb.bo, !llvm.loop !77

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS1_I13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tES0_I10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNSA_22LigatureSubstFormat1_2ISC_EEEL24hb_function_sortedness_t0ELPv0EEERK8hb_set_tRK3$_6LST_0EEZNKSO_6subsetEP19hb_subset_context_tEUlRKSD_E_RK3$_7LST_0EES11_LSS_0ELST_0EEjEppEv.exit.i.i": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i1.i.i, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE13hb_map_iter_tI10hb_array_tIKNS2_8OffsetToINS3_9GSUB_impl11LigatureSetINS3_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNSA_22LigatureSubstFormat1_2ISC_EEEL24hb_function_sortedness_t0ELPv0EEERK8hb_set_tRK3$_6LST_0EE9hb_pair_tIjRKSD_EEppEv.exit.i.i", %"_ZN9hb_iter_tI13hb_map_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_20intersects_lig_glyphEPK8hb_set_tEUlRKS8_E_LSN_0ELSO_0EEbEdeEv.exit.i.i.i.i.i", %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.i.i.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.us.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21
  %i.rc = load i16, ptr %i.bk, align 1, !tbaa !211
  %i.rd = call noundef i16 @llvm.bswap.i16(i16 %i.rc)
  %i.re = zext i16 %i.rd to i32
  %i.rf = icmp ult i32 %i.kl, %i.re
  %i.rg = icmp ne i32 %.val.i.i.i.i441193.i.i, 0
  %or.cond.i.i = select i1 %i.rf, i1 %i.rg, i1 false
  br i1 %or.cond.i.i, label %bb.aq, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS1_I13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tES0_I10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNSA_22LigatureSubstFormat1_2ISC_EEEL24hb_function_sortedness_t0ELPv0EEERK8hb_set_tRK3$_6LST_0EEZNKSO_6subsetEP19hb_subset_context_tEUlRKSD_E_RK3$_7LST_0EES11_LSS_0ELST_0EE9hb_sink_tIRSW_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1H_6item_tEEE5valueEvE4typeELST_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1H_Efp_EEEOS1H_OS1M_.exit", !llvm.loop !3611

"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS1_I13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tES0_I10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNSA_22LigatureSubstFormat1_2ISC_EEEL24hb_function_sortedness_t0ELPv0EEERK8hb_set_tRK3$_6LST_0EEZNKSO_6subsetEP19hb_subset_context_tEUlRKSD_E_RK3$_7LST_0EES11_LSS_0ELST_0EE9hb_sink_tIRSW_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1H_6item_tEEE5valueEvE4typeELST_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1H_Efp_EEEOS1H_OS1M_.exit": ; preds = %bb.h, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS1_I13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tES0_I10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNSA_22LigatureSubstFormat1_2ISC_EEEL24hb_function_sortedness_t0ELPv0EEERK8hb_set_tRK3$_6LST_0EEZNKSO_6subsetEP19hb_subset_context_tEUlRKSD_E_RK3$_7LST_0EES11_LSS_0ELST_0EEjEppEv.exit.i.i", %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE13hb_map_iter_tI10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNS9_22LigatureSubstFormat1_2ISB_EEEL24hb_function_sortedness_t0ELPv0EEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS14_6item_tEEE5valueEvE4typeELSS_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS14_Efp_EEEOS14_OS19_.exit", %.split.i.preheader.i
  %i.rh = load ptr, ptr %i.j, align 8, !tbaa !208
  %i.ri = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout6Common8CoverageEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %i.rh)
  %i.rj = load ptr, ptr %i.j, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(49) %i.aa, i1 noundef zeroext true)
  %.fca.0.load.i = load ptr, ptr %2, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %.fca.0.load.i, ptr %4, align 8, !alias.scope !3628
  %.sroa.2.0..sroa_idx.i.i53 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.fca.1.load.i, ptr %.sroa.2.0..sroa_idx.i.i53, align 8, !alias.scope !3628
  %i.rk = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.i, ptr %i.rk, align 8, !tbaa !555, !alias.scope !3628
  %i.rl = call noundef zeroext i1 @_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tIN23hb_bit_set_invertible_t6iter_tERK8hb_map_tL24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSE_18is_sorted_iteratorEvE4typeELSB_0EEEbP22hb_serialize_context_tSE_(ptr noundef nonnull align 1 dereferenceable(10) %i.ri, ptr noundef %i.rj, ptr noundef nonnull byval(%struct.hb_map_iter_t.1114) align 8 %4)
  br i1 %i.rl, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS1_I13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tES0_I10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNSA_22LigatureSubstFormat1_2ISC_EEEL24hb_function_sortedness_t0ELPv0EEERK8hb_set_tRK3$_6LST_0EEZNKSO_6subsetEP19hb_subset_context_tEUlRKSD_E_RK3$_7LST_0EES11_LSS_0ELST_0EE9hb_sink_tIRSW_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1H_6item_tEEE5valueEvE4typeELST_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1H_Efp_EEEOS1H_OS1M_.exit"
  %i.rm = load ptr, ptr %i.j, align 8, !tbaa !208
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %i.rm)
  br label %bb.eh

bb.ce:                                            ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS1_I13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tES0_I10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_40PKNSA_22LigatureSubstFormat1_2ISC_EEEL24hb_function_sortedness_t0ELPv0EEERK8hb_set_tRK3$_6LST_0EEZNKSO_6subsetEP19hb_subset_context_tEUlRKSD_E_RK3$_7LST_0EES11_LSS_0ELST_0EE9hb_sink_tIRSW_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1H_6item_tEEE5valueEvE4typeELST_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1H_Efp_EEEOS1H_OS1M_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.rn = load ptr, ptr %i.j, align 8, !tbaa !208
  %i.ro = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %i.rn, i1 noundef zeroext true) ; 3 uses
  store i32 %i.ro, ptr %i.d, align 4, !tbaa !218
  %i.rp = load ptr, ptr %i.j, align 8, !tbaa !208 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 44 ; 3 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !190
  %i.rt = icmp ne i32 %i.rs, 0
  %i.ru = icmp eq i32 %i.ro, 0
  %or.cond.not.i = or i1 %i.ru, %i.rt
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.cf, !prof !252

bb.cf:                                            ; preds = %bb.ce
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rp, i64 72 ; 3 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !214 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 20 ; 3 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !272 ; 2 uses
  %i.rz = add i32 %i.ry, 1                        ; 5 uses
  %i.sa = icmp slt i32 %i.rz, 0
  br i1 %i.sa, label %bb.ck, label %bb.cg, !prof !112

bb.cg:                                            ; preds = %bb.cf
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.sc = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, i32 noundef %i.rz, i1 noundef zeroext false)
  br i1 %i.sc, label %bb.ch, label %bb.ck, !prof !306

bb.ch:                                            ; preds = %bb.cg
  %i.sd = load i32, ptr %i.rx, align 4, !tbaa !272 ; 3 uses
  %i.se = icmp ugt i32 %i.rz, %i.sd
  br i1 %i.se, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.sf = sub nuw nsw i32 %i.rz, %i.sd
  %i.sg = mul i32 %i.sf, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.cl, label %bb.cj, !prof !112

bb.cj:                                            ; preds = %bb.ci
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !273
  %i.sj = zext nneg i32 %i.sd to i64
  %i.sk = getelementptr inbounds nuw [12 x i8], ptr %i.si, i64 %i.sj
  %i.sl = zext i32 %i.sg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.sk, i8 0, i64 %i.sl, i1 false)
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cg, %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  store i32 %i.rz, ptr %i.rx, align 4, !tbaa !272
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !273
  %i.so = zext i32 %i.ry to i64
  %i.sp = getelementptr inbounds nuw [12 x i8], ptr %i.sn, i64 %i.so
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.cl, %bb.ck
  %.0.i.i54 = phi ptr [ @_hb_CrapPool, %bb.ck ], [ %i.sp, %bb.cl ] ; 5 uses
  %i.sq = load ptr, ptr %i.rv, align 8, !tbaa !214
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !271
  %i.st = icmp slt i32 %i.ss, 0
  br i1 %i.st, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.su = load i32, ptr %i.rr, align 4, !tbaa !190
  %i.sv = or i32 %i.su, 1
  store i32 %i.sv, ptr %i.rr, align 4, !tbaa !190
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.sw = load i32, ptr %.0.i.i54, align 4
  %i.sx = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 8
  store i32 %i.ro, ptr %i.sx, align 4, !tbaa !304
  %i.sy = and i32 %i.sw, -64
  %i.sz = or disjoint i32 %i.sy, 2
  store i32 %i.sz, ptr %.0.i.i54, align 4
  %i.ta = load ptr, ptr %i.rv, align 8, !tbaa !214
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !315
  %i.tc = ptrtoint ptr %i.rq to i64
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = sub i64 %i.tc, %i.td
  %i.tf = trunc i64 %i.te to i32
  %i.tg = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 4
  store i32 %i.tf, ptr %i.tg, align 4, !tbaa !316
  store i32 2, ptr %.0.i.i54, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.ce, %bb.cn
  %i.th = load i16, ptr %i.ae, align 1, !tbaa !211 ; 2 uses
  %i.ti = icmp eq i16 %i.th, 0
  %i.tj = call i16 @llvm.bswap.i16(i16 %i.th)
  %i.tk = zext i16 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 %i.tk
  %.0.i.i55 = select i1 %i.ti, ptr @_hb_NullPool, ptr %i.tl, !prof !112 ; 6 uses
  %i.tm = load i16, ptr %.0.i.i55, align 1, !tbaa !211, !noalias !3629 ; 2 uses
  %i.tn = call noundef i16 @llvm.bswap.i16(i16 %i.tm) ; 4 uses
  switch i16 %i.tn, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" [
    i16 1, label %bb.co
    i16 2, label %bb.cp
  ]

bb.co:                                            ; preds = %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !3629, !srcloc !212
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

bb.cp:                                            ; preds = %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !3629, !srcloc !212
  %i.to = getelementptr inbounds nuw i8, ptr %.0.i.i55, i64 2 ; 4 uses
  %i.tp = load i16, ptr %i.to, align 1, !tbaa !211, !noalias !3629
  %.not.i.i.i.i.i56 = icmp eq i16 %i.tp, 0
  br i1 %.not.i.i.i.i.i56, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i70, label %bb.cq, !prof !249

bb.cq:                                            ; preds = %bb.cp
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !3629, !srcloc !212
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i.i55, i64 4 ; 3 uses
  %i.tr = load i16, ptr %i.tq, align 1, !tbaa !211, !noalias !3629
  %i.ts = call noundef i16 @llvm.bswap.i16(i16 %i.tr)
  %i.tt = zext i16 %i.ts to i32                   ; 3 uses
  %.pre8.i.i.i.i.i57 = load i16, ptr %i.to, align 1, !tbaa !211, !noalias !3629
  %i.tu = icmp eq i16 %.pre8.i.i.i.i.i57, 0
  br i1 %i.tu, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i70, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i58, !prof !220

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i70: ; preds = %bb.cq, %bb.cp
  %.sroa.11.0.i71 = phi i32 [ %i.tt, %bb.cq ], [ 0, %bb.cp ]
  %i.tv = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !211, !noalias !3629
  %i.tw = call noundef i16 @llvm.bswap.i16(i16 %i.tv)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i60

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i58: ; preds = %bb.cq
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !3629, !srcloc !212
  %.pre11.i.i.i.i.i59 = load i16, ptr %i.to, align 1, !tbaa !211, !noalias !3629
  %i.tx = icmp eq i16 %.pre11.i.i.i.i.i59, 0
  %i.ty = load i16, ptr %i.tq, align 1, !tbaa !211, !noalias !3629
  %i.tz = call noundef i16 @llvm.bswap.i16(i16 %i.ty) ; 2 uses
  br i1 %i.tx, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i60, label %bb.cr, !prof !220

bb.cr:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i58
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !3629, !srcloc !212
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i60

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i60: ; preds = %bb.cr, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i58, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i70
  %.sroa.11.1.i61 = phi i32 [ %.sroa.11.0.i71, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i70 ], [ %i.tt, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i58 ], [ %i.tt, %bb.cr ]
  %i.ua = phi i16 [ %i.tw, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i70 ], [ %i.tz, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i58 ], [ %i.tz, %bb.cr ]
  %.0.i6.i.i.i.i.i62 = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i.i.i70 ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i58 ], [ %i.tq, %bb.cr ]
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i62, i64 2
  %i.uc = load i16, ptr %i.ub, align 1, !tbaa !211, !noalias !3629
  %i.ud = call noundef i16 @llvm.bswap.i16(i16 %i.uc)
  %i.ue = icmp ugt i16 %i.ua, %i.ud
  br i1 %i.ue, label %bb.cs, label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit", !prof !112

bb.cs:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i60
  %i.uf = load i16, ptr %i.to, align 1, !tbaa !211, !noalias !3629
  %i.ug = call noundef i16 @llvm.bswap.i16(i16 %i.uf)
  %i.uh = zext i16 %i.ug to i32
  br label %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit": ; preds = %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, %bb.co, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i60, %bb.cs
  %.sroa.11.2.i63 = phi i32 [ 0, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ], [ 0, %bb.co ], [ 0, %bb.cs ], [ %.sroa.11.1.i61, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i60 ]
  %.sroa.52.0.i = phi ptr [ null, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ], [ %.0.i.i55, %bb.co ], [ %.0.i.i55, %bb.cs ], [ %.0.i.i55, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i60 ] ; 4 uses
  %.sroa.7.0.i64 = phi i32 [ 0, %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit ], [ 0, %bb.co ], [ %i.uh, %bb.cs ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i60 ]
  %i.ui = load i16, ptr %i.ak, align 1, !tbaa !211, !noalias !3630
  %i.uj = call noundef i16 @llvm.bswap.i16(i16 %i.ui)
  %.sroa.37.sroa.0.0.extract.trunc = zext i16 %i.uj to i32
  %i.uk = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 2 ; 11 uses
  %i.ul = icmp eq i16 %i.tm, 256                  ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 4 ; 6 uses
  %i.un = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i91 = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  br label %bb.ct

bb.ct:                                            ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"
  %.sroa.37.sroa.0.0 = phi i32 [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.xp, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 4 uses
  %.sroa.34.0 = phi ptr [ %i.al, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.xq, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 2 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.2.i63, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0.i64, %"_ZNK4$_16clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 11 uses
  switch i16 %i.tn, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIR8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSW_.exit.thread552" [
    i16 1, label %bb.cu
    i16 2, label %bb.cv
  ]

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIR8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSW_.exit.thread552": ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  br label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSP_0EE10hb_apply_tINS3_25subset_offset_array_arg_tINS3_7ArrayOfISG_SF_EERjEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS14_6item_tEEE5valueEvE4typeELSP_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS14_Efp_EEEOS14_OS19_.exit"

bb.cu:                                            ; preds = %bb.ct
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i74

bb.cv:                                            ; preds = %bb.ct
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i74

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i74: ; preds = %bb.cv, %bb.cu
  %i.uq = load i16, ptr %i.uk, align 1, !tbaa !211
  %i.ur = call noundef i16 @llvm.bswap.i16(i16 %i.uq)
  %i.us = zext i16 %i.ur to i32
  %i.ut = icmp uge i32 %.sroa.13.0, %i.us
  %.not.i.i.i75 = icmp eq i32 %.sroa.37.sroa.0.0, 0
  %or.cond301 = select i1 %i.ut, i1 true, i1 %.not.i.i.i75
  br i1 %or.cond301, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIR8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSW_.exit.thread", label %bb.cw

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIR8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSW_.exit.thread": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i74
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.uu = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %1, ptr %5, align 8
  %.sroa.4.0..sroa_idx543 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.uu, ptr %.sroa.4.0..sroa_idx543, align 8
  %.sroa.5.0..sroa_idx544 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx544, align 8
  %.sroa.6.0..sroa_idx545 = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx545, align 8
  br label %.split.i.preheader

bb.cw:                                            ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i74
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21
  br i1 %i.ul, label %bb.cx, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.uv = load i16, ptr %i.uk, align 1, !tbaa !211
  %i.uw = call noundef i16 @llvm.bswap.i16(i16 %i.uv)
  %i.ux = zext i16 %i.uw to i32
  %.not.i.i.i.i.i.i.i.i.i.i95 = icmp samesign ult i32 %.sroa.13.0, %i.ux
  br i1 %.not.i.i.i.i.i.i.i.i.i.i95, label %bb.cy, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i96, !prof !219

bb.cy:                                            ; preds = %bb.cx
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.uy = zext nneg i32 %.sroa.13.0 to i64
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %i.um, i64 %i.uy
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i96

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i96: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i.i.i.i.i.i97 = phi ptr [ %i.uz, %bb.cy ], [ @_hb_NullPool, %bb.cx ]
  %i.va = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i97, align 1, !tbaa !211
  %i.vb = call noundef i16 @llvm.bswap.i16(i16 %i.va)
  %i.vc = zext i16 %i.vb to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i: ; preds = %bb.cw, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i96
  %.0.i.i.i.i.i.i.i.i76 = phi i32 [ %i.vc, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i96 ], [ %.sroa.27.0, %bb.cw ] ; 3 uses
  %i.vd = lshr i32 %.0.i.i.i.i.i.i.i.i76, 9       ; 3 uses
  %i.ve = load atomic i32, ptr %i.ac monotonic, align 8 ; 2 uses
  %i.vf = load i32, ptr %i.un, align 4, !tbaa !409 ; 3 uses
  %i.vg = icmp ult i32 %i.ve, %i.vf
  %i.vh = load ptr, ptr %i.uo, align 8, !tbaa !410 ; 3 uses
  br i1 %i.vg, label %bb.cz, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i77, !prof !219

bb.cz:                                            ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %i.vi = zext i32 %i.ve to i64                   ; 2 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %i.vi
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !412
  %.not.i.i.i.i.i.i.i.i.i.i.i94 = icmp eq i32 %i.vk, %i.vd
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i94, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i90, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i77

._crit_edge.i.i.i.i.i.i.i.i.i.i.i77:              ; preds = %bb.cz, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i78 = icmp sgt i32 %i.vf, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i78, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81, label %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i77
  %i.vl = add nsw i32 %i.vf, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82:           ; preds = %bb.dd, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i83 = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i87, %bb.dd ], [ %i.vl, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81 ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i84 = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i86, %bb.dd ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i81 ] ; 2 uses
  %i.vm = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i84, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i83
  %i.vn = lshr i32 %i.vm, 1                       ; 4 uses
  %i.vo = zext nneg i32 %i.vn to i64              ; 2 uses
  %i.vp = shl nuw nsw i64 %i.vo, 3
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vp
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !412 ; 2 uses
  %i.vs = icmp slt i32 %i.vd, %i.vr
  br i1 %i.vs, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82
  %i.vt = add nsw i32 %i.vn, -1
  br label %bb.dd

bb.db:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i85 = icmp eq i32 %i.vd, %i.vr
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i85, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i89, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.vu = add nuw nsw i32 %i.vn, 1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i86 = phi i32 [ %i.vu, %bb.dc ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i84, %bb.da ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i87 = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i83, %bb.dc ], [ %i.vt, %bb.da ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i88 = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i86, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i87
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i88, label %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i82, !llvm.loop !17

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i89: ; preds = %bb.db
  store atomic i32 %i.vn, ptr %i.ac monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i90

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i90: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i89, %bb.cz
  %i.vv = phi i64 [ %i.vo, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i89 ], [ %i.vi, %bb.cz ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i92 = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i91, align 8, !tbaa !413 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i.i93 = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i92, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i93, label %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i", label %bb.de

bb.de:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i90
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vh, i64 %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !414
  %i.vz = zext i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i92, i64 %i.vz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wc = lshr i32 %.0.i.i.i.i.i.i.i.i76, 6
  %i.wd = and i32 %i.wc, 7
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %i.we
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !266
  %i.wh = and i32 %.0.i.i.i.i.i.i.i.i76, 63
  %i.wi = zext nneg i32 %i.wh to i64
  %i.wj = lshr i64 %i.wg, %i.wi
  %i.wk = trunc i64 %i.wj to i8
  %i.wl = and i8 %i.wk, 1
  br label %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i"

"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i": ; preds = %bb.dd, %bb.de, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i90, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i77
  %.0.i.i.i.i.i.i.i5.i.i.i79 = phi i8 [ %i.wl, %bb.de ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i90 ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i77 ], [ 0, %bb.dd ]
  %i.wm = load i8, ptr %i.up, align 8, !tbaa !259, !range !213, !noundef !230
  %.not8.i.i.i80 = icmp eq i8 %i.wm, %.0.i.i.i.i.i.i.i5.i.i.i79
  br i1 %.not8.i.i.i80, label %bb.df, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIR8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSW_.exit"

bb.df:                                            ; preds = %"_ZNK4$_23clIR8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i"
  switch i16 %i.tn, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit [
    i16 1, label %bb.dg
    i16 2, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.wn = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.dh:                                            ; preds = %bb.df
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.wo = load i16, ptr %i.uk, align 1, !tbaa !211
  %i.wp = call noundef i16 @llvm.bswap.i16(i16 %i.wo)
  %i.wq = zext i16 %i.wp to i32
  %.not.i.i.i.i.i116 = icmp ult i32 %.sroa.13.0, %i.wq
  br i1 %.not.i.i.i.i.i116, label %bb.di, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !219

bb.di:                                            ; preds = %bb.dh
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.wr = zext nneg i32 %.sroa.13.0 to i64
  %i.ws = getelementptr inbounds nuw [6 x i8], ptr %i.um, i64 %i.wr
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i.i = phi ptr [ %i.ws, %bb.di ], [ @_hb_Null_OT_RangeRecord, %bb.dh ]
  %i.wt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.wu = load i16, ptr %i.wt, align 1, !tbaa !211
  %i.wv = call noundef i16 @llvm.bswap.i16(i16 %i.wu)
  %i.ww = zext i16 %i.wv to i32
  %.not.i.i.i.i117 = icmp ult i32 %.sroa.27.0, %i.ww
  br i1 %.not.i.i.i.i117, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.wx = add nuw nsw i32 %.sroa.13.0, 1          ; 4 uses
end_hunk_0
