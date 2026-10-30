Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/runner?download=true
inline.NumInlined: 4414
inline.NumDeleted: 2750
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3gmx8Mdrunner8mdrunnerEv:bb.a
  br label %bb.fb

bb.fa:                                            ; preds = %._crit_edge.i.i829
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tc, ptr nonnull align 1 %i.sv, i64 %i.sy, i1 false)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez, %._crit_edge.i.i829
  %i.te = load i64, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 9 uses
  store i64 %i.te, ptr %i.tf, align 8, !tbaa !136
  %i.tg = load ptr, ptr %44, align 8, !tbaa !23
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.te
  store i8 0, ptr %i.th, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #31
  %i.ti = load i8, ptr %i.sh, align 8, !tbaa !680, !range !38, !noundef !39
  %i.tj = trunc nuw i8 %i.ti to i1
  br i1 %i.tj, label %bb.fc, label %bb.fi

bb.fc:                                            ; preds = %bb.fb
  %i.tk = load ptr, ptr %43, align 8, !tbaa !23   ; 6 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.tm = icmp eq ptr %i.tk, %i.tl
  %i.tn = load ptr, ptr %44, align 8, !tbaa !23   ; 5 uses
  %i.to = icmp eq ptr %i.tn, %i.sw                ; 2 uses
  br i1 %i.tm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i834

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836: ; preds = %bb.fc
  br i1 %i.to, label %bb.fd, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i834: ; preds = %bb.fc
  br i1 %i.to, label %bb.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.fd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i834, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836
  %i.tp = load i64, ptr %i.tf, align 8, !tbaa !136 ; 3 uses
  %i.tq = icmp ult i64 %i.tp, 16
  call void @llvm.assume(i1 %i.tq)
  switch i64 %i.tp, label %bb.ff [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.fe
  ]

bb.fe:                                            ; preds = %bb.fd
  %i.tr = load i8, ptr %i.tn, align 1, !tbaa !24
  store i8 %i.tr, ptr %i.tk, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tk, ptr align 1 %i.tn, i64 %i.tp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ff, %bb.fe, %bb.fd
  %i.ts = load i64, ptr %i.tf, align 8, !tbaa !136 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.ts, ptr %i.tt, align 8, !tbaa !136
  %i.tu = load ptr, ptr %43, align 8, !tbaa !23
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.ts
  store i8 0, ptr %i.tv, align 1, !tbaa !24
  %.pre.i.i = load ptr, ptr %44, align 8, !tbaa !23
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836
  %i.tw = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %i.tn, ptr %43, align 8, !tbaa !23
  %i.tx = load <2 x i64>, ptr %i.tf, align 8, !tbaa !24
  store <2 x i64> %i.tx, ptr %i.tw, align 8, !tbaa !24
  br label %bb.fh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i834
  %i.ty = load i64, ptr %i.tl, align 8, !tbaa !24
  store ptr %i.tn, ptr %43, align 8, !tbaa !23
  %i.tz = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.ua = load <2 x i64>, ptr %i.tf, align 8, !tbaa !24
  store <2 x i64> %i.ua, ptr %i.tz, align 8, !tbaa !24
  %.not.i.i835 = icmp eq ptr %i.tk, null
  br i1 %.not.i.i835, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.tk, ptr %44, align 8, !tbaa !23
  store i64 %i.ty, ptr %i.sw, align 8, !tbaa !24
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

bb.fh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.sw, ptr %44, align 8, !tbaa !23
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

bb.fi:                                            ; preds = %bb.fb
  %i.ub = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  store ptr %i.ub, ptr %43, align 8, !tbaa !135
  %i.uc = load ptr, ptr %44, align 8, !tbaa !23   ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.sw
  br i1 %i.ud, label %bb.fj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.fj:                                            ; preds = %bb.fi
  %i.ue = load i64, ptr %i.tf, align 8, !tbaa !136 ; 3 uses
  %i.uf = icmp ult i64 %i.ue, 16
  call void @llvm.assume(i1 %i.uf)
  %i.ug = add nuw nsw i64 %i.ue, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ub, ptr noundef nonnull align 8 dereferenceable(1) %i.sw, i64 %i.ug, i1 false)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.fi
  store ptr %i.uc, ptr %43, align 8, !tbaa !23
  %i.uh = load i64, ptr %i.sw, align 8, !tbaa !24
  store i64 %i.uh, ptr %i.ub, align 8, !tbaa !24
  %.pre1942 = load i64, ptr %i.tf, align 8, !tbaa !136
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ui = phi i64 [ %.pre1942, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ue, %bb.fj ]
  %i.uj = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.ui, ptr %i.uj, align 8, !tbaa !136
  store ptr %i.sw, ptr %44, align 8, !tbaa !23
  store i64 0, ptr %i.tf, align 8, !tbaa !136
  store i8 1, ptr %i.sh, align 8, !tbaa !680
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.fg, %bb.fh
  %i.uk = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.tk, %bb.fg ], [ %i.sw, %bb.fh ]
  store i64 0, ptr %i.tf, align 8, !tbaa !136
  store i8 0, ptr %i.uk, align 1, !tbaa !24
  %.pre1943 = load ptr, ptr %44, align 8, !tbaa !23 ; 2 uses
  %i.ul = icmp eq ptr %.pre1943, %i.sw
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i837

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i837: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit
  %i.um = load i64, ptr %i.sw, align 8, !tbaa !24
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %.pre1943, i64 noundef %i.un) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i837
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  br label %bb.fn

bb.fk:                                            ; preds = %_ZNK3gmx17MDModulesNotifierIRKNS_18KeyValueTreeObjectENS0_IPNS_19LocalAtomSetManagerENS0_IRKNS_16StartingBehaviorENS0_IRKNS_8MDLoggerENS0_IRK10gmx_mtop_tNS0_IPNS_51MDModulesEnergyOutputToDensityFittingRequestCheckerENS0_IPNS_41MDModulesEnergyOutputToQMMMRequestCheckerENS0_IPNS_42MDModulesEnergyOutputToNNPotRequestCheckerENS0_IPNS_25SeparatePmeRanksPermittedENS0_IRK7PbcTypeNS0_IRKNS_18SimulationTimeStepENS0_IRKNS_19EnsembleTemperatureENS0_IRKNS_7MpiCommENS0_IPK14gmx_multisim_tNS0_IPNS_19PlainPairlistRangesENS0_IRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE6notifyES3_.exit, %.noexc.i, %bb.eh
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3gmx18MdRunInputFilenameD2Ev.exit857

