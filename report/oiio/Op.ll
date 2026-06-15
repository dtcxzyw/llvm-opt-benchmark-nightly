inline.NumInlined: 1842
inline.NumDeleted: 874
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EEaSERKS5_:bb.a
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #23, !inline_history !251
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #23, !inline_history !251
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i35

bb.ac:                                            ; preds = %bb.aa
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i32 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i.i32, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33

bb.ae:                                            ; preds = %bb.ac
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i34 = phi i32 [ %i.cs, %bb.ad ], [ %i.dc, %bb.ae ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i.i.i34, 1
  br i1 %i.dd, label %bb.af, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i35, !prof !24

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i35

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i35: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i33, %bb.ab, %.lr.ph.i.i30
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.de, %i.ck
  br i1 %.not.i.i36, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i30, !llvm.loop !252

bb.ag:                                            ; preds = %bb.o
  %i.df = ashr exact i64 %i.be, 4                 ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i38, label %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i38:                               ; preds = %bb.ag, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i51
  %.012.i.i.i.i.i39 = phi i64 [ %i.ej, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i51 ], [ %i.df, %bb.ag ] ; 2 uses
  %.0811.i.i.i.i.i40 = phi ptr [ %i.ei, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i51 ], [ %i.j, %bb.ag ] ; 3 uses
  %.0910.i.i.i.i.i41 = phi ptr [ %i.eh, %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i51 ], [ %i.c, %bb.ag ] ; 3 uses
  %i.dh = load ptr, ptr %.0910.i.i.i.i.i41, align 8, !tbaa !245
  store ptr %i.dh, ptr %.0811.i.i.i.i.i40, align 8, !tbaa !245
  %i.di = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !21 ; 4 uses
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !21 ; 3 uses
  %.not.i.i.i.i.i.i.i.i42 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i.i.i.i.i.i.i42, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i51, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i38
  %.not7.i.i.i.i.i.i.i.i43 = icmp eq ptr %i.dk, null
  br i1 %.not7.i.i.i.i.i.i.i.i43, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i45, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i44 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i44, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i45

bb.ak:                                            ; preds = %bb.ai
  %i.dq = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i52 = load ptr, ptr %i.di, align 8, !tbaa !21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i45

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i45: ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.dr = phi ptr [ %i.dl, %bb.ah ], [ %i.dl, %bb.aj ], [ %.pr.pre.i.i.i.i.i.i.i.i52, %bb.ak ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.dr, null
  br i1 %.not8.i.i.i.i.i.i.i.i46, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i50, label %bb.al

bb.al:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i45
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ds, align 8, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !14
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #23, !inline_history !253
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #23, !inline_history !253
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i50

bb.an:                                            ; preds = %bb.al
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i9.i.i.i.i.i.i.i.i47 = icmp eq i8 %i.ed, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i47, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i48

bb.ap:                                            ; preds = %bb.an
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i48

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i48: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i.i.i49 = phi i32 [ %i.dv, %bb.ao ], [ %i.ef, %bb.ap ]
  %i.eg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i49, 1
  br i1 %i.eg, label %bb.aq, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i50, !prof !24

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i48
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i50

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i50: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i48, %bb.am, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i45
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !21
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i51

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i51: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i50, %.lr.ph.i.i.i.i.i38
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i41, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i40, i64 16
  %i.ej = add nsw i64 %.012.i.i.i.i.i39, -1
  %i.ek = icmp sgt i64 %.012.i.i.i.i.i39, 1
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i38, label %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !254

_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEaSERKS2_.exit.i.i.i.i.i51
  %.pre57 = load ptr, ptr %1, align 8, !tbaa !59
  %.pre58 = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 2 uses
  %.pre59 = load ptr, ptr %0, align 8, !tbaa !59
  %.pre60 = load ptr, ptr %i.a, align 8, !tbaa !65
  %.pre62 = ptrtoint ptr %.pre58 to i64
  %.pre63 = ptrtoint ptr %.pre59 to i64
  %.pre65 = sub i64 %.pre62, %.pre63
  br label %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit.loopexit, %bb.ag
  %.pre-phi66 = phi i64 [ %.pre65, %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.be, %bb.ag ]
  %i.el = phi ptr [ %.pre60, %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.b, %bb.ag ] ; 2 uses
  %i.em = phi ptr [ %.pre58, %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.bc, %bb.ag ]
  %i.en = phi ptr [ %.pre57, %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.c, %bb.ag ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.pre-phi66 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.eo, %i.el
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ey, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.em, %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ex, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.eo, %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21 ; 2 uses
  %i.er = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !62
  store <2 x ptr> %i.er, ptr %.011.i.i.i.i, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i53 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i.i.i.i53, label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i54 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i54, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !3
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ew = atomicrmw volatile add ptr %i.es, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ex, %i.el
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !255

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i35, %_ZSt10_ConstructISt10shared_ptrIN16OpenColorIO_v2_52OpEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES4_ET0_T_S6_S5_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.ez = load ptr, ptr %0, align 8, !tbaa !59
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.f
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !65
  br label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN16OpenColorIO_v2_52OpEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(144) ptr @_ZN16OpenColorIO_v2_510OpRcPtrVecpLERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 12 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250
  %i.c = load ptr, ptr %1, align 8, !tbaa !250
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !250
  %i.f = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  tail call void @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.j, ptr %i.c, ptr %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN16OpenColorIO_v2_518FormatMetadataImpl7combineERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull align 8 dereferenceable(120) %i.l)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.m)
          to label %_ZN16OpenColorIO_v2_510OpRcPtrVecC2Ev.exit.i unwind label %bb.d

common.resume:                                    ; preds = %bb.d, %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.n, %bb.d ], [ %i.r, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(144) %2) #23
  br label %common.resume

