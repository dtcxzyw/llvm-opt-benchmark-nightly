Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tERKNS_25ContextApplyLookupContextE:bb.a
.lr.ph.i169.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i169.new
  %indvars.iv.i171 = phi i64 [ %indvars.iv.next.i172.3, %.lr.ph.i169.new ], [ %indvars.iv.i171.unr, %.prol.loopexit ] ; 5 uses
  %i.mz = getelementptr inbounds nuw [20 x i8], ptr %i.mq, i64 %indvars.iv.i171
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !593
  %i.nc = or i32 %i.nb, 2
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !593
  %i.nd = getelementptr inbounds nuw [20 x i8], ptr %i.mq, i64 %indvars.iv.i171
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !593
  %i.ng = or i32 %i.nf, 2
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !593
  %i.nh = getelementptr inbounds nuw [20 x i8], ptr %i.mq, i64 %indvars.iv.i171
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 44 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !593
  %i.nk = or i32 %i.nj, 2
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !593
  %i.nl = getelementptr inbounds nuw [20 x i8], ptr %i.mq, i64 %indvars.iv.i171
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 64 ; 2 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !593
  %i.no = or i32 %i.nn, 2
  store i32 %i.no, ptr %i.nm, align 4, !tbaa !593
  %indvars.iv.next.i172.3 = add nuw nsw i64 %indvars.iv.i171, 4 ; 2 uses
  %exitcond.not.i173.3 = icmp eq i64 %indvars.iv.next.i172.3, %wide.trip.count.i170
  br i1 %exitcond.not.i173.3, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, label %.lr.ph.i169.new, !llvm.loop !16

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread: ; preds = %.prol.loopexit, %.lr.ph.i169.new, %.prol.loopexit332, %.lr.ph.i.new, %bb.b, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, %bb.al, %bb.an, %bb.am, %bb.ak, %bb.ar, %bb.at, %bb.au, %bb.as, %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit"
  %.5 = phi i1 [ true, %bb.al ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.au ], [ %i.z, %bb.b ], [ false, %bb.as ], [ %i.fm, %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_.exit" ], [ true, %bb.ak ], [ true, %bb.am ], [ true, %bb.an ], [ true, %.prol.loopexit332 ], [ false, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit ], [ true, %.lr.ph.i.new ], [ false, %.lr.ph.i169.new ], [ false, %.prol.loopexit ]
  ret i1 %.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EEZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0ELSO_0EERK4$_44TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS18_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS18_Efp_EEEOS18_OS1D_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #16 {
bb.a:
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.121.0.copyload.i = load ptr, ptr %.sroa.121.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.142.0.copyload.i = load ptr, ptr %.sroa.142.0..sroa_idx.i, align 8
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.15.0.copyload.i = load ptr, ptr %.sroa.15.0..sroa_idx.i, align 8 ; 2 uses
  %.not6.not.i = icmp eq i32 %.sroa.6.0.copyload.i, 0
  br i1 %.not6.not.i, label %"_ZNK4$_44clI13hb_map_iter_tI16hb_filter_iter_tIS1_I10hb_array_tIKN2OT8OffsetToINS4_4RuleINS4_6Layout10SmallTypesEEENS4_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS4_7RuleSetIS8_EEEL24hb_function_sortedness_t0ELPv0EEZNKSK_5applyEPNS4_21hb_ot_apply_context_tERKNS4_25ContextApplyLookupContextEEUlRKS9_E0_RK3$_8LSP_0EEZNKSK_5applyESS_SV_EUlSX_E1_LSO_0ELSP_0EES11_S11_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSP_0EEEbOS16_OT0_OT1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8 ; 2 uses
  %i.a = getelementptr i8, ptr %.sroa.15.0.copyload.i, i64 8
  %.val1.i.i.i.i.i.i.i.pre = load i16, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !283
  br label %bb.b

bb.b:                                             ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EEZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0ELSO_0EEbEppEv.exit.i", %.lr.ph.i
  %.val1.i.i.i.i.i.i.i = phi i16 [ %.val1.i.i.i.i.i.i.i.pre, %.lr.ph.i ], [ %.val1.i.i.i.i.i.i8.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EEZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0ELSO_0EEbEppEv.exit.i" ] ; 2 uses
  %.sroa.0.09.i = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph.i ], [ %i.w, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EEZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0ELSO_0EEbEppEv.exit.i" ]
  %.sroa.6.08.i = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph.i ], [ %i.v, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EEZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0ELSO_0EEbEppEv.exit.i" ]
  %i.b = icmp eq i16 %.val1.i.i.i.i.i.i.i, 0
  %i.c = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i)
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.121.0.copyload.i, i64 %i.d
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.b, ptr @_hb_NullPool, ptr %i.e, !prof !267 ; 3 uses
  %.val.val.i.i.i = load ptr, ptr %.sroa.142.0.copyload.i, align 8, !tbaa !1846
  %.val1.val.i.i.i = load ptr, ptr %.sroa.15.0.copyload.i, align 8
  %.val1.val2.i.i.i = load ptr, ptr %i.a, align 8
  %i.f = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %.not.i.i.i.i.i.i3.i.i.i = icmp eq i16 %i.f, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.j = shl nuw nsw i32 %i.h, 1
  %i.k = add nsw i32 %i.j, -2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = select i1 %.not.i.i.i.i.i.i3.i.i.i, i64 0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = tail call fastcc noundef zeroext i1 @_ZN2OTL20context_apply_lookupINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_jPKNS_12LookupRecordERKNS_25ContextApplyLookupContextE(ptr noundef %.val.val.i.i.i, i32 noundef %i.h, ptr noundef %i.i, i32 noundef %i.r, ptr noundef nonnull %i.n, ptr %.val1.val.i.i.i, ptr %.val1.val2.i.i.i) ; 2 uses
  %i.t = add i32 %.sroa.6.08.i, -1                ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq i32 %i.t, 0
  %or.cond = select i1 %i.s, i1 true, i1 %.not.i.i.i.i.i14
  br i1 %or.cond, label %"_ZNK4$_44clI13hb_map_iter_tI16hb_filter_iter_tIS1_I10hb_array_tIKN2OT8OffsetToINS4_4RuleINS4_6Layout10SmallTypesEEENS4_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS4_7RuleSetIS8_EEEL24hb_function_sortedness_t0ELPv0EEZNKSK_5applyEPNS4_21hb_ot_apply_context_tERKNS4_25ContextApplyLookupContextEEUlRKS9_E0_RK3$_8LSP_0EEZNKSK_5applyESS_SV_EUlSX_E1_LSO_0ELSP_0EES11_S11_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSP_0EEEbOS16_OT0_OT1_.exit", label %.lr.ph

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i": ; preds = %.lr.ph
  %i.u = add i32 %i.v, -1                         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK4$_44clI13hb_map_iter_tI16hb_filter_iter_tIS1_I10hb_array_tIKN2OT8OffsetToINS4_4RuleINS4_6Layout10SmallTypesEEENS4_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS4_7RuleSetIS8_EEEL24hb_function_sortedness_t0ELPv0EEZNKSK_5applyEPNS4_21hb_ot_apply_context_tERKNS4_25ContextApplyLookupContextEEUlRKS9_E0_RK3$_8LSP_0EEZNKSK_5applyESS_SV_EUlSX_E1_LSO_0ELSP_0EES11_S11_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSP_0EEEbOS16_OT0_OT1_.exit", label %.lr.ph, !llvm.loop !4489

.lr.ph:                                           ; preds = %bb.b, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i"
  %i.v = phi i32 [ %i.u, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i" ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.1.i15 = phi ptr [ %i.w, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i" ], [ %.sroa.0.09.i, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i15, i64 2 ; 3 uses
  %.val1.i.i.i.i.i.i8.i = load i16, ptr %i.w, align 1, !tbaa !283 ; 3 uses
  %i.x = icmp eq i16 %.val1.i.i.i.i.i.i8.i, 0
  %i.y = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i8.i)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.121.0.copyload.i, i64 %i.z
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i9.i = select i1 %i.x, ptr @_hb_NullPool, ptr %i.aa, !prof !267
  %.val2.i.i.i.i.i = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i9.i, align 1, !tbaa !283
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %.val2.i.i.i.i.i)
  %i.ac = icmp ult i16 %i.ab, 2
  br i1 %i.ac, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EEZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0ELSO_0EEbEppEv.exit.i", label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i", !llvm.loop !4489

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EEZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0ELSO_0EEbEppEv.exit.i": ; preds = %.lr.ph
  br label %bb.b, !llvm.loop !4490

