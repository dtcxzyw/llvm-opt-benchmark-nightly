Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/hash_test?download=true
inline.NumInlined: 34654
inline.NumDeleted: 14014
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN12_GLOBAL__N_17SpyHashIN4absl12lts_2026052618hash_test_internal15TypeErasedValueImEEEENS2_13hash_internal16SpyHashStateImplIvEERKT_
define internal fastcc void @_ZN12_GLOBAL__N_17SpyHashIN4absl12lts_2026052618hash_test_internal15TypeErasedValueImEEEENS2_13hash_internal16SpyHashStateImplIvEERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::hash_internal::SpyHashStateImpl", align 8 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %2, i8 0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12492)
  %i.a = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #39
          to label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvEC2Ev.exit unwind label %bb.b ; 6 uses

common.resume:                                    ; preds = %bb.k, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.ao, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(41) %2) #34
  br label %common.resume

_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvEC2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !252, !noalias !12492
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !253, !noalias !12492
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !196, !noalias !12492
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.g, align 8, !tbaa !249, !noalias !12492
  store ptr %i.a, ptr %i.d, align 8, !tbaa !250, !alias.scope !12492
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.c, align 8, !tbaa !256, !alias.scope !12492
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.i, align 8, !tbaa !246
  invoke void @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvE7combineINS0_18hash_test_internal15TypeErasedValueImEEJEEES3_S3_RKT_DpRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::hash_internal::SpyHashStateImpl") align 8 %0, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvEC2Ev.exit
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !250  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.k, align 8, !tbaa !252
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !253
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !196
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #34, !inline_history !4
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !196
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #34, !inline_history !4
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !186
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !254
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.g ], [ %i.x, %bb.h ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.i, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !255

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #34
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %bb.c
  %i.z = load ptr, ptr %2, align 8, !tbaa !194    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !206 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.z, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !186
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !194
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ai = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.z, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i, label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !207
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #37
  br label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit

_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.j
  ret void

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvEC2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIvED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %2) #34
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.b         ; 4 uses
  %i.c = add nsw i64 %notmask.i.i.i.i, 8589934591
  %i.d = or i64 %i.c, %notmask.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %notmask.i.i.i.i, -8589934593
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.a, 254
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE15destructor_implEv.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i: ; preds = %bb.a
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = and i64 %i.a, 65536
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !186
  %i.m = icmp ne i64 %i.l, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.m)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE15destructor_implEv.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i
  ret void

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setINS3_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS5_ISA_EES7_ISA_ESaISA_EEEEC2ESt16initializer_listISA_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.3496, align 8           ; 5 uses
  %4 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashSetPolicy<absl::lts_20260526::flat_hash_set<int>>>::EmplaceDecomposable", align 8 ; 4 uses
  %5 = alloca %"struct.std::pair.3479", align 8   ; 3 uses
  %6 = alloca %"class.absl::lts_20260526::flat_hash_set", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_ZN4absl12lts_2026052613flat_hash_setINS1_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS3_IS8_EES5_IS8_ESaIS8_EECI2NS0_18container_internal12raw_hash_setINSD_17FlatHashSetPolicyIS8_EEJEEEIPKS8_EET_SJ_mRKS9_RKSA_RKSB_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.d = lshr i64 -2305843009213693952, %i.c
  %i.e = icmp ugt i64 %2, %i.d
  %.neg.i.i.i.i = sext i1 %i.e to i64
  %i.f = add nsw i64 %i.c, %.neg.i.i.i.i
  %7 = and i64 %i.f, 4294967295
  %i.g = lshr i64 -1, %7
  store i64 0, ptr %6, align 8
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 281474976710655)
  call void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %.sroa.speculated.i.i.i)
  br label %.lr.ph.i.i.i.i

