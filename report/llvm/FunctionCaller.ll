Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FunctionCaller?download=true
begin_hunk_0_@_ZNSt8weak_ptrIN12lldb_private6ModuleEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS2_E4typeESE_:bb.a
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !74
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !74
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !72   ; 4 uses
  %.not6.i.i = icmp eq ptr %i.j, null
  br i1 %.not6.i.i, label %_ZNSt10__weak_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EEaSIS1_EENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeERKSt12__shared_ptrIS7_LS3_2EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i7.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i7.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.k, align 4, !tbaa !74   ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.o = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.o, %bb.g ]
  %i.p = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.p, label %bb.h, label %_ZNSt10__weak_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EEaSIS1_EENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeERKSt12__shared_ptrIS7_LS3_2EE.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #19, !inline_history !147
  br label %_ZNSt10__weak_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EEaSIS1_EENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeERKSt12__shared_ptrIS7_LS3_2EE.exit

_ZNSt10__weak_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EEaSIS1_EENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeERKSt12__shared_ptrIS7_LS3_2EE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  store ptr %i.d, ptr %i.c, align 8, !tbaa !72
  ret ptr %0
}

declare void @_ZN12lldb_private10ModuleList6AppendERKSt10shared_ptrINS_6ModuleEEb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt8weak_ptrIN12lldb_private7ProcessEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt10__weak_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKSt10shared_ptrIT_EEE5valueERS2_E4typeESE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !145
  store ptr %i.a, ptr %0, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !90   ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !74
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !74
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !72   ; 4 uses
  %.not6.i.i = icmp eq ptr %i.j, null
  br i1 %.not6.i.i, label %_ZNSt10__weak_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EEaSIS1_EENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeERKSt12__shared_ptrIS7_LS3_2EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i7.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i7.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.k, align 4, !tbaa !74   ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.o = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.o, %bb.g ]
  %i.p = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.p, label %bb.h, label %_ZNSt10__weak_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EEaSIS1_EENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeERKSt12__shared_ptrIS7_LS3_2EE.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #19, !inline_history !148
  br label %_ZNSt10__weak_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EEaSIS1_EENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeERKSt12__shared_ptrIS7_LS3_2EE.exit

