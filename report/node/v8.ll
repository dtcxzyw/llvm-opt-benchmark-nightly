inline.NumInlined: 70
inline.NumDeleted: 45
begin_hunk_0_@_ZN2v88internal2V818InitializePlatformEPNS_8PlatformE:bb.a
  ], !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = add nsw i32 %i.a, 1
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN2v88internal2V818InitializePlatformEPNS_8PlatformE:bb.a
bb.e:                                             ; preds = %bb.d
  %i.e = extractvalue { i32, i1 } %i.c, 0
  %i.f = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.e, i32 noundef %i.f) #10
  unreachable

_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit: ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_ZN2v88internal2V818InitializePlatformEPNS_8PlatformE:bb.a
  br i1 %.not, label %bb.g, label %bb.f, !prof !6

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit
end_hunk_2
begin_hunk_3_@_ZN2v88internal2V818InitializePlatformEPNS_8PlatformE:bb.a
  br i1 %.not2, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #10
  unreachable

bb.i:                                             ; preds = %bb.g
end_hunk_3
begin_hunk_4_@_ZN2v88internal2V818InitializePlatformEPNS_8PlatformE:bb.a
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZN2v84base18SetPrintStackTraceEPFvvE(ptr noundef %i.k) #11
  tail call void @_ZN2v87tracing23TracingCategoryObserver5SetUpEv() #11
  tail call void @_ZN2v88internal7CppHeap24InitializeOncePerProcessEv() #11
  %i.l = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4 ; 4 uses
  %.not10.i3 = icmp eq i32 %i.l, 8
  br i1 %.not10.i3, label %bb.j, label %bb.k, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  unreachable

bb.k:                                             ; preds = %bb.i
end_hunk_4
begin_hunk_5_@_ZN2v88internal2V818InitializePlatformEPNS_8PlatformE:bb.a
  br i1 %.not.i4, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 2) #10
  unreachable

bb.m:                                             ; preds = %bb.k
end_hunk_5
begin_hunk_6_@_ZN2v88internal2V818InitializePlatformEPNS_8PlatformE:bb.a
bb.n:                                             ; preds = %bb.m
  %i.p = extractvalue { i32, i1 } %i.n, 0
  %i.q = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.p, i32 noundef %i.q) #10
  unreachable

_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit5: ; preds = %bb.m
end_hunk_6
begin_hunk_7_@_ZN2v88internal2V828InitializePlatformForTestingEPNS_8PlatformE:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #10
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_ZN2v88internal2V810InitializeEv:bb.a
  br i1 %.not10.i, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@_ZN2v88internal2V810InitializeEv:bb.a
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 3) #10
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_9
begin_hunk_10_@_ZN2v88internal2V810InitializeEv:bb.a
bb.f:                                             ; preds = %bb.e
  %i.e = extractvalue { i32, i1 } %i.c, 0
  %i.f = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.e, i32 noundef %i.f) #10
  unreachable

_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit: ; preds = %bb.e
end_hunk_10
begin_hunk_11_@_ZN2v88internal2V810InitializeEv:bb.a
  br i1 %.not, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #10
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit
  tail call void @_ZN2v88internal8FlagList23EnforceFlagImplicationsEv() #11
  %i.h = tail call noundef i32 @_ZN2v88internal8FlagList4HashEv() #11 ; 0 uses
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1672), align 8, !range !8, !noundef !9
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal8FlagList11FreezeFlagsEv() #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_11
begin_hunk_12_@_ZN2v88internal2V810InitializeEv:bb.a
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @_ZN2v88internal7Isolate19GetTurboCfgFileNameB5cxx11EPS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef null) #11
  %i.m = load ptr, ptr %1, align 8
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %i.m, i32 noundef 32)
  %i.n = load ptr, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN2v88internal2V810InitializeEv:bb.a
  store ptr %i.o, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8
  %i.t = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.s) #11 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.u) #11
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #11
  %i.x = load ptr, ptr %1, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
end_hunk_13
begin_hunk_14_@_ZN2v88internal2V810InitializeEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_14
begin_hunk_15_@_ZN2v88internal2V810InitializeEv:bb.a
  br i1 %or.cond, label %bb.m, label %.critedge, !prof !10

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #10
  unreachable