_ZN4absl12lts_2026052613flat_hash_setINS1_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS3_IS8_EES5_IS8_ESaIS8_EECI2NS0_18container_internal12raw_hash_setINSD_17FlatHashSetPolicyIS8_EEJEEEIPKS8_EET_SJ_mRKS9_RKSA_RKSB_.exit.thread: ; preds = %bb.a
  store i64 0, ptr %6, align 8
  store i64 0, ptr %0, align 8
  br label %_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setINS3_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS5_ISA_EES7_ISA_ESaISA_EEEEC2ERKSE_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.noexc.i.i
  %.06.i.i.i.i = phi ptr [ %i.h, %.noexc.i.i ], [ %1, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !12496
  store ptr %6, ptr %4, align 8, !tbaa !973, !noalias !12496
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEE19EmplaceDecomposableclISB_JRKSB_EEESt4pairINSD_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.3479") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i)
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !12496
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.a
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052613flat_hash_setINS1_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS3_IS8_EES5_IS8_ESaIS8_EECI2NS0_18container_internal12raw_hash_setINSD_17FlatHashSetPolicyIS8_EEJEEEIPKS8_EET_SJ_mRKS9_RKSA_RKSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !12495

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #33
  unreachable

_ZN4absl12lts_2026052613flat_hash_setINS1_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS3_IS8_EES5_IS8_ESaIS8_EECI2NS0_18container_internal12raw_hash_setINSD_17FlatHashSetPolicyIS8_EEJEEEIPKS8_EET_SJ_mRKS9_RKSA_RKSB_.exit: ; preds = %.noexc.i.i
  %.pr = load i64, ptr %6, align 8
  store i64 0, ptr %0, align 8
  %.not.i.i.i.i.i.i = icmp ult i64 %.pr, 131072
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setINS3_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS5_ISA_EES7_ISA_ESaISA_EEEEC2ERKSE_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613flat_hash_setINS1_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS3_IS8_EES5_IS8_ESaIS8_EECI2NS0_18container_internal12raw_hash_setINSD_17FlatHashSetPolicyIS8_EEJEEEIPKS8_EET_SJ_mRKS9_RKSA_RKSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %0, ptr %3, align 8, !tbaa !12498
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEEC1ERKSF_RKSaISD_EEUlPvPKvE_vJSL_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setINS3_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS5_ISA_EES7_ISA_ESaISA_EEEEC2ERKSE_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body4 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #33
  unreachable

_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setINS3_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS5_ISA_EES7_ISA_ESaISA_EEEEC2ERKSE_.exit: ; preds = %bb.f, %_ZN4absl12lts_2026052613flat_hash_setINS1_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS3_IS8_EES5_IS8_ESaIS8_EECI2NS0_18container_internal12raw_hash_setINSD_17FlatHashSetPolicyIS8_EEJEEEIPKS8_EET_SJ_mRKS9_RKSA_RKSB_.exit, %_ZN4absl12lts_2026052613flat_hash_setINS1_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS3_IS8_EES5_IS8_ESaIS8_EECI2NS0_18container_internal12raw_hash_setINSD_17FlatHashSetPolicyIS8_EEJEEEIPKS8_EET_SJ_mRKS9_RKSA_RKSB_.exit.thread
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setINS3_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS5_ISA_EES7_ISA_ESaISA_EEEEC2ERKSE_.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #33
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setINS3_IiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEENS5_ISA_EES7_ISA_ESaISA_EEEEC2ERKSE_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void

.body4:                                           ; preds = %bb.g
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %.body4
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #33
  unreachable

.body:                                            ; preds = %.body4, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.l, %.body4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEC2ESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEEJEEEIPKiEET_SF_mRKS4_RKS6_RKS7_.exit:
  %3 = alloca %class.anon.3491, align 8           ; 5 uses
  %4 = alloca %"class.absl::lts_20260526::flat_hash_set.3395", align 8 ; 10 uses
  %5 = alloca %"struct.absl::lts_20260526::hash_internal::Hash.278", align 1 ; 4 uses
  %6 = alloca %"struct.std::equal_to.3353", align 1 ; 4 uses
  %7 = alloca %"class.std::allocator.3404", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2IPKiEET_S9_mRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %1, ptr noundef %i.a, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  store i64 1, ptr %0, align 8
  %i.b = load i64, ptr %4, align 8                ; 3 uses
  %i.c = icmp ult i64 %i.b, 562949953552384
  call void @llvm.assume(i1 %i.c)
  %.not.i.i.i.i.i.i = icmp samesign ult i64 %i.b, 131072
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEC2ERKSA_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4absl12lts_2026052613flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEEJEEEIPKiEET_SF_mRKS4_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr %0, ptr %3, align 8, !tbaa !977
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyIiEEJEEC1ERKS7_RKSaIiEEUlPvPKvE_vJSD_SF_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.b unwind label %.body.i.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.pre = load i64, ptr %4, align 8
  br label %_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEC2ERKSA_.exit

.body.i.i.i.i:                                    ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #34
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEC2ERKSA_.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052613flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEEJEEEIPKiEET_SF_mRKS4_RKS6_RKS7_.exit
  %i.e = phi i64 [ %.pre, %bb.b ], [ %i.b, %_ZN4absl12lts_2026052613flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEECI2NS0_18container_internal12raw_hash_setINS9_17FlatHashSetPolicyIiEEJEEEIPKiEET_SF_mRKS4_RKS6_RKS7_.exit ] ; 4 uses
  %i.f = and i64 %i.e, 255                        ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.f       ; 4 uses
  %i.g = add nsw i64 %notmask.i.i.i.i.i, 8589934591
  %i.h = or i64 %i.g, %notmask.i.i.i.i.i
  %i.i = icmp eq i64 %i.h, -1
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp ne i64 %i.f, 0
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ugt i64 %notmask.i.i.i.i.i, -8589934593
  call void @llvm.assume(i1 %i.k)
  %i.l = and i64 %i.e, 254
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEC2ERKSA_.exit
  %i.n = icmp ult i64 %i.e, 562949953552384
  call void @llvm.assume(i1 %i.n)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i: ; preds = %_ZN4absl12lts_2026052618hash_test_internal19TypeErasedContainerINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEC2ERKSA_.exit
  %i.o = xor i64 %notmask.i.i.i.i.i, -1
  %i.p = and i64 %i.e, 65536
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !186
  %i.q = icmp ne i64 %i.p, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.o, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.q)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #33
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev.exit: ; preds = %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618hash_test_internal15TypeErasedValueINS0_13flat_hash_setIiNS0_13hash_internal4HashIiEESt8equal_toIiESaIiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.b       ; 4 uses
  %i.c = add nsw i64 %notmask.i.i.i.i.i, 8589934591
  %i.d = or i64 %i.c, %notmask.i.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.b, 0
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplISt4pairImiEE7combineIiJEEES5_S5_RKT_DpRKT0_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i39: ; preds = %.lr.ph.i.i.i.i37
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !186
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i39
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i38, i64 32 ; 2 uses
  %.not.i.i.i1.i41 = icmp eq ptr %i.ex, %i.er
  br i1 %.not.i.i.i1.i41, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i42, label %.lr.ph.i.i.i.i37, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i42: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i40
  %.pr.i.i43 = load ptr, ptr %5, align 16, !tbaa !194
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i44

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i44: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i42, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i35
  %i.ey = phi ptr [ %.pr.i.i43, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i42 ], [ %i.eq, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i35 ] ; 3 uses
  %.not.i.i1.i.i45 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i1.i.i45, label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIiED2Ev.exit47, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i44
  %i.ez = load ptr, ptr %i.c, align 16, !tbaa !207
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fc) #37
  br label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIiED2Ev.exit47