.loopexit.split-lp1878.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt8functionIFvRKN3gmx18MdRunInputFilenameEEEclES3_.exit.i, %bb.em
  %lpad.loopexit.split-lp2475 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1878

bb.fl:                                            ; preds = %_ZNK3gmx17MDModulesNotifierIRKNS_18MdRunInputFilenameENS0_IRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEEEE6notifyES3_.exit, %.noexc.i816, %bb.eo
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3gmx17EdrOutputFilenameD2Ev.exit854

.loopexit.split-lp1873.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt8functionIFvRKN3gmx17EdrOutputFilenameEEEclES3_.exit.i, %bb.et
  %lpad.loopexit.split-lp2472 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1873

.loopexit.split-lp1868.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt8functionIFvRKN3gmx19PlumedInputFilenameEEEclES3_.exit.i, %bb.fo, %_ZNK3gmx17MDModulesNotifierIRKNS_17EdrOutputFilenameENS0_IPNS_23MDModulesDirectProviderENS0_IRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEEEEEE6notifyES3_.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1868

bb.fm:                                            ; preds = %bb.ev, %.noexc.i830, %bb.ex
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  br label %.loopexit.split-lp1868

bb.fn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839, %bb.eu
  %i.ur = load ptr, ptr %i.pi, align 8, !tbaa !682 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ph, i64 320
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !682 ; 2 uses
  %.not8.i840 = icmp eq ptr %i.ur, %i.ut
  br i1 %.not8.i840, label %_ZNK3gmx17MDModulesNotifierIRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEE6notifyES3_.exit, label %.lr.ph.i841

.lr.ph.i841:                                      ; preds = %bb.fn, %.noexc846
  %.sroa.05.09.i842 = phi ptr [ %i.uy, %.noexc846 ], [ %i.ur, %bb.fn ] ; 4 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i842, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !122
  %.not.i.i.i843 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i.i843, label %bb.fo, label %_ZNKSt8functionIFvRKN3gmx19PlumedInputFilenameEEEclES3_.exit.i

bb.fo:                                            ; preds = %.lr.ph.i841
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc845 unwind label %.loopexit.split-lp1868.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc845:                                        ; preds = %bb.fo
  unreachable

_ZNKSt8functionIFvRKN3gmx19PlumedInputFilenameEEEclES3_.exit.i: ; preds = %.lr.ph.i841
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i842, i64 24
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !684
  invoke void %i.ux(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.09.i842, ptr noundef nonnull align 8 dereferenceable(40) %43)
          to label %.noexc846 unwind label %.loopexit.split-lp1868.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !451

.noexc846:                                        ; preds = %_ZNKSt8functionIFvRKN3gmx19PlumedInputFilenameEEEclES3_.exit.i
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i842, i64 32 ; 2 uses
  %.not.i844 = icmp eq ptr %i.uy, %i.ut
  br i1 %.not.i844, label %_ZNK3gmx17MDModulesNotifierIRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEE6notifyES3_.exit, label %.lr.ph.i841

_ZNK3gmx17MDModulesNotifierIRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEE6notifyES3_.exit: ; preds = %.noexc846, %bb.fn
  %i.uz = load i8, ptr %i.sh, align 8, !tbaa !680, !range !38, !noundef !39
  %i.va = trunc nuw i8 %i.uz to i1
  store i8 0, ptr %i.sh, align 8, !tbaa !680
  br i1 %i.va, label %bb.fp, label %_ZN3gmx19PlumedInputFilenameD2Ev.exit

bb.fp:                                            ; preds = %_ZNK3gmx17MDModulesNotifierIRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEE6notifyES3_.exit
  %i.vb = load ptr, ptr %43, align 8, !tbaa !23   ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.vd = icmp eq ptr %i.vb, %i.vc
  br i1 %i.vd, label %_ZN3gmx19PlumedInputFilenameD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.fp
  %i.ve = load i64, ptr %i.vc, align 8, !tbaa !24
  %i.vf = add i64 %i.ve, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.vf) #30
  br label %_ZN3gmx19PlumedInputFilenameD2Ev.exit

_ZN3gmx19PlumedInputFilenameD2Ev.exit:            ; preds = %bb.fp, %_ZNK3gmx17MDModulesNotifierIRKNS_19PlumedInputFilenameENS_22BuildMDModulesNotifierIJEE15NoCallParameterEE6notifyES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  %i.vg = load ptr, ptr %42, align 8, !tbaa !23   ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.rm
  br i1 %i.vh, label %_ZN3gmx17EdrOutputFilenameD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN3gmx19PlumedInputFilenameD2Ev.exit
  %i.vi = load i64, ptr %i.rm, align 8, !tbaa !24
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vj) #30
  br label %_ZN3gmx17EdrOutputFilenameD2Ev.exit

_ZN3gmx17EdrOutputFilenameD2Ev.exit:              ; preds = %_ZN3gmx19PlumedInputFilenameD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  %i.vk = load ptr, ptr %41, align 8, !tbaa !23   ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.qk
  br i1 %i.vl, label %_ZN3gmx18MdRunInputFilenameD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i847

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i847: ; preds = %_ZN3gmx17EdrOutputFilenameD2Ev.exit
  %i.vm = load i64, ptr %i.qk, align 8, !tbaa !24
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vn) #30
  br label %_ZN3gmx18MdRunInputFilenameD2Ev.exit

_ZN3gmx18MdRunInputFilenameD2Ev.exit:             ; preds = %_ZN3gmx17EdrOutputFilenameD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i847
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  %i.vo = load ptr, ptr %i.t, align 8, !tbaa !150 ; 2 uses
  %.not506 = icmp eq ptr %i.vo, null
  br i1 %.not506, label %bb.ft, label %bb.fq

bb.fq:                                            ; preds = %_ZN3gmx18MdRunInputFilenameD2Ev.exit
  invoke void @_Z11pr_inputrecP8_IO_FILEiPKcPK10t_inputrecb(ptr noundef nonnull %i.vo, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %i.mr, i1 noundef zeroext false)
          to label %bb.fr unwind label %.loopexit.split-lp1883.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fr:                                            ; preds = %bb.fq
  %i.vp = load ptr, ptr %i.t, align 8, !tbaa !150
  %fputc = call i32 @fputc(i32 10, ptr %i.vp)     ; 0 uses
  br label %bb.ft

