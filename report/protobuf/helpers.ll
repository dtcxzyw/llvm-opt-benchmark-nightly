inline.NumInlined: 395
inline.NumDeleted: 173
begin_hunk_0_@_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag:bb.a
  %i.ad = load ptr, ptr %.012.i.i.i.i.i.prol, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !95
  store i64 %i.af, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ai = add nsw i64 %.0910.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol, !llvm.loop !102

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.012.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i55.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i55.prol ]
  %.0910.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i55.prol ]
  %i.aj = icmp ult i64 %i.d, 4
  br i1 %i.aj, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i55 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i55 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i55 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %i.ak = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !95
  store i64 %i.am, ptr %.0811.i.i.i.i.i, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !93
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !95
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.1, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !95
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.2, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !95
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.3, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.be = add nsw i64 %.0910.i.i.i.i.i, -4
  %i.bf = icmp sgt i64 %.0910.i.i.i.i.i, 4
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i55, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !104

_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.bh = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !93
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !95
  store i64 %i.bj, ptr %.011.i.i.i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store ptr %i.bh, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bl, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !58
  br label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bn = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bo = sub nuw nsw i64 %i.d, %i.n
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bo ; 3 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !58
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i57 ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i57 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i59, i64 16, i1 false), !tbaa.struct !99
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 16
  %.not.i.i.i.i.i60 = icmp eq ptr %i.bq, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !100

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre107 = load ptr, ptr %i.g, align 8, !tbaa !58
  br label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62: ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit
  %i.bs = phi ptr [ %.pre107, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.m
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !58
  %i.bu = ashr exact i64 %i.m, 4                  ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i64.preheader, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.012.i.i.i.i.i65.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ], [ %2, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0811.i.i.i.i.i66.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ], [ %1, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0910.i.i.i.i.i67.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.bw = load ptr, ptr %.012.i.i.i.i.i65.prol, align 8, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !95
  store i64 %i.by, ptr %.0811.i.i.i.i.i66.prol, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 16 ; 2 uses
  %i.cb = add nsw i64 %.0910.i.i.i.i.i67.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !106

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.012.i.i.i.i.i65.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ]
  %.0811.i.i.i.i.i66.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ]
  %.0910.i.i.i.i.i67.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ]
  %i.cc = icmp ult i64 %i.bu, 4
  br i1 %i.cc, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i64 ], [ %.0811.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i67 = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i64 ], [ %.0910.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 2 uses
  %i.cd = load ptr, ptr %.012.i.i.i.i.i65, align 8, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !95
  store i64 %i.cf, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 16
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !93
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !95
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 24
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.1, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 32
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !93
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !95
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 40
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.2, align 8, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 48
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !93
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 56
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !95
  store i64 %i.cu, ptr %i.cr, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 56
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.3, align 8, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 64
  %i.cx = add nsw i64 %.0910.i.i.i.i.i67, -4
  %i.cy = icmp sgt i64 %.0910.i.i.i.i.i67, 4
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !104

bb.h:                                             ; preds = %bb.b
  %i.cz = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = sub i64 %i.j, %i.da
  %i.dc = ashr exact i64 %i.db, 4                 ; 4 uses
  %i.dd = sub nsw i64 576460752303423487, %i.dc
  %i.de = icmp ult i64 %i.dd, %i.d
  br i1 %i.de, label %bb.i, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #15
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.d)
  %i.df = add nsw i64 %.sroa.speculated.i, %i.dc  ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dc
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 2 uses
  %4 = shl nuw nsw i64 %i.di, 4
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #16 ; 4 uses
  %.not.i = icmp eq ptr %i.cz, %1
  br i1 %.not.i, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i71 ], [ %5, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i71 ], [ %i.cz, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i72, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i73, i64 16, i1 false), !tbaa.struct !99
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.dj, %1
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71, !llvm.loop !100