_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIiED2Ev.exit47: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i44, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %6, i8 0, i64 41, i1 false)
  %i.fd = call noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplISt4pairImiEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(41) %1) #34 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12606)
  %i.fe = load i8, ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplISt4pairImiEE29direct_absl_hash_value_error_E, align 1, !tbaa !261, !range !177, !noalias !12606, !noundef !178
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIiED2Ev.exit47
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !247, !noalias !12606
  %i.fi = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA46_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.fh, ptr noundef nonnull align 1 dereferenceable(46) @.str.142)
          to label %bb.ao unwind label %bb.ax     ; 0 uses

bb.am:                                            ; preds = %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIiED2Ev.exit47
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !986, !range !177, !noalias !12606, !noundef !178
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !247, !noalias !12606
  %i.fo = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIRA51_KcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISt6__and_IJSt9is_scalarIS5_ESD_IS5_NSt5decayISG_E4typeEEEEESt16is_constructibleIS5_JSG_EESt13is_assignableIRS5_SG_EEERS6_E4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.fn, ptr noundef nonnull align 1 dereferenceable(51) @.str.143)
          to label %bb.ao unwind label %bb.ax     ; 0 uses

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %0, i8 0, i64 41, i1 false), !alias.scope !12606
  %i.fp = call noundef nonnull align 8 dereferenceable(41) ptr @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplISt4pairImiEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %6) #34 ; 0 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !250 ; 8 uses
  %.not.i.i.i49 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i49, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.ft = load atomic i64, ptr %i.fs acquire, align 8 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 4294967297
  %i.fv = trunc i64 %i.ft to i32                  ; 2 uses
  br i1 %i.fu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.fs, align 8, !tbaa !252
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 0, ptr %i.fw, align 4, !tbaa !253
  %i.fx = load ptr, ptr %i.fr, align 8, !tbaa !196
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #34, !inline_history !131
  %i.ga = load ptr, ptr %i.fr, align 8, !tbaa !196
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #34, !inline_history !131
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53