.loopexit.split-lp1868:                           ; preds = %.loopexit.split-lp1868.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fm
  %.pn500 = phi { ptr, i32 } [ %i.uq, %bb.fm ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp1868.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.vq = load i8, ptr %i.sh, align 8, !tbaa !680, !range !38, !noundef !39
  %i.vr = trunc nuw i8 %i.vq to i1
  store i8 0, ptr %i.sh, align 8, !tbaa !680
  br i1 %i.vr, label %bb.fs, label %_ZN3gmx19PlumedInputFilenameD2Ev.exit851

bb.fs:                                            ; preds = %.loopexit.split-lp1868
  %i.vs = load ptr, ptr %43, align 8, !tbaa !23   ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %_ZN3gmx19PlumedInputFilenameD2Ev.exit851, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i849

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i849: ; preds = %bb.fs
  %i.vv = load i64, ptr %i.vt, align 8, !tbaa !24
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vw) #30
  br label %_ZN3gmx19PlumedInputFilenameD2Ev.exit851

_ZN3gmx19PlumedInputFilenameD2Ev.exit851:         ; preds = %bb.fs, %.loopexit.split-lp1868, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i849
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  br label %.loopexit.split-lp1873

.loopexit.split-lp1873:                           ; preds = %.loopexit.split-lp1873.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN3gmx19PlumedInputFilenameD2Ev.exit851
  %.pn500.pn = phi { ptr, i32 } [ %.pn500, %_ZN3gmx19PlumedInputFilenameD2Ev.exit851 ], [ %lpad.loopexit.split-lp2472, %.loopexit.split-lp1873.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.vx = load ptr, ptr %42, align 8, !tbaa !23   ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.rm
  br i1 %i.vy, label %_ZN3gmx17EdrOutputFilenameD2Ev.exit854, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i852

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i852: ; preds = %.loopexit.split-lp1873
  %i.vz = load i64, ptr %i.rm, align 8, !tbaa !24
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #30
  br label %_ZN3gmx17EdrOutputFilenameD2Ev.exit854

_ZN3gmx17EdrOutputFilenameD2Ev.exit854:           ; preds = %.loopexit.split-lp1873, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i852, %bb.fl
  %.pn500.pn.pn = phi { ptr, i32 } [ %.pn500.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i852 ], [ %i.up, %bb.fl ], [ %.pn500.pn, %.loopexit.split-lp1873 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  br label %.loopexit.split-lp1878

.loopexit.split-lp1878:                           ; preds = %.loopexit.split-lp1878.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN3gmx17EdrOutputFilenameD2Ev.exit854
  %.pn500.pn.pn.pn = phi { ptr, i32 } [ %.pn500.pn.pn, %_ZN3gmx17EdrOutputFilenameD2Ev.exit854 ], [ %lpad.loopexit.split-lp2475, %.loopexit.split-lp1878.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.wb = load ptr, ptr %41, align 8, !tbaa !23   ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.qk
  br i1 %i.wc, label %_ZN3gmx18MdRunInputFilenameD2Ev.exit857, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i855

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i855: ; preds = %.loopexit.split-lp1878
  %i.wd = load i64, ptr %i.qk, align 8, !tbaa !24
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #30
  br label %_ZN3gmx18MdRunInputFilenameD2Ev.exit857

_ZN3gmx18MdRunInputFilenameD2Ev.exit857:          ; preds = %.loopexit.split-lp1878, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i855, %bb.fk
  %.pn500.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn500.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i855 ], [ %i.uo, %bb.fk ], [ %.pn500.pn.pn.pn, %.loopexit.split-lp1878 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  br label %.body865

bb.ft:                                            ; preds = %bb.fr, %_ZN3gmx18MdRunInputFilenameD2Ev.exit
  br i1 %i.el, label %bb.fu, label %bb.ga

bb.fu:                                            ; preds = %bb.ft
  %.pre1944 = load ptr, ptr %27, align 8, !tbaa !159 ; 5 uses
  br i1 %i.as, label %bb.fv, label %bb.fz

bb.fv:                                            ; preds = %bb.fu
  %i.wf = getelementptr inbounds nuw i8, ptr %.pre1944, i64 4 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !708
  %i.wh = and i32 %i.wg, 256
  %.not1808 = icmp eq i32 %i.wh, 0
  br i1 %.not1808, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.wi = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !710 ; 3 uses
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %bb.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  %i.wl = getelementptr inbounds nuw i8, ptr %45, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wl, i8 0, i64 24, i1 false)
  %i.wm = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 5 uses
  store ptr %i.wm, ptr %45, align 8, !tbaa !135
  %i.wn = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 0, ptr %i.wn, align 8, !tbaa !136
  %i.wo = getelementptr inbounds nuw i8, ptr %45, i64 32
  store i8 1, ptr %i.wo, align 8, !tbaa !713
  %i.wp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull @.str.17, i64 noundef 123)
          to label %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit unwind label %bb.fx ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextEPKc.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.wq = load ptr, ptr %i.wj, align 8, !tbaa !125
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8
  invoke void %i.ws(ptr noundef nonnull align 8 dereferenceable(8) %i.wj, ptr noundef nonnull align 8 dereferenceable(40) %45)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.fx, !inline_history !452

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit
  %i.wt = load ptr, ptr %45, align 8, !tbaa !23   ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.wm
  br i1 %i.wu, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.wv = load i64, ptr %i.wm, align 8, !tbaa !24
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.ww) #30
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %bb.fy

bb.fx:                                            ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.wx = landingpad { ptr, i32 }
          cleanup
  %i.wy = load ptr, ptr %45, align 8, !tbaa !23   ; 2 uses
  %i.wz = icmp eq ptr %i.wy, %i.wm
  br i1 %i.wz, label %_ZN3gmx14LogEntryWriterD2Ev.exit863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i861

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i861: ; preds = %bb.fx
  %i.xa = load i64, ptr %i.wm, align 8, !tbaa !24
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xb) #30
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit863

_ZN3gmx14LogEntryWriterD2Ev.exit863:              ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i861
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %.body865

bb.fy:                                            ; preds = %bb.fw, %_ZN3gmx14LogEntryWriterD2Ev.exit
  %i.xc = load i32, ptr %.pre1944, align 8, !tbaa !714 ; 2 uses
  %i.xd = icmp sgt i32 %i.xc, 0
  br i1 %i.xd, label %.lr.ph1894, label %._crit_edge1895

.lr.ph1894:                                       ; preds = %bb.fy
  %i.xe = getelementptr inbounds nuw i8, ptr %.pre1944, i64 456
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !281
  %i.xg = zext nneg i32 %i.xc to i64
  %i.xh = mul nuw nsw i64 %i.xg, 12
  call void @llvm.memset.p0.i64(ptr align 4 %i.xf, i8 0, i64 %i.xh, i1 false), !tbaa !98
  br label %._crit_edge1895

