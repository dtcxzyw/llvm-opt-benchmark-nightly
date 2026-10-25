Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_allocator_test?download=true
inline.NumInlined: 4327
inline.NumDeleted: 1426
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE15destructor_implEv:bb.a
  store i32 0, ptr %i.p, align 4, !tbaa !54
  %i.q = load ptr, ptr %.val4, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.val4) #32, !inline_history !373
  %i.t = load ptr, ptr %.val4, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.val4) #32, !inline_history !373
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7destroyEPSA_.exit

bb.j:                                             ; preds = %bb.h
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i1.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i1.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.h, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.y = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.k ], [ %i.y, %bb.l ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.m, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7destroyEPSA_.exit, !prof !70

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val4) #32
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7destroyEPSA_.exit

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr %0, ptr %1, align 8, !tbaa !143
  call void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 40, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_16PolicyEJNS5_8IdentityESt8equal_toIiENS5_12CheckedAllocINS3_7TrackedIiEELi6EEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSH_SI_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7destroyEPSA_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7destroyEPSA_.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i, %bb.c, %bb.n
  %.val2.i = load i64, ptr %0, align 8            ; 2 uses
  %i.aa = and i64 %.val2.i, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.aa        ; 4 uses
  %i.ab = add nsw i64 %notmask.i.i.i.i, 8589934591
  %i.ac = or i64 %i.ab, %notmask.i.i.i.i
  %i.ad = icmp eq i64 %i.ac, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp samesign ugt i64 %notmask.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.ae)
  %i.af = and i64 %.val2.i, 65536
  %.not.i.i.i = icmp ne i64 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.ah = xor i64 %notmask.i.i.i.i, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ENS1_12_GLOBAL__N_112CheckedAllocIcLi6EEEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull readonly %i.ai, i64 noundef %i.ah, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef 40, i64 noundef 8, i1 noundef zeroext %.not.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7destroyEPSA_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_16PolicyEJNS5_8IdentityESt8equal_toIiENS5_12CheckedAllocINS3_7TrackedIiEELi6EEEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSH_SI_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !143
  %i.a = getelementptr i8, ptr %.val, i64 40
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !62 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.val, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.val, i64 8 ; 7 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !68
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !68
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16Policy7destroyINS2_12CheckedAllocINS1_7TrackedIiEELi6EEEEEvPT_PS7_(ptr noundef readonly %2)
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSG_SH_EENSt13invoke_resultIT_JDpT0_EE4typeEOSL_DpOSM_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_16Policy7destroyINS2_12CheckedAllocINS1_7TrackedIiEELi6EEEEEvPT_PS7_(ptr noundef readonly %2)
  %i.g = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.b, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %.val.val, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !54
  %i.k = load ptr, ptr %.val.val, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %.val.val) #32, !inline_history !374
  %i.n = load ptr, ptr %.val.val, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %.val.val) #32, !inline_history !374
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSG_SH_EENSt13invoke_resultIT_JDpT0_EE4typeEOSL_DpOSM_.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i1.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i1.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.b, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.s = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.h ], [ %i.s, %bb.i ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.j, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSG_SH_EENSt13invoke_resultIT_JDpT0_EE4typeEOSL_DpOSM_.exit, !prof !70

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.val) #32
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSG_SH_EENSt13invoke_resultIT_JDpT0_EE4typeEOSL_DpOSM_.exit