.critedge:                                        ; preds = %bb.l
end_hunk_15
begin_hunk_16_@_ZN2v88internal2V810InitializeEv:bb.a
  %spec.select = select i1 %i.aj, i32 2, i32 3
  %.0 = select i1 %i.ah, i32 1, i32 %spec.select
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1896), align 8
  call void @_ZN2v84base2OS10InitializeENS0_9AbortModeEPKc(i32 noundef %.0, ptr noundef %i.ak) #11
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1568), align 32
  %.not1 = icmp eq i32 %i.al, 0
  br i1 %.not1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.am = call noundef ptr @_ZN2v88internal24GetPlatformPageAllocatorEv() #11 ; 2 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1568), align 32
  %i.ao = sext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.am, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i64 noundef %i.ao) #11
  %i.as = call noundef ptr @_ZN2v88internal30GetPlatformVirtualAddressSpaceEv() #11 ; 2 uses
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1568), align 32
  %i.au = sext i32 %i.at to i64
  %i.av = load ptr, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(44) %i.as, i64 noundef %i.au) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
end_hunk_16
begin_hunk_17_@_ZN2v88internal2V810InitializeEv:bb.a
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN2v88internal8FlagList11PrintValuesEv() #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
end_hunk_17
begin_hunk_18_@_ZN2v88internal2V810InitializeEv:bb.a
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #11
  call void @_ZN2v88internal15ThreadIsolation10InitializeEPNS_23ThreadIsolatedAllocatorE(ptr noundef %i.bf) #11
  call void @_ZN2v88internal12IsolateGroup24InitializeOncePerProcessEv() #11
  call void @_ZN2v88internal7Isolate24InitializeOncePerProcessEv() #11
  %i.bg = load i8, ptr @_ZN2v88internal11CpuFeatures12initialized_E, align 1, !range !8, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN2v88internal11CpuFeatures5ProbeEb.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr @_ZN2v88internal11CpuFeatures12initialized_E, align 1
  call void @_ZN2v88internal11CpuFeatures9ProbeImplEb(i1 noundef zeroext false) #11
  br label %_ZN2v88internal11CpuFeatures5ProbeEb.exit

_ZN2v88internal11CpuFeatures5ProbeEb.exit:        ; preds = %bb.q, %bb.r
  call void @_ZN2v88internal16ElementsAccessor24InitializeOncePerProcessEv() #11
  call void @_ZN2v88internal12Bootstrapper24InitializeOncePerProcessEv() #11
  call void @_ZN2v88internal15CallDescriptors24InitializeOncePerProcessEv() #11
  call void @_ZN2v88internal4wasm10WasmEngine24InitializeOncePerProcessEv() #11
  %i.bi = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  call void @_ZN2v88internal22ExternalReferenceTable29InitializeOncePerIsolateGroupENS_10MemorySpanImEE(ptr nonnull %i.bj, i64 1320) #11
  %i.bk = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4 ; 4 uses
  %.not10.i2 = icmp eq i32 %i.bk, 8
  br i1 %.not10.i2, label %bb.s, label %bb.t, !prof !7

bb.s:                                             ; preds = %_ZN2v88internal11CpuFeatures5ProbeEb.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  unreachable

bb.t:                                             ; preds = %_ZN2v88internal11CpuFeatures5ProbeEb.exit
end_hunk_18
begin_hunk_19_@_ZN2v88internal2V810InitializeEv:bb.a
  br i1 %.not.i3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef 4) #10
  unreachable

bb.v:                                             ; preds = %bb.t
end_hunk_19
begin_hunk_20_@_ZN2v88internal2V810InitializeEv:bb.a
bb.w:                                             ; preds = %bb.v
  %i.bo = extractvalue { i32, i1 } %i.bm, 0
  %i.bp = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.bo, i32 noundef %i.bp) #10
  unreachable

_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit4: ; preds = %bb.v
end_hunk_20
begin_hunk_21_@_ZN2v88internal8FlagList11PrintValuesEv

declare void @_ZN2v88internal15ThreadIsolation10InitializeEPNS_23ThreadIsolatedAllocatorE(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load atomic volatile i64, ptr @_ZN2v88internal2V89platform_E monotonic, align 8
end_hunk_21
begin_hunk_22_@_ZN2v88internal2V87DisposeEv:bb.a
  br i1 %.not10.i, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_22
begin_hunk_23_@_ZN2v88internal2V87DisposeEv:bb.a
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 5) #10
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_23
begin_hunk_24_@_ZN2v88internal2V87DisposeEv:bb.a
bb.f:                                             ; preds = %bb.e
  %i.e = extractvalue { i32, i1 } %i.c, 0
  %i.f = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.e, i32 noundef %i.f) #10
  unreachable