._crit_edge1895:                                  ; preds = %.lr.ph1894, %bb.fy
  %i.xi = load i32, ptr %i.wf, align 4, !tbaa !708
  %i.xj = and i32 %i.xi, -257
  invoke void @_ZN7t_state8setFlagsEi(ptr noundef nonnull align 8 dereferenceable(840) %.pre1944, i32 noundef %i.xj)
          to label %bb.fz unwind label %.loopexit.split-lp1883.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fz:                                            ; preds = %._crit_edge1895, %bb.fv, %bb.fu
  invoke void @_Z17set_state_entriesP7t_statePK10t_inputrecb(ptr noundef %.pre1944, ptr noundef %i.mr, i1 noundef zeroext %i.ki)
          to label %bb.ga unwind label %.loopexit.split-lp1883.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ga:                                            ; preds = %bb.fz, %bb.ft
  %i.xk = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 7 uses
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !658
  switch i32 %i.xl, label %bb.ge [
    i32 5, label %bb.gb
    i32 7, label %bb.gb
  ]

bb.gb:                                            ; preds = %bb.ga, %bb.ga
  br i1 %i.el, label %._ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit873_crit_edge, label %bb.gc

._ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit873_crit_edge: ; preds = %bb.gb
  %.pre1945 = load ptr, ptr %27, align 8, !tbaa !159
  br label %_ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit873

bb.gc:                                            ; preds = %bb.gb
  %i.xm = invoke noalias noundef nonnull dereferenceable(840) ptr @_Znwm(i64 noundef 840) #33
          to label %.noexc864 unwind label %.loopexit.split-lp1883.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc864:                                        ; preds = %bb.gc
  invoke void @_ZN7t_stateC1Ev(ptr noundef nonnull align 8 dereferenceable(840) %i.xm)
          to label %_ZSt11make_uniqueI7t_stateJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit867 unwind label %bb.gd, !noalias !715

bb.gd:                                            ; preds = %.noexc864
  %i.xn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef 840) #30, !noalias !715
  br label %.body865

_ZSt11make_uniqueI7t_stateJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit867: ; preds = %.noexc864
  %i.xo = load ptr, ptr %27, align 8, !tbaa !159  ; 3 uses
  store ptr %i.xm, ptr %27, align 8, !tbaa !159
  %.not.i.i.i.i868 = icmp eq ptr %i.xo, null
  br i1 %.not.i.i.i.i868, label %_ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit873, label %_ZNKSt14default_deleteI7t_stateEclEPS0_.exit.i.i.i.i869

_ZNKSt14default_deleteI7t_stateEclEPS0_.exit.i.i.i.i869: ; preds = %_ZSt11make_uniqueI7t_stateJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit867
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(840) %i.xo) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.xo, i64 noundef 840) #30
  br label %_ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit873

_ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit873: ; preds = %._ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit873_crit_edge, %_ZSt11make_uniqueI7t_stateJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit867, %_ZNKSt14default_deleteI7t_stateEclEPS0_.exit.i.i.i.i869
  %i.xp = phi ptr [ %.pre1945, %._ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit873_crit_edge ], [ %i.xm, %_ZSt11make_uniqueI7t_stateJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit867 ], [ %i.xm, %_ZNKSt14default_deleteI7t_stateEclEPS0_.exit.i.i.i.i869 ]
  %i.xq = load ptr, ptr %31, align 8, !tbaa !634
  invoke void @_Z29broadcastStateWithoutDynamicsP10tmpi_comm_bbP7t_state(ptr noundef %i.xq, i1 noundef zeroext %i.lh, i1 noundef zeroext %i.hw, ptr noundef %i.xp)
          to label %bb.ge unwind label %.loopexit.split-lp1883.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ge:                                            ; preds = %bb.ga, %_ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit873
  br i1 %i.hw, label %bb.gp, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !33
  %i.xt = icmp sgt i32 %i.xs, 1
  br i1 %i.xt, label %bb.gj, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
end_hunk_0
begin_hunk_1_@_ZN3gmx8Mdrunner8mdrunnerEv:bb.a
          to label %.noexc971 unwind label %bb.nc ; 4 uses

.noexc971:                                        ; preds = %bb.my
  %i.aqp = load i8, ptr %58, align 4, !tbaa !96, !range !38, !noalias !749, !noundef !39
  %i.aqq = trunc nuw i8 %i.aqp to i1
  invoke void @_ZN3gmx26DomainDecompositionBuilderC1ERKNS_8MDLoggerERKNS_7MpiCommERKNS_13DomdecOptionsERKNS_12MdrunOptionsERK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPA3_KfNS_8ArrayRefIKNS_17RangePartitioningEEEbfNSP_IKNS_11BasicVectorIfEEEEbbbbb(ptr noundef nonnull align 8 dereferenceable(8) %i.aqo, ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(64) %i.gj, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(768) %20, ptr noundef nonnull align 8 dereferenceable(888) %i.ajx, ptr noundef nonnull align 8 dereferenceable(816) %i.apz, ptr noundef nonnull align 4 dereferenceable(36) %i.u, ptr noundef nonnull byval(%"class.gmx::ArrayRef.600") align 8 %61, i1 noundef zeroext %i.aqf, float noundef %i.aqh, ptr noundef nonnull byval(%"class.gmx::ArrayRef.587") align 8 %62, i1 noundef zeroext %i.jd, i1 noundef zeroext %i.jj, i1 noundef zeroext %i.akf, i1 noundef zeroext %.01715, i1 noundef zeroext %i.aqq)
          to label %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EED2Ev.exit unwind label %bb.mz, !noalias !749

bb.mz:                                            ; preds = %.noexc971
  %i.aqr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aqo, i64 noundef 8) #30, !noalias !749
  br label %.body972

_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc971
  store ptr %i.aqo, ptr %60, align 8, !tbaa !300
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  br label %bb.nl

bb.na:                                            ; preds = %bb.mu
  %i.aqs = landingpad { ptr, i32 }
          cleanup
  br label %bb.age

bb.nb:                                            ; preds = %bb.mv
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  br label %bb.nd

bb.nc:                                            ; preds = %bb.my
  %i.aqu = landingpad { ptr, i32 }
          cleanup
  br label %.body972

