inline.NumInlined: 355
inline.NumDeleted: 176
begin_hunk_0_@_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_9SkipEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag:bb.a
  %i.ad = load ptr, ptr %.012.i.i.i.i.i.prol, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !57
  store i64 %i.af, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ai = add nsw i64 %.0910.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol, !llvm.loop !63

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.012.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i55.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i55.prol ]
  %.0910.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i55.prol ]
  %i.aj = icmp ult i64 %i.d, 4
  br i1 %i.aj, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i55 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i55 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i55 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %i.ak = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !57
  store i64 %i.am, ptr %.0811.i.i.i.i.i, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !57
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.1, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !57
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.2, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !57
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.3, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.be = add nsw i64 %.0910.i.i.i.i.i, -4
  %i.bf = icmp sgt i64 %.0910.i.i.i.i.i, 4
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i55, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !65

_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.bh = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !55
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !57
  store i64 %i.bj, ptr %.011.i.i.i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store ptr %i.bh, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bl, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !66

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !60
  br label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bn = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bo = sub nuw nsw i64 %i.d, %i.n
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bo ; 3 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !60
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i57 ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i57 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i59, i64 16, i1 false), !tbaa.struct !25
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 16
  %.not.i.i.i.i.i60 = icmp eq ptr %i.bq, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !61

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre107 = load ptr, ptr %i.g, align 8, !tbaa !60
  br label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62: ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit
  %i.bs = phi ptr [ %.pre107, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.m
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !60
  %i.bu = ashr exact i64 %i.m, 4                  ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i64.preheader, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.012.i.i.i.i.i65.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ], [ %2, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0811.i.i.i.i.i66.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ], [ %1, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0910.i.i.i.i.i67.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.bw = load ptr, ptr %.012.i.i.i.i.i65.prol, align 8, !tbaa !55
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !57
  store i64 %i.by, ptr %.0811.i.i.i.i.i66.prol, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 16 ; 2 uses
  %i.cb = add nsw i64 %.0910.i.i.i.i.i67.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !67

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.012.i.i.i.i.i65.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ]
  %.0811.i.i.i.i.i66.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ]
  %.0910.i.i.i.i.i67.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ]
  %i.cc = icmp ult i64 %i.bu, 4
  br i1 %i.cc, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i64 ], [ %.0811.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i67 = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i64 ], [ %.0910.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 2 uses
  %i.cd = load ptr, ptr %.012.i.i.i.i.i65, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !57
  store i64 %i.cf, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 16
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !55
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !57
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 24
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.1, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 32
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !57
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 40
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.2, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 48
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 56
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !57
  store i64 %i.cu, ptr %i.cr, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 56
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.3, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 64
  %i.cx = add nsw i64 %.0910.i.i.i.i.i67, -4
  %i.cy = icmp sgt i64 %.0910.i.i.i.i.i67, 4
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !65

bb.h:                                             ; preds = %bb.b
  %i.cz = load ptr, ptr %0, align 8, !tbaa !22    ; 5 uses
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = sub i64 %i.j, %i.da
  %i.dc = ashr exact i64 %i.db, 4                 ; 4 uses
  %i.dd = sub nsw i64 576460752303423487, %i.dc
  %i.de = icmp ult i64 %i.dd, %i.d
  br i1 %i.de, label %bb.i, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #18
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.d)
  %i.df = add nsw i64 %.sroa.speculated.i, %i.dc  ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dc
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 3 uses
  %.not.i = icmp eq i64 %i.di, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, label %4

4:                                                ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit
  %5 = shl nuw nsw i64 %i.di, 4
  %6 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #20
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit, %4
  %7 = phi ptr [ %6, %4 ], [ null, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not11.i.i.i.i.i70 = icmp eq ptr %i.cz, %1
  br i1 %.not11.i.i.i.i.i70, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i71 ], [ %7, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i71 ], [ %i.cz, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i72, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i73, i64 16, i1 false), !tbaa.struct !25
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.dj, %1
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71, !llvm.loop !61