_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSG_SH_EENSt13invoke_resultIT_JDpT0_EE4typeEOSL_DpOSM_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE6insertIiLi0EEESt4pairINSC_8iteratorEbEOT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 %.0.val) unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !397
  store i32 %.0.val, ptr %i.a, align 4, !tbaa !68, !noalias !398
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %.val.i.i.i.i.i = load i64, ptr %1, align 8, !noalias !401 ; 5 uses
  %i.b = and i64 %.val.i.i.i.i.i, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.d = icmp ult i64 %.val.i.i.i.i.i, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i.i = icmp samesign ult i64 %.val.i.i.i.i.i, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !67, !noalias !403 ; 2 uses
  %.val3.i.i.i.i.i.i = load i32, ptr %.val5.i.i.i.i.i.i, align 4, !tbaa !68, !noalias !403
  %i.f = icmp eq i32 %.val3.i.i.i.i.i.i, %.0.val
  br i1 %i.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.thread16.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.thread16.i.i.i.i: ; preds = %bb.c
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !403
  %.sroa.412.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val5.i.i.i.i.i.i, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !403
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !406, !alias.scope !403
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSF_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !403
  store ptr %1, ptr %2, align 8, !tbaa !130, !noalias !403
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.h, align 8, !tbaa !132, !noalias !403
  %i.i = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_12_GLOBAL__N_18IdentityEiLb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !403 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !403
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !403
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.l, align 8, !tbaa !406, !alias.scope !403
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !403
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !67, !noalias !408 ; 3 uses
  %i.n = and i64 %.val.i.i.i.i.i, 255
  %notmask.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.n
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !408
  %i.o = lshr i64 %.val.i.i.i.i.i, 8
  %i.p = and i64 %i.o, 255
  %i.q = sext i32 %.0.val to i64                  ; 2 uses
  %i.r = xor i64 %i.p, %i.q                       ; 2 uses
  %i.s = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.t = lshr i64 %i.q, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !67, !noalias !408 ; 3 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %5, %bb.d
  %.pn.i.i.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %7, %5 ]
  %.sroa.14.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %6, %5 ] ; 2 uses
  %.sroa.642.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.s ; 5 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %.val7.i.i.i.i.i.i, i64 %.sroa.642.0.i.i.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1), !noalias !408
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.642.0.i.i.i.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1, !tbaa !67, !noalias !408 ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = zext i16 %i.ac to i32
  %i.ae = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ad) #38, !srcloc !112 ; 2 uses
  %.not70.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not70.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.critedge.i.i.i.i.i.i.i
  %.sroa.027.071.i.i.i.i.i.i = phi i32 [ %i.am, %.critedge.i.i.i.i.i.i.i ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.027.071.i.i.i.i.i.i, i1 true)
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add nuw i64 %.sroa.642.0.i.i.i.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.s                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %.val7.i.i.i.i.i.i, i64 %i.ai
  %.val3.i5.i.i.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !68, !noalias !408
  %i.ak = icmp eq i32 %.val3.i5.i.i.i.i.i, %.0.val
  br i1 %i.ak, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i, label %.critedge.i.i.i.i.i.i.i, !prof !113

.critedge.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  %i.al = add i32 %.sroa.027.071.i.i.i.i.i.i, -1
  %i.am = and i32 %i.al, %.sroa.027.071.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.critedge.i.i.i.i.i.i.i, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = zext i16 %i.ao to i32
  %i.aq = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ap) #38, !srcloc !112 ; 2 uses
  %.not64.i.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not64.i.i.i.i.i.i, label %5, label %3, !prof !70

3:                                                ; preds = %._crit_edge.i.i.i.i.i.i
  %4 = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.r, i32 %i.aq, i64 %.sroa.642.0.i.i.i.i.i.i, i64 %.sroa.14.0.i.i.i.i.i.i), !noalias !408
  %.sroa.0.0.copyload.i.i.i.i10.pre.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !67, !noalias !408
  %.val.i.pre.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !67, !noalias !408
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i

5:                                                ; preds = %._crit_edge.i.i.i.i.i.i
  %6 = add i64 %.sroa.14.0.i.i.i.i.i.i, 16        ; 2 uses
  %7 = add i64 %6, %.sroa.642.0.i.i.i.i.i.i
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %3
  %.val.i.i.i.i.i.i.i = phi ptr [ %.val.i.pre.i.i.i.i.i.i, %3 ], [ %.val7.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i10.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i10.pre.i.i.i.i.i.i, %3 ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.352.ph.i.i.i.i.i.i = phi i64 [ %4, %3 ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.3.ph.i.i.i.i.i.i = phi i8 [ 1, %3 ], [ 0, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i10.i.i.i.i.i.i, i64 %.352.ph.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %.352.ph.i.i.i.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i10.i.i.i.i.i.i) ]
  store ptr %i.ar, ptr %0, align 8, !alias.scope !408
  %.sroa.4.0..sroa_idx.i6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i6.i.i.i.i.i, align 8, !alias.scope !408
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !406, !alias.scope !408
  %8 = trunc nuw i8 %.3.ph.i.i.i.i.i.i to i1
  br i1 %8, label %bb.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSF_.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i
  %.sroa.2.0.copyload15.i.i.i.i = phi ptr [ %i.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.thread.i.i.i.i ], [ %i.as, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !62, !noalias !409 ; 10 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !409
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !68, !noalias !409
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !68, !noalias !409
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4, !noalias !409 ; 0 uses
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %.val3.i.i.i.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !68, !noalias !409
  store i32 %.val3.i.i.i.i.i.i.i.i, ptr %.sroa.2.0.copyload15.i.i.i.i, align 8, !tbaa !109, !noalias !409
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload15.i.i.i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.bb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.r, !noalias !409 ; 5 uses

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload15.i.i.i.i, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 1, ptr %i.bd, align 8, !tbaa !53, !noalias !411
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 1, ptr %i.be, align 4, !tbaa !54, !noalias !411
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceImSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bb, align 8, !tbaa !33, !noalias !411
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !98, !noalias !411
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !62, !alias.scope !410, !noalias !409
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !128, !alias.scope !410, !noalias !409
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.bg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35
          to label %bb.k unwind label %bb.j, !noalias !409 ; 5 uses

bb.j:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrImLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ba) #32, !noalias !409
  br label %.body.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload15.i.i.i.i, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload15.i.i.i.i, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 1, ptr %i.bk, align 8, !tbaa !53, !noalias !413
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 1, ptr %i.bl, align 4, !tbaa !54, !noalias !413
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceImSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bg, align 8, !tbaa !33, !noalias !413
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !98, !noalias !413
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !62, !alias.scope !412, !noalias !409
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !128, !alias.scope !412, !noalias !409
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSF_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8, !noalias !409 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bn, align 8, !tbaa !53, !noalias !409
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !54, !noalias !409
  %i.bs = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !33, !noalias !409
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !409
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !409, !inline_history !393
  %i.bv = load ptr, ptr %.val.i.i.i.i, align 8, !tbaa !33, !noalias !409
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !409
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !409, !inline_history !393
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSF_.exit

bb.n:                                             ; preds = %bb.l
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67, !noalias !409
  %.not.i.i.i.i4.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i4.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !68, !noalias !409
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4, !noalias !409
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.o ], [ %i.ca, %bb.p ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.q, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSF_.exit, !prof !70

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i) #32, !noalias !409
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSF_.exit

