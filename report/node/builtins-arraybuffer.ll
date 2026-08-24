Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-arraybuffer?download=true
inline.NumInlined: 1050
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_115ConstructBufferEPNS0_7IsolateENS0_12DirectHandleINS0_10JSFunctionEEENS4_INS0_10JSReceiverEEENS4_INS0_6ObjectEEESA_NS0_15InitializedFlagE:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.cc, %bb.v ], [ %i.cm, %bb.w ]
  %i.cn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cn, label %bb.x, label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br i1 %.not74, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.cp = load i8, ptr %i.co, align 4, !range !12, !noundef !13
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit, label %bb.z, !prof !6

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #15
  unreachable

_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit: ; preds = %bb.y
  %i.cr = load i32, ptr %i.bs, align 8
  %i.cs = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.cr, ptr null, i64 0) #16
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ct, ptr noundef null) #16
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cv = load i64, ptr %i.bt, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit, %bb.aa, %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.052.1 = phi i64 [ %i.bv, %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.cv, %bb.aa ], [ %i.cu, %_ZNRSt8optionalIN2v88internal15MessageTemplateEE5valueEv.exit ]
  %i.cw = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i33, label %_ZNSt4pairISt10unique_ptrIN2v88internal12BackingStoreESt14default_deleteIS3_EESt8optionalINS2_15MessageTemplateEEED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit.i.i: ; preds = %bb.ab
  call void @_ZN2v88internal12BackingStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(58) %i.cw) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 64) #18
  br label %_ZNSt4pairISt10unique_ptrIN2v88internal12BackingStoreESt14default_deleteIS3_EESt8optionalINS2_15MessageTemplateEEED2Ev.exit

_ZNSt4pairISt10unique_ptrIN2v88internal12BackingStoreESt14default_deleteIS3_EESt8optionalINS2_15MessageTemplateEEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  ret i64 %.sroa.052.1
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15HasFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal8JSObject3NewENS0_12DirectHandleINS0_10JSFunctionEEENS2_INS0_10JSReceiverEEENS2_INS0_14AllocationSiteEEENS0_15NewJSObjectTypeE(ptr, ptr, ptr, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal13JSArrayBuffer5SetupENS0_10SharedFlagENS0_13ResizableFlagESt10shared_ptrINS0_12BackingStoreEEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !14
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !14
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal12BackingStore8AllocateEPNS0_7IsolateEmNS0_10SharedFlagENS0_15InitializedFlagE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.508") align 8, ptr noundef, i64 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN2v88internal12BackingStoreESt14default_deleteIS2_EEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt15__uniq_ptr_dataIN2v88internal12BackingStoreESt14default_deleteIS2_ELb1ELb1EEaSEOS5_.exit, label %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZN2v88internal12BackingStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(58) %i.b) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #18
  br label %_ZNSt15__uniq_ptr_dataIN2v88internal12BackingStoreESt14default_deleteIS2_ELb1ELb1EEaSEOS5_.exit

_ZNSt15__uniq_ptr_dataIN2v88internal12BackingStoreESt14default_deleteIS2_ELb1ELb1EEaSEOS5_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN2v88internal12BackingStoreESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit

_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN2v88internal12BackingStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(58) %i.a) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #18
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit, %bb.a
  ret void
}

declare i64 @_ZN2v88internal13JSArrayBuffer45GetResizableBackingStorePageConfigurationImplEPNS0_7IsolateEmmPmS4_S4_(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal12BackingStore35TryAllocateAndPartiallyCommitMemoryEPNS0_7IsolateEmmmmmNS0_14WasmMemoryFlagENS0_10SharedFlagEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.508") align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN2v88internal12BackingStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(58)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr dso_local void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #7 comdat {
bb.a:
  tail call void @abort() #15
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v88internal12BackingStoreESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v88internal12BackingStoreESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 13 uses
  %2 = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.g, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN2v88internal12BackingStoreESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v88internal12BackingStoreESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.i.pre = load ptr, ptr %i.b, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c, %bb.d
  %.pr.i = phi ptr [ %.pr.i.pre, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i = icmp eq ptr %.pr.i, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.pr.i, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = load ptr, ptr %.pr.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #16, !inline_history !15
  %i.t = load ptr, ptr %.pr.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #16, !inline_history !15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i = icmp eq i8 %i.w, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.o, %bb.h ], [ %i.y, %bb.i ]
  %i.z = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.z, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !5

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.e, ptr %i.b, align 8
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v88internal12BackingStoreESt14default_deleteIS6_EEEOSt10unique_ptrIT_T0_E.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  store i32 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.ae, align 4
  %i.af = load ptr, ptr %i.e, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16, !inline_history !14
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16, !inline_history !14
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  %i.al = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i6 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.n:                                             ; preds = %bb.l
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7: ; preds = %bb.n, %bb.m
  %.0.i.i.i8 = phi i32 [ %i.ad, %bb.m ], [ %i.an, %bb.n ]
  %i.ao = icmp eq i32 %.0.i.i.i8, 1
  br i1 %i.ao, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #16
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7, %bb.o
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN2v88internal12BackingStoreESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN2v88internal12BackingStoreESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12BackingStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(58) %i.b) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #18
  br label %_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit

_ZNKSt14default_deleteIN2v88internal12BackingStoreEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN2v88internal12BackingStoreESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN2v88internal12BackingStoreESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN2v88internal12BackingStoreESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !16
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_0