.body972:                                         ; preds = %bb.mz, %bb.nc
  %eh.lpad-body973 = phi { ptr, i32 } [ %i.aqu, %bb.nc ], [ %i.aqr, %bb.mz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  br label %bb.nd

bb.nd:                                            ; preds = %.body972, %bb.nb
  %.pn531 = phi { ptr, i32 } [ %eh.lpad-body973, %.body972 ], [ %i.aqt, %bb.nb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  br label %bb.age

bb.ne:                                            ; preds = %bb.mt
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.ajx, i64 176
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !741
  %i.aqx = icmp eq i32 %i.aqw, 3
  br i1 %i.aqx, label %bb.nf, label %bb.nl

bb.nf:                                            ; preds = %bb.ne
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #31
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull align 1 dereferenceable(61) @.str.9, i8 noundef zeroext 2)
          to label %bb.ng unwind label %bb.ni

bb.ng:                                            ; preds = %bb.nf
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %63, i32 noundef 1498, ptr noundef nonnull @.str.25) #34
          to label %bb.nh unwind label %bb.nj

bb.nh:                                            ; preds = %bb.ng
  unreachable

bb.ni:                                            ; preds = %bb.nf
  %i.aqy = landingpad { ptr, i32 }
          cleanup
  br label %bb.nk

bb.nj:                                            ; preds = %bb.ng
  %i.aqz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %63) #31
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %.pn529 = phi { ptr, i32 } [ %i.aqz, %bb.nj ], [ %i.aqy, %bb.ni ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  br label %bb.age

bb.nl:                                            ; preds = %bb.ne, %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EED2Ev.exit
  %i.ara = phi ptr [ null, %bb.ne ], [ %i.aqo, %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #31
  %i.arb = load ptr, ptr %25, align 8, !tbaa !140 ; 3 uses
  %i.arc = load ptr, ptr %i.ff, align 8, !tbaa !152
  %i.ard = ptrtoint ptr %i.arc to i64
  %i.are = ptrtoint ptr %i.arb to i64
  %i.arf = sub i64 %i.ard, %i.are
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arb, i64 %i.arf
  %i.arh = load ptr, ptr %21, align 16, !tbaa !140 ; 3 uses
  %i.ari = load ptr, ptr %i.ax, align 8, !tbaa !152
  %i.arj = ptrtoint ptr %i.ari to i64
  %i.ark = ptrtoint ptr %i.arh to i64
  %i.arl = sub i64 %i.arj, %i.ark
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.arl
  %i.arn = load ptr, ptr %i.et, align 8, !tbaa !94
  %i.aro = load ptr, ptr %i.ej, align 8, !tbaa !111
  %.not1809 = icmp eq ptr %i.ara, null            ; 3 uses
  br i1 %.not1809, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.arp = invoke noundef zeroext i1 @_ZNK3gmx26DomainDecompositionBuilder17thisRankHasPPDutyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ara)
          to label %bb.nn unwind label %bb.nz

bb.nn:                                            ; preds = %bb.nl, %bb.nm
  %i.arq = phi i1 [ %i.arp, %bb.nm ], [ true, %bb.nl ]
  %.val690 = load i32, ptr %i.anx, align 4, !tbaa !659
  switch i32 %.val690, label %_ZL8usingPmeRK22CoulombInteractionType.exit [
    i32 3, label %bb.no
    i32 14, label %bb.no
    i32 13, label %bb.no
    i32 15, label %bb.no
    i32 5, label %bb.no
  ]

bb.no:                                            ; preds = %bb.nn, %bb.nn, %bb.nn, %bb.nn, %bb.nn
  br i1 %.not1809, label %_ZL8usingPmeRK22CoulombInteractionType.exit, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.arr = invoke noundef zeroext i1 @_ZNK3gmx26DomainDecompositionBuilder18thisRankHasPmeDutyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ara)
          to label %_ZL8usingPmeRK22CoulombInteractionType.exit unwind label %bb.nz

_ZL8usingPmeRK22CoulombInteractionType.exit:      ; preds = %bb.nn, %bb.np, %bb.no
  %i.ars = phi i1 [ true, %bb.no ], [ %i.arr, %bb.np ], [ false, %bb.nn ]
  invoke void @_ZN3gmx25GpuTaskAssignmentsBuilder5buildENS_8ArrayRefIKiEES3_RK13gmx_hw_info_tP10tmpi_comm_RKNS_24PhysicalNodeCommunicatorENS_10TaskTargetESC_SC_SC_SC_bbbb(ptr dead_on_unwind nonnull writable sret(%"class.gmx::GpuTaskAssignments") align 8 %64, ptr %i.arb, ptr %i.arg, ptr %i.arh, ptr %i.arm, ptr noundef nonnull align 8 dereferenceable(136) %i.arn, ptr noundef %i.aro, ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef %.0.i, i32 noundef %.0.i705, i32 noundef %.0.i714, i32 noundef %.0.i732, i32 noundef %.0.i741, i1 noundef zeroext %i.jd, i1 noundef zeroext %i.jj, i1 noundef zeroext %i.arq, i1 noundef zeroext %i.ars)
          to label %bb.nq unwind label %bb.nz

bb.nq:                                            ; preds = %_ZL8usingPmeRK22CoulombInteractionType.exit
  %i.art = invoke noundef ptr @_ZNK3gmx18GpuTaskAssignments10initDeviceEv(ptr noundef nonnull align 8 dereferenceable(80) %64)
          to label %bb.nr unwind label %bb.oa     ; 4 uses

bb.nr:                                            ; preds = %bb.nq
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #31
  invoke void @_ZN3gmx19LocalAtomSetManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.ns unwind label %bb.ob

bb.ns:                                            ; preds = %bb.nr
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #31
  store ptr null, ptr %66, align 8, !tbaa !556
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #31
  %i.aru = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  invoke void @_ZN14gmx_localtop_tC1ERK14gmx_ffparams_t(ptr noundef nonnull align 8 dereferenceable(2808) %67, ptr noundef nonnull align 8 dereferenceable(104) %i.aru)
          to label %bb.nt unwind label %bb.oc

bb.nt:                                            ; preds = %bb.ns
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #31
  store ptr null, ptr %68, align 8, !tbaa !751
  br i1 %.not1809, label %bb.om, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.arv = invoke noalias noundef nonnull dereferenceable(840) ptr @_Znwm(i64 noundef 840) #33
          to label %.noexc977 unwind label %bb.oo ; 4 uses

.noexc977:                                        ; preds = %bb.nu
  invoke void @_ZN7t_stateC1Ev(ptr noundef nonnull align 8 dereferenceable(840) %i.arv)
          to label %_ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit986 unwind label %bb.nv, !noalias !752

bb.nv:                                            ; preds = %.noexc977
  %i.arw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.arv, i64 noundef 840) #30, !noalias !752
  br label %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit1470

_ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit986: ; preds = %.noexc977
  store ptr %i.arv, ptr %66, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #31
  invoke void @_ZN3gmx26DomainDecompositionBuilder5buildEPNS_19LocalAtomSetManagerEbPNS_25ObservablesReducerBuilderE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.637") align 8 %69, ptr noundef nonnull align 8 dereferenceable(8) %i.ara, ptr noundef nonnull %65, i1 noundef zeroext %.036.i1726, ptr noundef nonnull %35)
          to label %bb.nw unwind label %bb.od

bb.nw:                                            ; preds = %_ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit986
  %i.arx = load ptr, ptr %69, align 8, !tbaa !302
  store ptr null, ptr %69, align 8, !tbaa !302
  %i.ary = load ptr, ptr %68, align 8, !tbaa !302 ; 3 uses
  store ptr %i.arx, ptr %68, align 8, !tbaa !302
  %.not.i.i.i.i987 = icmp eq ptr %i.ary, null
  br i1 %.not.i.i.i.i987, label %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNSt10unique_ptrI12gmx_domdec_tSt14default_deleteIS0_EEaSEOS3_.exit

_ZNSt10unique_ptrI12gmx_domdec_tSt14default_deleteIS0_EEaSEOS3_.exit: ; preds = %bb.nw
  call void @_ZN12gmx_domdec_tD1Ev(ptr noundef nonnull align 8 dead_on_return(1097) dereferenceable(1097) %i.ary) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.ary, i64 noundef 1104) #30
  %.pr1728 = load ptr, ptr %69, align 8, !tbaa !302 ; 3 uses
  %.not.i988 = icmp eq ptr %.pr1728, null
  br i1 %.not.i988, label %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteI12gmx_domdec_tEclEPS0_.exit.i

_ZNKSt14default_deleteI12gmx_domdec_tEclEPS0_.exit.i: ; preds = %_ZNSt10unique_ptrI12gmx_domdec_tSt14default_deleteIS0_EEaSEOS3_.exit
  call void @_ZN12gmx_domdec_tD1Ev(ptr noundef nonnull align 8 dead_on_return(1097) dereferenceable(1097) %.pr1728) #31
  call void @_ZdlPvm(ptr noundef nonnull %.pr1728, i64 noundef 1104) #30
  br label %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.nw, %_ZNSt10unique_ptrI12gmx_domdec_tSt14default_deleteIS0_EEaSEOS3_.exit, %_ZNKSt14default_deleteI12gmx_domdec_tEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #31
  store ptr null, ptr %60, align 8, !tbaa !300
  call void @_ZN3gmx26DomainDecompositionBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ara) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.ara, i64 noundef 8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #31
  %i.arz = load ptr, ptr %68, align 8, !tbaa !302
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 8
  invoke void @_ZNK3gmx7MpiComm31getHierarchicalReductionsReportB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %70, ptr noundef nonnull align 8 dereferenceable(24) %i.asa)
          to label %bb.nx unwind label %bb.oe

bb.nx:                                            ; preds = %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.asb = getelementptr inbounds nuw i8, ptr %70, i64 32 ; 6 uses
  %i.asc = load i8, ptr %i.asb, align 8, !tbaa !680, !range !38, !noundef !39
  %i.asd = trunc nuw i8 %i.asc to i1
  br i1 %i.asd, label %bb.ny, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1002

bb.ny:                                            ; preds = %bb.nx
  %i.ase = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !710 ; 3 uses
  %i.asg = icmp eq ptr %i.asf, null
  br i1 %i.asg, label %.thread2359, label %bb.of

.thread2359:                                      ; preds = %bb.ny
  store i8 0, ptr %i.asb, align 8, !tbaa !680
  br label %bb.oj

bb.nz:                                            ; preds = %_ZL8usingPmeRK22CoulombInteractionType.exit, %bb.np, %bb.nm
  %i.ash = landingpad { ptr, i32 }
          cleanup
  br label %bb.agd

bb.oa:                                            ; preds = %bb.nq
  %i.asi = landingpad { ptr, i32 }
          cleanup
  br label %bb.agc

bb.ob:                                            ; preds = %bb.nr
  %i.asj = landingpad { ptr, i32 }
          cleanup
  br label %bb.agb

bb.oc:                                            ; preds = %bb.ns
  %i.ask = landingpad { ptr, i32 }
          cleanup
  br label %bb.aga

bb.od:                                            ; preds = %_ZNSt10unique_ptrI7t_stateSt14default_deleteIS0_EED2Ev.exit986
  %i.asl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #31
  br label %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit1470

bb.oe:                                            ; preds = %_ZNSt10unique_ptrIN3gmx26DomainDecompositionBuilderESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.asm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.of:                                            ; preds = %bb.ny
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #31
  %i.asn = getelementptr inbounds nuw i8, ptr %71, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asn, i8 0, i64 24, i1 false)
  %i.aso = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 5 uses
  store ptr %i.aso, ptr %71, align 8, !tbaa !135
  %i.asp = getelementptr inbounds nuw i8, ptr %71, i64 8
  store i64 0, ptr %i.asp, align 8, !tbaa !136
  %i.asq = getelementptr inbounds nuw i8, ptr %71, i64 32
  store i8 1, ptr %i.asq, align 8, !tbaa !713
  %i.asr = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.ass = load i64, ptr %i.asr, align 8, !tbaa !136 ; 2 uses
  %i.ast = icmp ugt i64 %i.ass, 4611686018427387903
  br i1 %i.ast, label %bb.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.og:                                            ; preds = %bb.of
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #34
          to label %.noexc990 unwind label %bb.oh

.noexc990:                                        ; preds = %bb.og
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.of
  %i.asu = load ptr, ptr %70, align 8, !tbaa !23
  %i.asv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %71, ptr noundef %i.asu, i64 noundef %i.ass)
          to label %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.oh ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.asw = load ptr, ptr %i.asf, align 8, !tbaa !125
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 16
  %i.asy = load ptr, ptr %i.asx, align 8
  invoke void %i.asy(ptr noundef nonnull align 8 dereferenceable(8) %i.asf, ptr noundef nonnull align 8 dereferenceable(40) %71)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit993 unwind label %bb.oh, !inline_history !452

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit993: ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.asz = load ptr, ptr %71, align 8, !tbaa !23  ; 2 uses
  %i.ata = icmp eq ptr %i.asz, %i.aso
  br i1 %i.ata, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i995, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i994

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i994: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit993
  %i.atb = load i64, ptr %i.aso, align 8, !tbaa !24
  %i.atc = add i64 %i.atb, 1
  call void @_ZdlPvm(ptr noundef %i.asz, i64 noundef %i.atc) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i995

