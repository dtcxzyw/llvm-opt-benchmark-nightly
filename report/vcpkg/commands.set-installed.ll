Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.set-installed?download=true
inline.NumInlined: 2257
inline.NumDeleted: 1301
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5vcpkg31adjust_action_plan_to_status_dbERNS_10ActionPlanERKNS_16StatusParagraphsE:bb.a

_ZNSt6vectorIN5vcpkg16RemovePlanActionESaIS1_EED2Ev.exit.i: ; preds = %bb.r, %_ZSt8_DestroyIPN5vcpkg16RemovePlanActionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.dl = load ptr, ptr %9, align 8, !tbaa !310   ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !311 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.dl, %i.dn
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPN5vcpkg18NotInstalledActionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN5vcpkg16RemovePlanActionESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyIN5vcpkg18NotInstalledActionEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.dt, %_ZSt8_DestroyIN5vcpkg18NotInstalledActionEEvPT_.exit.i.i.i.i ], [ %i.dl, %_ZNSt6vectorIN5vcpkg16RemovePlanActionESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.do = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !42 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZSt8_DestroyIN5vcpkg18NotInstalledActionEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4.i: ; preds = %.lr.ph.i.i.i2.i
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !44
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #23
  br label %_ZSt8_DestroyIN5vcpkg18NotInstalledActionEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5vcpkg18NotInstalledActionEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i4.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 40 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %i.dt, %i.dn
  br i1 %.not.i.i.i5.i, label %_ZSt8_DestroyIPN5vcpkg18NotInstalledActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !299

_ZSt8_DestroyIPN5vcpkg18NotInstalledActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5vcpkg18NotInstalledActionEEvPT_.exit.i.i.i.i
  %.pr.i6.i = load ptr, ptr %9, align 8, !tbaa !310
  br label %_ZSt8_DestroyIPN5vcpkg18NotInstalledActionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5vcpkg18NotInstalledActionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg18NotInstalledActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN5vcpkg16RemovePlanActionESaIS1_EED2Ev.exit.i
  %i.du = phi ptr [ %.pr.i6.i, %_ZSt8_DestroyIPN5vcpkg18NotInstalledActionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dl, %_ZNSt6vectorIN5vcpkg16RemovePlanActionESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i7.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i1.i7.i, label %_ZN5vcpkg10RemovePlanD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg18NotInstalledActionES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !312
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #23
  br label %_ZN5vcpkg10RemovePlanD2Ev.exit

_ZN5vcpkg10RemovePlanD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPN5vcpkg18NotInstalledActionES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ea = load ptr, ptr %1, align 8, !tbaa !124   ; 2 uses
  %i.eb = load ptr, ptr %i.ch, align 8, !tbaa !124 ; 2 uses
  %.not6787 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not6787, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %bb.af, %_ZN5vcpkg10RemovePlanD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %0, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ec = load ptr, ptr %i.g, align 8, !tbaa !63  ; 3 uses
  %i.ed = load ptr, ptr %i.i, align 8, !tbaa !63  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = sdiv exact i64 %i.eg, 440
  %i.ei = ashr i64 %i.eh, 2                       ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 0
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i39, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i39:                               ; preds = %._crit_edge90, %bb.w
  %.036.i.i.i.i.i = phi i64 [ %i.es, %bb.w ], [ %i.ei, %._crit_edge90 ] ; 2 uses
  %.sroa.025.035.i.i.i.i.i = phi ptr [ %i.er, %bb.w ], [ %i.ec, %._crit_edge90 ] ; 6 uses
  %i.ek = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5vcpkg31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EclINS_17__normal_iteratorIPNS2_17InstallPlanActionESt6vectorISC_SaISC_EEEEEEbT_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr %.sroa.025.035.i.i.i.i.i)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %.lr.ph.i.i.i.i.i39
  br i1 %i.ek, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i", label %bb.t

bb.t:                                             ; preds = %.noexc40
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i.i.i.i.i, i64 440 ; 2 uses
  %i.em = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5vcpkg31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EclINS_17__normal_iteratorIPNS2_17InstallPlanActionESt6vectorISC_SaISC_EEEEEEbT_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr nonnull %i.el)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.t
  br i1 %i.em, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i", label %bb.u

bb.u:                                             ; preds = %.noexc41
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i.i.i.i.i, i64 880 ; 2 uses
  %i.eo = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5vcpkg31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EclINS_17__normal_iteratorIPNS2_17InstallPlanActionESt6vectorISC_SaISC_EEEEEEbT_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr nonnull %i.en)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.u
  br i1 %i.eo, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i", label %bb.v

