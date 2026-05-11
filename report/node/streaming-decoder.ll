inline.NumInlined: 1506
inline.NumDeleted: 885
begin_hunk_0_@_ZN2v88internal4wasm12_GLOBAL__N_140CallMoreFunctionsCanBeSerializedCallback4callENS1_16CompilationEventE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !186 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !alias.scope !186
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm12_GLOBAL__N_140CallMoreFunctionsCanBeSerializedCallback4callENS1_16CompilationEventE:bb.a
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN2v88internal4wasm12NativeModuleEE4lockEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !186
  br label %bb.d

end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm12_GLOBAL__N_140CallMoreFunctionsCanBeSerializedCallback4callENS1_16CompilationEventE:bb.a
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !186 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.d, !llvm.loop !29

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.d
  store ptr null, ptr %i.b, align 8, !alias.scope !186
  br label %_ZNKSt8weak_ptrIN2v88internal4wasm12NativeModuleEE4lockEv.exit.thread

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.e
  %i.k = load atomic i32, ptr %i.e monotonic, align 8, !noalias !186
  %.fr.i.i.i = freeze i32 %i.k
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %i.l = load ptr, ptr %i.a, align 8, !noalias !186 ; 3 uses
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN2v88internal4wasm12NativeModuleEE4lockEv.exit.thread, label %_ZNKSt8weak_ptrIN2v88internal4wasm12NativeModuleEE4lockEv.exit

_ZNKSt8weak_ptrIN2v88internal4wasm12NativeModuleEE4lockEv.exit.thread: ; preds = %bb.b, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  store ptr null, ptr %2, align 8, !alias.scope !186
  br label %bb.j

_ZNKSt8weak_ptrIN2v88internal4wasm12NativeModuleEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  store ptr %i.l, ptr %2, align 8, !alias.scope !186
  %.not3 = icmp eq ptr %i.l, null
  br i1 %.not3, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8weak_ptrIN2v88internal4wasm12NativeModuleEE4lockEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm12_GLOBAL__N_140CallMoreFunctionsCanBeSerializedCallback4callENS1_16CompilationEventE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %2) #19, !inline_history !189
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt8weak_ptrIN2v88internal4wasm12NativeModuleEE4lockEv.exit.thread, %_ZNKSt8functionIFvRKSt10shared_ptrIN2v88internal4wasm12NativeModuleEEEEclES7_.exit, %_ZNKSt8weak_ptrIN2v88internal4wasm12NativeModuleEE4lockEv.exit
  %3 = load ptr, ptr %i.b, align 8                ; 8 uses
  %.not.i.i1 = icmp eq ptr %3, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %.thread

.thread:                                          ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm12_GLOBAL__N_140CallMoreFunctionsCanBeSerializedCallback4callENS1_16CompilationEventE:bb.a

bb.k:                                             ; preds = %.thread
  store i32 0, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %3, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %3) #19, !inline_history !190
  %i.am = load ptr, ptr %3, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %3) #19, !inline_history !190
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %.thread
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm12_GLOBAL__N_140CallMoreFunctionsCanBeSerializedCallback4callENS1_16CompilationEventE:bb.a
  br i1 %i.as, label %bb.o, label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #19
  br label %_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal4wasm12NativeModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
end_hunk_5