bb.ar:                                            ; preds = %bb.ap
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !186
  %.not.i.i.i.i50 = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i.i.i50, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ge = add nsw i32 %i.fv, -1
  store i32 %i.ge, ptr %i.fs, align 8, !tbaa !254
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51

bb.at:                                            ; preds = %bb.ar
  %i.gf = atomicrmw volatile add ptr %i.fs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i52 = phi i32 [ %i.fv, %bb.as ], [ %i.gf, %bb.at ]
  %i.gg = icmp eq i32 %.0.i.i.i.i.i52, 1
  br i1 %i.gg, label %bb.au, label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53, !prof !255

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #34
  br label %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53

_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i51, %bb.aq, %bb.ao
  %i.gh = load ptr, ptr %6, align 8, !tbaa !194   ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !206 ; 2 uses
  %.not4.i.i.i.i54 = icmp eq ptr %i.gh, %i.gj
  br i1 %.not4.i.i.i.i54, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i62, label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i58
  %.05.i.i.i.i56 = phi ptr [ %i.gp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i58 ], [ %i.gh, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53 ] ; 3 uses
  %i.gk = load ptr, ptr %.05.i.i.i.i56, align 8, !tbaa !183 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i56, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i57: ; preds = %.lr.ph.i.i.i.i55
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !186
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i58

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i58: ; preds = %.lr.ph.i.i.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i57
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i56, i64 32 ; 2 uses
  %.not.i.i.i1.i59 = icmp eq ptr %i.gp, %i.gj
  br i1 %.not.i.i.i1.i59, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i60, label %.lr.ph.i.i.i.i55, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i60: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i58
  %.pr.i.i61 = load ptr, ptr %6, align 8, !tbaa !194
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i62

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i62: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i60, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53
  %i.gq = phi ptr [ %.pr.i.i61, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i60 ], [ %i.gh, %_ZNSt12__shared_ptrISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53 ] ; 3 uses
  %.not.i.i1.i.i63 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i1.i.i63, label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplISt4pairImiEED2Ev.exit65, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i62
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !207
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gv) #37
  br label %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplISt4pairImiEED2Ev.exit65

_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplISt4pairImiEED2Ev.exit65: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i62, %bb.av
  ret void

bb.aw:                                            ; preds = %_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIiEC2ISt4pairImiEEEONS2_IT_EE.exit
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplIiED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.ay