bb.v:                                             ; preds = %.noexc42
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i.i.i.i.i, i64 1320 ; 2 uses
  %i.eq = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5vcpkg31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EclINS_17__normal_iteratorIPNS2_17InstallPlanActionESt6vectorISC_SaISC_EEEEEEbT_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr nonnull %i.ep)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.v
  br i1 %i.eq, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %.noexc43
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i.i.i.i.i, i64 1760 ; 3 uses
  %i.es = add nsw i64 %.036.i.i.i.i.i, -1
  %i.et = icmp sgt i64 %.036.i.i.i.i.i, 1
  br i1 %i.et, label %.lr.ph.i.i.i.i.i39, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !300

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.w
  %.pre.i.i.i.i.i = ptrtoint ptr %i.er to i64
  %.pre37.i.i.i.i.i = sub i64 %i.ee, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %._crit_edge90
  %.pre-phi38.i.i.i.i.i = phi i64 [ %.pre37.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.eg, %._crit_edge90 ]
  %.sroa.025.0.lcssa.i.i.i.i.i = phi ptr [ %i.er, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ec, %._crit_edge90 ] ; 5 uses
  %i.eu = sdiv exact i64 %.pre-phi38.i.i.i.i.i, 440
  switch i64 %i.eu, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.thread.i.i.i" [
    i64 3, label %bb.x
    i64 2, label %bb.z
    i64 1, label %bb.ab
  ]

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.thread.i.i.i": ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0ET_SF_SF_T0_.exit.i"

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ev = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5vcpkg31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EclINS_17__normal_iteratorIPNS2_17InstallPlanActionESt6vectorISC_SaISC_EEEEEEbT_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr %.sroa.025.0.lcssa.i.i.i.i.i)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.x
  br i1 %i.ev, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %.noexc44
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i, i64 440
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i = phi ptr [ %i.ew, %bb.y ], [ %.sroa.025.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ex = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5vcpkg31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EclINS_17__normal_iteratorIPNS2_17InstallPlanActionESt6vectorISC_SaISC_EEEEEEbT_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr %.sroa.025.1.i.i.i.i.i)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.z
  br i1 %i.ex, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %.noexc45
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i, i64 440
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i = phi ptr [ %i.ey, %bb.aa ], [ %.sroa.025.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ez = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5vcpkg31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EclINS_17__normal_iteratorIPNS2_17InstallPlanActionESt6vectorISC_SaISC_EEEEEEbT_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr %.sroa.025.2.i.i.i.i.i)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ab
  %spec.select.i.i.i.i.i = select i1 %i.ez, ptr %.sroa.025.2.i.i.i.i.i, ptr %i.ed
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i": ; preds = %.noexc43, %.noexc42, %.noexc41, %.noexc40, %.noexc46, %.noexc45, %.noexc44
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i, %.noexc45 ], [ %spec.select.i.i.i.i.i, %.noexc46 ], [ %.sroa.025.0.lcssa.i.i.i.i.i, %.noexc44 ], [ %i.ep, %.noexc43 ], [ %.sroa.025.035.i.i.i.i.i, %.noexc40 ], [ %i.el, %.noexc41 ], [ %i.en, %.noexc42 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fa = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %i.ed
  %.sroa.06.017.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 440 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %.sroa.06.017.i.i.i, %i.ed
  %or.cond.i.i.i = select i1 %i.fa, i1 true, i1 %.not18.i.i.i
  br i1 %or.cond.i.i.i, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0ET_SF_SF_T0_.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i", %bb.ad
  %.sroa.06.020.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ad ], [ %.sroa.06.017.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i" ] ; 3 uses
  %.sroa.012.019.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %bb.ad ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i" ] ; 3 uses
  %i.fb = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5vcpkg31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EclINS_17__normal_iteratorIPNS2_17InstallPlanActionESt6vectorISC_SaISC_EEEEEEbT_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %4, ptr nonnull %.sroa.06.020.i.i.i)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %.lr.ph.i.i.i
  br i1 %i.fb, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.noexc47
  %i.fc = call noundef nonnull align 8 dereferenceable(440) ptr @_ZN5vcpkg17InstallPlanActionaSEOS0_(ptr noundef nonnull align 8 dereferenceable(440) %.sroa.012.019.i.i.i, ptr noundef nonnull align 8 dereferenceable(440) %.sroa.06.020.i.i.i) #22 ; 0 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i.i.i, i64 440
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.noexc47
  %.sroa.012.1.i.i.i = phi ptr [ %.sroa.012.019.i.i.i, %.noexc47 ], [ %i.fd, %bb.ac ] ; 2 uses
  %.sroa.06.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.020.i.i.i, i64 440 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, %i.ed
  br i1 %.not.i.i.i, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0ET_SF_SF_T0_.exit.i", label %.lr.ph.i.i.i, !llvm.loop !301