_ZNSt10__weak_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EEaSIS1_EENSt9enable_ifIXsr20__sp_compatible_withIPT_PS1_EE5valueERS4_E4typeERKSt12__shared_ptrIS7_LS3_2EE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  store ptr %i.d, ptr %i.c, align 8, !tbaa !72
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private14FunctionCaller22WriteFunctionArgumentsERNS_16ExecutionContextERmRNS_17DiagnosticManagerE(ptr noundef nonnull align 8 dereferenceable(386) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = tail call noundef zeroext i1 @_ZN12lldb_private14FunctionCaller22WriteFunctionArgumentsERNS_16ExecutionContextERmRNS_9ValueListERNS_17DiagnosticManagerE(ptr noundef nonnull align 8 dereferenceable(386) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %3)
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private14FunctionCaller22WriteFunctionArgumentsERNS_16ExecutionContextERmRNS_9ValueListERNS_17DiagnosticManagerE(ptr noundef nonnull align 8 dereferenceable(386) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %6 = alloca %"class.lldb_private::Status", align 8 ; 7 uses
  %7 = alloca %"class.lldb_private::Scalar", align 8 ; 8 uses
  %8 = alloca %"class.lldb_private::Status", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i8, ptr %i.a, align 8, !tbaa !80, !range !133, !noundef !111
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12lldb_private17DiagnosticManager9PutStringEN4lldb8SeverityEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef 0, ptr nonnull @.str.9, i64 80) #19
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #19
  %i.d = call noundef ptr @_ZNK12lldb_private16ExecutionContext13GetProcessPtrEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #19 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72, !noalias !149 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 8, !noalias !149
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.06.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.n, %bb.g ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %.06.i.i.i.i.i, 1
  %i.l = cmpxchg weak ptr %i.i, i32 %.06.i.i.i.i.i, i32 %i.k acq_rel monotonic, align 8, !noalias !149 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  %i.n = extractvalue { i32, i1 } %i.l, 0
  br i1 %i.m, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.f, !llvm.loop !100

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.g
  %i.o = load atomic i32, ptr %i.i monotonic, align 8, !noalias !149
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread, label %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit

_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !101, !noalias !149
  %i.q = icmp eq ptr %i.d, %i.p
  br i1 %i.q, label %bb.h, label %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread

bb.h:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit
  %i.r = load i64, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.u = load i64, ptr %i.t, align 8, !tbaa !152
  %i.v = call noundef i64 @_ZN12lldb_private7Process14AllocateMemoryEmjRNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224) %i.d, i64 noundef %i.u, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(40) %6) #19 ; 3 uses
  store i64 %i.v, ptr %2, align 8, !tbaa !14
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.y = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.v, ptr %i.z, align 8, !tbaa !14
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !153
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !153
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not5.i.i.i.i, label %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.sroa.03.06.i.i.i.i = phi ptr [ %i.ai, %bb.l ], [ %i.ae, %bb.k ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !14
  %i.ah = icmp eq i64 %i.ag, %i.r
  br i1 %i.ah, label %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = load ptr, ptr %.sroa.03.06.i.i.i.i, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i.i.i49, label %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread, label %.lr.ph.i.i.i.i, !llvm.loop !154

_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i
  %.not64 = icmp eq ptr %.sroa.03.06.i.i.i.i, %i.ad
  br i1 %.not64, label %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = call noundef ptr @_ZNK12lldb_private16ExecutionContext12GetTargetPtrEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #19
  %i.al = call noundef i64 @_ZNK12lldb_private7Address22GetCallableLoadAddressEPNS_6TargetEb(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef %i.ak, i1 noundef zeroext false) #19
  store i32 1, ptr %7, align 8, !tbaa !155
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i32 64, ptr %i.an, align 8, !tbaa !161, !alias.scope !162
  store i64 %i.al, ptr %i.am, align 8, !alias.scope !162
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 1, ptr %i.ao, align 4, !tbaa !165, !alias.scope !162
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24) %5, float noundef 0.000000e+00) #19
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE) #19
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !115
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !14
  %i.at = load i64, ptr %2, align 8, !tbaa !14
  %i.au = add i64 %i.at, %i.as
  %i.av = call noundef i32 @_ZNK12lldb_private7Process18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(3224) %i.d) #19
  %i.aw = zext i32 %i.av to i64
  %i.ax = call noundef i64 @_ZN12lldb_private7Process19WriteScalarToMemoryEmRKNS_6ScalarEmRNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224) %i.d, i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %6) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #19
  %i.ay = call noundef i64 @_ZN12lldb_private9ValueList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #19 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ba = call noundef i64 @_ZN12lldb_private9ValueList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az) #19
  %.not46 = icmp eq i64 %i.ay, %i.ba
  br i1 %.not46, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.m
  %.not4866 = icmp eq i64 %i.ay, 0
  br i1 %.not4866, label %.loopexit, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.bb = call noundef i64 @_ZN12lldb_private9ValueList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az) #19
  %i.bc = call noundef i64 (ptr, i32, ptr, ...) @_ZN12lldb_private17DiagnosticManager6PrintfEN4lldb8SeverityEPKcz(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef 0, ptr noundef nonnull @.str.10, i64 noundef %i.ay, i64 noundef %i.bb) #19 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %.04267 = phi i64 [ %i.bd, %bb.r ], [ 0, %.preheader ] ; 2 uses
  %i.bd = add nuw i64 %.04267, 1                  ; 3 uses
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !115
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !14
  %i.bh = call noundef ptr @_ZN12lldb_private9ValueList15GetValueAtIndexEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.04267) #19 ; 4 uses
  %i.bi = call noundef i32 @_ZNK12lldb_private5Value12GetValueTypeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.bh) #19
  %i.bj = icmp eq i32 %i.bi, 3
  br i1 %i.bj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 84
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !166
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN12lldb_private5Value15GetCompilerTypeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.bh) #19
  %i.bo = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType13IsPointerTypeEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef null) #19
  br i1 %i.bo, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.lr.ph
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private5Value12ResolveValueEPNS_16ExecutionContextEPNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, ptr noundef nonnull %1, ptr noundef null) #19 ; 2 uses
  %i.bq = load i64, ptr %2, align 8, !tbaa !14
  %i.br = add i64 %i.bq, %i.bg
  %i.bs = call noundef i64 @_ZNK12lldb_private6Scalar11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bp) #19
  %i.bt = call noundef i64 @_ZN12lldb_private7Process19WriteScalarToMemoryEmRKNS_6ScalarEmRNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224) %i.d, i64 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(48) %i.bp, i64 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %6) #19
  %.not47 = icmp eq i64 %i.bt, 0
  br i1 %.not47, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %exitcond.not = icmp eq i64 %i.bd, %i.ay
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !177