bb.r:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.r, %bb.j
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cc, %bb.r ], [ %i.bh, %bb.j ]
  call fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EED2Ev(ptr %.val.i.i.i.i) #32, !noalias !409
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSF_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.thread16.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi6EEEEE22find_or_prepare_insertIiEESt4pairINSC_8iteratorEbERKT_.exit.i.i.i.i, %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !397
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_16PolicyEJNS5_8IdentityESt8equal_toIiENS5_12CheckedAllocINS3_7TrackedIiEELi6EEEEEC1ERKSE_RKSD_EUlPvPKvE_vJSJ_SL_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4), (8, 40)) %1, ptr nofree noundef readonly captures(none) %2) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !141
  %i.a = getelementptr i8, ptr %.val, i64 40
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !62 ; 9 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.val, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.val, i64 8 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !68
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !68
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %2, align 8, !tbaa !109
  store i32 %i.g, ptr %1, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !69
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !69
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrImEC2ERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 4, !tbaa !68
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !68
  br label %_ZNSt10shared_ptrImEC2ERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrImEC2ERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10shared_ptrImEC2ERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_112CheckedAllocINS1_7TrackedIiEELi6EEC2IcEERKNS3_IT_Li6EEE.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110  ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62   ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !62
  %.not.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i4.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrImEC2ERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.x, align 4, !tbaa !68
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !68
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !110
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_ZNSt10shared_ptrImEC2ERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = phi ptr [ %i.t, %_ZNSt10shared_ptrImEC2ERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !98
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !98
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEEC1ERKSD_RKSC_EUlPvPKvE_JSI_SK_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.val.val, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.af, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.val, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !54
  %i.ak = load ptr, ptr %.val.val, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %.val.val) #32, !inline_history !414
  %i.an = load ptr, ptr %.val.val, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %.val.val) #32, !inline_history !414
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEEC1ERKSD_RKSC_EUlPvPKvE_JSI_SK_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit

bb.n:                                             ; preds = %bb.l
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i3.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i3.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.o ], [ %i.as, %bb.p ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.q, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEEC1ERKSD_RKSC_EUlPvPKvE_JSI_SK_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit, !prof !70

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.val) #32
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEEC1ERKSD_RKSC_EUlPvPKvE_JSI_SK_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit

_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_16PolicyEJNS4_8IdentityESt8equal_toIiENS4_12CheckedAllocINS2_7TrackedIiEELi6EEEEEC1ERKSD_RKSC_EUlPvPKvE_JSI_SK_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_148PropagateOnAll_CopyConstructorWithSameAlloc_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_148PropagateOnAll_CopyConstructorWithSameAlloc_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #35 ; 4 uses
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_113PropagateTestILi7EEC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_148PropagateOnAll_CopyConstructorWithSameAlloc_TestE, i64 16), ptr %i.a, align 8, !tbaa !33
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_148PropagateOnAll_CopyConstructorWithSameAlloc_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_113PropagateTestILi7EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_148PropagateOnAll_CopyConstructorWithSameAlloc_Test8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.96, align 8             ; 5 uses
  %2 = alloca %"struct.std::pair.78", align 8     ; 4 uses
  %3 = alloca %"class.absl::lts_20260526::container_internal::raw_hash_set", align 8 ; 12 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_16PolicyEJNS3_8IdentityESt8equal_toIiENS3_12CheckedAllocINS1_7TrackedIiEELi7EEEEE6insertIiLi0EEESt4pairINSC_8iteratorEbEOT_(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i32 0)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
end_hunk_0
