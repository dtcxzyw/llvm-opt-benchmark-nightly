inline.NumInlined: 405
inline.NumDeleted: 234
begin_hunk_0_@_ZN5arrow8internal14RegisterAtForkESt8weak_ptrINS0_13AtForkHandlerEE:bb.a

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, %bb.j
  %.067.i.i.i.i.i.i = phi i64 [ %i.al, %bb.j ], [ %i.s, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ] ; 2 uses
  %.sroa.036.066.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.j ], [ %i.m, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ] ; 13 uses
  %i.u = getelementptr i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal14RegisterAtForkESt8weak_ptrINS0_13AtForkHandlerEE:bb.a

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %.pre-phi76.i.i.i.i.i.i = phi i64 [ %.pre75.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.r, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ]
  %.sroa.036.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ak, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.m, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ] ; 6 uses
  %i.an = ashr exact i64 %.pre-phi76.i.i.i.i.i.i, 4
  switch i64 %i.an, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i [
    i64 3, label %bb.k
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal14RegisterAtForkESt8weak_ptrINS0_13AtForkHandlerEE:bb.a
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ao = getelementptr i8, ptr %.sroa.036.0.lcssa.i.i.i.i.i.i, i64 8
  %.val.i25.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i26.i.i.i.i.i.i = icmp eq ptr %.val.i25.i.i.i.i.i.i, null
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal14RegisterAtForkESt8weak_ptrINS0_13AtForkHandlerEE:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i
  %.sroa.036.1.i.i.i.i.i.i = phi ptr [ %i.as, %bb.l ], [ %.sroa.036.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 4 uses
  %i.at = getelementptr i8, ptr %.sroa.036.1.i.i.i.i.i.i, i64 8
  %.val.i28.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i29.i.i.i.i.i.i = icmp eq ptr %.val.i28.i.i.i.i.i.i, null
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal14RegisterAtForkESt8weak_ptrINS0_13AtForkHandlerEE:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i
  %.sroa.036.2.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.n ], [ %.sroa.036.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ay = getelementptr i8, ptr %.sroa.036.2.i.i.i.i.i.i, i64 8
  %.val.i31.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i32.i.i.i.i.i.i = icmp eq ptr %.val.i31.i.i.i.i.i.i, null
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal14RegisterAtForkESt8weak_ptrINS0_13AtForkHandlerEE:bb.a
  br i1 %or.cond.i.i.i.i, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i
  %.sroa.07.028.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i ], [ %.sroa.07.025.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ] ; 4 uses
  %.sroa.013.027.i.i.i.i = phi ptr [ %.sroa.013.1.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ] ; 5 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn26.i.i.i.i = phi ptr [ %.sroa.07.028.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ]
  %i.bk = getelementptr i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn26.i.i.i.i, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !12 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal14RegisterAtForkESt8weak_ptrINS0_13AtForkHandlerEE:bb.a
  br i1 %i.bn, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i
  %i.bo = load ptr, ptr %.sroa.07.028.i.i.i.i, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.028.i.i.i.i, i8 0, i64 16, i1 false)
  store ptr %i.bo, ptr %.sroa.013.027.i.i.i.i, align 8, !tbaa !23
end_hunk_6
begin_hunk_7_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a
  br i1 %i.s, label %"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENKUlvE_clEv.exit", label %.lr.ph35.i.i

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %.lr.ph.i.i
  %.sroa.026.032.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.cu, %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i.i, i64 8
end_hunk_7
begin_hunk_8_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a
  br i1 %i.cv, label %._crit_edge.i.i, label %bb.g

.lr.ph35.i.i:                                     ; preds = %._crit_edge.i.i, %bb.ar
  %.sroa.024.033.i.i = phi ptr [ %i.dp, %bb.ar ], [ %.val10.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cw = load ptr, ptr %.sroa.024.033.i.i, align 8, !tbaa !71 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !88
end_hunk_8