.loopexit:                                        ; preds = %bb.q, %bb.r, %.preheader, %bb.n
  %.4 = phi i1 [ false, %bb.n ], [ true, %.preheader ], [ false, %bb.q ], [ true, %bb.r ]
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ap) #19
  %i.bu = load i32, ptr %i.an, align 8, !tbaa !161
  %i.bv = icmp ugt i32 %i.bu, 64
  br i1 %i.bv, label %bb.s, label %_ZN12lldb_private6ScalarD2Ev.exit

bb.s:                                             ; preds = %.loopexit
  %i.bw = load ptr, ptr %i.am, align 8, !tbaa !18 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN12lldb_private6ScalarD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #22
  br label %_ZN12lldb_private6ScalarD2Ev.exit

_ZN12lldb_private6ScalarD2Ev.exit:                ; preds = %.loopexit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread

_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread: ; preds = %bb.l, %_ZN12lldb_private6ScalarD2Ev.exit, %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %bb.k, %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit, %bb.i
  %.587 = phi i1 [ false, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ], [ false, %bb.i ], [ false, %_ZNKSt8weak_ptrIN12lldb_private7ProcessEE4lockEv.exit ], [ false, %bb.k ], [ %.4, %_ZN12lldb_private6ScalarD2Ev.exit ], [ false, %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit ], [ false, %bb.l ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread
  store i32 0, ptr %i.by, align 8, !tbaa !92
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !94
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #19, !inline_history !95
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #19, !inline_history !95
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %_ZN4llvm12is_containedIRNSt7__cxx114listImSaImEEEmEEbOT_RKT0_.exit.thread.thread
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i50 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i50, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !74
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.cb, %bb.w ], [ %i.cl, %bb.x ]
  %i.cm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cm, label %bb.y, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #19
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.d, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u, %bb.c
  %.6 = phi i1 [ true, %bb.c ], [ %.587, %bb.y ], [ false, %bb.d ], [ %.587, %bb.u ], [ %.587, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ false, %bb.f ]
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %.7 = phi i1 [ %.6, %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.b ]
  ret i1 %.7
}

declare void @_ZN12lldb_private17DiagnosticManager9PutStringEN4lldb8SeverityEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr, i64) local_unnamed_addr #1

declare void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare noundef i64 @_ZN12lldb_private7Process14AllocateMemoryEmjRNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224), i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef i64 @_ZNK12lldb_private7Address22GetCallableLoadAddressEPNS_6TargetEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZNK12lldb_private16ExecutionContext12GetTargetPtrEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i64 @_ZN12lldb_private7Process19WriteScalarToMemoryEmRKNS_6ScalarEmRNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224), i64 noundef, ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef i32 @_ZNK12lldb_private7Process18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(3224)) local_unnamed_addr #1

declare noundef i64 @_ZN12lldb_private9ValueList7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1
end_hunk_0