"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0ET_SF_SF_T0_.exit.i": ; preds = %bb.ad, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.thread.i.i.i"
  %.sroa.012.2.i.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.i.i.i" ], [ %i.ed, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0EEET_SI_SI_T0_.exit.thread.i.i.i" ], [ %.sroa.012.1.i.i.i, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fe = load ptr, ptr %i.i, align 8, !tbaa !63  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %.sroa.012.2.i.i.i, %i.fe
  br i1 %.not.i.i6.i, label %bb.ag, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0ET_SF_SF_T0_.exit.i"
  %i.ff = load ptr, ptr %i.g, align 8, !tbaa !63  ; 2 uses
  %i.fg = ptrtoint ptr %.sroa.012.2.i.i.i to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 %i.fi ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i ], [ %i.fj, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i ] ; 2 uses
  call void @_ZN5vcpkg17InstallPlanActionD2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %.05.i.i.i.i.i.i) #22
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 440 ; 2 uses
  %.not.i.i.i.i.i.i38 = icmp eq ptr %i.fk, %i.fe
  br i1 %.not.i.i.i.i.i.i38, label %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.fj, ptr %i.i, align 8, !tbaa !126
  br label %bb.ag

bb.ae:                                            ; preds = %._crit_edge86
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.loopexit.split-lp

.lr.ph89:                                         ; preds = %_ZN5vcpkg10RemovePlanD2Ev.exit, %bb.af
  %.sroa.053.088 = phi ptr [ %i.fp, %bb.af ], [ %i.ea, %_ZN5vcpkg10RemovePlanD2Ev.exit ] ; 2 uses
  %i.fm = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.053.088)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc48:                                         ; preds = %.lr.ph89
  %i.fn = extractvalue { ptr, ptr } %i.fm, 0
  %i.fo = extractvalue { ptr, ptr } %i.fm, 1
  invoke void @_ZNSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS1_ES9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %i.fn, ptr %i.fo)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %.noexc48
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.053.088, i64 48 ; 2 uses
  %.not67 = icmp eq ptr %i.fp, %i.eb
  br i1 %.not67, label %._crit_edge90, label %.lr.ph89

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph89, %.noexc48, %.lr.ph.i.i.i, %bb.v, %bb.u, %bb.t, %.lr.ph.i.i.i.i.i39, %.noexc.i.i.i, %bb.n, %bb.o, %bb.ab, %bb.z, %bb.x
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17InstallPlanActionESt6vectorIS3_SaIS3_EEEEZNS2_31adjust_action_plan_to_status_dbERNS2_10ActionPlanERKNS2_16StatusParagraphsEE3$_0ET_SF_SF_T0_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fq = load ptr, ptr %8, align 8, !tbaa !127   ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !116 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fq, %i.fs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i50

.lr.ph.i.i.i50:                                   ; preds = %bb.ag, %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fy, %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i ], [ %i.fq, %bb.ag ] ; 3 uses
  %i.ft = load ptr, ptr %.05.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i50
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !44
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #23
  br label %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.fy, %i.fs
  br i1 %.not.i.i.i51, label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i50, !llvm.loop !7

_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !127
  br label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ag
  %i.fz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.fq, %bb.ag ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !117
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.fz to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.ge) #23
  br label %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit

_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !102
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.gf)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #24
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.fl, %bb.ae ], [ %lpad.loopexit.split-lp165, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3setIN5vcpkg11PackageSpecESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #22
  call void @_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %bb.d
  %.pn32 = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %.pn.pn, %.loopexit.split-lp ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn32
}

