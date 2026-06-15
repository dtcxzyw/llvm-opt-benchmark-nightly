inline.NumInlined: 1276
inline.NumDeleted: 693
begin_hunk_0_@_ZN4LIEF2PE12ResourceNode12delete_childERKS1_:bb.a
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.e
  %.058.i.i.i = phi i64 [ %i.r, %bb.e ], [ %i.h, %bb.a ] ; 2 uses
  %.sroa.038.057.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.b, %bb.a ] ; 9 uses
  %.val1.i.i.i.i = load ptr, ptr %.sroa.038.057.i.i.i, align 8
  %i.j = tail call noundef zeroext i1 @_ZN4LIEF2PEeqERKNS0_12ResourceNodeES3_(ptr noundef nonnull align 8 dereferenceable(76) %.val1.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(76) %1)
  br i1 %i.j, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  %.val1.i22.i.i.i = load ptr, ptr %i.k, align 8
  %i.l = tail call noundef zeroext i1 @_ZN4LIEF2PEeqERKNS0_12ResourceNodeES3_(ptr noundef nonnull align 8 dereferenceable(76) %.val1.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(76) %1)
  br i1 %i.l, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  %.val1.i23.i.i.i = load ptr, ptr %i.m, align 8
  %i.n = tail call noundef zeroext i1 @_ZN4LIEF2PEeqERKNS0_12ResourceNodeES3_(ptr noundef nonnull align 8 dereferenceable(76) %.val1.i23.i.i.i, ptr noundef nonnull align 8 dereferenceable(76) %1)
  br i1 %i.n, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit33", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  %.val1.i24.i.i.i = load ptr, ptr %i.o, align 8
  %i.p = tail call noundef zeroext i1 @_ZN4LIEF2PEeqERKNS0_12ResourceNodeES3_(ptr noundef nonnull align 8 dereferenceable(76) %.val1.i24.i.i.i, ptr noundef nonnull align 8 dereferenceable(76) %1)
  br i1 %i.p, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit35", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 32 ; 3 uses
  %i.r = add nsw i64 %.058.i.i.i, -1
  %i.s = icmp sgt i64 %.058.i.i.i, 1
  br i1 %i.s, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !142

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %i.q to i64
  %.pre63.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi64.i.i.i = phi i64 [ %.pre63.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %i.q, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.t = ashr exact i64 %.pre-phi64.i.i.i, 3
  switch i64 %i.t, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.038.0.lcssa.i.i.i, align 8
  %i.u = tail call noundef zeroext i1 @_ZN4LIEF2PEeqERKNS0_12ResourceNodeES3_(ptr noundef nonnull align 8 dereferenceable(76) %.val1.i25.i.i.i, ptr noundef nonnull align 8 dereferenceable(76) %1)
  br i1 %i.u, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.038.1.i.i.i = phi ptr [ %i.v, %bb.g ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.038.1.i.i.i, align 8
  %i.w = tail call noundef zeroext i1 @_ZN4LIEF2PEeqERKNS0_12ResourceNodeES3_(ptr noundef nonnull align 8 dereferenceable(76) %.val1.i26.i.i.i, ptr noundef nonnull align 8 dereferenceable(76) %1)
  br i1 %i.w, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.038.2.i.i.i = phi ptr [ %i.x, %bb.i ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.038.2.i.i.i, align 8
  %i.y = tail call noundef zeroext i1 @_ZN4LIEF2PEeqERKNS0_12ResourceNodeES3_(ptr noundef nonnull align 8 dereferenceable(76) %.val1.i27.i.i.i, ptr noundef nonnull align 8 dereferenceable(76) %1)
  %spec.select.i.i.i = select i1 %i.y, ptr %.sroa.038.2.i.i.i, ptr %i.d
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit33": ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit35": ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit33", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit35", %._crit_edge.i.i.i, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.038.1.i.i.i, %bb.h ], [ %spec.select.i.i.i, %bb.j ], [ %i.d, %._crit_edge.i.i.i ], [ %.sroa.038.0.lcssa.i.i.i, %bb.f ], [ %i.ab, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit35" ], [ %i.aa, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit33" ], [ %i.z, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.038.057.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %i.c, align 8
  %i.ad = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.ac
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit"
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.8) #19 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

bb.l:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS5_12delete_childERKS5_E3$_0ET_SH_SH_T0_.exit"
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %.not = icmp eq i32 %i.ag, 2
  br i1 %.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = load i16, ptr %i.al, align 8
  %i.an = add i16 %i.am, -1
  store i16 %i.an, ptr %i.al, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = add i16 %i.ap, -1
  store i16 %i.aq, ptr %i.ao, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.ar = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.as = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.c, align 8             ; 4 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.q, %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.bb, %bb.q ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.bj, %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.av, %bb.q ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.bi, %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.aw, %bb.q ] ; 3 uses
  %i.bd = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8
  %i.be = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8 ; 3 uses
  store ptr %i.bd, ptr %.0811.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(76) %i.be) #19, !inline_history !143
  br label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.bk = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.bl = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !144

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.q, %bb.p
  %i.bm = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.ax, %bb.q ], [ %i.ax, %bb.p ]
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.c, align 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(76) %i.bo) #19, !inline_history !145
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE12ResourceNode4nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.LIEF::result.69", align 8   ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string.59", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZN4LIEF7u8tou16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.69") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = load ptr, ptr %2, align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 8
  call void @llvm.assume(i1 %i.j)
  %i.k = shl nuw nsw i64 %i.i, 1
  %i.l = add nuw nsw i64 %i.k, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %bb.b
  store ptr %i.e, ptr %3, align 8
  %i.m = load i64, ptr %i.f, align 8
  store i64 %i.m, ptr %i.d, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i
  %i.n = phi ptr [ %i.d, %bb.c ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 5 uses
  %i.o = phi i64 [ %i.i, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.o, ptr %i.q, align 8
  store ptr %i.f, ptr %2, align 8
  store i64 0, ptr %i.p, align 8
  store i16 0, ptr %i.f, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %i.v = icmp eq ptr %i.n, %i.d                   ; 2 uses
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  br i1 %i.v, label %bb.d, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2EOS4_.exit
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.w = icmp ult i64 %i.o, 8
  call void @llvm.assume(i1 %i.w)
  switch i64 %i.o, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = load i16, ptr %i.n, align 2
  store i16 %i.x, ptr %i.s, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = shl nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.s, ptr align 2 %i.n, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.z = load i64, ptr %i.q, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %i.r, align 8
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.z
  store i16 0, ptr %i.ac, align 2
  %.pre.i.i = load ptr, ptr %3, align 8
  br label %_ZN4LIEF2PE12ResourceNode4nameENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.r, align 8
  store i64 %i.o, ptr %i.ad, align 8
  %i.ae = load i64, ptr %i.d, align 8
  store i64 %i.ae, ptr %i.t, align 8
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i
  %i.af = load i64, ptr %i.t, align 8
  store ptr %i.n, ptr %i.r, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %i.ag, align 8
  %i.ah = load i64, ptr %i.d, align 8
  store i64 %i.ah, ptr %i.t, align 8
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.s, ptr %3, align 8
  store i64 %i.af, ptr %i.d, align 8
  br label %_ZN4LIEF2PE12ResourceNode4nameENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.d, ptr %3, align 8
  br label %_ZN4LIEF2PE12ResourceNode4nameENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit

_ZN4LIEF2PE12ResourceNode4nameENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i, %bb.g, %bb.h
  %4 = phi ptr [ %i.s, %bb.g ], [ %i.d, %bb.h ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i.i ]
  store i64 0, ptr %i.q, align 8
  store i16 0, ptr %4, align 2
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i3: ; preds = %_ZN4LIEF2PE12ResourceNode4nameENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  %i.ak = load i64, ptr %i.d, align 8
  %i.al = shl i64 %i.ak, 1
  %i.am = add i64 %i.al, 2
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #21
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZN4LIEF2PE12ResourceNode4nameENSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i3, %bb.a
  %i.an = load i8, ptr %i.a, align 8, !range !11, !noundef !4
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE11lief_errorsLb0ELb1EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit
  %i.ap = load ptr, ptr %2, align 8               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE11lief_errorsLb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = shl i64 %i.as, 1
  %i.au = add i64 %i.at, 2
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.au) #21
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %i.c, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE11lief_errorsLb0ELb1EED2Ev.exit
  %i.av = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.8) #19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE11lief_errorsLb0ELb1EED2Ev.exit, %bb.j
  ret void
}

declare void @_ZN4LIEF7u8tou16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.LIEF::result.69") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(76) ptr @_ZNK4LIEF2PE12ResourceNode11safe_get_atEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !146

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID) #19
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, i64 8), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, i64 12), align 4
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, i64 32), ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, i64 16), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, i64 24), align 8
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, i64 32), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, i64 48), i8 0, i64 28, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVZNK4LIEF2PE12ResourceNode11safe_get_atEmE11InvalidNode, i64 16), ptr @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, align 8
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4LIEF2PE12ResourceNodeD2Ev, ptr nonnull @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ult i64 %1, %i.l
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %1
  %i.o = load ptr, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.o, %bb.e ], [ @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmE7INVALID, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE12ResourceNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(76) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4LIEF2PE12ResourceNodeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8        ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(76) %i.e) #19, !inline_history !147
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !148

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #21
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = shl i64 %i.t, 1
  %i.v = add i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #21
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF2PE12ResourceNode6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(76) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF2PEeqERKNS0_12ResourceNodeES3_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(76) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN4LIEF7u16tou8ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i1 noundef zeroext false) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4LIEF7u16tou8ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i1 noundef zeroext false) #19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge
end_hunk_0