bb.oh:                                            ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.og
  %i.atd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ate = load ptr, ptr %71, align 8, !tbaa !23  ; 2 uses
  %i.atf = icmp eq ptr %i.ate, %i.aso
  br i1 %i.atf, label %_ZN3gmx14LogEntryWriterD2Ev.exit999, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i997

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i997: ; preds = %bb.oh
  %i.atg = load i64, ptr %i.aso, align 8, !tbaa !24
  %i.ath = add i64 %i.atg, 1
  call void @_ZdlPvm(ptr noundef %i.ate, i64 noundef %i.ath) #30
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit999

_ZN3gmx14LogEntryWriterD2Ev.exit999:              ; preds = %bb.oh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i997
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #31
  %i.ati = load i8, ptr %i.asb, align 8, !tbaa !680, !range !38, !noundef !39
  %i.atj = trunc nuw i8 %i.ati to i1
  store i8 0, ptr %i.asb, align 8, !tbaa !680
  br i1 %i.atj, label %bb.oi, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.oi:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit999
  %i.atk = load ptr, ptr %70, align 8, !tbaa !23  ; 2 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.atm = icmp eq ptr %i.atk, %i.atl
  br i1 %i.atm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.oi
  %i.atn = load i64, ptr %i.atl, align 8, !tbaa !24
  %i.ato = add i64 %i.atn, 1
  call void @_ZdlPvm(ptr noundef %i.atk, i64 noundef %i.ato) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i995: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit993, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i994
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #31
  %.pre1949 = load i8, ptr %i.asb, align 8, !tbaa !680, !range !38
  %i.atp = trunc nuw i8 %.pre1949 to i1
  store i8 0, ptr %i.asb, align 8, !tbaa !680
  br i1 %i.atp, label %bb.oj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1002

bb.oj:                                            ; preds = %.thread2359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i995
  %i.atq = load ptr, ptr %70, align 8, !tbaa !23  ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.ats = icmp eq ptr %i.atq, %i.atr
  br i1 %i.ats, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1002, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1000

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1000: ; preds = %bb.oj
  %i.att = load i64, ptr %i.atr, align 8, !tbaa !24
  %i.atu = add i64 %i.att, 1
  call void @_ZdlPvm(ptr noundef %i.atq, i64 noundef %i.atu) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1002

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1002: ; preds = %bb.oj, %bb.nx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i995, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1000
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  %i.atv = load ptr, ptr %68, align 8, !tbaa !302
  %i.atw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK12gmx_domdec_t12mpiCommMySimEv(ptr noundef nonnull align 8 dereferenceable(1097) %i.atv)
          to label %bb.ok unwind label %bb.oo

bb.ok:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1002
  %i.atx = load ptr, ptr %68, align 8, !tbaa !302 ; 2 uses
  %i.aty = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc1003 unwind label %bb.oo ; 3 uses

.noexc1003:                                       ; preds = %bb.ok
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atx, i64 8
  invoke void @_ZN9t_commrecC1ERKN3gmx7MpiCommES3_P12gmx_domdec_t(ptr noundef nonnull align 8 dereferenceable(24) %i.aty, ptr noundef nonnull align 8 dereferenceable(24) %i.atw, ptr noundef nonnull align 8 dereferenceable(24) %i.atz, ptr noundef nonnull %i.atx)
          to label %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit unwind label %bb.ol, !noalias !753

bb.ol:                                            ; preds = %.noexc1003
  %i.aua = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aty, i64 noundef 24) #30, !noalias !753
  br label %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit1470

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.oi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZN3gmx14LogEntryWriterD2Ev.exit999, %bb.oe
  %.pn534.pn.pn = phi { ptr, i32 } [ %i.asm, %bb.oe ], [ %i.atd, %_ZN3gmx14LogEntryWriterD2Ev.exit999 ], [ %i.atd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.atd, %bb.oi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #31
  br label %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit1470

bb.om:                                            ; preds = %bb.nt
  %i.aub = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc1008 unwind label %bb.oo ; 3 uses

.noexc1008:                                       ; preds = %bb.om
  invoke void @_ZN9t_commrecC1ERKN3gmx7MpiCommES3_P12gmx_domdec_t(ptr noundef nonnull align 8 dereferenceable(24) %i.aub, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef null)
          to label %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit unwind label %bb.on, !noalias !754

bb.on:                                            ; preds = %.noexc1008
  %i.auc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aub, i64 noundef 24) #30, !noalias !754
  br label %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit1470

bb.oo:                                            ; preds = %bb.ok, %bb.nu, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1002, %bb.om
  %i.aud = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit1470

_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit: ; preds = %.noexc1008, %.noexc1003
  %.sroa.01628.0 = phi ptr [ %i.aty, %.noexc1003 ], [ %i.aub, %.noexc1008 ] ; 66 uses
  %.0473 = phi ptr [ %i.arv, %.noexc1003 ], [ %i.yn, %.noexc1008 ]
  br i1 %i.el, label %bb.op, label %.critedge

bb.op:                                            ; preds = %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit
  %i.aue = getelementptr inbounds nuw i8, ptr %.sroa.01628.0, i64 16 ; 2 uses
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !757 ; 2 uses
  %.not540 = icmp eq ptr %i.auf, null
  br i1 %.not540, label %.critedge, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.aug = invoke noundef zeroext i1 @_Z18ddUsesUpdateGroupsRK12gmx_domdec_t(ptr noundef nonnull align 8 dereferenceable(1097) %i.auf)
          to label %bb.or unwind label %bb.pf

bb.or:                                            ; preds = %bb.oq
  br i1 %i.aug, label %bb.os, label %.critedge

bb.os:                                            ; preds = %bb.or
  %i.auh = load ptr, ptr %i.aue, align 8, !tbaa !757
  %i.aui = load ptr, ptr %27, align 8, !tbaa !159 ; 3 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 416
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !281 ; 3 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aui, i64 440
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !288
  %i.aun = ptrtoint ptr %i.aum to i64
  %i.auo = ptrtoint ptr %i.auk to i64
  %i.aup = sub i64 %i.aun, %i.auo
  %i.auq = getelementptr inbounds i8, ptr %i.auk, i64 %i.aup
  %i.aur = getelementptr inbounds nuw i8, ptr %i.aui, i64 52
  invoke void @_Z38putUpdateGroupAtomsInSamePeriodicImageRK12gmx_domdec_tRK10gmx_mtop_tPA3_KfN3gmx8ArrayRefINS8_11BasicVectorIfEEEE(ptr noundef nonnull align 8 dereferenceable(1097) %i.auh, ptr noundef nonnull align 8 dereferenceable(768) %20, ptr noundef nonnull %i.aur, ptr %i.auk, ptr %i.auq)
          to label %.critedge unwind label %bb.pf

