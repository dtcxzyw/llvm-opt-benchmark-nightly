inline.NumInlined: 405
inline.NumDeleted: 234
begin_hunk_0_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a
bb.a:
  %0 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %1 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  %3 = alloca %"class.std::any", align 8          ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
end_hunk_0
begin_hunk_1_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a
  br i1 %i.l, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt5mutex4lockEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
end_hunk_1
begin_hunk_2_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12, !noalias !67 ; 3 uses
  store ptr %i.u, ptr %i.m, align 8, !tbaa !57, !alias.scope !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 8, !noalias !67
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.aa, %bb.j ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.y = cmpxchg weak ptr %i.v, i32 %.06.i.i.i.i.i.i.i, i32 %i.x acq_rel monotonic, align 8, !noalias !67 ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  br i1 %i.z, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.i, !llvm.loop !70

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i: ; preds = %bb.i
  store ptr null, ptr %i.m, align 8, !tbaa !57, !alias.scope !67
  br label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ab = load atomic i32, ptr %i.v monotonic, align 8, !noalias !67
  %.fr.i.i.i.i.i = freeze i32 %i.ab
  %.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %i.ac = load ptr, ptr %.sroa.026.032.i.i, align 8, !noalias !67 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i

_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKSt12__weak_countILS1_2EESt9nothrow_t.exit.i.i.i.i.i, %bb.g
  store ptr null, ptr %2, align 8, !tbaa !71, !alias.scope !67
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i

_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  store ptr %i.ac, ptr %2, align 8, !tbaa !71, !alias.scope !67
  %.not.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i1.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !73  ; 7 uses
end_hunk_2
begin_hunk_3_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a
  br i1 %.not.i14.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %4 = load ptr, ptr %i.m, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %4, ptr %i.af, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !73
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %.val26.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !76 ; 5 uses
end_hunk_3
begin_hunk_4_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a

.noexc16.i.i:                                     ; preds = %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al ; 3 uses
  %5 = load ptr, ptr %i.m, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %i.av, align 8, !tbaa !71
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %5, ptr %i.aw, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br i1 %i.ao, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i
end_hunk_4
begin_hunk_5_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a
  store ptr %i.ca, ptr %i.o, align 8, !tbaa !73
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.as
  store ptr %i.ce, ptr %i.p, align 8, !tbaa !75
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %common.resume.i

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE17_M_realloc_insertIJSt10shared_ptrINS1_13AtForkHandlerEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.l, %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i, %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i
  %6 = load ptr, ptr %i.m, align 8, !tbaa !57     ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.thread52.i.i

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.thread52.i.i: ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %7 acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.thread52.i.i
  store i32 0, ptr %7, align 8, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !60
  %i.cj = load ptr, ptr %6, align 8, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %6) #18, !inline_history !87
  %i.cm = load ptr, ptr %6, align 8, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %6) #18, !inline_history !87
  br label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.ab:                                            ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.thread52.i.i
end_hunk_6
begin_hunk_7_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a

bb.ac:                                            ; preds = %bb.ab
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %7, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cr = atomicrmw volatile add ptr %7, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
end_hunk_7
begin_hunk_8_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv":bb.a
  br i1 %i.cs, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !62

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #18, !inline_history !64
  br label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aa, %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i.i, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.k
end_hunk_8