declare void @_ZN5vcpkg18create_remove_planERKSt6vectorINS_11PackageSpecESaIS1_EERKNS_16StatusParagraphsE(ptr dead_on_unwind writable sret(%"struct.vcpkg::RemovePlan") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setIN5vcpkg11PackageSpecESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  invoke void @_ZNSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !42 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !44
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i

_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !127
  br label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt12_Vector_baseIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable
end_hunk_0
begin_hunk_1_@_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8value_orIRA1_KcEES6_OT_:bb.a
  store i64 %i.o, ptr %i.p, align 8, !tbaa !43
  %i.q = load ptr, ptr %0, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !96
  %i.t = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.t, ptr %i.a, align 8, !tbaa !65
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %bb.e
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !42
  %i.w = load i64, ptr %i.a, align 8, !tbaa !65
  store i64 %i.w, ptr %i.s, align 8, !tbaa !44
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc.i9, %bb.e
  %i.x = phi ptr [ %i.v, %.noexc.i9 ], [ %i.s, %bb.e ] ; 2 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i8
  %i.y = load i8, ptr %2, align 1, !tbaa !44
  store i8 %i.y, ptr %i.x, align 1, !tbaa !44
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %2, i64 %i.t, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i8, %bb.f, %bb.g
  %i.z = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !43
  %i.ab = load ptr, ptr %0, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.h
  ret void
}

declare void @_ZNK5vcpkg10Filesystem14write_contentsERKNS_4PathENS_10StringViewENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr noundef byval(%"struct.vcpkg::LineInfo") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg3msg7printlnIJNS0_6path_tEEJNS_10StringViewEEEEvNS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS5_E4typeET0_EE(i64 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.446", align 16 ; 8 uses
  %4 = alloca %"struct.vcpkg::msg::TagArg", align 8 ; 5 uses
  %5 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %1, ptr %4, align 8, !noalias !333
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8, !noalias !333
  %i.b = load ptr, ptr @_ZN5vcpkg3msg6path_t4nameE, align 8, !tbaa !52, !noalias !333
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !334
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.c, ptr %3, align 16, !tbaa !159, !noalias !334
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !160, !noalias !334
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %4, ptr %i.e, align 16, !tbaa !44, !noalias !334
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.f, align 8, !tbaa !44, !noalias !334
  store ptr %i.b, ptr %i.c, align 16, !tbaa !64, !noalias !334
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !161, !noalias !334
  call void @_ZN5vcpkg3msg6detail23format_message_by_indexEmN3fmt3v1217basic_format_argsINS3_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %5, i64 noundef %0, i64 4611686018427387919, ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !334
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.g = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #22 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.h, i64 %i.i)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.87, i64 1)
          to label %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit unwind label %bb.b

_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit: ; preds = %.noexc
  %i.j = load ptr, ptr %5, align 8, !tbaa !42     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !44
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %_ZN5vcpkg3msg7printlnERKNS_15LocalizedStringE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !42     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN5vcpkg15LocalizedStringD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.b
  %i.s = load i64, ptr %i.q, align 8, !tbaa !44
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #23
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit8

_ZN5vcpkg15LocalizedStringD2Ev.exit8:             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.o
}

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks12exit_successERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare void @_ZNK5vcpkg10VcpkgPaths14flush_lockfileEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #2