_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit: ; preds = %bb.e
end_hunk_24
begin_hunk_25_@_ZN2v88internal2V87DisposeEv:bb.a
  br i1 %.not, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #10
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit
  tail call void @_ZN2v88internal4wasm10WasmEngine14GlobalTearDownEv() #11
  tail call void @_ZN2v88internal15CallDescriptors8TearDownEv() #11
  tail call void @_ZN2v88internal16ElementsAccessor8TearDownEv() #11
  tail call void @_ZN2v819RegisteredExtension13UnregisterAllEv() #11
  tail call void @_ZN2v88internal8FlagList25ReleaseDynamicAllocationsEv() #11
  tail call void @_ZN2v88internal12IsolateGroup22TearDownOncePerProcessEv() #11
  %i.h = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4 ; 4 uses
  %.not10.i1 = icmp eq i32 %i.h, 8
  br i1 %.not10.i1, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  unreachable

bb.j:                                             ; preds = %bb.h
end_hunk_25
begin_hunk_26_@_ZN2v88internal2V87DisposeEv:bb.a
  br i1 %.not.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 6) #10
  unreachable

bb.l:                                             ; preds = %bb.j
end_hunk_26
begin_hunk_27_@_ZN2v88internal2V87DisposeEv:bb.a
bb.m:                                             ; preds = %bb.l
  %i.l = extractvalue { i32, i1 } %i.j, 0
  %i.m = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.l, i32 noundef %i.m) #10
  unreachable

_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit3: ; preds = %bb.l
end_hunk_27
begin_hunk_28_@_ZN2v88internal2V815DisposePlatformEv:bb.a
  br i1 %.not10.i, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_28
begin_hunk_29_@_ZN2v88internal2V815DisposePlatformEv:bb.a
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.a, i32 noundef %i.b, i32 noundef 7) #10
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_29
begin_hunk_30_@_ZN2v88internal2V815DisposePlatformEv:bb.a
bb.f:                                             ; preds = %bb.e
  %i.e = extractvalue { i32, i1 } %i.c, 0
  %i.f = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.e, i32 noundef %i.f) #10
  unreachable

_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit: ; preds = %bb.e
end_hunk_30
begin_hunk_31_@_ZN2v88internal2V815DisposePlatformEv:bb.a
  br i1 %.not, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #10
  unreachable

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit
  tail call void @_ZN2v87tracing23TracingCategoryObserver8TearDownEv() #11
  tail call void @_ZN2v84base18SetPrintStackTraceEPFvvE(ptr noundef null) #11
  store ptr null, ptr @_ZN2v88internal2V89platform_E, align 8
  %i.h = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4 ; 4 uses
  %.not10.i1 = icmp eq i32 %i.h, 8
  br i1 %.not10.i1, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  unreachable

bb.j:                                             ; preds = %bb.h
end_hunk_31
begin_hunk_32_@_ZN2v88internal2V815DisposePlatformEv:bb.a
  br i1 %.not.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.h, i32 noundef %i.i, i32 noundef 8) #10
  unreachable

bb.l:                                             ; preds = %bb.j
end_hunk_32
begin_hunk_33_@_ZN2v88internal2V815DisposePlatformEv:bb.a
bb.m:                                             ; preds = %bb.l
  %i.l = extractvalue { i32, i1 } %i.j, 0
  %i.m = load atomic i32, ptr @_ZN2v88internal12_GLOBAL__N_117v8_startup_state_E seq_cst, align 4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.l, i32 noundef %i.m) #10
  unreachable

_ZN2v88internal12_GLOBAL__N_119AdvanceStartupStateENS1_14V8StartupStateE.exit3: ; preds = %bb.l
end_hunk_33
begin_hunk_34_@_ZN2v87tracing23TracingCategoryObserver8TearDownEv
declare void @_ZN2v87tracing23TracingCategoryObserver8TearDownEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal2V821SetPlatformForTestingEPNS_8PlatformE(ptr noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  store atomic volatile i64 %i.a, ptr @_ZN2v88internal2V89platform_E monotonic, align 8
end_hunk_34
begin_hunk_35_@_ZN2v88internal2V821SetPlatformForTestingEPNS_8PlatformE:bb.a
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden void @_ZN2v88internal2V815SetSnapshotBlobEPNS_11StartupDataE(ptr noundef readnone captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.6) #10
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN2v88Platform21SystemClockTimeMillisEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_ZN2v84base2OS17TimeCurrentMillisEv() #11
  ret double %i.a
}

declare noundef double @_ZN2v84base2OS17TimeCurrentMillisEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN2v822SandboxHardwareSupport30InitializeBeforeThreadCreationEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN2v822SandboxHardwareSupport41PrepareCurrentThreadForHardwareSandboxingEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN2v88internal11CpuFeatures9ProbeImplEb(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
end_hunk_35
