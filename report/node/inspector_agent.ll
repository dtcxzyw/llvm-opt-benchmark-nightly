Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/inspector_agent?download=true
inline.NumInlined: 4348
inline.NumDeleted: 2349
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4node9inspector5Agent25GetNetworkResourceManagerEv:bb.a
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #28, !inline_history !481
  %i.as = load ptr, ptr %i.ai, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #28, !inline_history !481
  br label %_ZNSt12__shared_ptrIN4node9inspector22NetworkResourceManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.av = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i3 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.p ], [ %i.ax, %bb.q ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.r, label %_ZNSt12__shared_ptrIN4node9inspector22NetworkResourceManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !265

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #28
  br label %_ZNSt12__shared_ptrIN4node9inspector22NetworkResourceManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node9inspector22NetworkResourceManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  %.pr = load ptr, ptr %i.ah, align 8             ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.l, align 8
  store <2 x ptr> %i.az, ptr %0, align 8
  %.not.i.i.i5 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i5, label %_ZN4node9inspector21ParentInspectorHandle25GetNetworkResourceManagerEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN4node9inspector22NetworkResourceManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, %_ZNSt12__shared_ptrIN4node9inspector22NetworkResourceManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ba = phi ptr [ %i.v, %_ZNSt12__shared_ptrIN4node9inspector22NetworkResourceManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread ], [ %.pr, %_ZNSt12__shared_ptrIN4node9inspector22NetworkResourceManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bc = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i6 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %i.bb, align 4
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bb, align 4
  br label %_ZN4node9inspector21ParentInspectorHandle25GetNetworkResourceManagerEv.exit

bb.u:                                             ; preds = %bb.s
  %i.bf = atomicrmw volatile add ptr %i.bb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4node9inspector21ParentInspectorHandle25GetNetworkResourceManagerEv.exit

_ZN4node9inspector21ParentInspectorHandle25GetNetworkResourceManagerEv.exit: ; preds = %bb.u, %bb.t, %_ZNSt12__shared_ptrIN4node9inspector22NetworkResourceManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %bb.i, %bb.g, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector5Agent14WaitForConnectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 !guid !486 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i64 14, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.61, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1552
  %i.d = load i8, ptr %i.c, align 8, !range !267, !noundef !269
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread, !prof !265

_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.c

_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1496
  %i.g = call noundef zeroext i1 @_ZNK4node10permission10Permission16is_scope_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull %i.a, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %i.g, label %bb.c, label %bb.b, !prof !270

bb.b:                                             ; preds = %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i64 14, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.61, ptr %i.h, align 8
  call void @_ZN4node10permission10Permission17ThrowAccessDeniedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull %i.a, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1553
  %i.j = load i8, ptr %i.i, align 1, !range !267, !noundef !269
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.b, %_ZNK4node10permission10Permission10is_grantedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2312
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 512
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZNK4node11Environment23should_create_inspectorEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1944
  %i.r = load ptr, ptr %i.q, align 8              ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 609
  %i.t = load i8, ptr %i.s, align 1, !range !267, !noundef !269
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %_ZNK4node11Environment23should_create_inspectorEv.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 824
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %i.w, 7
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZNK4node11Environment23should_create_inspectorEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 816
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 1668248176
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 %i.ad, 1936942435
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZNK4node11Environment23should_create_inspectorEv.exit.thread, label %_ZNK4node11Environment23should_create_inspectorEv.exit

_ZNK4node11Environment23should_create_inspectorEv.exit: ; preds = %bb.d, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 1065
  %i.ak = load i8, ptr %i.aj, align 1, !range !267, !noundef !269
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK4node11Environment23should_create_inspectorEv.exit.thread, label %bb.g

_ZNK4node11Environment23should_create_inspectorEv.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZNK4node11Environment23should_create_inspectorEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZNK4node11Environment23should_create_inspectorEv.exit.thread
  call fastcc void @_ZN4node9inspector12_GLOBAL__N_132ThrowUninitializedInspectorErrorEPNS_11EnvironmentE(ptr noundef nonnull %i.l)
  br label %bb.i

bb.g:                                             ; preds = %_ZNK4node11Environment23should_create_inspectorEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.h, label %.thread, !prof !271

bb.h:                                             ; preds = %bb.g
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9inspector5Agent14WaitForConnectEvE20error_and_abort_args) #28
  call void @abort() #29
  unreachable

.thread:                                          ; preds = %_ZNK4node11Environment23should_create_inspectorEv.exit.thread, %bb.g
  %i.ao = phi ptr [ %.pre, %bb.g ], [ %i.an, %_ZNK4node11Environment23should_create_inspectorEv.exit.thread ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 149
  store i8 1, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %.sroa.09.010.i = load ptr, ptr %i.aq, align 8  ; 2 uses
  %i.ar = icmp eq ptr %.sroa.09.010.i, null
  br i1 %i.ar, label %_ZN4node9inspector19NodeInspectorClient15waitForFrontendEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %.lr.ph.i
  %.sroa.09.011.i = phi ptr [ %.sroa.09.0.i, %.lr.ph.i ], [ %.sroa.09.010.i, %.thread ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.09.011.i, i64 16
  %.val7.i = load ptr, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %.val7.i, i64 16
  %.val8.i = load ptr, ptr %i.at, align 8
  call void @_ZN4node9inspector8protocol12RuntimeAgent21setWaitingForDebuggerEv(ptr noundef nonnull align 8 dereferenceable(27) %.val8.i) #28
  %.sroa.09.0.i = load ptr, ptr %.sroa.09.011.i, align 8 ; 2 uses
  %i.au = icmp eq ptr %.sroa.09.0.i, null
  br i1 %i.au, label %_ZN4node9inspector19NodeInspectorClient15waitForFrontendEv.exit, label %.lr.ph.i

_ZN4node9inspector19NodeInspectorClient15waitForFrontendEv.exit: ; preds = %.lr.ph.i, %.thread
  call void @_ZN4node9inspector19NodeInspectorClient14runMessageLoopEv(ptr noundef nonnull align 8 dereferenceable(184) %i.ao)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN4node9inspector19NodeInspectorClient15waitForFrontendEv.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4node9inspector5Agent23WaitForConnectByOptionsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 !guid !489 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.433", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !range !267, !noundef !269
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 85
  %i.g = load i8, ptr %i.f, align 1, !range !267
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.e, i1 true, i1 %i.h         ; 2 uses
  br i1 %i.i, label %_ZNK4node12DebugOptions16wait_for_connectEv.exit, label %2

2:                                                ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 82
  %4 = load i8, ptr %3, align 2, !range !267, !noundef !269
  %5 = trunc nuw i8 %4 to i1
  br label %_ZNK4node12DebugOptions16wait_for_connectEv.exit

_ZNK4node12DebugOptions16wait_for_connectEv.exit: ; preds = %bb.b, %2
  %6 = phi i1 [ %5, %2 ], [ true, %bb.b ]
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %8 = load ptr, ptr %7, align 8                  ; 3 uses
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK4node12DebugOptions16wait_for_connectEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.k = load i8, ptr %i.j, align 8, !range !267, !noundef !269
  %i.l = trunc nuw i8 %i.k to i1                  ; 5 uses
  call void @_ZN4node9inspector19NodeInspectorClient15getThreadHandleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.433") align 8 %1, ptr noundef nonnull align 8 dereferenceable(184) %i.b)
  call void @_ZN4node9inspector21ParentInspectorHandle13WorkerStartedESt10shared_ptrINS0_16MainThreadHandleEEb(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull %1, i1 noundef zeroext %i.l) #28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !10
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !10
  br label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.i, label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !265

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28
  br label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e, %bb.c, %_ZNK4node12DebugOptions16wait_for_connectEv.exit
  %.0.in = phi i1 [ %i.i, %_ZNK4node12DebugOptions16wait_for_connectEv.exit ], [ %i.l, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.l, %bb.i ] ; 2 uses
  %or.cond = or i1 %6, %.0.in
  br i1 %or.cond, label %bb.j, label %bb.w

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %.0.in, label %bb.k, label %_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %0, align 8               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2304
  %i.af = load i8, ptr %i.ae, align 8, !range !267, !noundef !269
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !265

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9inspector5Agent23WaitForConnectByOptionsEvE20error_and_abort_args) #28
  call void @abort() #29
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 1, ptr %i.ah, align 1
  store i8 1, ptr %i.c, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 1944
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !490 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 1952
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !490 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZN4node11Environment7optionsEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 7 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !noalias !490
  %.not.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load i32, ptr %i.am, align 4, !noalias !490
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !noalias !490
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !490 ; 0 uses
  br label %bb.q

_ZN4node11Environment7optionsEv.exit:             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 1353
  store i8 1, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 1356
  store i8 1, ptr %i.as, align 4
  br label %_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 1353
  store i8 1, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 1356
  store i8 1, ptr %i.au, align 4
  %i.av = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.am, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.ay, align 4
  %i.az = load ptr, ptr %i.al, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !6
  %i.bc = load ptr, ptr %i.al, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !6
  br label %_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bf = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i8 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i8, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.am, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

bb.u:                                             ; preds = %bb.s
  %i.bh = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i10 = phi i32 [ %i.ax, %bb.t ], [ %i.bh, %bb.u ]
  %i.bi = icmp eq i32 %.0.i.i.i.i10, 1
  br i1 %i.bi, label %bb.v, label %_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !265

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28
  br label %_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9, %bb.r, %_ZN4node11Environment7optionsEv.exit, %bb.j
  %i.bj = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 149
  store i8 1, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  %.sroa.09.010.i = load ptr, ptr %i.bl, align 8  ; 2 uses
  %i.bm = icmp eq ptr %.sroa.09.010.i, null
  br i1 %i.bm, label %_ZN4node9inspector19NodeInspectorClient15waitForFrontendEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph.i
  %.sroa.09.011.i = phi ptr [ %.sroa.09.0.i, %.lr.ph.i ], [ %.sroa.09.010.i, %_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.09.011.i, i64 16
  %.val7.i = load ptr, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %.val7.i, i64 16
  %.val8.i = load ptr, ptr %i.bo, align 8
  call void @_ZN4node9inspector8protocol12RuntimeAgent21setWaitingForDebuggerEv(ptr noundef nonnull align 8 dereferenceable(27) %.val8.i) #28
  %.sroa.09.0.i = load ptr, ptr %.sroa.09.011.i, align 8 ; 2 uses
  %i.bp = icmp eq ptr %.sroa.09.0.i, null
  br i1 %i.bp, label %_ZN4node9inspector19NodeInspectorClient15waitForFrontendEv.exit, label %.lr.ph.i

_ZN4node9inspector19NodeInspectorClient15waitForFrontendEv.exit: ; preds = %.lr.ph.i, %_ZNSt12__shared_ptrIN4node18EnvironmentOptionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN4node9inspector19NodeInspectorClient14runMessageLoopEv(ptr noundef nonnull align 8 dereferenceable(184) %i.bj)
  br label %bb.w

bb.w:                                             ; preds = %_ZN4node9inspector19NodeInspectorClient15waitForFrontendEv.exit, %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ true, %_ZN4node9inspector19NodeInspectorClient15waitForFrontendEv.exit ]
  ret i1 %.1
}

declare void @_ZN4node9inspector21ParentInspectorHandle13WorkerStartedESt10shared_ptrINS0_16MainThreadHandleEEb(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector5Agent23StopIfWaitingForConnectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 !guid !491 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4node9inspector19NodeInspectorClient29StopIfWaitingForFrontendEventEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 149 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !267, !noundef !269
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4node9inspector19NodeInspectorClient29StopIfWaitingForFrontendEventEv.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.d, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.09.011.i = load ptr, ptr %i.g, align 8   ; 2 uses
  %i.h = icmp eq ptr %.sroa.09.011.i, null
  br i1 %i.h, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %_ZN4node9inspector19NodeInspectorClient29StopIfWaitingForFrontendEventEv.exit, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.09.012.i = phi ptr [ %.sroa.09.0.i, %.lr.ph.i ], [ %.sroa.09.011.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.09.012.i, i64 16
  %.val7.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val7.i, i64 16
  %.val8.i = load ptr, ptr %i.l, align 8
  tail call void @_ZN4node9inspector8protocol12RuntimeAgent23unsetWaitingForDebuggerEv(ptr noundef nonnull align 8 dereferenceable(27) %.val8.i) #28
  %.sroa.09.0.i = load ptr, ptr %.sroa.09.012.i, align 8 ; 2 uses
  %i.m = icmp eq ptr %.sroa.09.0.i, null
  br i1 %i.m, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.155, ptr %i.a, align 8
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node11per_process18enabled_debug_listE, i64 74), align 1, !range !267, !noundef !269
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %_ZN4node5DebugEPNS_16EnabledDebugListENS_13DebugCategoryEPKc.exit.i, !prof !268

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.p, i64 2, ptr nonnull @.str.146, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %_ZN4node5DebugEPNS_16EnabledDebugListENS_13DebugCategoryEPKc.exit.i

_ZN4node5DebugEPNS_16EnabledDebugListENS_13DebugCategoryEPKc.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4node9inspector19MainThreadInterface27StopWaitingForFrontendEventEv(ptr noundef nonnull align 8 dereferenceable(352) %i.q) #28
  br label %_ZN4node9inspector19NodeInspectorClient29StopIfWaitingForFrontendEventEv.exit

_ZN4node9inspector19NodeInspectorClient29StopIfWaitingForFrontendEventEv.exit: ; preds = %_ZN4node5DebugEPNS_16EnabledDebugListENS_13DebugCategoryEPKc.exit.i, %._crit_edge.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9inspector5Agent16GetWorkerManagerEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.481") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) local_unnamed_addr #0 align 2 !guid !492 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr.564", align 8 ; 5 uses
  %5 = alloca %"class.std::unique_ptr.564", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
end_hunk_0