_ZN16OpenColorIO_v2_510OpRcPtrVecC2Ev.exit.i:     ; preds = %bb.c
  %.not.i.i = icmp eq ptr %2, %0
  br i1 %.not.i.i, label %_ZN16OpenColorIO_v2_510OpRcPtrVecC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_510OpRcPtrVecC2Ev.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %1)
          to label %.noexc.i unwind label %bb.f   ; 0 uses

.noexc.i:                                         ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(120) %i.p)
          to label %_ZN16OpenColorIO_v2_510OpRcPtrVecC2ERKS0_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %.noexc.i, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #23
  br label %common.resume

_ZN16OpenColorIO_v2_510OpRcPtrVecC2ERKS0_.exit:   ; preds = %_ZN16OpenColorIO_v2_510OpRcPtrVecC2Ev.exit.i, %.noexc.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN16OpenColorIO_v2_510OpRcPtrVecpLERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_510OpRcPtrVecC2ERKS0_.exit
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.i

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_510OpRcPtrVecC2ERKS0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

bb.i:                                             ; preds = %bb.g, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %i.s, %bb.g ]
  ret ptr %.0
}

declare void @_ZN16OpenColorIO_v2_518FormatMetadataImpl7combineERKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN16OpenColorIO_v2_510OpRcPtrVec5eraseEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = tail call ptr @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.e)
  ret ptr %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define hidden ptr @_ZN16OpenColorIO_v2_510OpRcPtrVec5eraseEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEESB_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, ptr %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250    ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.f, %i.c
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  %i.i = tail call ptr @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.e, ptr %i.h)
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_510OpRcPtrVec6insertEN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrINS_2OpEESt6vectorIS5_SaIS5_EEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEvNS8_IPS3_S5_EET_SE_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.e, ptr %2, ptr %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_510OpRcPtrVec9push_backERKSt10shared_ptrINS_2OpEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !62
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !62
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.m = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ %.pre.i, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.a, align 8, !tbaa !65
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_52OpEEC2ERKS2_.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_510OpRcPtrVec4backEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_510OpRcPtrVec5frontEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_510OpRcPtrVec6isNoOpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !250  ; 2 uses
  %.not12 = icmp eq ptr %i.a, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.08.013 = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.08.013, align 8, !tbaa !245 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 16 ; 2 uses
  %.not = icmp ne ptr %i.i, %i.c
  %or.cond.not = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %.not.lcssa

bb.c:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #27
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_510OpRcPtrVec19hasChannelCrosstalkEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !250    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr i64 %i.f, 6                         ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %.051.i.i.i = phi i64 [ %i.ac, %bb.e ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.031.050.i.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.c, %bb.a ] ; 9 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.031.050.i.i.i, align 8, !tbaa !245 ; 2 uses
  %i.i = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i)
          to label %.noexc unwind label %.loopexit, !inline_history !256
end_hunk_0