bb.ax:                                            ; preds = %bb.an, %bb.al
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613hash_internal16SpyHashStateImplISt4pairImiEED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %6) #34
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn = phi { ptr, i32 } [ %i.gx, %bb.ax ], [ %i.gw, %bb.aw ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2IPKiEET_S9_mRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.3468", align 8 ; 5 uses
  %8 = alloca %"struct.std::pair.3463", align 8   ; 6 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit.thread, label %bb.c

_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit.thread: ; preds = %bb.b
  store i64 1, ptr %0, align 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = lshr i64 -2305843009213693952, %i.f
  %i.h = icmp ugt i64 %i.e, %i.g
  %.neg.i.i = sext i1 %i.h to i64
  %i.i = add nsw i64 %i.f, %.neg.i.i
  %9 = and i64 %i.i, 4294967295
  %i.j = lshr i64 -1, %9
  br label %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit

_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit: ; preds = %bb.a, %bb.c
  %.0.i = phi i64 [ %3, %bb.a ], [ %i.j, %bb.c ]  ; 2 uses
  store i64 1, ptr %0, align 8
  %i.k = icmp ugt i64 %.0.i, 1
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 8589934591)
  tail call void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %.sroa.speculated.i)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit.thread, %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit, %bb.d
  %.not5.i.i = icmp eq ptr %1, %2
  br i1 %.not5.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIPKiEEvT_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.ac, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !12624)
  call void @llvm.experimental.noalias.scope.decl(metadata !12625)
  call void @llvm.experimental.noalias.scope.decl(metadata !12626)
  call void @llvm.experimental.noalias.scope.decl(metadata !12627)
  call void @llvm.experimental.noalias.scope.decl(metadata !12628)
  call void @llvm.experimental.noalias.scope.decl(metadata !12629)
  %i.o = load i64, ptr %0, align 8, !noalias !12630 ; 4 uses
  %i.p = and i64 %i.o, 254
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !12631)
  call void @llvm.experimental.noalias.scope.decl(metadata !12632)
  %i.r = icmp ult i64 %i.o, 562949953552384
  call void @llvm.assume(i1 %i.r)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.o, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.g

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = or i64 %i.o, 131328
  store i64 %i.s, ptr %0, align 8, !noalias !12633
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.l, align 8, !tbaa !254, !noalias !12633
  %i.u = load i32, ptr %.06.i.i, align 4, !tbaa !254, !noalias !12633
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !12633
  store ptr %0, ptr %7, align 8, !tbaa !12634, !noalias !12633
  store ptr %.06.i.i, ptr %i.m, align 8, !tbaa !392, !noalias !12633
  %i.w = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %7, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !12633
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !186, !noalias !12633, !nonnull !178, !noundef !178
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.w
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !186, !noalias !12633
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.w
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc, %bb.g, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i
  %.sink18.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.g ]
  %.sink17.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc ], [ %i.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.l, %bb.g ]
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  store ptr %.sink18.i.i.i.i.i.i.i.i.i.i, ptr %8, align 8, !alias.scope !12633
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !12633
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_largeIiEESt4pairINS5_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.3463") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %.06.i.i)
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !990, !range !177, !alias.scope !12635
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc10, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  %i.z = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %.noexc10 ]
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !12635
  %i.ab = load i32, ptr %.06.i.i, align 4, !tbaa !254, !noalias !12635
  store i32 %i.ab, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 4, !tbaa !254
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, %2
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIPKiEEvT_S9_.exit, label %bb.e, !llvm.loop !12623

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIPKiEEvT_S9_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit
  ret void

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #34
  resume { ptr, i32 } %i.ad
}

declare void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIiEEiLb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !254
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %2, %i.b
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm4EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #20 comdat {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSB_PFvSB_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #28 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !186 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !186
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #41, !srcloc !579 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !12636

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.052.061 = phi i32 [ %i.bh, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !254
  %i.ad = zext i32 %i.ac to i64
  %i.ae = xor i64 %i.ab, %i.ad
  %i.af = zext nneg i64 %i.ae to i128
  %i.ag = mul nuw nsw i128 %i.af, 8779197792823184629 ; 2 uses
end_hunk_1
