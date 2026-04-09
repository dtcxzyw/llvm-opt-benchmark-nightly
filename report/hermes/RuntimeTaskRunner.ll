inline.NumInlined: 203
inline.NumDeleted: 112
begin_hunk_0_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNKSt8functionIFvS_IFvRN8facebook6hermes13HermesRuntimeEEEEEclES5_.exit unwind label %bb.bc

_ZNKSt8functionIFvS_IFvRN8facebook6hermes13HermesRuntimeEEEEEclES5_.exit: ; preds = %bb.m
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !10 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #18, !inline_history !40
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #18, !inline_history !40
  br label %"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_0D2Ev.exit"

bb.t:                                             ; preds = %bb.r
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %bb.u ], [ %i.bg, %bb.v ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bh, label %bb.w, label %"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_0D2Ev.exit", !prof !41

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #18
end_hunk_2
begin_hunk_3_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #18, !inline_history !42
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #18, !inline_history !42
  br label %_ZNSt14_Function_baseD2Ev.exit37

bb.aj:                                            ; preds = %bb.ah
end_hunk_3
begin_hunk_4_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ct, %bb.ak ], [ %i.dd, %bb.al ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.de, label %bb.am, label %_ZNSt14_Function_baseD2Ev.exit37, !prof !41

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #18
end_hunk_4
begin_hunk_5_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #18, !inline_history !43
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #18, !inline_history !43
  br label %"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_1D2Ev.exit"

bb.ar:                                            ; preds = %bb.ap
end_hunk_5
begin_hunk_6_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i43 = phi i32 [ %i.dn, %bb.as ], [ %i.dx, %bb.at ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i43, 1
  br i1 %i.dy, label %bb.au, label %"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_1D2Ev.exit", !prof !41

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i42
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #18
end_hunk_6
begin_hunk_7_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #18, !inline_history !44
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #18, !inline_history !44
  br label %_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ax:                                            ; preds = %bb.av
end_hunk_7
begin_hunk_8_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i = phi i32 [ %i.ed, %bb.ay ], [ %i.en, %bb.az ]
  %i.eo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.eo, label %bb.ba, label %_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #18
end_hunk_8
begin_hunk_9_@_ZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesE:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !38
  invoke void %i.fu(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNKSt8functionIFvS_IFvRN8facebook6hermes13HermesRuntimeEEEEEclES5_.exit57 unwind label %bb.by

_ZNKSt8functionIFvS_IFvRN8facebook6hermes13HermesRuntimeEEEEEclES5_.exit57: ; preds = %bb.bs
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !10 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !45
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !45
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_10
begin_hunk_11_@_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
end_hunk_11
begin_hunk_12_@"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_0D2Ev":bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !44
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !44
  br label %_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
end_hunk_12
begin_hunk_13_@"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_0D2Ev":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18
end_hunk_13
begin_hunk_14_@"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_1D2Ev":bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !44
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18, !inline_history !44
  br label %_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
end_hunk_14
begin_hunk_15_@"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_1D2Ev":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #18
end_hunk_15
begin_hunk_16_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_16
begin_hunk_17_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !46
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_17
begin_hunk_18_@_ZNSt23_Sp_counted_ptr_inplaceIbSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_18
begin_hunk_19_@"_ZNSt17_Function_handlerIFvRN8facebook6hermes13HermesRuntimeEEZNS1_8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIS4_ENS5_10TaskQueuesEE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !33  ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27, !range !50, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %"_ZSt10__invoke_rIvRZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS1_13HermesRuntimeEEENS2_10TaskQueuesEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", label %bb.b

end_hunk_19
begin_hunk_20_@"_ZNSt17_Function_handlerIFvRN8facebook6hermes13HermesRuntimeEEZNS1_8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIS4_ENS5_10TaskQueuesEE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !52
  br label %"_ZSt10__invoke_rIvRZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS1_13HermesRuntimeEEENS2_10TaskQueuesEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZSt10__invoke_rIvRZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS1_13HermesRuntimeEEENS2_10TaskQueuesEE3$_0JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %bb.a, %_ZNKSt8functionIFvRN8facebook6hermes13HermesRuntimeEEEclES3_.exit.i.i.i
end_hunk_20
begin_hunk_21_@"_ZNSt17_Function_handlerIFvRN8facebook6hermes13HermesRuntimeEEZNS1_8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIS4_ENS5_10TaskQueuesEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEE3$_0", ptr %0, align 8, !tbaa !53
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS2_13HermesRuntimeEEENS3_10TaskQueuesEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
end_hunk_21
begin_hunk_22_@"_ZNSt17_Function_handlerIFvRN8facebook6hermes13HermesRuntimeEEZNS1_8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIS4_ENS5_10TaskQueuesEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18, !inline_history !55
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18, !inline_history !55
  br label %"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_0D2Ev.exit.i.i"

bb.t:                                             ; preds = %bb.r
end_hunk_22
begin_hunk_23_@"_ZNSt17_Function_handlerIFvRN8facebook6hermes13HermesRuntimeEEZNS1_8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIS4_ENS5_10TaskQueuesEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.u ], [ %i.ar, %bb.v ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.w, label %"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_0D2Ev.exit.i.i", !prof !41

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #18
end_hunk_23
begin_hunk_24_@"_ZNSt17_Function_handlerIFvRN8facebook6hermes13HermesRuntimeEEZNS1_8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIS4_ENS5_10TaskQueuesEE3$_2E9_M_invokeERKSt9_Any_dataS3_":bb.a
"_ZSt10__invoke_rIvRZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS1_13HermesRuntimeEEENS2_10TaskQueuesEE3$_2JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !56
  ret void
}

end_hunk_24
begin_hunk_25_@"_ZNSt17_Function_handlerIFvRN8facebook6hermes13HermesRuntimeEEZNS1_8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIS4_ENS5_10TaskQueuesEE3$_2E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation":bb.a
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEE3$_2", ptr %0, align 8, !tbaa !53
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS2_13HermesRuntimeEEENS3_10TaskQueuesEE3$_2E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
end_hunk_25
begin_hunk_26_@llvm.experimental.noalias.scope.decl
!37 = !{i64 0, i64 16, !16}
!38 = !{!39, !9, i64 24}
!39 = !{!"_ZTSSt8functionIFvS_IFvRN8facebook6hermes13HermesRuntimeEEEEE", !11, i64 0, !9, i64 24}
!40 = distinct !{ptr @"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_0D2Ev", ptr @_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = distinct !{null, null, null, ptr @"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_1D2Ev", ptr @_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!43 = distinct !{ptr @"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_1D2Ev", ptr @_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!44 = distinct !{ptr @_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!45 = distinct !{null, null}
!46 = distinct !{null}
!47 = !{!48, !49, i64 8}
!48 = !{!"_ZTSSt9type_info", !49, i64 8}
!49 = !{!"p1 omnipotent char", !9, i64 0}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = distinct !{null, null, null, null}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTSSt9type_info", !9, i64 0}
!55 = distinct !{null, null, ptr @"_ZZN8facebook6hermes8debugger17RuntimeTaskRunner11enqueueTaskESt8functionIFvRNS0_13HermesRuntimeEEENS1_10TaskQueuesEEN3$_0D2Ev", ptr @_ZNSt12__shared_ptrIbLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!56 = distinct !{null, null, null, null}
end_hunk_26