declare void @_ZN5vcpkg18track_install_planERKNS_10ActionPlanE(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

declare void @_ZN5vcpkg11BinaryCacheC1ERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef zeroext i1 @_ZN5vcpkg11BinaryCache17install_providersERNS_17DiagnosticContextERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks9exit_failERKNS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5vcpkg4Util4fmapIRSt6vectorINS_17InstallPlanActionESaIS3_EEZNS_33command_set_installed_and_exit_exERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESD_RKNS_19BuildPackageOptionsERKNS_9CMakeVars16CMakeVarProviderERKNS_27InstallAndBuildDatabaseLockENS_10ActionPlanENS_6DryRunENS_10PrintUsageERKNS_8OptionalINS_4PathEEEbbE3$_0TnNSt9enable_ifIXoosr3stdE21is_lvalue_reference_vIT_Esr3stdE10is_const_vISY_EEiE4typeELi0EEES2_INSt5decayIDTclclsr3stdE7declvalIRT0_EEdecldtclsr3stdE7declvalISY_EE5beginEEEE4typeESaIS16_EEOSY_OS12_"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !155    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 440                 ; 3 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not20 = icmp eq ptr %i.b, %i.c
  br i1 %.not20, label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc10:                                         ; preds = %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !151
  store ptr %i.k, ptr %i.l, align 8, !tbaa !152
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.g ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !154
  %.pre = load ptr, ptr %1, align 8, !tbaa !63
  %.pre9 = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit: ; preds = %.noexc10, %bb.c
  %.promoted7 = phi ptr [ %i.m, %.noexc10 ], [ null, %bb.c ]
  %.promoted = phi ptr [ %i.k, %.noexc10 ], [ null, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %.pre9, %.noexc10 ], [ %i.b, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre, %.noexc10 ], [ %i.c, %bb.c ] ; 2 uses
  %.not5 = icmp eq ptr %i.o, %i.n
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE7reserveEm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 7 uses
  %i.r = phi ptr [ %.promoted7, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 5 uses
  %i.s = phi ptr [ %.promoted, %.lr.ph ], [ %i.al, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 4 uses
  %.sroa.02.06 = phi ptr [ %i.o, %.lr.ph ], [ %i.am, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.sroa.02.06, ptr %i.s, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.p, align 8, !tbaa !152
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 5 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #25
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.w ; 2 uses
  store ptr %.sroa.02.06, ptr %i.af, align 8, !tbaa !63
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.h, label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.h:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %i.q, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.h, %.noexc12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %2 = ptrtoint ptr %i.r to i64
  %3 = sub i64 %2, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %3) #23
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ae, ptr %0, align 8, !tbaa !151
  store ptr %i.ah, ptr %i.p, align 8, !tbaa !152
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac ; 2 uses
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !154
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.e
  %i.aj = phi ptr [ %i.ae, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.q, %bb.e ]
  %i.ak = phi ptr [ %i.ai, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.r, %bb.e ]
  %i.al = phi ptr [ %i.ah, %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.t, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 440 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.n
  br i1 %.not, label %._crit_edge, label %bb.d

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.b, %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i, %bb.g
  %i.an = phi ptr [ null, %bb.b ], [ null, %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.r, %bb.g ]
  %i.ao = phi ptr [ null, %bb.b ], [ null, %_ZNSt12_Vector_baseIPKN5vcpkg17InstallPlanActionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.q, %bb.g ]
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.ap = phi ptr [ %i.r, %.loopexit.split-lp.loopexit ], [ %i.an, %.loopexit.split-lp.loopexit.split-lp ]
  %i.aq = phi ptr [ %i.q, %.loopexit.split-lp.loopexit ], [ %i.ao, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp8, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #23
  br label %_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5vcpkg17InstallPlanActionESaIS3_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.j
  resume { ptr, i32 } %lpad.phi
}

declare void @_ZN5vcpkg19ReadOnlyBinaryCache8precheckERNS_17DiagnosticContextERKNS_10FilesystemENS_4SpanIKPKNS_17InstallPlanActionEEE(ptr dead_on_unwind writable sret(%"class.std::vector.227") align 8, ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZN5vcpkg4Util6all_ofIRSt6vectorINS_17CacheAvailabilityESaIS3_EEZNS_33command_set_installed_and_exit_exERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletESD_RKNS_19BuildPackageOptionsERKNS_9CMakeVars16CMakeVarProviderERKNS_27InstallAndBuildDatabaseLockENS_10ActionPlanENS_6DryRunENS_10PrintUsageERKNS_8OptionalINS_4PathEEEbbE3$_1EEbOT_T0_"(ptr %.0.val, ptr %.8.val) unnamed_addr #9 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.f = and i64 %i.c, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.val, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.051.i.i.i.i = phi i64 [ %i.o, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.025.050.i.i.i.i = phi ptr [ %i.n, %bb.e ], [ %.0.val, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.g = load i8, ptr %.sroa.025.050.i.i.i.i, align 1, !tbaa !337
  %.not36.i.i.i.i = icmp eq i8 %i.g, 2
  br i1 %.not36.i.i.i.i, label %bb.b, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !337
  %.not37.i.i.i.i = icmp eq i8 %i.i, 2
  br i1 %.not37.i.i.i.i, label %bb.c, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit"

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !337
  %.not38.i.i.i.i = icmp eq i8 %i.k, 2
  br i1 %.not38.i.i.i.i, label %bb.d, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit13"

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !337
  %.not39.i.i.i.i = icmp eq i8 %i.m, 2
  br i1 %.not39.i.i.i.i, label %bb.e, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit15"

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i, i64 4
  %i.o = add nsw i64 %.051.i.i.i.i, -1
  %i.p = icmp sgt i64 %.051.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !335

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %bb.a ]
  %.sroa.025.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.0.val, %bb.a ] ; 5 uses
  %i.q = sub i64 %i.a, %.pre-phi.i.i.i.i
  switch i64 %i.q, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %.sroa.025.0.lcssa.i.i.i.i, align 1, !tbaa !337
  %.not.i.i.i.i = icmp eq i8 %i.r, 2
  br i1 %.not.i.i.i.i, label %bb.g, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit"

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.sroa.025.1.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.025.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.t = load i8, ptr %.sroa.025.1.i.i.i.i, align 1, !tbaa !337
  %.not34.i.i.i.i = icmp eq i8 %i.t, 2
  br i1 %.not34.i.i.i.i, label %bb.i, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit"

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.025.2.i.i.i.i = phi ptr [ %i.u, %bb.i ], [ %.sroa.025.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.v = load i8, ptr %.sroa.025.2.i.i.i.i, align 1, !tbaa !337
  %.not35.i.i.i.i = icmp eq i8 %i.v, 2
  %spec.select.i.i.i.i = select i1 %.not35.i.i.i.i, ptr %.8.val, ptr %.sroa.025.2.i.i.i.i
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i, i64 1
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit13": ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i, i64 2
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit15": ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.050.i.i.i.i, i64 3
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit13", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit15", %._crit_edge.i.i.i.i, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i, %bb.j ], [ %.8.val, %._crit_edge.i.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i.i, %bb.f ], [ %i.y, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit15" ], [ %i.w, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit" ], [ %i.x, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPN5vcpkg17CacheAvailabilityESt6vectorIS3_SaIS3_EEEEZNS2_33command_set_installed_and_exit_exERKNS2_17VcpkgCmdArgumentsERKNS2_10VcpkgPathsENS2_7TripletESF_RKNS2_19BuildPackageOptionsERKNS2_9CMakeVars16CMakeVarProviderERKNS2_27InstallAndBuildDatabaseLockENS2_10ActionPlanENS2_6DryRunENS2_10PrintUsageERKNS2_8OptionalINS2_4PathEEEbbE3$_1EbT_SZ_T0_.exit.loopexit.split.loop.exit13" ], [ %.sroa.025.050.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.z = icmp eq ptr %.8.val, %.sroa.08.0.in.sroa.speculated.i.i.i.i
  ret i1 %i.z
}

declare void @_ZN5vcpkg30install_preclear_plan_packagesERKNS_10VcpkgPathsERKNS_10ActionPlanE(ptr noundef nonnull align 8 dereferenceable(400), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

declare void @_ZN5vcpkg19ReadOnlyBinaryCache5fetchERNS_17DiagnosticContextERKNS_10FilesystemENS_4SpanIKNS_17InstallPlanActionEEE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN5vcpkg20install_execute_planERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletERKNS_19BuildPackageOptionsERKNS_27InstallAndBuildDatabaseLockERKNS_10ActionPlanERNS_16StatusParagraphsERNS_11BinaryCacheERKNS_18IBuildLogsRecorderEb(ptr dead_on_unwind writable sret(%"struct.vcpkg::InstallSummary") align 8, ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr noundef nonnull align 4 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZNK5vcpkg14InstallSummary12print_failedEv(ptr noundef nonnull align 8 dereferenceable(137)) local_unnamed_addr #2

declare void @_ZN5vcpkg11BinaryCache32wait_for_async_complete_and_joinEv(ptr noundef nonnull align 8 dereferenceable(472)) local_unnamed_addr #2

declare void @_ZNK5vcpkg13LicenseReport20print_license_reportERKNS_3msg8MessageTIJEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZNK5vcpkg16StatusParagraphs14find_installedERKNS_11PackageSpecE(ptr dead_on_unwind writable sret(%"class.std::reverse_iterator") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN5vcpkg31install_print_usage_informationERKNS_15BinaryParagraphERSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_EERKNS_18ReadOnlyFilesystemERKNS_14InstalledPathsE(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef ptr @_ZNK5vcpkg10VcpkgPaths12get_manifestEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5vcpkg10VcpkgPaths15maybe_installedEv(ptr noundef nonnull align 8 dereferenceable(400)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg4Json5Value6stringINS_4PathETnNSt9enable_ifIXsr3stdE18is_constructible_vINS_10StringViewERKT_EEiE4typeELi0EEES1_S8_(ptr dead_on_unwind noalias writable sret(%"struct.vcpkg::Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = tail call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #22 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  store ptr %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = extractvalue { ptr, i64 } %i.a, 1
  store i64 %i.d, ptr %i.c, align 8
  invoke void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN5vcpkg4Json5Value6stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"struct.vcpkg::Json::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  %i.e = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !44
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
end_hunk_1