.critedge:                                        ; preds = %bb.or, %bb.os, %bb.op, %_ZNSt10unique_ptrI9t_commrecSt14default_deleteIS0_EED2Ev.exit
  %i.aus = call ptr @getenv(ptr noundef nonnull @.str.26) #31
  %i.aut = icmp ne ptr %i.aus, null               ; 2 uses
  br i1 %i.aut, label %bb.ot, label %bb.ov

bb.ot:                                            ; preds = %.critedge
  %i.auu = load ptr, ptr %24, align 8, !tbaa !710 ; 3 uses
  %i.auv = icmp eq ptr %i.auu, null
  br i1 %i.auv, label %bb.ov, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1017

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1017: ; preds = %bb.ot
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #31
  %i.auw = getelementptr inbounds nuw i8, ptr %72, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.auw, i8 0, i64 24, i1 false)
  %i.aux = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 5 uses
  store ptr %i.aux, ptr %72, align 8, !tbaa !135
  %i.auy = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 0, ptr %i.auy, align 8, !tbaa !136
  %i.auz = getelementptr inbounds nuw i8, ptr %72, i64 32
  store i8 1, ptr %i.auz, align 8, !tbaa !713
  %i.ava = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %72, ptr noundef nonnull @.str.27, i64 noundef 78)
          to label %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit1020 unwind label %bb.ou ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextEPKc.exit1020: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1017
  %i.avb = load ptr, ptr %i.auu, align 8, !tbaa !125
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 16
  %i.avd = load ptr, ptr %i.avc, align 8
  invoke void %i.avd(ptr noundef nonnull align 8 dereferenceable(8) %i.auu, ptr noundef nonnull align 8 dereferenceable(40) %72)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit1022 unwind label %bb.ou, !inline_history !452

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit1022: ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit1020
  %i.ave = load ptr, ptr %72, align 8, !tbaa !23  ; 2 uses
  %i.avf = icmp eq ptr %i.ave, %i.aux
  br i1 %i.avf, label %_ZN3gmx14LogEntryWriterD2Ev.exit1025, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1023

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1023: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit1022
  %i.avg = load i64, ptr %i.aux, align 8, !tbaa !24
  %i.avh = add i64 %i.avg, 1
  call void @_ZdlPvm(ptr noundef %i.ave, i64 noundef %i.avh) #30
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit1025

_ZN3gmx14LogEntryWriterD2Ev.exit1025:             ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit1022, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1023
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #31
  br label %bb.ov

bb.ou:                                            ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit1020, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1017
  %i.avi = landingpad { ptr, i32 }
          cleanup
  %i.avj = load ptr, ptr %72, align 8, !tbaa !23  ; 2 uses
  %i.avk = icmp eq ptr %i.avj, %i.aux
  br i1 %i.avk, label %_ZN3gmx14LogEntryWriterD2Ev.exit1028, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1026

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1026: ; preds = %bb.ou
  %i.avl = load i64, ptr %i.aux, align 8, !tbaa !24
  %i.avm = add i64 %i.avl, 1
  call void @_ZdlPvm(ptr noundef %i.avj, i64 noundef %i.avm) #30
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit1028

_ZN3gmx14LogEntryWriterD2Ev.exit1028:             ; preds = %bb.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1026
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #31
  br label %_ZNKSt14default_deleteI9t_commrecEclEPS0_.exit.i1469

bb.ov:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit1025, %bb.ot, %.critedge
  %i.avn = getelementptr inbounds nuw i8, ptr %.sroa.01628.0, i64 16 ; 27 uses
  %i.avo = load ptr, ptr %i.avn, align 8, !tbaa !757
  %i.avp = invoke i64 @_Z16getNumPmeDomainsPK12gmx_domdec_t(ptr noundef %i.avo)
          to label %bb.ow unwind label %bb.pf     ; 2 uses

bb.ow:                                            ; preds = %bb.ov
  %.sroa.071.0.extract.trunc = trunc i64 %i.avp to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.avp, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.avq = mul nsw i32 %.sroa.5.0.extract.trunc, %.sroa.071.0.extract.trunc
  %i.avr = icmp sgt i32 %i.avq, 1
  %i.avs = and i1 %i.jj, %i.avr                   ; 2 uses
  %.not12 = xor i1 %i.avs, true
  %i.avt = load i8, ptr %58, align 4, !range !38
  %i.avu = trunc nuw i8 %i.avt to i1
  %or.cond15 = select i1 %.not12, i1 true, i1 %i.avu
  br i1 %or.cond15, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx8Mdrunner8mdrunnerEvENK3$_0clEv", ptr noundef nonnull @.str.9, i32 noundef 1608) #34
          to label %.noexc1029 unwind label %bb.pf

.noexc1029:                                       ; preds = %bb.ox
  unreachable

bb.oy:                                            ; preds = %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #31
  %i.avv = getelementptr inbounds nuw i8, ptr %73, i64 29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.avv, i8 0, i64 29, i1 false)
  %i.avw = load ptr, ptr %i.avn, align 8, !tbaa !757 ; 3 uses
  %i.avx = icmp eq ptr %i.avw, null
  br i1 %i.avx, label %_ZL18thisRankHasPmeDutyPK12gmx_domdec_t.exit, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.avy = load i8, ptr %i.avw, align 8, !tbaa !843, !range !38, !noundef !39
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avw, i64 1
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !844, !range !38, !noundef !39
  %i.awb = icmp ne i8 %i.avy, %i.awa
  br label %_ZL18thisRankHasPmeDutyPK12gmx_domdec_t.exit

_ZL18thisRankHasPmeDutyPK12gmx_domdec_t.exit:     ; preds = %bb.oy, %bb.oz
  %i.awc = phi i1 [ %i.awb, %bb.oz ], [ false, %bb.oy ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #31
  %i.awd = invoke noundef zeroext i1 @_Z18inputrecDynamicBoxPK10t_inputrec(ptr noundef nonnull %i.ajx)
          to label %bb.pa unwind label %bb.pg

bb.pa:                                            ; preds = %_ZL18thisRankHasPmeDutyPK12gmx_domdec_t.exit
end_hunk_1
