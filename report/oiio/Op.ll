inline.NumInlined: 1842
inline.NumDeleted: 874
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag:bb.a
bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !21
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i52
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.bz = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ca = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, !llvm.loop !249

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cb, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.cl, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ck, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cb, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %i.ce = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !62
  store <2 x ptr> %i.ce, ptr %.09.i.i.i.i, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i54 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i54, label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i55 = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i55, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cj = atomicrmw volatile add ptr %i.cf, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ck, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !244

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !65
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cm = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit
  %i.cn = sub nuw nsw i64 %i.d, %i.n
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cn
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i57 ], [ %i.co, %.lr.ph.i.i.i.i.i57.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i57 ], [ %1, %.lr.ph.i.i.i.i.i57.preheader ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 8
  store ptr null, ptr %i.cp, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 8
  %i.cr = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !62
  store ptr null, ptr %i.cq, align 8, !tbaa !21
  store <2 x ptr> %i.cr, ptr %.013.i.i.i.i.i58, align 8, !tbaa !62
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i59, align 8, !tbaa !245
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 16
  %.not.i.i.i.i.i60 = icmp eq ptr %i.cs, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i57, !llvm.loop !397

_ZSt22__uninitialized_move_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62: ; preds = %.lr.ph.i.i.i.i.i57, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.c
  store ptr %i.cu, ptr %i.g, align 8, !tbaa !65
  %i.cv = ashr exact i64 %i.m, 4                  ; 2 uses
  %i.cw = icmp sgt i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i64:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i77
  %.012.i.i.i.i.i65 = phi i64 [ %i.dz, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i77 ], [ %i.cv, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62 ] ; 2 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.dy, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i77 ], [ %1, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62 ] ; 3 uses
  %.0910.i.i.i.i.i67 = phi ptr [ %i.dx, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i77 ], [ %2, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62 ] ; 3 uses
  %i.cx = load ptr, ptr %.0910.i.i.i.i.i67, align 8, !tbaa !245
  store ptr %i.cx, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !245
  %i.cy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21 ; 4 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !21 ; 3 uses
  %.not.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.da, %i.db
  br i1 %.not.i.i.i.i.i.i.i.i68, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i77, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i64
  %.not7.i.i.i.i.i.i.i.i69 = icmp eq ptr %i.da, null
  br i1 %.not7.i.i.i.i.i.i.i.i69, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i71, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i70 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i70, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i71