.lr.ph.i.i.i.i77.preheader:                       ; preds = %.lr.ph.i.i.i.i.i71, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit
  %.011.i.i.i.i78.ph = phi ptr [ %5, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.dk, %.lr.ph.i.i.i.i.i71 ]
  br label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.i.i.i.i77.preheader, %.lr.ph.i.i.i.i77
  %.011.i.i.i.i78 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i77 ], [ %.011.i.i.i.i78.ph, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %.0810.i.i.i.i79 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i77 ], [ %2, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %.0810.i.i.i.i79, align 8, !tbaa !93
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !95
  store i64 %i.dn, ptr %.011.i.i.i.i78, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 8
  store ptr %i.dl, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 16 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.dp, %3
  br i1 %.not.i.i.i.i80, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, label %.lr.ph.i.i.i.i77, !llvm.loop !105

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82: ; preds = %.lr.ph.i.i.i.i77
  %.not11.i.i.i.i.i83 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i83, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, %.lr.ph.i.i.i.i.i84
  %.013.i.i.i.i.i85 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i84 ], [ %i.dq, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i86 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i84 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i85, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i86, i64 16, i1 false), !tbaa.struct !99
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i86, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i85, i64 16 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.dr, %i.h
  br i1 %.not.i.i.i.i.i87, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84, !llvm.loop !100

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89: ; preds = %.lr.ph.i.i.i.i.i84, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82
  %.0.lcssa.i.i.i.i.i88 = phi ptr [ %i.dq, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ], [ %i.ds, %.lr.ph.i.i.i.i.i84 ]
  %.not.i90 = icmp eq ptr %i.cz, null
  br i1 %.not.i90, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89
  %i.dt = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dv) #14
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, %bb.j
  store ptr %5, ptr %0, align 8, !tbaa !61
  store ptr %.0.lcssa.i.i.i.i.i88, ptr %i.g, align 8, !tbaa !58
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.di
  store ptr %i.dw, ptr %i.e, align 8, !tbaa !64
  br label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt9__find_ifIPKPKcN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEEET_SD_SD_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !13 ; 12 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40 ; 4 uses
  %i.f = and i64 %i.c, -32
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.0100 = phi i64 [ %i.d, %.lr.ph ], [ %i.ae, %bb.j ] ; 2 uses
  %.02999 = phi ptr [ %0, %.lr.ph ], [ %i.ad, %bb.j ] ; 13 uses
  %i.k = load ptr, ptr %.02999, align 8, !tbaa !40 ; 2 uses
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #13
  %i.m = icmp eq i64 %i.l, %.sroa.0.0.copyload.i
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.k, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.02999, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #13
  %i.r = icmp eq i64 %i.q, %.sroa.0.0.copyload.i
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i33

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i33: ; preds = %bb.e
  %bcmp.i.i34 = tail call i32 @bcmp(ptr nonnull %i.p, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  %i.s = icmp eq i32 %bcmp.i.i34, 0
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit116, label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i33
  %i.t = getelementptr inbounds nuw i8, ptr %.02999, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %i.v = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #13
  %i.w = icmp eq i64 %i.v, %.sroa.0.0.copyload.i
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit118, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i40

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i40: ; preds = %bb.g
  %bcmp.i.i41 = tail call i32 @bcmp(ptr nonnull %i.u, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  %i.x = icmp eq i32 %bcmp.i.i41, 0
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit120, label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i40
  %i.y = getelementptr inbounds nuw i8, ptr %.02999, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40   ; 2 uses
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #13
  %i.ab = icmp eq i64 %i.aa, %.sroa.0.0.copyload.i
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit122, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47: ; preds = %bb.i
  %bcmp.i.i48 = tail call i32 @bcmp(ptr nonnull %i.z, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  %i.ac = icmp eq i32 %bcmp.i.i48, 0
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit124, label %bb.j

bb.j:                                             ; preds = %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47
  %i.ad = getelementptr inbounds nuw i8, ptr %.02999, i64 32
  %i.ae = add nsw i64 %.0100, -1
  %i.af = icmp sgt i64 %.0100, 1
  br i1 %i.af, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !107

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre = ptrtoint ptr %scevgep to i64
  %.pre113 = sub i64 %i.a, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi114 = phi i64 [ %.pre113, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.029.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.ag = ashr exact i64 %.pre-phi114, 3
  switch i64 %i.ag, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge110
  ]

._crit_edge._crit_edge110:                        ; preds = %._crit_edge
  %.sroa.0.0.copyload.i65.pre = load i64, ptr %2, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i66.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i67.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i66.phi.trans.insert, align 8, !tbaa !40
  br label %bb.q

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.sroa.0.0.copyload.i58.pre = load i64, ptr %2, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i59.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i60.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i59.phi.trans.insert, align 8, !tbaa !40
  br label %bb.n

bb.k:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %.029.lcssa, align 8, !tbaa !40 ; 2 uses
  %i.ai = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #13 ; 3 uses
  %.sroa.0.0.copyload.i51 = load i64, ptr %2, align 8, !tbaa !13 ; 2 uses
  %.sroa.2.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i53 = load ptr, ptr %.sroa.2.0..sroa_idx.i52, align 8, !tbaa !40 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %.sroa.0.0.copyload.i51
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54: ; preds = %bb.l
  %bcmp.i.i55 = tail call i32 @bcmp(ptr nonnull %i.ah, ptr %.sroa.2.0.copyload.i53, i64 %i.ai)
  %i.al = icmp eq i32 %bcmp.i.i55, 0
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge, %bb.m
  %.sroa.2.0.copyload.i60 = phi ptr [ %.sroa.2.0.copyload.i53, %bb.m ], [ %.sroa.2.0.copyload.i60.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.0.0.copyload.i58 = phi i64 [ %.sroa.0.0.copyload.i51, %bb.m ], [ %.sroa.0.0.copyload.i58.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.1 = phi ptr [ %i.am, %bb.m ], [ %.029.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.an = load ptr, ptr %.1, align 8, !tbaa !40   ; 2 uses
  %i.ao = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #13
  %i.ap = icmp eq i64 %i.ao, %.sroa.0.0.copyload.i58
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i61: ; preds = %bb.o
  %bcmp.i.i62 = tail call i32 @bcmp(ptr nonnull %i.an, ptr %.sroa.2.0.copyload.i60, i64 %.sroa.0.0.copyload.i58)
  %i.ar = icmp eq i32 %bcmp.i.i62, 0
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i61
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge110, %bb.p
  %.sroa.2.0.copyload.i67 = phi ptr [ %.sroa.2.0.copyload.i60, %bb.p ], [ %.sroa.2.0.copyload.i67.pre, %._crit_edge._crit_edge110 ]
  %.sroa.0.0.copyload.i65 = phi i64 [ %.sroa.0.0.copyload.i58, %bb.p ], [ %.sroa.0.0.copyload.i65.pre, %._crit_edge._crit_edge110 ] ; 3 uses
  %.2 = phi ptr [ %i.as, %bb.p ], [ %.029.lcssa, %._crit_edge._crit_edge110 ] ; 3 uses
  %i.at = load ptr, ptr %.2, align 8, !tbaa !40   ; 2 uses
  %i.au = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #13
  %i.av = icmp eq i64 %i.au, %.sroa.0.0.copyload.i65
  br i1 %i.av, label %bb.r, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit71.thread

bb.r:                                             ; preds = %bb.q
  %i.aw = icmp eq i64 %.sroa.0.0.copyload.i65, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68: ; preds = %bb.r
  %bcmp.i.i69 = tail call i32 @bcmp(ptr nonnull %i.at, ptr %.sroa.2.0.copyload.i67, i64 %.sroa.0.0.copyload.i65)
  %i.ax = icmp eq i32 %bcmp.i.i69, 0
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit71.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit71.thread: ; preds = %bb.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.02999, i64 8
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit
end_hunk_0