"_ZNK4$_44clI13hb_map_iter_tI16hb_filter_iter_tIS1_I10hb_array_tIKN2OT8OffsetToINS4_4RuleINS4_6Layout10SmallTypesEEENS4_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS4_7RuleSetIS8_EEEL24hb_function_sortedness_t0ELPv0EEZNKSK_5applyEPNS4_21hb_ot_apply_context_tERKNS4_25ContextApplyLookupContextEEUlRKS9_E0_RK3$_8LSP_0EEZNKSK_5applyESS_SV_EUlSX_E1_LSO_0ELSP_0EES11_S11_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSP_0EEEbOS16_OT0_OT1_.exit": ; preds = %bb.b, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i", %bb.a
  %.not.lcssa.i = phi i1 [ false, %bb.a ], [ false, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i" ], [ %i.s, %bb.b ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2OTL20context_apply_lookupINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_jPKNS_12LookupRecordERKNS_25ContextApplyLookupContextE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr %.0.val, ptr %.8.val) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = icmp ugt i32 %1, 64
  br i1 %i.b, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1280 ; 6 uses
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.g = load i32, ptr %i.f, align 4, !tbaa !655  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.i = load i32, ptr %i.h, align 4, !tbaa !296
  %.not.i26.not = icmp eq i32 %i.i, 0
  br i1 %.not.i26.not, label %bb.d, label %bb.e, !prof !267

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !325
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.d, %bb.e
  %.0.i27 = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.k, %bb.e ]
  store i32 %i.g, ptr %.0.i27, align 4, !tbaa !326
  br label %bb.u

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 92 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !655  ; 3 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !1368
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1289
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1280 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !609
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.t, ptr %i.u, align 8, !tbaa !1290
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !591
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 92
  %i.y = load i32, ptr %i.x, align 4, !tbaa !655
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [20 x i8], ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 15
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !280
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !1842
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.val, ptr %i.ae, align 8, !tbaa !1724
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.8.val, ptr %i.af, align 8, !tbaa !1725
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.ag, align 8, !tbaa !1723
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !591
  %i.aj = zext i32 %i.n to i64
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 14
  %.val22 = load i8, ptr %i.al, align 2, !tbaa !280 ; 3 uses
  %i.am = lshr i8 %.val22, 5                      ; 4 uses
  %i.an = and i8 %.val22, 16
  %.not.i28 = icmp eq i8 %i.an, 0
  %i.ao = and i8 %.val22, 15
  %narrow.i = select i1 %.not.i28, i8 %i.ao, i8 0 ; 2 uses
  %.not108.i56.not = icmp eq i32 %1, 0
  br i1 %.not108.i56.not, label %.thread33, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.as = icmp ne i8 %i.am, 0
  %i.at = icmp ne i8 %narrow.i, 0
  %or.cond.i = and i1 %i.as, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %or.cond.i.fr = freeze i1 %or.cond.i
  %5 = tail call i32 @llvm.umax.i32(i32 %1, i32 2)
  %wide.trip.count76 = zext nneg i32 %5 to i64    ; 2 uses
  br i1 %or.cond.i.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge112.i.thread24.us
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.critedge112.i.thread24.us ], [ 1, %.lr.ph ] ; 4 uses
  %.082.i57.us = phi i32 [ %.3.i.us, %.critedge112.i.thread24.us ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.ax = call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4nextEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.l, ptr noundef nonnull %i.a)
  br i1 %i.ax, label %bb.g, label %.split60.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ay = load i32, ptr %i.ap, align 4, !tbaa !1844
  %i.az = zext i32 %i.ay to i64
  %.not.i.us = icmp samesign ult i64 %indvars.iv73, %i.az
  br i1 %.not.i.us, label %.critedge110.i.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = trunc i64 %indvars.iv73 to i32
  %i.bb = add i32 %i.ba, 1                        ; 2 uses
  %i.bc = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i32 noundef %i.bb, i1 noundef zeroext false)
  br i1 %i.bc, label %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.us, label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit

_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.us:  ; preds = %bb.h
  store i32 %i.bb, ptr %i.ap, align 4, !tbaa !296
  br label %.critedge110.i.us

.critedge110.i.us:                                ; preds = %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit.us, %bb.g
  %i.bd = load i32, ptr %i.l, align 8, !tbaa !1368 ; 2 uses
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !1845
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv73
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !326
  %i.bg = load ptr, ptr %i.ah, align 8, !tbaa !591
  %i.bh = zext i32 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [20 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 14
  %.val21.us = load i8, ptr %i.bj, align 2, !tbaa !280 ; 3 uses
  %i.bk = lshr i8 %.val21.us, 5
  %i.bl = and i8 %.val21.us, 16
  %.not.i30.us = icmp eq i8 %i.bl, 0
  %i.bm = and i8 %.val21.us, 15
  %narrow.i31.us = select i1 %.not.i30.us, i8 %i.bm, i8 0
  %.not105.i.us = icmp ne i8 %i.am, %i.bk
  %.not106.i.us = icmp ne i8 %narrow.i, %narrow.i31.us
  %or.cond111.i.not52.us = or i1 %.not105.i.us, %.not106.i.us
  %cond.us = icmp eq i32 %.082.i57.us, 0
  %or.cond50.us = select i1 %or.cond111.i.not52.us, i1 %cond.us, i1 false
  br i1 %or.cond50.us, label %bb.i, label %.critedge112.i.thread24.us

bb.i:                                             ; preds = %.critedge110.i.us
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !638
  %i.bo = load i32, ptr %i.av, align 4, !tbaa !637 ; 2 uses
  %.not107.i.us90 = icmp eq i32 %i.bo, 0
  br i1 %.not107.i.us90, label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.i
  %i.bp = zext i32 %i.bo to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.l
  %.not107.i.us = icmp eq i64 %i.bq, 0
  br i1 %.not107.i.us, label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit, label %bb.k, !llvm.loop !180

bb.k:                                             ; preds = %.lr.ph92, %bb.j
  %indvars.iv6691 = phi i64 [ %i.bp, %.lr.ph92 ], [ %i.bq, %bb.j ]
  %i.bq = add nsw i64 %indvars.iv6691, -1         ; 3 uses
  %i.br = getelementptr inbounds nuw [20 x i8], ptr %i.bn, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 14
  %.val20.us = load i8, ptr %i.bs, align 2, !tbaa !280 ; 3 uses
  %i.bt = lshr i8 %.val20.us, 5
  %i.bu = icmp eq i8 %i.bt, %i.am
  br i1 %i.bu, label %bb.l, label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit

bb.l:                                             ; preds = %bb.k
  %i.bv = and i8 %.val20.us, 16
  %.not.i33.us = icmp ne i8 %i.bv, 0
  %i.bw = and i8 %.val20.us, 15
  %i.bx = icmp eq i8 %i.bw, 0
  %i.by = or i1 %.not.i33.us, %i.bx
  br i1 %i.by, label %.critedge.i.us, label %bb.j, !llvm.loop !180

.critedge.i.us:                                   ; preds = %bb.l
  %i.bz = load ptr, ptr %i.o, align 8, !tbaa !1289 ; 2 uses
  %i.ca = load i32, ptr %i.aw, align 8, !tbaa !1291 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.br, i64 12
  %.val.us = load i16, ptr %i.cb, align 4, !tbaa !280
  %i.cc = zext i16 %.val.us to i32                ; 3 uses
  %i.cd = and i32 %i.ca, 14
  %i.ce = and i32 %i.cd, %i.cc
  %.not.i.i.i.us = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.us, label %bb.m, label %.critedge112.i.thread24.us

bb.m:                                             ; preds = %.critedge.i.us
  %i.cf = and i32 %i.cc, 8
  %.not8.i.i.i.us = icmp eq i32 %i.cf, 0
  br i1 %.not8.i.i.i.us, label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = and i32 %i.ca, 16
  %.not.i3.i.i.us = icmp eq i32 %i.cg, 0
  br i1 %.not.i3.i.i.us, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = lshr i32 %i.ca, 16                      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 248
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1281, !nonnull !293, !align !294
  %i.ck = load i32, ptr %i.br, align 4, !tbaa !639 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1722
  %i.cn = zext nneg i32 %i.ch to i64
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cn ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !359
  %i.cq = lshr i32 %i.ck, 4
  %i.cr = and i32 %i.cq, 63
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = and i64 %i.ct, %i.cp
  %.not.i6.i.i.us = icmp eq i64 %i.cu, 0
  br i1 %.not.i6.i.i.us, label %.critedge112.i.thread24.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !359
  %i.cx = and i32 %i.ck, 63
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cz, %i.cw
  %.not.i6.i.i.us.1 = icmp eq i64 %i.da, 0
  br i1 %.not.i6.i.i.us.1, label %.critedge112.i.thread24.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !359
  %i.dd = lshr i32 %i.ck, 6
  %i.de = and i32 %i.dd, 63
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i64 %i.dg, %i.dc
  %.not.i6.i.i.us.2 = icmp eq i64 %i.dh, 0
  br i1 %.not.i6.i.i.us.2, label %.critedge112.i.thread24.us, label %.split.us

.split.us:                                        ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 240
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1717, !nonnull !293
  %i.dk = call noundef zeroext i1 @_ZNK2OT4GDEF15mark_set_coversEjj(ptr noundef nonnull align 1 dereferenceable(18) %i.dj, i32 noundef %i.ch, i32 noundef %i.ck)
  br i1 %i.dk, label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit, label %.critedge112.i.thread24.us

bb.r:                                             ; preds = %bb.n
  %i.dl = and i32 %i.ca, 65280                    ; 2 uses
  %.not11.i.i.i.us = icmp eq i32 %i.dl, 0
  %i.dm = and i32 %i.cc, 65280
  %i.dn = icmp eq i32 %i.dl, %i.dm
  %or.cond.us = or i1 %.not11.i.i.i.us, %i.dn
  br i1 %or.cond.us, label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit, label %.critedge112.i.thread24.us

.critedge112.i.thread24.us:                       ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %.split.us, %.critedge.i.us, %.critedge110.i.us
  %.3.i.us = phi i32 [ 2, %.split.us ], [ %.082.i57.us, %.critedge110.i.us ], [ 2, %.critedge.i.us ], [ 2, %bb.r ], [ 2, %bb.q ], [ 2, %bb.p ], [ 2, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %.thread33.loopexit, label %.lr.ph.split.us, !llvm.loop !181

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge112.i.thread24
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge112.i.thread24 ], [ 1, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.do = call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4nextEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.l, ptr noundef nonnull %i.a)
  br i1 %i.do, label %bb.s, label %.split60.us

.split60.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !326
  br label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit

bb.s:                                             ; preds = %.lr.ph.split
  %i.dq = load i32, ptr %i.ap, align 4, !tbaa !1844
  %i.dr = zext i32 %i.dq to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.dr
  br i1 %.not.i, label %.critedge110.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = trunc i64 %indvars.iv to i32
  %i.dt = add i32 %i.ds, 1                        ; 2 uses
  %i.du = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i32 noundef %i.dt, i1 noundef zeroext false)
  br i1 %i.du, label %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit, label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit

_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit:     ; preds = %bb.t
  store i32 %i.dt, ptr %i.ap, align 4, !tbaa !296
  br label %.critedge110.i

.critedge110.i:                                   ; preds = %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit, %bb.s
  %i.dv = load i32, ptr %i.l, align 8, !tbaa !1368 ; 3 uses
  %i.dw = load ptr, ptr %i.ar, align 8, !tbaa !1845
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !326
  %i.dy = load ptr, ptr %i.ah, align 8, !tbaa !591
  %i.dz = zext i32 %i.dv to i64
  %i.ea = getelementptr inbounds nuw [20 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 14
  %.val21 = load i8, ptr %i.eb, align 2, !tbaa !280 ; 3 uses
  %i.ec = lshr i8 %.val21, 5                      ; 2 uses
  %i.ed = and i8 %.val21, 16
  %.not.i30 = icmp ne i8 %i.ed, 0
  %i.ee = and i8 %.val21, 15
end_hunk_0
begin_hunk_1_@"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_I10hb_array_tIKN2OT8OffsetToINS3_9ChainRuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_12ChainRuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_30ChainContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EEZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0ELSO_0EERK4$_44TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS18_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS18_Efp_EEEOS18_OS1D_":bb.a

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i, %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.backedge.i.i.i.i.i"
  %.pn.i.i.i.i = phi ptr [ %i.aj, %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.backedge.i.i.i.i.i" ], [ %.sroa.0.07.i, %.lr.ph.i ]
  %i.ai = phi i32 [ %i.bc, %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.backedge.i.i.i.i.i" ], [ %i.ah, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 2 ; 3 uses
  %.val1.i.i.i.i.i.i7.i = load i16, ptr %i.aj, align 1, !tbaa !283 ; 3 uses
  %i.ak = icmp eq i16 %.val1.i.i.i.i.i.i7.i, 0
  %i.al = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i7.i)
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.121.0.copyload.i, i64 %i.am
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i8.i = select i1 %i.ak, ptr @_hb_NullPool, ptr %i.an, !prof !267 ; 2 uses
  %i.ao = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i8.i, align 1, !tbaa !283
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i8.i, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2 ; 2 uses
  %i.au = load i16, ptr %i.at, align 1, !tbaa !283 ; 2 uses
  %i.av = tail call noundef i16 @llvm.bswap.i16(i16 %i.au) ; 2 uses
  %i.aw = icmp ult i16 %i.av, 2
  br i1 %i.aw, label %.split.i.i.i.i.i, label %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.backedge.i.i.i.i.i"

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.au, 0
  %i.ax = shl nuw nsw i16 %i.av, 1
  %narrow.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i16 2, i16 %i.ax
  %i.ay = zext nneg i16 %narrow.i.i.i.i.i.i.i.i.i.i to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !283
  %i.bb = icmp eq i16 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i, label %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.backedge.i.i.i.i.i", !llvm.loop !4518

"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.backedge.i.i.i.i.i": ; preds = %.split.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bc = add i32 %i.ai, -1                       ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK4$_44clI13hb_map_iter_tI16hb_filter_iter_tIS1_I10hb_array_tIKN2OT8OffsetToINS4_9ChainRuleINS4_6Layout10SmallTypesEEENS4_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS4_12ChainRuleSetIS8_EEEL24hb_function_sortedness_t0ELPv0EEZNKSK_5applyEPNS4_21hb_ot_apply_context_tERKNS4_30ChainContextApplyLookupContextEEUlRKS9_E0_RK3$_8LSP_0EEZNKSK_5applyESS_SV_EUlSX_E1_LSO_0ELSP_0EES11_S11_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSP_0EEEbOS16_OT0_OT1_.exit", label %.lr.ph.i.i.i.i

"_ZNK4$_44clI13hb_map_iter_tI16hb_filter_iter_tIS1_I10hb_array_tIKN2OT8OffsetToINS4_9ChainRuleINS4_6Layout10SmallTypesEEENS4_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS4_12ChainRuleSetIS8_EEEL24hb_function_sortedness_t0ELPv0EEZNKSK_5applyEPNS4_21hb_ot_apply_context_tERKNS4_30ChainContextApplyLookupContextEEUlRKS9_E0_RK3$_8LSP_0EEZNKSK_5applyESS_SV_EUlSX_E1_LSO_0ELSP_0EES11_S11_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSP_0EEEbOS16_OT0_OT1_.exit": ; preds = %.lr.ph.i, %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.backedge.i.i.i.i.i", %bb.a
  %.not.lcssa.i = phi i1 [ false, %bb.a ], [ false, %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.backedge.i.i.i.i.i" ], [ %i.ag, %.lr.ph.i ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_30ChainContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_"(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 32), (40, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr %.8.val) unnamed_addr #53 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4522)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.8.val, ptr %i.a, align 8, !tbaa !4523, !alias.scope !4522
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i.i = load i32, ptr %i.b, align 8, !tbaa !4526, !alias.scope !4522 ; 2 uses
  %.not7.i.i = icmp eq i32 %.promoted.i.i, 0
  br i1 %.not7.i.i, label %"_ZN24hb_filter_iter_factory_tIZNK2OT12ChainRuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_30ChainContextApplyLookupContextEEUlRKNS0_9ChainRuleIS3_EEE0_RK3$_8EclI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_EL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELS10_0EEE16hb_filter_iter_tIS13_SE_SH_LDnEES13_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.promoted6.i.i = load ptr, ptr %0, align 8, !alias.scope !4522
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !1818, !alias.scope !4522
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.promoted9.i.i = load i32, ptr %i.d, align 4, !alias.scope !4522
  br label %bb.b

bb.b:                                             ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", %.lr.ph.i.i
  %i.e = phi i32 [ %.promoted9.i.i, %.lr.ph.i.i ], [ %i.z, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i" ]
  %.val358.i.i = phi i32 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.y, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i" ]
  %i.f = phi ptr [ %.promoted6.i.i, %.lr.ph.i.i ], [ %i.aa, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i" ] ; 2 uses
  %.val1.i.i.i.i = load i16, ptr %i.f, align 1, !tbaa !283, !noalias !4522 ; 2 uses
  %i.g = icmp eq i16 %.val1.i.i.i.i, 0
  %i.h = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i)
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.g, ptr @_hb_NullPool, ptr %i.j, !prof !267 ; 2 uses
  %i.k = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !283, !noalias !4522
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283, !noalias !4522 ; 2 uses
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q) ; 2 uses
  %i.s = icmp ult i16 %i.r, 2
  br i1 %i.s, label %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.i.i", label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i"

"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.i.i": ; preds = %bb.b
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.q, 0
  %i.t = shl nuw nsw i16 %i.r, 1
  %narrow.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i16 2, i16 %i.t
  %i.u = zext nneg i16 %narrow.i.i.i.i.i.i.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283, !noalias !4522
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %"_ZN24hb_filter_iter_factory_tIZNK2OT12ChainRuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_30ChainContextApplyLookupContextEEUlRKNS0_9ChainRuleIS3_EEE0_RK3$_8EclI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_EL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELS10_0EEE16hb_filter_iter_tIS13_SE_SH_LDnEES13_.exit", label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i": ; preds = %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.i.i", %bb.b
  %i.y = add i32 %.val358.i.i, -1                 ; 3 uses
  store i32 %i.y, ptr %i.b, align 8, !tbaa !4526, !alias.scope !4522
  %i.z = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.z, ptr %i.d, align 4, !tbaa !4527, !alias.scope !4522
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !4528, !alias.scope !4522
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %"_ZN24hb_filter_iter_factory_tIZNK2OT12ChainRuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_30ChainContextApplyLookupContextEEUlRKNS0_9ChainRuleIS3_EEE0_RK3$_8EclI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_EL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELS10_0EEE16hb_filter_iter_tIS13_SE_SH_LDnEES13_.exit", label %bb.b, !llvm.loop !4521

"_ZN24hb_filter_iter_factory_tIZNK2OT12ChainRuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_30ChainContextApplyLookupContextEEUlRKNS0_9ChainRuleIS3_EEE0_RK3$_8EclI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_EL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELS10_0EEE16hb_filter_iter_tIS13_SE_SH_LDnEES13_.exit": ; preds = %"_ZNK4$_35clIRZNK2OT12ChainRuleSetINS1_6Layout10SmallTypesEE5applyEPNS1_21hb_ot_apply_context_tERKNS1_30ChainContextApplyLookupContextEEUlRKNS1_9ChainRuleIS4_EEE0_SE_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSI_OSJ_.exit.i.i", %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i", %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2OTL26chain_context_apply_lookupINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordERKNS_30ChainContextApplyLookupContextE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr nofree noundef nonnull readonly captures(none) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %9) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = icmp ugt i32 %3, 64
  br i1 %i.d, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1280 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !655  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.k = icmp eq i32 %3, 1
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.m = load i32, ptr %i.l, align 4, !tbaa !296
  %.not.i48.not = icmp eq i32 %i.m, 0
  br i1 %.not.i48.not, label %bb.d, label %bb.e, !prof !267

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !325
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.d, %bb.e
  %.0.i49 = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.o, %bb.e ]
  store i32 %i.i, ptr %.0.i49, align 4, !tbaa !326
  br label %bb.v

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !332
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !332
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 %i.i, ptr %i.t, align 8, !tbaa !1368
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1289
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1280 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.z = load i32, ptr %i.y, align 8, !tbaa !609
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !1290
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !591
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 92
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !655
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [20 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 15
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !280
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !1842
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %i.ak, align 8, !tbaa !1724
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.q, ptr %i.al, align 8, !tbaa !1725
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %4, ptr %i.am, align 8, !tbaa !1723
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !591
  %i.ap = zext i32 %i.i to i64
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 14
  %.val44 = load i8, ptr %i.ar, align 2, !tbaa !280 ; 3 uses
  %i.as = lshr i8 %.val44, 5                      ; 4 uses
  %i.at = and i8 %.val44, 16
  %.not.i50 = icmp eq i8 %i.at, 0
  %i.au = and i8 %.val44, 15
  %narrow.i = select i1 %.not.i50, i8 %i.au, i8 0 ; 2 uses
  %.not108.i174.not = icmp eq i32 %3, 0
  br i1 %.not108.i174.not, label %.thread129, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ay = icmp ne i8 %i.as, 0
  %i.az = icmp ne i8 %narrow.i, 0
  %or.cond.i = and i1 %i.ay, %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = tail call i32 @llvm.umax.i32(i32 %3, i32 2)
  %wide.trip.count = zext nneg i32 %10 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge112.i.thread120
  %indvars.iv184 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next185, %.critedge112.i.thread120 ] ; 4 uses
  %.082.i175 = phi i32 [ 0, %.lr.ph ], [ %.3.i, %.critedge112.i.thread120 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #63
  %i.bc = call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4nextEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.t, ptr noundef nonnull %i.c)
  br i1 %i.bc, label %bb.h, label %.thread133

bb.h:                                             ; preds = %bb.g
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !1844
  %i.be = zext i32 %i.bd to i64
  %.not.i = icmp samesign ult i64 %indvars.iv184, %i.be
  br i1 %.not.i, label %.critedge110.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = trunc i64 %indvars.iv184 to i32
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  %i.bh = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i32 noundef %i.bg, i1 noundef zeroext false)
  br i1 %i.bh, label %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit, label %.thread133

_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit:     ; preds = %bb.i
  store i32 %i.bg, ptr %i.av, align 4, !tbaa !296
  br label %.critedge110.i

.critedge110.i:                                   ; preds = %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit, %bb.h
  %i.bi = load i32, ptr %i.t, align 8, !tbaa !1368 ; 2 uses
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !1845
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv184
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !326
  %i.bl = load ptr, ptr %i.an, align 8, !tbaa !591
  %i.bm = zext i32 %i.bi to i64
  %i.bn = getelementptr inbounds nuw [20 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 14
  %.val43 = load i8, ptr %i.bo, align 2, !tbaa !280 ; 3 uses
  %i.bp = lshr i8 %.val43, 5                      ; 3 uses
  %i.bq = and i8 %.val43, 16
  %.not.i52 = icmp eq i8 %i.bq, 0
  %i.br = and i8 %.val43, 15
  %narrow.i53 = select i1 %.not.i52, i8 %i.br, i8 0 ; 2 uses
  br i1 %or.cond.i, label %bb.j, label %bb.u

bb.j:                                             ; preds = %.critedge110.i
  %.not105.i = icmp ne i8 %i.as, %i.bp
  %.not106.i = icmp ne i8 %narrow.i, %narrow.i53
  %or.cond111.i.not170 = or i1 %.not105.i, %.not106.i
  %cond = icmp eq i32 %.082.i175, 0
  %or.cond167 = select i1 %or.cond111.i.not170, i1 %cond, i1 false
  br i1 %or.cond167, label %bb.k, label %.critedge112.i.thread120

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !638
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !637 ; 2 uses
  %.not107.i198 = icmp eq i32 %i.bt, 0
  br i1 %.not107.i198, label %.thread, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.k
  %i.bu = zext i32 %i.bt to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.n
  %.not107.i = icmp eq i64 %i.bv, 0
  br i1 %.not107.i, label %.thread, label %bb.m, !llvm.loop !180

bb.m:                                             ; preds = %.lr.ph200, %bb.l
  %indvars.iv199 = phi i64 [ %i.bu, %.lr.ph200 ], [ %i.bv, %bb.l ]
  %i.bv = add nsw i64 %indvars.iv199, -1          ; 3 uses
  %i.bw = getelementptr inbounds nuw [20 x i8], ptr %i.bs, i64 %i.bv ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 14
  %.val42 = load i8, ptr %i.bx, align 2, !tbaa !280 ; 3 uses
  %i.by = lshr i8 %.val42, 5
  %i.bz = icmp eq i8 %i.by, %i.as
  br i1 %i.bz, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ca = and i8 %.val42, 16
  %.not.i55 = icmp ne i8 %i.ca, 0
  %i.cb = and i8 %.val42, 15
  %i.cc = icmp eq i8 %i.cb, 0
  %i.cd = or i1 %.not.i55, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.l, !llvm.loop !180

.critedge.i:                                      ; preds = %bb.n
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !1289 ; 2 uses
  %i.cf = load i32, ptr %i.bb, align 8, !tbaa !1291 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.bw, i64 12
  %.val = load i16, ptr %i.cg, align 4, !tbaa !280
  %i.ch = zext i16 %.val to i32                   ; 3 uses
  %i.ci = and i32 %i.cf, 14
  %i.cj = and i32 %i.ci, %i.ch
  %.not.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i, label %bb.o, label %.critedge112.i.thread120

bb.o:                                             ; preds = %.critedge.i
  %i.ck = and i32 %i.ch, 8
  %.not8.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not8.i.i.i, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = and i32 %i.cf, 16
  %.not.i3.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i3.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = lshr i32 %i.cf, 16                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 248
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1281, !nonnull !293, !align !294
  %i.cp = load i32, ptr %i.bw, align 4, !tbaa !639 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1722
  %i.cs = zext nneg i32 %i.cm to i64
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cs ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !359
  %i.cv = lshr i32 %i.cp, 4
  %i.cw = and i32 %i.cv, 63
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cy, %i.cu
  %.not.i6.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i6.i.i, label %.critedge112.i.thread120, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !359
  %i.dc = and i32 %i.cp, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl nuw i64 1, %i.dd
  %i.df = and i64 %i.de, %i.db
  %.not.i6.i.i.1 = icmp eq i64 %i.df, 0
  br i1 %.not.i6.i.i.1, label %.critedge112.i.thread120, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !359
  %i.di = lshr i32 %i.cp, 6
  %i.dj = and i32 %i.di, 63
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = and i64 %i.dl, %i.dh
  %.not.i6.i.i.2 = icmp eq i64 %i.dm, 0
  br i1 %.not.i6.i.i.2, label %.critedge112.i.thread120, label %.split

.split:                                           ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ce, i64 240
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1717, !nonnull !293
  %i.dp = call noundef zeroext i1 @_ZNK2OT4GDEF15mark_set_coversEjj(ptr noundef nonnull align 1 dereferenceable(18) %i.do, i32 noundef %i.cm, i32 noundef %i.cp)
  br i1 %i.dp, label %.thread, label %.critedge112.i.thread120

bb.t:                                             ; preds = %bb.p
  %i.dq = and i32 %i.cf, 65280                    ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.dq, 0
  %i.dr = and i32 %i.ch, 65280
  %i.ds = icmp eq i32 %i.dq, %i.dr
  %or.cond = or i1 %.not11.i.i.i, %i.ds
  br i1 %or.cond, label %.thread, label %.critedge112.i.thread120

bb.u:                                             ; preds = %.critedge110.i
  %i.dt = icmp eq i8 %i.bp, 0
  %i.du = icmp eq i8 %narrow.i53, 0
  %or.cond4.i.not = or i1 %i.dt, %i.du
  %.not104.i = icmp eq i8 %i.bp, %i.as
  %or.cond113.i = or i1 %.not104.i, %or.cond4.i.not
  br i1 %or.cond113.i, label %.critedge112.i.thread120, label %.thread133

.critedge112.i.thread120:                         ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %.split, %.critedge.i, %bb.u, %bb.j
  %.3.i = phi i32 [ 2, %.split ], [ %.082.i175, %bb.j ], [ %.082.i175, %bb.u ], [ 2, %bb.t ], [ 2, %.critedge.i ], [ 2, %bb.s ], [ 2, %bb.r ], [ 2, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count
  br i1 %exitcond.not, label %.thread129.loopexit, label %bb.g, !llvm.loop !181

.thread133:                                       ; preds = %bb.g, %bb.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit

.thread:                                          ; preds = %.split, %bb.o, %bb.t, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  br label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit

.thread129.loopexit:                              ; preds = %.critedge112.i.thread120
  %.pre = load i32, ptr %i.t, align 8, !tbaa !1368
  %.pre189 = load i32, ptr %i.h, align 4, !tbaa !655
  br label %.thread129

.thread129:                                       ; preds = %.thread129.loopexit, %bb.f
  %i.dv = phi i32 [ %.pre189, %.thread129.loopexit ], [ %i.i, %bb.f ]
  %i.dw = phi i32 [ %.pre, %.thread129.loopexit ], [ %i.i, %bb.f ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1845
  store i32 %i.dv, ptr %i.dy, align 4, !tbaa !326
  br label %bb.v

bb.v:                                             ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit, %.thread129
  %.3.ph.in = phi i32 [ %i.dw, %.thread129 ], [ %i.i, %_ZN11hb_vector_tIjLb0EEixEi.exit ] ; 2 uses
  %.3.ph = add i32 %.3.ph.in, 1                   ; 3 uses
  %.not = icmp eq i32 %.3.ph, 0
  br i1 %.not, label %_ZN2OTL11match_inputINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_PjSE_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i29 = icmp eq i32 %5, 0
end_hunk_1