.lr.ph.i.i.i.i77.preheader:                       ; preds = %.lr.ph.i.i.i.i.i71, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit
  %.011.i.i.i.i78.ph = phi ptr [ %7, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ], [ %i.dk, %.lr.ph.i.i.i.i.i71 ]
  br label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.i.i.i.i77.preheader, %.lr.ph.i.i.i.i77
  %.011.i.i.i.i78 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i77 ], [ %.011.i.i.i.i78.ph, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %.0810.i.i.i.i79 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i77 ], [ %2, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %.0810.i.i.i.i79, align 8, !tbaa !55
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !57
  store i64 %i.dn, ptr %.011.i.i.i.i78, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 8
  store ptr %i.dl, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 16 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.dp, %3
  br i1 %.not.i.i.i.i80, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, label %.lr.ph.i.i.i.i77, !llvm.loop !66

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82: ; preds = %.lr.ph.i.i.i.i77
  %.not11.i.i.i.i.i83 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i83, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, %.lr.ph.i.i.i.i.i84
  %.013.i.i.i.i.i85 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i84 ], [ %i.dq, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i86 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i84 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i85, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i86, i64 16, i1 false), !tbaa.struct !25
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i86, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i85, i64 16 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.dr, %i.h
  br i1 %.not.i.i.i.i.i87, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84, !llvm.loop !61

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89: ; preds = %.lr.ph.i.i.i.i.i84, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82
  %.0.lcssa.i.i.i.i.i88 = phi ptr [ %i.dq, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ], [ %i.ds, %.lr.ph.i.i.i.i.i84 ]
  %.not.i90 = icmp eq ptr %i.cz, null
  br i1 %.not.i90, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89
  %i.dt = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dv) #17
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, %bb.j
  store ptr %7, ptr %0, align 8, !tbaa !22
  store ptr %.0.lcssa.i.i.i.i.i88, ptr %i.g, align 8, !tbaa !60
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.di
  store ptr %i.dw, ptr %i.e, align 8, !tbaa !24
  br label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRSt17basic_string_viewIcS4_ERA1_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !68     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRSt17basic_string_viewIcS3_ERA1_KcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEntclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb0EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRSt17basic_string_viewIcS4_ERA1_KcEEEvRS8_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRSt17basic_string_viewIcS4_ERA1_KcEEEvRS8_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRSt17basic_string_viewIcS4_ERA1_KcEEEvRS8_PT_DpOT0_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRSt17basic_string_viewIcS4_ERA1_KcEEEvRS8_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRSt17basic_string_viewIcS4_ERA1_KcEEEvRS8_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !69, !noalias !72
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !72, !noalias !69 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37, !alias.scope !72, !noalias !69 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !35, !alias.scope !69, !noalias !72
  %i.z = load i64, ptr %i.t, align 8, !tbaa !16, !alias.scope !72, !noalias !69
  store i64 %i.z, ptr %i.r, align 8, !tbaa !16, !alias.scope !69, !noalias !72
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !37, !alias.scope !72, !noalias !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !37, !alias.scope !69, !noalias !72
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !72, !noalias !69
  store i64 0, ptr %i.ab, align 8, !tbaa !37, !alias.scope !72, !noalias !69
  store i8 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !72, !noalias !69
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !33, !alias.scope !69, !noalias !72
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !35, !alias.scope !72, !noalias !69 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !37, !alias.scope !72, !noalias !69 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !74
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !35, !alias.scope !69, !noalias !72
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !16, !alias.scope !72, !noalias !69
  store i64 %i.an, ptr %i.af, align 8, !tbaa !16, !alias.scope !69, !noalias !72
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !37, !alias.scope !72, !noalias !69
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !37, !alias.scope !69, !noalias !72
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !35, !alias.scope !72, !noalias !69
  store i64 0, ptr %i.ap, align 8, !tbaa !37, !alias.scope !72, !noalias !69
  store i8 0, ptr %i.ah, align 8, !tbaa !16, !alias.scope !72, !noalias !69
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !75

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRSt17basic_string_viewIcS4_ERA1_KcEEEvRS8_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRSt17basic_string_viewIcS4_ERA1_KcEEEvRS8_PT_DpOT0_.exit ], [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38
  %.012.i.i.i29 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ], [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  %.0911.i.i.i30 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i29, align 8, !tbaa !33, !alias.scope !76, !noalias !79
  %i.av = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !35, !alias.scope !79, !noalias !76 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

bb.e:                                             ; preds = %.lr.ph.i.i.i28
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !37, !alias.scope !79, !noalias !76 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.av, ptr %.012.i.i.i29, align 8, !tbaa !35, !alias.scope !76, !noalias !79
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !16, !alias.scope !79, !noalias !76
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !16, !alias.scope !76, !noalias !79
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !tbaa !37, !alias.scope !79, !noalias !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %bb.e
  %i.bd = phi i64 [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ %i.az, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !37, !alias.scope !76, !noalias !79
  store ptr %i.aw, ptr %.0911.i.i.i30, align 8, !tbaa !35, !alias.scope !79, !noalias !76
  store i64 0, ptr %i.be, align 8, !tbaa !37, !alias.scope !79, !noalias !76
  store i8 0, ptr %i.aw, align 8, !tbaa !16, !alias.scope !79, !noalias !76
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 48 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !33, !alias.scope !76, !noalias !79
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !35, !alias.scope !79, !noalias !76 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 48 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !37, !alias.scope !79, !noalias !76 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false), !alias.scope !81
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !35, !alias.scope !76, !noalias !79
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !16, !alias.scope !79, !noalias !76
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !16, !alias.scope !76, !noalias !79
  %.phi.trans.insert5.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %.pre6.i.i.i.i37 = load i64, ptr %.phi.trans.insert5.i.i.i.i36, align 8, !tbaa !37, !alias.scope !79, !noalias !76
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35, %bb.f
  %i.br = phi i64 [ %i.bn, %bb.f ], [ %.pre6.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !37, !alias.scope !76, !noalias !79
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !35, !alias.scope !79, !noalias !76
  store i64 0, ptr %i.bs, align 8, !tbaa !37, !alias.scope !79, !noalias !76
  store i8 0, ptr %i.bk, align 8, !tbaa !16, !alias.scope !79, !noalias !76
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 64 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, label %.lr.ph.i.i.i28, !llvm.loop !75

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i40 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !32
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #17
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !68
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !32
  ret void

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #16 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #17
  invoke void @__cxa_rethrow() #18
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.cb

bb.k:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #19
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRSt17basic_string_viewIcS3_ERA1_KcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEntclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb0EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !8 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !33
  %i.d = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.e = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.e, %i.d
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8, !tbaa !8
  %i.f = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !35
  %i.h = load i64, ptr %i.b, align 8, !tbaa !8
  store i64 %i.h, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !16
  store i8 %i.j, ptr %i.i, align 1, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !37
  %i.m = load ptr, ptr %0, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !33
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.q, ptr %i.a, align 8, !tbaa !8
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7 unwind label %bb.i    ; 2 uses

.noexc7:                                          ; preds = %.noexc.i
  store ptr %i.s, ptr %i.o, align 8, !tbaa !35
  %i.t = load i64, ptr %i.a, align 8, !tbaa !8
  store i64 %i.t, ptr %i.p, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc7, %bb.e
  %i.u = phi ptr [ %i.s, %.noexc7 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %2, align 1, !tbaa !16
  store i8 %i.v, ptr %i.u, align 1, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %2, i64 %i.q, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.w, ptr %i.x, align 8, !tbaa !37
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.i:                                             ; preds = %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJSt17basic_string_viewIcS4_ESC_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !68     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ISt17basic_string_viewIcS3_ES9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEntclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb0EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JSt17basic_string_viewIcS4_ESC_EEEvRS8_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JSt17basic_string_viewIcS4_ESC_EEEvRS8_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JSt17basic_string_viewIcS4_ESC_EEEvRS8_PT_DpOT0_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JSt17basic_string_viewIcS4_ESC_EEEvRS8_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JSt17basic_string_viewIcS4_ESC_EEEvRS8_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !82, !noalias !85
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !85, !noalias !82 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37, !alias.scope !85, !noalias !82 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !35, !alias.scope !82, !noalias !85
  %i.z = load i64, ptr %i.t, align 8, !tbaa !16, !alias.scope !85, !noalias !82
  store i64 %i.z, ptr %i.r, align 8, !tbaa !16, !alias.scope !82, !noalias !85
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !37, !alias.scope !85, !noalias !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !37, !alias.scope !82, !noalias !85
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !85, !noalias !82
  store i64 0, ptr %i.ab, align 8, !tbaa !37, !alias.scope !85, !noalias !82
  store i8 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !85, !noalias !82
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !33, !alias.scope !82, !noalias !85
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !35, !alias.scope !85, !noalias !82 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !37, !alias.scope !85, !noalias !82 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !87
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !35, !alias.scope !82, !noalias !85
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !16, !alias.scope !85, !noalias !82
  store i64 %i.an, ptr %i.af, align 8, !tbaa !16, !alias.scope !82, !noalias !85
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !37, !alias.scope !85, !noalias !82
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !37, !alias.scope !82, !noalias !85
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !35, !alias.scope !85, !noalias !82
  store i64 0, ptr %i.ap, align 8, !tbaa !37, !alias.scope !85, !noalias !82
  store i8 0, ptr %i.ah, align 8, !tbaa !16, !alias.scope !85, !noalias !82
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !75

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JSt17basic_string_viewIcS4_ESC_EEEvRS8_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JSt17basic_string_viewIcS4_ESC_EEEvRS8_PT_DpOT0_.exit ], [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38
  %.012.i.i.i29 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ], [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  %.0911.i.i.i30 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i29, align 8, !tbaa !33, !alias.scope !88, !noalias !91
  %i.av = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !35, !alias.scope !91, !noalias !88 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

bb.e:                                             ; preds = %.lr.ph.i.i.i28
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !37, !alias.scope !91, !noalias !88 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i28
  store ptr %i.av, ptr %.012.i.i.i29, align 8, !tbaa !35, !alias.scope !88, !noalias !91
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !16, !alias.scope !91, !noalias !88
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !16, !alias.scope !88, !noalias !91
  %.phi.trans.insert.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %.pre.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i32, align 8, !tbaa !37, !alias.scope !91, !noalias !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %bb.e
  %i.bd = phi i64 [ %.pre.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ %i.az, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !37, !alias.scope !88, !noalias !91
  store ptr %i.aw, ptr %.0911.i.i.i30, align 8, !tbaa !35, !alias.scope !91, !noalias !88
  store i64 0, ptr %i.be, align 8, !tbaa !37, !alias.scope !91, !noalias !88
  store i8 0, ptr %i.aw, align 8, !tbaa !16, !alias.scope !91, !noalias !88
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 48 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !33, !alias.scope !88, !noalias !91
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !35, !alias.scope !91, !noalias !88 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 48 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !37, !alias.scope !91, !noalias !88 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false), !alias.scope !93
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i34
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !35, !alias.scope !88, !noalias !91
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !16, !alias.scope !91, !noalias !88
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !16, !alias.scope !88, !noalias !91
  %.phi.trans.insert5.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %.pre6.i.i.i.i37 = load i64, ptr %.phi.trans.insert5.i.i.i.i36, align 8, !tbaa !37, !alias.scope !91, !noalias !88
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35, %bb.f
  %i.br = phi i64 [ %i.bn, %bb.f ], [ %.pre6.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i35 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 40
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !37, !alias.scope !88, !noalias !91
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !35, !alias.scope !91, !noalias !88
  store i64 0, ptr %i.bs, align 8, !tbaa !37, !alias.scope !91, !noalias !88
  store i8 0, ptr %i.bk, align 8, !tbaa !16, !alias.scope !91, !noalias !88
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 64 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, label %.lr.ph.i.i.i28, !llvm.loop !75

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i40 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bv, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i38 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !32
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #17
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit41, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !68
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !32
  ret void

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #16 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #17
end_hunk_0