bb.aa:                                            ; preds = %bb.y
  %i.dg = atomicrmw volatile add ptr %i.dc, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i78 = load ptr, ptr %i.cy, align 8, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i71

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i71: ; preds = %bb.aa, %bb.z, %bb.x
  %i.dh = phi ptr [ %i.db, %bb.x ], [ %i.db, %bb.z ], [ %.pr.pre.i.i.i.i.i.i.i.i78, %bb.aa ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i72 = icmp eq ptr %i.dh, null
  br i1 %.not8.i.i.i.i.i.i.i.i72, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i76, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i71
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.di, align 8, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !14
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !7
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #23, !inline_history !248
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #23, !inline_history !248
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i76

bb.ad:                                            ; preds = %bb.ab
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i.i.i.i.i.i73 = icmp eq i8 %i.dt, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i73, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i74

bb.af:                                            ; preds = %bb.ad
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i74

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i74: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i.i.i.i75 = phi i32 [ %i.dl, %bb.ae ], [ %i.dv, %bb.af ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i75, 1
  br i1 %i.dw, label %bb.ag, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i76, !prof !24

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i74
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i76

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i76: ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i74, %bb.ac, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i71
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !21
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i77

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i77: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i67, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 16
  %i.dz = add nsw i64 %.012.i.i.i.i.i65, -1
  %i.ea = icmp sgt i64 %.012.i.i.i.i.i65, 1
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, !llvm.loop !249

bb.ah:                                            ; preds = %bb.b
  %i.eb = load ptr, ptr %0, align 8, !tbaa !59    ; 7 uses
  %i.ec = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ed = sub i64 %i.j, %i.ec
  %i.ee = ashr exact i64 %i.ed, 4                 ; 4 uses
  %i.ef = sub nsw i64 576460752303423487, %i.ee
  %i.eg = icmp ult i64 %i.ef, %i.d
  br i1 %i.eg, label %bb.ai, label %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE12_M_check_lenEmPKc.exit

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.ah
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ee, i64 %i.d)
  %i.eh = add nsw i64 %.sroa.speculated.i, %i.ee  ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ee
  %i.ej = tail call i64 @llvm.umin.i64(i64 %i.eh, i64 576460752303423487)
  %i.ek = select i1 %i.ei, i64 576460752303423487, i64 %i.ej ; 3 uses
  %.not.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_M_allocateEm.exit, label %4

4:                                                ; preds = %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE12_M_check_lenEmPKc.exit
  %5 = shl nuw nsw i64 %i.ek, 4
  %6 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE12_M_check_lenEmPKc.exit, %4
  %7 = phi ptr [ %6, %4 ], [ null, %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not11.i.i.i.i.i80 = icmp eq ptr %i.eb, %1
  br i1 %.not11.i.i.i.i.i80, label %.lr.ph.i.i.i.i87.preheader, label %.lr.ph.i.i.i.i.i81

.lr.ph.i.i.i.i.i81:                               ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i81
  %.013.i.i.i.i.i82 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i81 ], [ %7, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i83 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i81 ], [ %i.eb, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_M_allocateEm.exit ] ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i83, i64 8
  %i.em = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i83, align 8, !tbaa !62
  store ptr null, ptr %i.el, align 8, !tbaa !21
  store <2 x ptr> %i.em, ptr %.013.i.i.i.i.i82, align 8, !tbaa !62
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i83, align 8, !tbaa !245
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i83, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i82, i64 16 ; 2 uses
  %.not.i.i.i.i.i84 = icmp eq ptr %i.en, %1
  br i1 %.not.i.i.i.i.i84, label %.lr.ph.i.i.i.i87.preheader, label %.lr.ph.i.i.i.i.i81, !llvm.loop !397

.lr.ph.i.i.i.i87.preheader:                       ; preds = %.lr.ph.i.i.i.i.i81, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_M_allocateEm.exit
  %.09.i.i.i.i88.ph = phi ptr [ %7, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_M_allocateEm.exit ], [ %i.eo, %.lr.ph.i.i.i.i.i81 ]
  br label %.lr.ph.i.i.i.i87

.lr.ph.i.i.i.i87:                                 ; preds = %.lr.ph.i.i.i.i87.preheader, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92
  %.09.i.i.i.i88 = phi ptr [ %i.ey, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92 ], [ %.09.i.i.i.i88.ph, %.lr.ph.i.i.i.i87.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i89 = phi ptr [ %i.ex, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92 ], [ %2, %.lr.ph.i.i.i.i87.preheader ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i89, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21 ; 2 uses
  %i.er = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i89, align 8, !tbaa !62
  store <2 x ptr> %i.er, ptr %.09.i.i.i.i88, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i90 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i.i.i.i90, label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i87
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i91 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i91, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !3
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92

bb.al:                                            ; preds = %bb.aj
  %i.ew = atomicrmw volatile add ptr %i.es, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92

_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92: ; preds = %bb.al, %bb.ak, %.lr.ph.i.i.i.i87
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i89, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i88, i64 16 ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.ex, %3
  br i1 %.not.i.i.i.i93, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit95, label %.lr.ph.i.i.i.i87, !llvm.loop !244

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit95: ; preds = %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i92
  %.not11.i.i.i.i.i96 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97

.lr.ph.i.i.i.i.i97:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit95, %.lr.ph.i.i.i.i.i97
  %.013.i.i.i.i.i98 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i97 ], [ %i.ey, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit95 ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i99 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i97 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit95 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i98, i64 8
  store ptr null, ptr %i.ez, align 8, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i99, i64 8
  %i.fb = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i99, align 8, !tbaa !62
  store ptr null, ptr %i.fa, align 8, !tbaa !21
  store <2 x ptr> %i.fb, ptr %.013.i.i.i.i.i98, align 8, !tbaa !62
  store ptr null, ptr %.sroa.08.012.i.i.i.i.i99, align 8, !tbaa !245
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i99, i64 16 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i98, i64 16 ; 2 uses
  %.not.i.i.i.i.i100 = icmp eq ptr %i.fc, %i.h
  br i1 %.not.i.i.i.i.i100, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, label %.lr.ph.i.i.i.i.i97, !llvm.loop !397

_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102: ; preds = %.lr.ph.i.i.i.i.i97, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit95
  %.0.lcssa.i.i.i.i.i101 = phi ptr [ %i.ey, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit95 ], [ %i.fd, %.lr.ph.i.i.i.i.i97 ]
  %.not4.i.i = icmp eq ptr %i.eb, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.fv, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i ], [ %i.eb, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !21 ; 8 uses
  %.not.i.i.i.i.i103 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i103, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 4294967297
  %i.fj = trunc i64 %i.fh to i32                  ; 2 uses
  br i1 %i.fi, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.fg, align 8, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !14
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  tail call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #23, !inline_history !243
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !7
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #23, !inline_history !243
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fs = add nsw i32 %i.fj, -1
  store i32 %i.fs, ptr %i.fg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ft = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fj, %bb.ap ], [ %i.ft, %bb.aq ]
  %i.fu = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fu, label %bb.ar, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i, !prof !24

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.an, %.lr.ph.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fv, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !67

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit102
  %.not.i104 = icmp eq ptr %i.eb, null
  br i1 %.not.i104, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEEEvT_S5_.exit
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = sub i64 %i.fx, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.fy) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEEEvT_S5_.exit, %bb.as
  store ptr %7, ptr %0, align 8, !tbaa !59
  store ptr %.0.lcssa.i.i.i.i.i101, ptr %i.g, align 8, !tbaa !65
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.ek
  store ptr %i.fz, ptr %i.e, align 8, !tbaa !69
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i77, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, %_ZSt13move_backwardIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !14
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !22
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !250  ; 4 uses
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ac, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i ], [ %1, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aa, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.j = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !21   ; 8 uses
  store <2 x ptr> %i.j, ptr %.0811.i.i.i.i.i, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !14
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #23, !inline_history !400
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #23, !inline_history !400
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i, !prof !24

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #23
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ac = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ad = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, !llvm.loop !401

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !65
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, %bb.b, %bb.a
  %i.ae = phi ptr [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
  store ptr %i.af, ptr %i.b, align 8, !tbaa !65
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !14
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #23, !inline_history !262
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #23, !inline_history !262
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.al, %bb.l ], [ %i.av, %bb.m ]
  %i.aw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aw, label %bb.n, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_52OpELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 3 uses
  %.not11 = icmp eq ptr %2, %i.b
  br i1 %.not11, label %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge, label %bb.c

._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge: ; preds = %bb.b
  %.pre12 = ptrtoint ptr %2 to i64                ; 2 uses
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ab, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aa, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i ], [ %1, %bb.c ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.z, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i ], [ %2, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.i = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !21   ; 8 uses
  store <2 x ptr> %i.i, ptr %.0811.i.i.i.i.i, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.k, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !14
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #23, !inline_history !400
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #23, !inline_history !400
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.n, %bb.g ], [ %i.x, %bb.h ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i, !prof !24

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #23
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ab = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ac = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, !llvm.loop !401

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSEOS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !250 ; 2 uses
  %.pre13 = ptrtoint ptr %.pre to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit, %bb.c
  %.pre-phi14 = phi i64 [ %.pre12, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge ], [ %.pre13, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.c, %bb.c ]
  %.pre-phi = phi i64 [ %.pre12, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge ], [ %i.d, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.d, %bb.c ]
  %i.ad = phi ptr [ %2, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit_crit_edge ], [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.loopexit ], [ %i.b, %bb.c ] ; 2 uses
  %i.ae = sub i64 %.pre-phi14, %.pre-phi
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae ; 3 uses
  %.not.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i ], [ %i.af, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ai, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !14
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #23, !inline_history !402
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #23, !inline_history !402
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.m ], [ %i.av, %bb.n ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.o, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i, !prof !24

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ad
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !67

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i
  store ptr %i.af, ptr %i.a, align 8, !tbaa !65
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %bb.a
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !59     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #24
  unreachable

_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !62
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !62
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !62, !alias.scope !406, !noalias !403
  store ptr null, ptr %i.z, align 8, !tbaa !21, !alias.scope !406, !noalias !403
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !62, !alias.scope !403, !noalias !406
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !245, !alias.scope !406, !noalias !403
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !408

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ah, %.lr.ph.i.i.i18 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ag, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !62, !alias.scope !412, !noalias !409
  store ptr null, ptr %i.ae, align 8, !tbaa !21, !alias.scope !412, !noalias !409
  store <2 x ptr> %i.af, ptr %.012.i.i.i19, align 8, !tbaa !62, !alias.scope !409, !noalias !412
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !245, !alias.scope !412, !noalias !409
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !408

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i18 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !59
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !69
  ret void
}

declare void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_525DynamicPropertyDoubleImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !14
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !22
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_533DynamicPropertyGradingPrimaryImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !14
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !22
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}
end_hunk_0
